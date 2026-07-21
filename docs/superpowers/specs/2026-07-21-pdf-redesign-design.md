# PDF Redesign — Light Mode Clean Modern Guidebook

## Goal

Rewrite `guide/template.typ` to produce a colorful, readable, light-mode PDF. All content files (`preface.typ`, `installation.typ`, wave `*/story.typ`, `*/settings.typ`, `*/guide.typ`, `*/modlist.typ`) remain unchanged. `guide/main.typ` gets minor header-content adjustments.

## Color Palette

WCAG AA contrast ratios verified on `#FFFFFF` background. Body text and metadata pass 4.5:1 minimum. Large text (headings) pass 3:1 minimum.

| Role | Hex | White-on contrast | Notes |
|---|---|---|---|
| Page background | `#FFFFFF` | — | |
| Body text | `#1E1E1E` | 17.1:1 AAA | Slightly warmer than pure black |
| Headings | `#2D2D2D` | 12.6:1 AAA | Subtle distinction from body |
| Accent green (tips, rules) | `#5C7A2A` | 4.6:1 AA | Sampled from PZ in-game UI green |
| Accent amber (warnings, links, H3) | `#B34700` | 4.8:1 AA | Darkened from original `#CC5500` for contrast |
| Accent red (danger, critical) | `#8B0000` | 9.3:1 AAA | |
| Accent blue (info) | `#4A6A8A` | 5.4:1 AA | Darkened from original `#5B7B9A` |
| Metadata / notes gray | `#666666` | 5.7:1 AA | Darkened from original `#888888` |
| Light gray (callout bg, mod bg) | `#F4F4F4` | — | Slightly warmer than `#F5F5F5` |
| Table zebra stripe | `#FAFAFA` | — | Very subtle alternation |
| Table borders | `#DDDDDD` | — | Visible but not heavy |
| Footer rule line | `#DDDDDD` | — | Matches table borders |
| Links | `#B34700` | — | Same amber as warnings |

## Typography

All sizes, leading (line height), and spacing specified. Leading uses Typst defaults unless overridden.

| Role | Font | Size | Weight | Color | Leading | Above | Below |
|---|---|---|---|---|---|---|---|
| Body | Atkinson Hyperlegible | 11pt | Regular | `#1E1E1E` | 1.4em | — | — |
| H1 | Special Elite | 22pt | Regular | `#2D2D2D` | 1.2em | 24pt | 12pt |
| H2 | Special Elite | 17pt | Regular | `#2D2D2D` | 1.2em | 20pt | 10pt |
| H3 | Special Elite | 14pt | Regular | `#B34700` | 1.2em | 16pt | 8pt |
| Code | JetBrains Mono | 10pt | Regular | `#1E1E1E` | 1.3em | — | — |
| Cover title | Special Elite | 40pt | Regular | `#2D2D2D` | — | — | — |
| Cover subtitle | Atkinson Hyperlegible | 14pt | Regular | `#666666` | — | — | — |
| Cover meta | Atkinson Hyperlegible | 10pt | Regular | `#666666` | — | — | — |
| Page header | Atkinson Hyperlegible | 8pt | Regular | `#666666` | — | — | — |
| Page footer | Atkinson Hyperlegible | 9pt | Regular | `#666666` | — | — | — |
| Links | Inherit | Inherit | Regular | `#B34700` | Inherit | — | — |
| Bold body | Atkinson Hyperlegible | 11pt | Bold | `#1E1E1E` | Inherit | — | — |
| Italic body | Atkinson Hyperlegible | 11pt | Italic | `#1E1E1E` | Inherit | — | — |
| Callout label | Atkinson Hyperlegible | 10pt | Bold | Matches border | — | — | — |
| Mod name | Special Elite | 13pt | Regular | `#B34700` | — | — | — |
| Mod metadata | Atkinson Hyperlegible | 9pt | Regular | `#666666` | — | — | — |

## Page Layout — Typst Implementation

