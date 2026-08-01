// Automobilista 2 Modlist & Guide — Typst Style Template
// Built-in Typst features only — NO @preview packages

// ─── Fonts ───────────────────────────────────────────────────────────────

#let heading-font = ("Montserrat", "Arial", "sans-serif")
#let body-font = ("Inter", "Helvetica", "sans-serif")
#let mono-font = ("JetBrains Mono", "Cascadia Code", "Consolas", "monospace")

// ─── Colors ──────────────────────────────────────────────────────────────

#let color-bg = white
#let color-text = rgb("#1a1a1a")
#let color-accent-red = rgb("#cc2936")
#let color-accent-orange = rgb("#f4a261")
#let color-accent-blue = rgb("#1d3557")
#let color-accent-green = rgb("#2a9d8f")
#let color-accent-purple = rgb("#6a4c93")
#let color-panel-bg = rgb("#f8f8f8")
#let color-panel-border = rgb("#e0e0e0")
#let color-table-stripe = rgb("#f5f5f5")

#let color-tip-bg = rgb("#e8f5e9")
#let color-warn-bg = rgb("#fff3e0")
#let color-note-bg = rgb("#e3f2fd")

// Global table defaults — zebra striping for all tables including cmarker-generated
#set table(
  fill: (row, col) => {
    if row == 0 { color-accent-blue }
    else if calc.rem(row, 2) == 0 { color-table-stripe }
    else { white }
  },
  stroke: (rest: 1pt + color-panel-border),
)

// ─── Page Setup ──────────────────────────────────────────────────────────

#set page(
  paper: "a4",
  margin: (left: 2cm, right: 2cm, top: 2.5cm, bottom: 2cm),
  numbering: "1",
)

// ─── Text Defaults ───────────────────────────────────────────────────────

#set text(font: body-font, size: 11pt, fill: color-text)

// ─── Heading Show Rules ──────────────────────────────────────────────────

#show heading.where(level: 1): it => {
  set text(font: heading-font, size: 24pt, fill: color-accent-red)
  v(8pt)
  it
  v(4pt)
  line(length: 100%, stroke: 1pt + color-accent-red)
  v(8pt)
}

#show heading.where(level: 2): it => {
  set text(font: heading-font, size: 18pt, fill: color-accent-blue)
  v(8pt)
  it
  v(6pt)
}

#show heading.where(level: 3): it => {
  set text(font: heading-font, size: 14pt, fill: color-text)
  v(6pt)
  it
  v(4pt)
}

// ─── Raw Block Show Rule ─────────────────────────────────────────────────

#show raw.where(block: true): it => {
  block(
    fill: rgb("#f0f0f0"),
    inset: 10pt,
    radius: 4pt,
    stroke: 0.5pt + color-panel-border,
    it
  )
}

#show raw.where(block: false): set text(font: mono-font, size: 9pt)

// ─── Link Show Rule ──────────────────────────────────────────────────────

#show link: set text(fill: color-accent-red, weight: "medium")

// ─── Strong / Emph Show Rules ────────────────────────────────────────────

#show strong: set text(weight: "bold")
#show emph: set text(style: "italic")

// ─── Table Show Rule ─────────────────────────────────────────────────────

#show table: it => {
  set text(size: 10pt)
  show table.header: header => {
    set text(fill: white, weight: "bold")
    header
  }
  show table.cell: cell => {
    block(inset: (x: 8pt, y: 5pt), cell)
  }
  it
}

// ─── Reusable Functions ──────────────────────────────────────────────────

// Wave banner: full-width red block with wave number, title, subtitle
#let wave-banner(number, title, subtitle) = {
  block(
    width: 100%,
    fill: color-accent-red,
    inset: 1cm,
    radius: 4pt,
    [
      #set text(fill: white)
      #set align(left)
      #text(size: 14pt)[Wave #number]
      #v(4pt)
      #text(weight: "bold", size: 28pt)[#title]
      #v(4pt)
      #text(style: "italic", size: 12pt)[#subtitle]
    ]
  )
  v(16pt)
}

// Story intro: tinted background with red left border, italic
#let story-intro(body) = {
  block(
    fill: rgb("#faf3f3"),
    stroke: (left: 4pt + color-accent-red),
    inset: (left: 15pt, top: 10pt, bottom: 10pt, right: 10pt),
    [
      #set text(size: 10.5pt, fill: rgb("#666666"), style: "italic")
      #body
    ]
  )
  v(12pt)
}

