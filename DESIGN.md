---
name: Precision Industrial Automotive
colors:
  surface: '#111418'
  surface-dim: '#111418'
  surface-bright: '#36393e'
  surface-container-lowest: '#0b0e12'
  surface-container-low: '#191c20'
  surface-container: '#1d2024'
  surface-container-high: '#272a2e'
  surface-container-highest: '#323539'
  on-surface: '#e1e2e8'
  on-surface-variant: '#e2bfb2'
  inverse-surface: '#e1e2e8'
  inverse-on-surface: '#2e3135'
  outline: '#a98a7e'
  outline-variant: '#5a4137'
  surface-tint: '#ffb597'
  primary: '#ffb597'
  on-primary: '#581d00'
  primary-container: '#ff6a1a'
  on-primary-container: '#591e00'
  inverse-primary: '#a43d00'
  secondary: '#41e575'
  on-secondary: '#003915'
  secondary-container: '#06c85d'
  on-secondary-container: '#004d1f'
  tertiary: '#bdc7d6'
  on-tertiary: '#27313d'
  tertiary-container: '#909aa8'
  on-tertiary-container: '#28323d'
  error: '#ffb4ab'
  on-error: '#690005'
  error-container: '#93000a'
  on-error-container: '#ffdad6'
  primary-fixed: '#ffdbcd'
  primary-fixed-dim: '#ffb597'
  on-primary-fixed: '#360f00'
  on-primary-fixed-variant: '#7d2d00'
  secondary-fixed: '#66ff8e'
  secondary-fixed-dim: '#3de273'
  on-secondary-fixed: '#002109'
  on-secondary-fixed-variant: '#005322'
  tertiary-fixed: '#d9e3f3'
  tertiary-fixed-dim: '#bdc7d6'
  on-tertiary-fixed: '#121c27'
  on-tertiary-fixed-variant: '#3e4854'
  background: '#111418'
  on-background: '#e1e2e8'
  surface-variant: '#323539'
typography:
  display-hero:
    fontFamily: Barlow Condensed
    fontSize: 56px
    fontWeight: '600'
    lineHeight: 60px
    letterSpacing: 0.05em
  display-hero-mobile:
    fontFamily: Barlow Condensed
    fontSize: 38px
    fontWeight: '600'
    lineHeight: 42px
    letterSpacing: 0.04em
  headline-xl:
    fontFamily: Barlow Condensed
    fontSize: 40px
    fontWeight: '600'
    lineHeight: 44px
    letterSpacing: 0.04em
  headline-xl-mobile:
    fontFamily: Barlow Condensed
    fontSize: 30px
    fontWeight: '600'
    lineHeight: 34px
    letterSpacing: 0.03em
  headline-lg:
    fontFamily: Barlow Condensed
    fontSize: 32px
    fontWeight: '600'
    lineHeight: 36px
    letterSpacing: 0.03em
  headline-md:
    fontFamily: Barlow Condensed
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 28px
    letterSpacing: 0.02em
  headline-sm:
    fontFamily: Barlow Condensed
    fontSize: 18px
    fontWeight: '600'
    lineHeight: 22px
    letterSpacing: 0.03em
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: 28px
  body-md:
    fontFamily: Inter
    fontSize: 15px
    fontWeight: '400'
    lineHeight: 24px
  body-sm:
    fontFamily: Inter
    fontSize: 13px
    fontWeight: '400'
    lineHeight: 20px
  label-md:
    fontFamily: Barlow Condensed
    fontSize: 15px
    fontWeight: '600'
    lineHeight: 18px
    letterSpacing: 0.06em
  label-sm:
    fontFamily: Barlow Condensed
    fontSize: 12px
    fontWeight: '600'
    lineHeight: 14px
    letterSpacing: 0.08em
  code-telemetry:
    fontFamily: Inter
    fontSize: 13px
    fontWeight: '600'
    lineHeight: 16px
    letterSpacing: 0.02em
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  gutter: 1.5rem
  gutter-mobile: 1rem
  margin: 3rem
  margin-mobile: 1.25rem
  space-xs: 0.25rem
  space-sm: 0.5rem
  space-md: 1rem
  space-lg: 1.5rem
  space-xl: 2.5rem
---

## Brand & Style

This design system embodies high-precision mechanical engineering, modern automotive craft, and uncompromised technical authority. Built for high-end vehicle owners who demand transparency, rigor, and technical expertise, the interface reflects the aesthetic of an elite telemetry dashboard and certified workshop floor.

The visual style blends **Modern Technical High-Contrast** with subtle industrial precision:
- Deep, near-black graphite canvas tones anchor the experience, removing glare and visual noise.
- Crisp mechanical accents in high-visibility signal orange deliver immediate affordance, evoking high-performance instrumentation and warning beacons.
- Pure typographic discipline: rigid, condensed uppercase display typography coupled with neutral, razor-sharp body copy.
- Tactile reassurance through machined borders, controlled inner luminosity, and exact spatial geometry.

## Colors

The palette relies on absolute functional role allocation designed to minimize cognitive overhead in high-stakes automotive contexts:

- **Canvas & Base (`#111418`):** Deep graphite base. Absorbs light and frames interactive components with zero harshness.
- **Surface Elevation (`#1A1F24`):** Machined chassis surface for cards, floating panels, and elevated sheets.
- **Structural Stroke (`#2A3038`):** Muted metallic wireframe delineations. Never decorative; strictly defines operational boundaries.
- **Signal Orange (`#FF6A1A`):** The primary kinetic signal. Reserved for primary operational actions, active telemetry indicators, booking conversions, and focus triggers.
- **Direct Link Green (`#25D366`):** Dedicated communication layer. Reserved strictly for real-time workshop interaction, quote validation, and WhatsApp mechanical triage.
- **Primary Readout (`#F2F4F5`):** Uncoated titanium white for headlines, vital diagnostic values, and selected states.
- **Secondary Readout (`#9AA4AE`):** Neutralized cold grey for labels, mechanical specs, secondary telemetry, and inactive states.