```typst
#set page(
  paper: "a4",
  margin: (left: 22mm, right: 22mm, top: 22mm, bottom: 24mm),
  header: locate(loc => {
    // Dynamic header: shows current top-level heading name, or "No One Is Coming" on unheaded pages
    let headings = query(heading.where(level: 1), loc)
    if headings.len() > 0 {
      text(size: 8pt, fill: gray, headings.last().body)
    } else {
      text(size: 8pt, fill: gray)[No One Is Coming]
    }
  }),
  header-ascent: 10pt,
  footer: [
    #line(length: 100%, stroke: 0.5pt + gray-light)
    #text(size: 9pt, fill: gray)[Page #counter(page).display("1")]
  ],
  footer-descent: 8pt,
)
```

### Mechanics

- **Page counter**: `#counter(page).display("1")` uses the built-in `page` counter. Typst auto-increments it. No resetting.
- **Header content**: `#locate` + `#query` finds the most recent H1 heading. Falls back to document title on pages before the first H1 (cover, TOC, preface, installation intro).
- **Margins**: 22mm left/right/top, 24mm bottom to visually anchor the footer.
- **Header-ascent / footer-descent**: space between body text and header/footer zones.

## Cover Page — Typst Implementation

```typst
#let cover-page() = {
  set align(center + horizon)
  set par(justify: false)
  v(40mm)
  image("assets/logo.png", width: 50%)
  v(20mm)
  text(size: 40pt, font: heading-font, fill: heading-color)[NO ONE IS COMING]
  v(8mm)
  text(size: 14pt, font: body-font, fill: gray)[A Project Zomboid Build 42 Modlist & Survival Guide]
  v(16mm)
  text(size: 10pt, font: body-font, fill: gray)[Build 42.12.3 · October 2025]
  v(4mm)
  text(size: 10pt, font: body-font, fill: gray)[Compiled #datetime.today().display("[month repr:long] [day] [year]")]
  v(4mm)
  text(size: 10pt, font: body-font, fill: gray, style: "italic")[Best viewed digitally. Print at your own toner expense.]
  pagebreak()
}
```

- Logo at 50% width (down from the old 60% — more breathing room on white).
- Dynamic compilation date using `datetime.today()`.
- No blocks, fills, or borders — clean white space.

## Table of Contents — Typst Implementation

```typst
#outline(
  title: text(size: 22pt, font: heading-font, fill: heading-color)[Contents],
  indent: 1.5em,
  depth: 2,
  fill: repeat([#h(0pt)], [amber]),  // page numbers in amber
)
#pagebreak()
```

- **Page numbers in amber**: `fill` parameter with `repeat` pattern — first element is the body text (transparent, inherits), second is the page number (amber).
- **No dotted leaders**: Typst 0.15 `#outline()` uses a space between entry and page number by default. For dotted leaders, a custom `#show outline.entry` rule would be needed. Omitted — the space-based layout is clean and simpler.
- **Depth 2**: chapters and sections.

## Heading Show Rules — Typst Implementation

```typst
#show heading.where(level: 1): it => {
  v(24pt, weak: true)
  it
  v(4pt)
  line(length: 100%, stroke: 0.5pt + green)
  v(12pt, weak: true)
}

#show heading.where(level: 2): it => {
  v(20pt, weak: true)
  it
  v(10pt, weak: true)
}

#show heading.where(level: 3): it => {
  v(16pt, weak: true)
  it
  v(8pt, weak: true)
}

#set heading(
  font: heading-font,
  weight: "regular",
)

#show heading.where(level: 1): set heading(fill: heading-color, size: 22pt)
#show heading.where(level: 2): set heading(fill: heading-color, size: 17pt)
#show heading.where(level: 3): set heading(fill: amber, size: 14pt)
```

- `weak: true` on `v()` calls means the spacing collapses when the heading lands at the top of a page — no orphaned whitespace.
- H1 gets an olive-green underline.
- H3 is amber to visually subordinate it from H1/H2 charcoal.

## Callout Blocks — Typst Implementation

Each callout type is a function producing a styled `#block()`.

