# PDF Redesign Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Rewrite `guide/template.typ` from dark-mode to light-mode clean guidebook styling per the approved design spec.

**Architecture:** Single self-contained Typst template file providing all styling (show rules, set rules), reusable functions (callouts, mod entries, settings table, cover page, wave dividers), and page layout (header/footer with page numbers). `guide/main.typ` updated only for the TOC. All 14 content files remain untouched.

**Tech Stack:** Typst 0.15, fonts via `--font-path assets/fonts`

---

### Task 1: Rewrite `guide/template.typ` — Core Setup

**Files:**
- Rewrite: `guide/template.typ`

- [ ] **Step 1: Write the font declarations and color variables**

```typst
// No One is Coming — Shared Template (Light Mode)
// Usage: typst compile --font-path assets/fonts guide/main.typ output/No-One-Is-Coming.pdf

// ===== FONTS =====
// Referenced by family name. Typst discovers them from --font-path directory.
#let body-font = "Atkinson Hyperlegible"
#let heading-font = "Special Elite"
#let mono-font = "JetBrains Mono"

// ===== COLOR PALETTE =====
#let white       = rgb("#FFFFFF")
#let body-color  = rgb("#1E1E1E")
#let heading-color = rgb("#2D2D2D")
#let green       = rgb("#5C7A2A")
#let amber       = rgb("#B34700")
#let red         = rgb("#8B0000")
#let blue        = rgb("#4A6A8A")
#let gray        = rgb("#666666")

#let green-light  = rgb("#EDF2E4")
#let amber-light  = rgb("#FEF0E4")
#let red-light    = rgb("#FDE8E8")
#let blue-light   = rgb("#EBF0F6")
#let gray-light   = rgb("#F4F4F4")
#let zebra        = rgb("#FAFAFA")
#let border-color = rgb("#DDDDDD")
```

- [ ] **Step 2: Add page setup with dynamic header and page number footer**

```typst
// ===== PAGE SETUP =====
#set page(
  paper: "a4",
  margin: (left: 22mm, right: 22mm, top: 22mm, bottom: 24mm),
  header: locate(loc => {
    let h1s = query(heading.where(level: 1), loc)
    if h1s.len() > 0 {
      set text(size: 8pt, fill: gray, font: body-font)
      h1s.last().body
    }
  }),
  header-ascent: 10pt,
  footer: [
    #line(length: 100%, stroke: 0.5pt + border-color)
    #set text(size: 9pt, fill: gray, font: body-font)
    #align(center)[Page #counter(page).display("1")]
  ],
  footer-descent: 8pt,
)
```

- [ ] **Step 3: Add base text, paragraph, and list settings**

```typst
// ===== BASE TEXT & PARAGRAPH =====
#set text(
  font: body-font,
  size: 11pt,
  fill: body-color,
  lang: "en",
)

#set par(
  leading: 0.65em,
  justify: true,
  first-line-indent: 0pt,
  spacing: 0.6em,
)

// ===== LISTS =====
#set list(
  indent: 1.5em,
  body-indent: 0.5em,
  spacing: 0.3em,
)
```

- [ ] **Step 4: Add strong, emphasis, link, and code show rules**

```typst
// ===== INLINE STYLING =====
#show strong: set text(font: body-font, weight: "bold")
#show emph: set text(font: body-font, weight: "italic")
#show link: set text(fill: amber)

// ===== CODE =====
#show raw: set text(font: mono-font, size: 10pt, fill: body-color)
#show raw.where(block: true): it => {
  block(
    fill: gray-light,
    inset: 10pt,
    stroke: 0.5pt + border-color,
  )[#it]
}
```

- [ ] **Step 5: Commit checkpoint**

```bash
git add guide/template.typ
git commit -m "feat: rewrite template core — fonts, colors, page setup, text styles"
```

---

### Task 2: Add Heading Show Rules

**Files:**
- Modify: `guide/template.typ`

- [ ] **Step 1: Append heading show rules after the existing code**

```typst
// ===== HEADINGS =====
#show heading: set text(font: heading-font, weight: "regular")

#show heading.where(level: 1): it => {
  set text(fill: heading-color, size: 22pt)
  v(24pt, weak: true)
  it
  v(4pt)
  line(length: 100%, stroke: 0.5pt + green)
  v(12pt, weak: true)
}

#show heading.where(level: 2): it => {
  set text(fill: heading-color, size: 17pt)
  v(20pt, weak: true)
  it
  v(10pt, weak: true)
}

#show heading.where(level: 3): it => {
  set text(fill: amber, size: 14pt)
  v(16pt, weak: true)
  it
  v(8pt, weak: true)
}
```

- [ ] **Step 2: Commit checkpoint**

```bash
git add guide/template.typ
git commit -m "feat: add light-mode heading show rules"
```

---

### Task 3: Add Callout Block Functions

**Files:**
- Modify: `guide/template.typ`

- [ ] **Step 1: Append callout helper and five type functions**

