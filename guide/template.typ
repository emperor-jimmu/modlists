// No One is Coming — Shared Template
// Usage: typst compile --font-path assets/fonts guide/main.typ output/No-One-Is-Coming.pdf

// ===== FONTS =====
// Referenced by family name. Typst discovers them from --font-path directory.
#let body-font = "Atkinson Hyperlegible"
#let heading-font = "Special Elite"
#let mono-font = "JetBrains Mono"

// ===== COLOR PALETTE =====
#let color-bg = rgb("#1A1A1A")
#let color-text = rgb("#F5F0E8")
#let color-crimson = rgb("#8B0000")
#let color-orange = rgb("#CC5500")
#let color-green = rgb("#556B2F")
#let color-gray = rgb("#888888")
#let color-callout-bg = rgb("#252525")
#let color-info-border = rgb("#4A6A8A")

// ===== PAGE SETUP =====
#set page(
  paper: "a4",
  margin: (right: 20mm, top: 20mm, bottom: 24mm, left: 20mm),
  fill: color-bg,
  header: context [
    #set text(fill: color-gray, size: 8pt)
    #align(right)[No One is Coming — PZ B42 Modlist]
  ],
  footer: context [
    #set text(fill: color-orange, size: 10pt)
    #align(center)[
      No One is Coming — Page #counter(page).display("1")
    ]
  ],
)

// ===== TEXT & LINKS =====
#set text(
  font: (body-font, heading-font),
  size: 11pt,
  fill: color-text,
  lang: "en",
)

#show link: set text(fill: color-orange)

// ===== HEADINGS =====
#show heading.where(level: 1): it => {
  v(12pt, weak: true)
  set text(font: heading-font, size: 22pt, fill: color-crimson, weight: "regular")
  it
  v(4pt)
  line(length: 100%, stroke: 1pt + color-crimson)
  v(8pt)
}

#show heading.where(level: 2): it => {
  v(10pt, weak: true)
  set text(font: heading-font, size: 17pt, fill: color-crimson, weight: "regular")
  it
  v(8pt)
}

#show heading.where(level: 3): it => {
  v(8pt, weak: true)
  set text(font: heading-font, size: 14pt, fill: color-orange, weight: "regular")
  it
  v(6pt)
}

// ===== CALLOUT BLOCKS =====
#let callout(color, icon, label, body) = {
  block(
    fill: color-callout-bg,
    stroke: (left: 4pt + color),
    inset: 12pt,
    radius: 2pt,
    [
      #text(fill: color, weight: "bold", size: 11pt)[#icon #label]
      #v(4pt)
      #set text(fill: color-text)
      #body
    ]
  )
  v(6pt)
}

#let tip(body) = callout(color-green, none, "TIP:", body)
#let warning(body) = callout(color-orange, none, "WARNING:", body)
#let danger(body) = callout(color-crimson, none, "DANGER:", body)
#let info(body) = callout(color-info-border, none, "INFO:", body)
#let note(body) = callout(color-gray, none, "NOTE:", body)

// ===== COVER PAGE =====
#let cover-page() = {
  align(center + horizon,
    block(width: 100%, fill: color-bg, {
      v(40mm)
      image("assets/logo.png", width: 60%)
      v(12mm)
      text(font: heading-font, size: 36pt, fill: color-crimson)[NO ONE IS COMING]
      v(8mm)
      text(font: body-font, size: 14pt, fill: color-text)[
        A Project Zomboid Build 42 Modlist & Survival Guide
      ]
      v(10mm)
      text(font: body-font, size: 10pt, fill: color-gray)[
        Build 42.12.3 | 3 Waves | For New & Veteran Survivors
      ]
      v(10mm)
      text(font: body-font, size: 8pt, fill: color-gray)[
        Best viewed digitally. Print at your own toner expense.
      ]
      v(20mm)
      text(font: body-font, size: 10pt, fill: color-gray)[Compiled July 2026]
    })
  )
  pagebreak()
}

// ===== WAVE DIVIDER PAGE =====
#let wave-divider(number, name, story) = {
  align(center + horizon,
    block(width: 100%, fill: color-bg, {
      v(50mm)
      text(font: heading-font, size: 28pt, fill: color-crimson)[Wave #number]
      v(8mm)
      text(font: heading-font, size: 36pt, fill: color-orange)[#name]
      v(16mm)
      text(font: body-font, size: 12pt, fill: color-text, style: "italic")[#story]
      v(30mm)
      line(length: 60%, stroke: 1pt + color-crimson)
      v(8mm)
      text(font: heading-font, size: 14pt, fill: color-gray)[Begin Wave #number]
    })
  )
  pagebreak()
}

// ===== MOD ENTRY =====
#let mod-entry(name, workshop-id, category, dependencies, system-impact, description) = {
  block(
    fill: color-callout-bg,
    inset: 12pt,
    radius: 2pt,
    [
      #text(font: heading-font, size: 14pt, fill: color-orange)[#name]
      #v(4pt)
      #text(fill: color-orange, size: 10pt)[#link("https://steamcommunity.com/sharedfiles/filedetails/?id=" + workshop-id)[Steam Workshop]]
      #v(4pt)
      #text(fill: color-text, size: 10pt)[*Category:* #category]
      #v(2pt)
      #text(fill: color-text, size: 10pt)[*Dependencies:* #dependencies]
      #v(2pt)
      #text(fill: color-text, size: 10pt)[*System Impact:* #system-impact]
      #v(4pt)
      #text(fill: color-text, size: 11pt)[#description]
    ]
  )
  v(8pt)
}

// ===== SETTINGS TABLE =====
#let settings-table(rows) = {
  let cells = rows.map(((key, value)) => (
    text(fill: color-orange, weight: "bold")[#key],
    text(fill: color-text)[#value],
  )).flatten()

  let even-bg = color-bg
  let odd-bg = color-callout-bg
  let fills = ()
  for i in range(0, rows.len()) {
    let bg = if calc.even(i) { even-bg } else { odd-bg }
    fills.push(bg)
    fills.push(bg)
  }

  table(
    columns: (40%, 60%),
    stroke: 0.5pt + color-gray,
    inset: 8pt,
    fill: (_, y) => fills.at(y, default: even-bg),
    ..cells,
  )
  v(12pt)
}