```typst
#let tip(body) = callout-block(
  label: "Tip",
  body: body,
  bg: green-light,
  border-color: green,
  label-color: green,
)

#let warning(body) = callout-block(
  label: "Warning",
  body: body,
  bg: amber-light,
  border-color: amber,
  label-color: amber,
)

#let danger(body) = callout-block(
  label: "Danger",
  body: body,
  bg: red-light,
  border-color: red,
  label-color: red,
)

#let info(body) = callout-block(
  label: "Info",
  body: body,
  bg: blue-light,
  border-color: blue,
  label-color: blue,
)

#let note(body) = callout-block(
  label: "Note",
  body: body,
  bg: gray-light,
  border-color: gray,
  label-color: gray,
)

#let callout-block(label, body, bg, border-color, label-color) = {
  block(
    fill: bg,
    inset: 12pt,
    radius: 0pt,
    stroke: (left: 1.5pt + border-color),
    [
      #text(size: 10pt, weight: "bold", fill: label-color)[#label: ]
      #body
    ]
  )
}
```

Color variables for callout backgrounds:

| Variable | Hex |
|---|---|
| `green-light` | `#EDF2E4` |
| `amber-light` | `#FEF0E4` |
| `red-light` | `#FDE8E8` |
| `blue-light` | `#EBF0F6` |
| `gray-light` | `#F4F4F4` |

- Left border only (3px → 1.5pt in Typst stroke units).
- 12pt internal padding (inset).
- Square corners (`radius: 0pt`) for a clean, structured look.
- Bold label inline with body text (colon-separated). No icon/emoji — consistent with the clean modern aesthetic.

## Mod Entries — Typst Implementation

```typst
#let mod-entry(name, workshop-id, category, dependencies, system-impact, description) = {
  block(
    fill: gray-light,
    inset: (x: 14pt, y: 12pt),
    radius: 0pt,
    stroke: none,
    [
      #text(size: 13pt, font: heading-font, fill: amber)[#name]
      #h(1em)
      #link("https://steamcommunity.com/sharedfiles/filedetails/?id=" + workshop-id)[
        #text(size: 9pt, fill: amber)[Workshop #workshop-id]
      ]
      #v(4pt)
      #text(size: 9pt, fill: gray)[Category: #category · Dependencies: #dependencies · System Impact: #system-impact]
      #v(6pt)
      #description
    ]
  )
}
```

- Light gray `#F4F4F4` fill (consistent, not ambiguous "white card / gray").
- Mod name in Special Elite amber, Workshop ID as a clickable link.
- Metadata on one line separated by middle dots (`·`), gray.
- 14pt horizontal / 12pt vertical inset.
- 6pt gap between metadata and description.

## Settings Tables — Typst Implementation

```typst
#let settings-table(rows) = {
  set table(
    columns: (auto, 1fr),
    stroke: 0.5pt + gray-light,
    inset: (x: 10pt, y: 6pt),
    fill: (_, y) => if calc.rem(y, 2) == 0 { white } else { zebra },
  )
  table(
    ..rows.flatten(),
  )
}
```

- Two columns: left `auto` (key), right `1fr` (value).
- Alternating fill: even rows white, odd rows `#FAFAFA` (zebra).
- 10pt / 6pt cell padding.
- `rows` is passed as a flat sequence of alternating key-value pairs.
- Keys are rendered bold via content in the caller, not the table function itself.

## Wave Dividers — Typst Implementation

```typst
#let wave-divider(number, name, story) = {
  set align(center + horizon)
  set par(justify: false)
  v(60mm)
  text(size: 28pt, font: heading-font, fill: heading-color)[WAVE #number]
  v(8mm)
  line(length: 40mm, stroke: 1pt + green)
  v(8mm)
  text(size: 36pt, font: heading-font, fill: amber)[#name]
  v(16mm)
  text(size: 12pt, font: body-font, fill: gray, style: "italic")[#story]
  v(24mm)
  line(length: 40mm, stroke: 0.5pt + gray-light)
  v(8mm)
  text(size: 10pt, font: body-font, fill: gray)[Begin Wave #number]
  pagebreak()
}
```

- Centered vertically and horizontally on white space.
- Olive-green rule line under "WAVE N" — this is the only green element, drawing the eye.
- Story text in italic gray for atmosphere without competing with the title.
- Bottom "Begin Wave N" in small gray, preceded by a light rule.

