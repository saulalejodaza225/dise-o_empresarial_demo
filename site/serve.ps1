param(
    [int]$Port = $(if ($env:PORT) { [int]$env:PORT } else { 8080 }),
    [string]$Root = (Split-Path $PSScriptRoot -Parent)
)

$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$Port/")
$listener.Start()
Write-Host "Serving $Root on http://localhost:$Port/"

$mimeTypes = @{
    ".html" = "text/html"
    ".htm"  = "text/html"
    ".css"  = "text/css"
    ".js"   = "application/javascript"
    ".json" = "application/json"
    ".png"  = "image/png"
    ".jpg"  = "image/jpeg"
    ".jpeg" = "image/jpeg"
    ".webp" = "image/webp"
    ".gif"  = "image/gif"
    ".svg"  = "image/svg+xml"
    ".ico"  = "image/x-icon"
    ".mp4"  = "video/mp4"
}

while ($listener.IsListening) {
    $context = $listener.GetContext()
    $request = $context.Request
    $response = $context.Response

    try {
        $path = [System.Uri]::UnescapeDataString($request.Url.LocalPath)
        if ($path -eq "/") { $path = "/index.html" }
        $filePath = Join-Path $Root ($path.TrimStart("/"))

        if ((Test-Path $filePath -PathType Leaf) -and ((Resolve-Path $filePath).Path.StartsWith($Root))) {
            $ext = [System.IO.Path]::GetExtension($filePath)
            $contentType = $mimeTypes[$ext]
            if (-not $contentType) { $contentType = "application/octet-stream" }
            $bytes = [System.IO.File]::ReadAllBytes($filePath)
            $total = $bytes.Length
            $response.ContentType = $contentType
            $response.Headers.Add("Accept-Ranges", "bytes")

            $start = 0
            $end = $total - 1
            $rangeHeader = $request.Headers["Range"]
            if ($rangeHeader -match '^bytes=(\d*)-(\d*)$') {
                if ($Matches[1] -ne "") { $start = [int]$Matches[1] }
                if ($Matches[2] -ne "") { $end = [Math]::Min([int]$Matches[2], $total - 1) }
                $response.StatusCode = 206
                $response.Headers.Add("Content-Range", "bytes $start-$end/$total")
            }
            $length = $end - $start + 1
            $response.ContentLength64 = $length
            $response.OutputStream.Write($bytes, $start, $length)
        } else {
            $response.StatusCode = 404
            $notFound = [System.Text.Encoding]::UTF8.GetBytes("404 Not Found")
            $response.ContentLength64 = $notFound.Length
            $response.OutputStream.Write($notFound, 0, $notFound.Length)
        }
    } catch {
        # El navegador cerró la conexión antes de terminar (normal con video); continuar.
    } finally {
        try { $response.OutputStream.Close() } catch {}
    }
}
