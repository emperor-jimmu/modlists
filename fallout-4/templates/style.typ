// Glowing Horizon — Fallout 4 Modlist & Guide — Typst Style Template
// Built-in Typst features only — NO @preview packages

// ─── Fonts ───────────────────────────────────────────────────────────────

#let heading-font = ("Consolas", "Cascadia Mono")
#let body-font = ("Segoe UI", "Arial")
#let mono-font = ("Consolas", "Cascadia Mono")

// ─── Colors — Pip-Boy terminal green + Vault-Tec blue/yellow + rad-orange ──

#let color-bg = white
#let color-text = rgb("#1a1a1a")
#let pipboy-green = rgb("#3ddc84")
#let pipboy-green-dark = rgb("#1f7a45")
#let vaulttec-blue = rgb("#0d3b66")
#let vaulttec-yellow = rgb("#f4c542")
#let rad-orange = rgb("#e8622c")
#let color-panel-bg = rgb("#f6f8f6")
#let color-panel-border = rgb("#d8ded9")
#let color-tip-bg = rgb("#e6f9ee")
#let color-warn-bg = rgb("#fff3e0")
#let color-note-bg = rgb("#e6f0f9")
#let color-table-stripe = rgb("EAF5EE")

// ─── Page Setup ──────────────────────────────────────────────────────────

#set page(
  paper: "a4",
  margin: (left: 2cm, right: 2cm, top: 2.5cm, bottom: 2cm),
  numbering: "1",
  footer: context {
    set text(font: body-font, size: 9pt, fill: luma(150))
    align(center, counter(page).display("1"))
  }
)

// ─── Text Defaults ───────────────────────────────────────────────────────

#set text(font: body-font, size: 11pt, fill: color-text)
#set par(justify: true, leading: 0.55em)

// ─── Heading Show Rules ──────────────────────────────────────────────────

#show heading.where(level: 1): it => {
  set text(font: heading-font, size: 24pt, fill: vaulttec-blue, weight: "bold")
  v(8pt)
  it
  v(4pt)
  line(length: 100%, stroke: 1.5pt + pipboy-green-dark)
  v(8pt)
}

#show heading.where(level: 2): it => {
  set text(font: heading-font, size: 17pt, fill: pipboy-green-dark, weight: "bold")
  v(8pt)
  it
  v(6pt)
}

#show heading.where(level: 3): it => {
  set text(font: heading-font, size: 13.5pt, fill: rad-orange, weight: "bold")
  v(6pt)
  it
  v(4pt)
}

#show heading.where(level: 4): it => {
  set text(font: body-font, size: 11.5pt, fill: luma(90), style: "italic")
  v(4pt)
  it
  v(2pt)
}

// ─── Raw Block Show Rule ─────────────────────────────────────────────────

#show raw.where(block: true): it => {
  block(
    fill: rgb("#0d1a12"),
    inset: 10pt,
    radius: 4pt,
    stroke: 0.5pt + pipboy-green-dark,
    text(font: mono-font, size: 9pt, fill: pipboy-green, it)
  )
}

#show raw.where(block: false): set text(font: mono-font, size: 9.5pt, fill: vaulttec-blue)

// ─── Link Show Rule ──────────────────────────────────────────────────────

#show link: set text(fill: rad-orange, weight: "medium")

// ─── Strong / Emph Show Rules ────────────────────────────────────────────

#show strong: set text(weight: "bold")
#show emph: set text(style: "italic")

// ─── Table defaults ───────────────────────────────────────────────────────

#set table(stroke: 0.5pt + color-panel-border)

// ─── Reusable Functions ──────────────────────────────────────────────────

// Wave banner: full-width blue block with wave number, title, subtitle
#let wave-banner(number, title, subtitle) = {
  block(
    width: 100%,
    fill: vaulttec-blue,
    inset: 1cm,
    radius: 4pt,
    stroke: 1pt + pipboy-green,
    [
      #set text(fill: pipboy-green)
      #set align(left)
      #text(size: 13pt, fill: vaulttec-yellow)[WAVE #number]
      #v(4pt)
      #text(weight: "bold", size: 26pt, fill: white)[#title]
      #v(4pt)
      #text(style: "italic", size: 12pt, fill: pipboy-green)[#subtitle]
    ]
  )
  v(16pt)
}