## Typography

Typography functions as a visual gauge. All display headings and operational tags are set strictly in uppercase **Barlow Condensed** with a semi-bold weight (600) and expanded letter spacing (+0.02em to +0.08em) to evoke precision-cut VIN stamps and automotive gauges.

Body content, diagnostic reports, and transactional documentation utilize **Inter** for optimal screen legibility in low-light environments. Numbers within vehicle service histories, mileage logs, and cost breakdowns must enforce tabular figures (`font-variant-numeric: tabular-nums`) to preserve vertical column alignment.

## Layout & Spacing

The layout adopts a rigid 12-column engineering grid on desktop and tablet, collapsing to a high-density 4-column framework on mobile devices.

- **Desktop (>= 1200px):** 12 columns, max content width 1320px, with 48px outer canvas margin (`margin`) and 24px column gutters (`gutter`).
- **Tablet (768px - 1199px):** 8 columns, 32px margins, 20px gutters.
- **Mobile (< 768px):** 4 columns, 20px margins (`margin-mobile`), 16px gutters (`gutter-mobile`).

Vertical hierarchy adheres to an 8px modular baseline. High-density component internals (e.g., service item lists, metric chips) leverage `space-xs` (4px) and `space-sm` (8px). Structural containment units leverage `space-md` (16px) and `space-lg` (24px). Sectional breaks deploy `space-xl` (40px) or double tokens to maintain industrial discipline.

## Elevation & Depth

This design system avoids traditional drop shadows and blur gradients, relying instead on **machined surface stepping and low-contrast borders**:

- **Ground Zero (Chassis Base):** `#111418`. Flat backdrop for all base layouts.
- **Tier 1 (Panels & Cards):** `#1A1F24` paired with a crisp `1px solid #2A3038` outline. Creates distinct mechanical separation without elevation blur.
- **Tier 2 (Popovers, Modals & Floating Diagnostic Sliders):** `#222930` background, a razor-thin border `1px solid #3A4450`, accompanied by a dark ambient ground-shadow: `box-shadow: 0 16px 32px -8px rgba(0, 0, 0, 0.7)`.
- **Hover & Interaction Cue:** Border illumination transitions from `#2A3038` to `#FF6A1A` at 40% opacity or a refined titanium highlight (`#3F4854`).

## Shapes

The shape architecture balances engineered precision with modern luxury:

- **Interactive Primary Elements (Buttons, Inputs, Selectors):** Fixed radius of `8px` (`0.5rem`). This provides crisp, responsive touchpoints that feel solid and machined rather than toy-like.
- **Containers & Structural Cards:** Fixed radius of `14px` (`0.875rem`). Softens structural containment while maintaining structural linearity.
- **Telemetry Pills & Status Badges:** Fixed radius of `4px` (`0.25rem`) for rigid technical alignment, or complete full-pill (`9999px`) exclusively for live-state indicator dots.

## Components

### Buttons
- **Primary (Signal):** Solid `#FF6A1A` background with `#111418` text, uppercase `Barlow Condensed` 600, `8px` border radius, padding `12px 24px`. Hover transforms to `#E55A0E` with an inner top highlight `1px inset rgba(255, 255, 255, 0.2)`.
- **WhatsApp Direct:** `#25D366` background with `#111418` text, uppercase `Barlow Condensed` 600, `8px` radius. Active hover elevates to `#20BA5A`.
- **Secondary / Outline:** Background transparent, `1px solid #2A3038` border, text `#F2F4F5`. Hover state swaps border to `#FF6A1A` and fills background with `rgba(255, 106, 26, 0.08)`.

### Cards & Telemetry Panels
- Background `#1A1F24`, `1px solid #2A3038`, radius `14px`, inner padding `24px` (`space-lg`).
- Diagnostic inspection cards feature an upper micro-header with uppercase tracking, a dividing line in `#2A3038`, and a key-value metric grid.

### Form Inputs & Selectors
- Height `48px`, background `#111418`, border `1px solid #2A3038`, radius `8px`, text `#F2F4F5` in `Inter 15px`. Placeholder in `#9AA4AE`.
- Focus state: border shifts directly to `#FF6A1A` with a non-blurring `0 0 0 1px #FF6A1A` highlight.

### Chips & Badges
- Diagnostic chips (e.g., "Frenos", "Scan OBD-II", "Certificado"): Background `#111418`, border `1px solid #2A3038`, radius `4px`, padding `4px 10px`. Text in `Barlow Condensed` 600, uppercase, `12px`.
- Real-time status dot: `6px` circular pill in `#25D366` for active bays, `#FF6A1A` for bays awaiting approval.

### Lists & Technical Tables
- Borderless rows separated by `1px solid #2A3038`.
- Alternating hover row tint `rgba(255, 255, 255, 0.02)`.
- Numeric data columns must align right with tabular figures enabled.

### Vehicle Milestone Indicator (Domain-Specific)
- Horizontal step gauge representing mechanical inspection stages (Recepción, Diagnóstico, En Proceso, Control Calidad, Entregado).
- Completed segments in solid `#FF6A1A`, current active step pulsing with `#FF6A1A` glow, pending segments in `#2A3038`.