```typst
// ===== CALLOUT BLOCKS =====
#let callout-block(label, body, bg, border-c, label-c) = {
  block(
    fill: bg,
    inset: 12pt,
    radius: 0pt,
    stroke: (left: 1.5pt + border-c),
    [
      #set par(spacing: 0.4em)
      #text(size: 10pt, weight: "bold", fill: label-c)[#label: ]
      #body
    ]
  )
  v(6pt, weak: true)
}

#let tip(body) = callout-block("Tip", body, green-light, green, green)
#let warning(body) = callout-block("Warning", body, amber-light, amber, amber)
#let danger(body) = callout-block("Danger", body, red-light, red, red)
#let info(body) = callout-block("Info", body, blue-light, blue, blue)
#let note(body) = callout-block("Note", body, gray-light, border-color, gray)
```

- [ ] **Step 2: Commit checkpoint**

```bash
git add guide/template.typ
git commit -m "feat: add light-mode callout block functions"
```

---

### Task 4: Add Cover Page, Wave Divider, Mod Entry, and Settings Table Functions

**Files:**
- Modify: `guide/template.typ`

- [ ] **Step 1: Append cover-page() function**

```typst
// ===== COVER PAGE =====
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

- [ ] **Step 2: Append wave-divider() function**

```typst
// ===== WAVE DIVIDER PAGE =====
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
  line(length: 40mm, stroke: 0.5pt + border-color)
  v(8mm)
  text(size: 10pt, font: body-font, fill: gray)[Begin Wave #number]
  pagebreak()
}
```

- [ ] **Step 3: Append mod-entry() function**

```typst
// ===== MOD ENTRY =====
#let mod-entry(name, workshop-id, category, dependencies, system-impact, description) = {
  block(
    fill: gray-light,
    inset: (x: 14pt, y: 12pt),
    radius: 0pt,
    stroke: none,
    [
      #set par(spacing: 0.4em)
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
  v(8pt, weak: true)
}
```

- [ ] **Step 4: Append settings-table() function**

```typst
// ===== SETTINGS TABLE =====
#let settings-table(rows) = {
  let cells = rows.map(((key, value)) => (
    text(weight: "bold", fill: body-color)[#key],
    text(fill: body-color)[#value],
  )).flatten()

  set table(
    columns: (auto, 1fr),
    stroke: 0.5pt + border-color,
    inset: (x: 10pt, y: 6pt),
    fill: (_, y) => if calc.rem(y, 2) == 0 { white } else { zebra },
  )
  table(
    ..cells,
  )
  v(12pt, weak: true)
}
```

- [ ] **Step 5: Commit checkpoint**

```bash
git add guide/template.typ
git commit -m "feat: add cover page, wave divider, mod entry, settings table functions"
```

---

### Task 5: Update `guide/main.typ` — TOC Styling

**Files:**
- Modify: `guide/main.typ`

- [ ] **Step 1: Replace the existing outline block (lines 14-17) with updated TOC**

The current block:
```typst
// ===== TABLE OF CONTENTS =====
#outline(
  title: text(font: heading-font, size: 22pt, fill: color-crimson)[Table of Contents],
  indent: 2em,
)
#pagebreak()
```

Replace with:
```typst
// ===== TABLE OF CONTENTS =====
[
  #show outline.entry: it => {
    it.body
    h(1fr)
    text(fill: amber)[#it.page]
  }
  #outline(
    title: text(size: 22pt, font: heading-font, fill: heading-color)[Contents],
    indent: 1.5em,
    depth: 2,
  )
]
#pagebreak()
```

The `#show outline.entry` rule is wrapped in a content block `[...]` so it only applies within that scope — it does not leak to subsequent pages.

- [ ] **Step 2: Commit checkpoint**

```bash
git add guide/main.typ
git commit -m "feat: update TOC — amber page numbers, Contents heading, depth 2"
```

---

### Task 6: Build and Verify

**Files:**
- Verify: `output/No-One-Is-Coming.pdf`

- [ ] **Step 1: Run the build**

```bash
typst compile --font-path assets/fonts guide/main.typ output/No-One-Is-Coming.pdf --root guide/
```
Expected: Compiles without errors (0 exit code).

- [ ] **Step 2: Inspect the output**

Check the generated PDF:
- Cover page has logo centered, title in Special Elite, dynamic date
- TOC page has "Contents" heading, indented entries, amber page numbers
- Subsequent pages have white background, dark text, proper header/footer
- Page footer shows "Page N" with a thin rule line above
- H1 headings have olive-green underline
- Callouts have colored left borders on light-tinted backgrounds
- Mod entries are light gray cards with amber names
- Settings tables have zebra striping

- [ ] **Step 3: Fix any compilation errors**

If Typst reports errors, check for:
- Missing variable references (old color names like `color-crimson` used in content files — these should be gone since content files only reference functions, not color variables directly)
- Any `#set text(font: ...)` conflicts between the template's `#show heading: set text(font: heading-font)` and content files

- [ ] **Step 4: Final commit**

```bash
git add .
git commit -m "feat: verify light-mode PDF build succeeds"
```