// Story intro: tinted background with green left border, italic (terminal log flavor)
#let story-intro(body) = {
  block(
    fill: rgb("#0d1a12"),
    stroke: (left: 4pt + pipboy-green),
    inset: (left: 15pt, top: 10pt, bottom: 10pt, right: 10pt),
    radius: 2pt,
    [
      #set text(size: 10.5pt, fill: pipboy-green, style: "italic", font: mono-font)
      #body
    ]
  )
  v(12pt)
}

// Category color mapping
#let category-color(category) = {
  if category == "UI/QoL" {
    vaulttec-blue
  } else if category == "Bugfix" {
    pipboy-green-dark
  } else if category == "Graphics" {
    rad-orange
  } else if category == "Content" {
    rgb("#8a4fbf")
  } else if category == "Mechanics" {
    rgb("#c0392b")
  } else if category == "Framework" {
    vaulttec-yellow
  } else {
    color-panel-border
  }
}

// Mod panel: styled box with category badge, metadata, and description sections
#let mod-panel(
  category: "",
  name: "",
  url: "",
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
    breakable: true,
    [
      // Category badge
      #block(
        fill: cat-color,
        inset: (x: 8pt, y: 3pt),
        radius: 3pt,
        [#set text(fill: white, size: 8pt, weight: "bold"); #category]
      )
      #v(8pt)

      // Mod name as clickable link
      #text(size: 13.5pt, weight: "bold", fill: vaulttec-blue)[#link(url)[#name]]
      #v(8pt)

      // Metadata grid
      #set text(size: 9pt)
      #table(
        columns: (auto, 1fr),
        stroke: none,
        inset: 3pt,
        [*Wave:*], [#wave],
        [*Dependencies:*], [#dependencies],
      )
      #set text(size: 11pt)

      // Optional MO2 Install line
      #if install != "" {
        v(4pt)
        [#set text(size: 9pt); *MO2 Install:* #install]
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
    (color-tip-bg, pipboy-green-dark, "Tip")
  } else if type == "warn" {
    (color-warn-bg, rad-orange, "Warning")
  } else {
    (color-note-bg, vaulttec-blue, "Note")
  }

  block(
    fill: bg,
    stroke: (left: 4pt + border),
    inset: 12pt,
    radius: 4pt,
    breakable: true,
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
  set page(fill: rgb("#081611"), numbering: none, margin: (top: 3.5cm, bottom: 3cm, left: 2.5cm, right: 2.5cm))
  set align(center)

  v(1.5cm)
  box(stroke: 2pt + pipboy-green, radius: 6pt, inset: 6pt, image(logo-path, width: 6.5cm))
  v(1cm)

  text(font: heading-font, size: 40pt, weight: "bold", fill: pipboy-green)[#title]
  v(8pt)
  line(length: 6cm, stroke: 2pt + vaulttec-yellow)
  v(12pt)
  text(font: body-font, size: 15pt, style: "italic", fill: rgb("#cfe8d8"))[#subtitle]
  v(12pt)

  // Version badge
  block(
    fill: vaulttec-blue,
    inset: (x: 16pt, y: 6pt),
    radius: 4pt,
    stroke: 1pt + vaulttec-yellow,
    [#set text(fill: white, weight: "bold", size: 12pt); #version-text]
  )

  v(2.5cm)
  text(size: 10pt, fill: rgb("#7fae8f"))[A Fallout 4 Modlist & Survival Guide]
  linebreak()
  text(size: 9pt, fill: rgb("#7fae8f"))[Using Mod Organizer 2.5]

  set align(left)
}

// Completion checklist: green-bordered box for wave-end checklists
#let checklist(title: "Wave Completion Checklist", body) = block(
  stroke: (left: 3pt + pipboy-green-dark, rest: 0.5pt + color-panel-border),
  fill: color-tip-bg,
  inset: 14pt,
  radius: 4pt,
  breakable: true,
  {
    text(size: 14pt, weight: "bold", fill: pipboy-green-dark, font: heading-font)[#title]
    v(0.4em)
    body
  }
)