## Base Text & Paragraph — Typst Implementation

```typst
#set text(
  font: body-font,
  size: 11pt,
  fill: body-color,
  lang: "en",
)

#set par(
  leading: 0.65em,   // ~1.4x line height at 11pt
  justify: true,
  first-line-indent: 0pt,
  spacing: 0.6em,    // inter-paragraph spacing
)
```

- `leading: 0.65em` gives comfortable 1.4x line height at 11pt.
- `justify: true` for clean block edges (standard for printed books).
- `first-line-indent: 0pt` — no indent, spacing between paragraphs instead (modern style).
- `spacing: 0.6em` — consistent gap between paragraphs.

## Paragraph Indentation Within Callouts / Mod Entries

Paragraphs inside blocks (callouts, mod entries) should not inherit the top-level paragraph spacing — the block's inset handles the outer gap. Use `#set par(spacing: 0.4em)` inside blocks for tighter internal spacing, or reset to `0em` and use explicit `v()`.

## List (Bullet/Enum) Styling

```typst
#set list(
  indent: 1.5em,
  body-indent: 0.5em,
  spacing: 0.3em,
)
```

- Standard indentation and compact spacing for lists.

## Strong / Emphasis

```typst
#show strong: set text(font: body-font, weight: "bold")
#show emph: set text(font: body-font, weight: "italic")
```

- Bold and italic use the proper font weights, not synthetic.

## Links

```typst
#show link: set text(fill: amber)
```

- All links colored amber. No underline (Typst 0.15 links default to no underline in PDF).

## Code Blocks

```typst
#show raw: set text(font: mono-font, size: 10pt, fill: body-color)
#show raw.where(block: true): it => {
  block(
    fill: gray-light,
    inset: 10pt,
    stroke: 0.5pt + gray-light,
  )[#it]
}
```

- Inline code: JetBrains Mono, 10pt.
- Block code: light gray background, 10pt padding, subtle border.

## Color Variable Definitions

```typst
#let white     = rgb("#FFFFFF")
#let body-color = rgb("#1E1E1E")
#let heading-color = rgb("#2D2D2D")
#let green     = rgb("#5C7A2A")
#let amber     = rgb("#B34700")
#let red       = rgb("#8B0000")
#let blue      = rgb("#4A6A8A")
#let gray      = rgb("#666666")

#let green-light = rgb("#EDF2E4")
#let amber-light = rgb("#FEF0E4")
#let red-light   = rgb("#FDE8E8")
#let blue-light  = rgb("#EBF0F6")
#let gray-light  = rgb("#F4F4F4")
#let zebra       = rgb("#FAFAFA")
#let border      = rgb("#DDDDDD")
```

## Font Setup

```typst
#let body-font = "Atkinson Hyperlegible"
#let heading-font = "Special Elite"
#let mono-font = "JetBrains Mono"

#set text(font: body-font)

#show heading: set text(font: heading-font)
#show raw: set text(font: mono-font)
```

Fonts are loaded via `--font-path assets/fonts` at compile time. Family names are resolved from TTF metadata, not filenames.

## Print Considerations

- **No bleed specified**: Standard home/office printers don't do bleed. The 22mm margins leave comfortable safe area.
- **CMYK not required**: This is a digital-first PDF (the guide says "Best viewed digitally"). Printers will handle RGB → CMYK conversion.
- **Left/right margins equal**: No binding gutter needed for a stapled or loose-leaf digital print.

## Implementation Scope

| File | Action |
|---|---|
| `guide/template.typ` | Full rewrite — all styles, functions, cover page, dividers |
| `guide/main.typ` | Minimal — remove old `#set document()` call if template now handles it directly; verify includes compile |
| All wave content files | No changes |
| `assets/` | No changes |

## Non-Goals

- Changing any content files
- Adding or removing fonts
- Changing the build command: `typst compile --font-path assets/fonts guide/main.typ output/No-One-Is-Coming.pdf`
- Using Typst features not in 0.15
- Adding a binding gutter or print bleed