// Category color mapping
#let category-color(category) = {
  if category == "Skins/Liveries" {
    color-accent-red
  } else if category == "Career App" {
    color-accent-orange
  } else if category == "Dashboard/Overlay" {
    color-accent-blue
  } else if category == "Custom FFB" {
    color-accent-green
  } else if category == "Car Mod" {
    color-accent-purple
  } else if category == "AI Files" {
    color-accent-orange
  } else {
    color-panel-border
  }
}

// Mod panel: styled box with category badge, metadata, and description sections
#let mod-panel(
  category: "",
  name: "",
  version: "",
  url: "",
  source: "OverTake.gg",
  wave: "",
  dependencies: "None",
  install: "",
  what: "",
  why: "",
  notes: "",
) = {
  let cat-color = category-color(category)

  block(
    fill: color-panel-bg,
    stroke: (
      left: 4pt + cat-color,
      top: 0.5pt + color-panel-border,
      right: 0.5pt + color-panel-border,
      bottom: 0.5pt + color-panel-border,
    ),
    inset: 12pt,
    radius: 4pt,
    [
      // Category badge
      #block(
        fill: cat-color,
        inset: (x: 8pt, y: 3pt),
        radius: 3pt,
        [#set text(fill: white, size: 8pt, weight: "bold"); #category]
      )
      #v(8pt)

      // Mod name as clickable link + version
      #text(size: 14pt, weight: "bold", fill: color-accent-red)[#link(url)[#name]] \
      #text(size: 10pt, fill: rgb("#888888"))[#version]
      #v(8pt)

      // Metadata grid
      #set text(size: 9pt)
      #table(
        columns: (auto, 1fr),
        stroke: none,
        inset: 3pt,
        [*Source:*], [#source],
        [*Wave:*], [#wave],
        [*Dependencies:*], [#dependencies],
      )
      #set text(size: 11pt)

      // Optional AMS2CM Install line
      #if install != "" {
        v(4pt)
        [#set text(size: 9pt); *AMS2CM Install:* #install]
        set text(size: 11pt)
      }

      // Separator
      #v(8pt)
      #line(length: 100%, stroke: 0.5pt + color-panel-border)
      #v(8pt)

      // What it does
      #if what != "" {
        [#set text(size: 10pt); *What it does:* #what]
        v(6pt)
      }

      // Why
      #if why != "" {
        [#set text(size: 10pt); *Why:* #why]
        v(6pt)
      }

      // Notes
      #if notes != "" {
        [#set text(size: 10pt); *Notes:* #notes]
      }
    ]
  )
  v(12pt)
}

// Callout: colored left-border box with tinted background and label
#let callout(type: "tip", body) = {
  let (bg, border, label) = if type == "tip" {
    (color-tip-bg, color-accent-green, "Tip")
  } else if type == "warn" {
    (color-warn-bg, color-accent-orange, "Warning")
  } else {
    (color-note-bg, color-accent-blue, "Note")
  }

  block(
    fill: bg,
    stroke: (left: 4pt + border),
    inset: 12pt,
    radius: 4pt,
    [
      #set text(size: 10pt)
      #text(weight: "bold", fill: border)[#label:]
      #body
    ]
  )
  v(10pt)
}

// Cover page: centered layout with logo, title, accent line, version badge
#let cover-page(title, subtitle, version-text, logo-path) = {
  set page(numbering: none)
  set align(center)

  v(4cm)
  image(logo-path, width: 6cm)
  v(1cm)

  text(font: heading-font, size: 42pt, weight: "bold", fill: color-accent-red)[#title]
  v(8pt)
  line(length: 6cm, stroke: 2pt + color-accent-red)
  v(12pt)
  text(font: heading-font, size: 16pt, style: "italic", fill: rgb("#666666"))[#subtitle]
  v(12pt)

  // Version badge
  block(
    fill: color-accent-blue,
    inset: (x: 16pt, y: 6pt),
    radius: 4pt,
    [#set text(fill: white, weight: "bold", size: 12pt); #version-text]
  )

  v(2.5cm)
  text(size: 10pt, fill: rgb("#999999"))[Automobilista 2 Modlist & Guide]
  text(size: 9pt, fill: rgb("#999999"))[For AMS2 V1.6+]

  set align(left)
}

// Completion checklist: blue-bordered box for wave-end checklists
#let completion-checklist(items) = {
  block(
    fill: color-note-bg,
    stroke: 1pt + color-accent-blue,
    inset: 14pt,
    radius: 4pt,
    [
      #set text(font: heading-font, size: 14pt, weight: "bold", fill: color-accent-blue)
      Wave Completion Checklist
      #v(10pt)
      
      #set text(size: 10pt, font: body-font)
      #items
    ]
  )
  v(12pt)
}
