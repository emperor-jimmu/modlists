# No One is Coming — Implementation Plan (v2)

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a complete Project Zomboid B42 modlist and survival guide as a richly-styled PDF, organized into 3 progressive waves.

**Architecture:** Modular Typst documents assembled by `main.typ` using a shared `template.typ`. PDF compiled via `typst compile` with `--font-path` for local fonts. Mod discovery via Playwright on Steam Workshop.

**Tech Stack:** Typst 0.15, Atkinson Hyperlegible (body), Special Elite (headings), JetBrains Mono (code), Playwright (mod research), PowerShell (automation). Output: A4 PDF, dark theme.

---

## Phase 1: Project Scaffold

### Task 1: Create directory structure

**Files:**
- Create: All directories

- [ ] **Step 1: Create all directories**

```powershell
$dirs = @(
  "assets\fonts",
  "guide\wave-0",
  "guide\wave-1",
  "guide\wave-2",
  "output"
)
foreach ($d in $dirs) {
  New-Item -ItemType Directory -Force -Path "H:\Projects\modguides\project-zomboid-modlist\$d"
}
```

- [ ] **Step 2: Verify**

```powershell
Get-ChildItem -Recurse -Directory | Select-Object FullName
```

Expected: 9+ directories including assets/fonts, guide/wave-0/1/2, output.

- [ ] **Step 3: Commit**

```
git add .
git commit -m "chore: scaffold project directory structure"
```

---

### Task 2: Create .gitignore

**Files:**
- Create: `.gitignore`

- [ ] **Step 1: Write**

```
output/*.pdf
.DS_Store
Thumbs.db
Desktop.ini
*.tmp
*.temp
~$*
.vscode/
.idea/
```

- [ ] **Step 2: Commit**

```
git add .gitignore
git commit -m "chore: add .gitignore"
```

---

### Task 3: Create AGENTS.md

**Files:**
- Create: `AGENTS.md`

- [ ] **Step 1: Write**

```markdown
# AGENTS.md — No One is Coming

## Project Context
Modlist and survival guide for Project Zomboid Build 42.12.3 (22 October 2025). Three progressive waves of increasing difficulty, each a new game with different mods and roleplaying background. Delivered as a PDF via Typst 0.15.

## File Conventions
- `.typ` files: UTF-8, LF line endings, 2-space indent
- Modular: `#include` for section files, `#import` for template
- kebab-case filenames

## Build Command
```
typst compile guide/main.typ output/No-One-Is-Coming.pdf --root guide/
```
Requires Typst 0.15 in PATH.

## Font Loading
Fonts live in `assets/fonts/` as `.ttf`. Typst discovers them via `--font-path`:
```
typst compile --font-path assets/fonts guide/main.typ output/No-One-Is-Coming.pdf
```
Typst resolves TTF files by family name, not filename. Family names:
- Atkinson Hyperlegible (Regular, Bold, Italic, BoldItalic)
- Special Elite
- JetBrains Mono

## Mod Rules
- B42 compatible (last updated ≥ October 2025 or explicit B42 statement)
- No conflicts (document in mod-conflicts.md)
- No redundant mods (pick the better-maintained one)
- No cheat/OP (no god mode, infinite resources, omniscient map, skill-to-10 buttons)
- No explicit porn (intimacy/romance/nudity-for-realism OK)
- Not abandoned (recent B42 activity)

## Mod Discovery Workflow
1. Open Steam Workshop via Playwright: `https://steamcommunity.com/app/108600/workshop/`
2. Browse by B42 tag, most popular, keyword search
3. For each candidate: check description for B42, check last updated date, check dependencies, check comments for bugs
4. Document in wave-N/modlist.typ using `#mod-entry()`

## Do Not Commit
- `output/*.pdf`

## Typst 0.15 Notes
- `#outline()` for auto-generated TOC
- `#pagebreak()` for page breaks
- `#link("url")[text]` for clickable links
- `#set page(fill: ...)` for background color
- Fonts loaded via `--font-path` CLI flag pointing to `assets/fonts/`
- Use `#set text(font: "Family Name")` with the installed/registered family name
```

- [ ] **Step 2: Commit**

```
git add AGENTS.md
git commit -m "chore: add AGENTS.md"
```

---

### Task 4: Create README.md

**Files:**
- Create: `README.md`

- [ ] **Step 1: Write**

```markdown
# No One is Coming

**A Project Zomboid Build 42 Modlist & Survival Guide**

Three progressively harder waves — from complete beginner to hardened survivor — each with curated mods, custom sandbox settings, and a roleplaying backstory.

## Quick Start

```
.\build.bat
```

Requires [Typst 0.15](https://github.com/typst/typst/releases) in your PATH.

Generated PDF: `output/No-One-Is-Coming.pdf`

## Project Structure

```
├── build.bat                  # Compile the PDF
├── assets/
│   ├── logo.png
│   └── fonts/                 # .ttf files (Atkinson Hyperlegible, Special Elite, JetBrains Mono)
├── guide/
│   ├── template.typ           # Shared styles
│   ├── main.typ               # Root document
│   ├── preface.typ            # Intro & Mod Manager setup
│   ├── installation.typ       # Installation & troubleshooting
│   ├── wave-0/                # "The First Night"
│   ├── wave-1/                # "Scars and Lessons"
│   └── wave-2/                # "No One is Coming"
├── output/
│   └── No-One-Is-Coming.pdf   # Generated PDF
├── mod-conflicts.md           # Known mod conflicts (not in PDF)
├── mod-ideas.md               # Future mod ideas (not in PDF)
└── README.md
```

## Target Game Version

Project Zomboid Build 42.12.3 (22 October 2025). All mods verified B42 compatible.

## Versioning

v1.0.0 for Build 42.12.3. Spec in `docs/superpowers/specs/`.
```

- [ ] **Step 2: Commit**

```
git add README.md
git commit -m "chore: add README.md"
```

---

### Task 5: Validate logo.png

**Files:**
- Verify: `assets/logo.png`

- [ ] **Step 1: Verify logo exists and is valid**

```powershell
$logo = Get-Item "assets/logo.png"
if ($logo.Length -eq 0) { throw "logo.png is empty" }
Write-Host "logo.png: $($logo.Length) bytes"
```

Expected: Non-zero file size. If logo is missing, the build will fail — fix before proceeding.

---

## Phase 2: Fonts

### Task 6: Download fonts

**Files:**
- Create: 6 TTF files in `assets/fonts/`

Google Fonts provides direct download ZIPs via their API. Use fixed URLs to avoid unreliable Playwright clicks.

- [ ] **Step 1: Download Atkinson Hyperlegible**

```powershell
# Google Fonts direct download: the ZIP contains all variants
Invoke-WebRequest -Uri "https://fonts.google.com/download?family=Atkinson+Hyperlegible" `
  -OutFile "$env:TEMP\AtkinsonHyperlegible.zip"
Expand-Archive -Path "$env:TEMP\AtkinsonHyperlegible.zip" `
  -DestinationPath "$env:TEMP\AtkinsonHyperlegible" -Force

# Copy only the static TTF files (not the variable font)
$src = "$env:TEMP\AtkinsonHyperlegible"
$dst = "assets\fonts"
Copy-Item "$src\static\*.ttf" $dst -Force

# Verify
Get-ChildItem "$dst\AtkinsonHyperlegible*.ttf" | Select-Object Name
```

Expected: 4 files (Regular, Bold, Italic, BoldItalic).

Fallback if the Google Fonts download URL fails: Use GitHub releases.
```
Invoke-WebRequest -Uri "https://api.github.com/repos/googlefonts/atkinson-hyperlegible/releases/latest" | ConvertFrom-Json | Select-Object -ExpandProperty assets | Where-Object name -match ".*\.zip" | ForEach-Object { Invoke-WebRequest -Uri $_.browser_download_url -OutFile "$env:TEMP\ah.zip" }
```

- [ ] **Step 2: Download Special Elite**

```powershell
Invoke-WebRequest -Uri "https://fonts.google.com/download?family=Special+Elite" `
  -OutFile "$env:TEMP\SpecialElite.zip"
Expand-Archive -Path "$env:TEMP\SpecialElite.zip" `
  -DestinationPath "$env:TEMP\SpecialElite" -Force
Copy-Item "$env:TEMP\SpecialElite\*.ttf" "assets\fonts\" -Force
Get-ChildItem "assets\fonts\SpecialElite*.ttf" | Select-Object Name
```

Expected: 1 file (SpecialElite-Regular.ttf).

Note: Google's ZIP may use the family name with different casing/spaces. If `*.ttf` finds nothing, list the extract dir contents:
```powershell
Get-ChildItem "$env:TEMP\SpecialElite" -Recurse -Filter *.ttf | Copy-Item -Destination "assets\fonts\" -Force
```

- [ ] **Step 3: Download JetBrains Mono**

```powershell
Invoke-WebRequest -Uri "https://fonts.google.com/download?family=JetBrains+Mono" `
  -OutFile "$env:TEMP\JetBrainsMono.zip"
Expand-Archive -Path "$env:TEMP\JetBrainsMono.zip" `
  -DestinationPath "$env:TEMP\JetBrainsMono" -Force
Copy-Item "$env:TEMP\JetBrainsMono\static\JetBrainsMono-Regular.ttf" "assets\fonts\" -Force
Get-ChildItem "assets\fonts\JetBrainsMono*.ttf" | Select-Object Name
```

Expected: 1 file (JetBrainsMono-Regular.ttf).

- [ ] **Step 4: Verify all font files**

```powershell
$expected = @(
  "AtkinsonHyperlegible-Regular.ttf",
  "AtkinsonHyperlegible-Bold.ttf",
  "AtkinsonHyperlegible-Italic.ttf",
  "AtkinsonHyperlegible-BoldItalic.ttf",
  "SpecialElite-Regular.ttf",
  "JetBrainsMono-Regular.ttf"
)
$actual = Get-ChildItem "assets\fonts\*.ttf" | Select-Object -ExpandProperty Name
$missing = $expected | Where-Object { $_ -notin $actual }
if ($missing) { throw "Missing fonts: $missing" }
Write-Host "All 6 fonts present"
```

- [ ] **Step 5: Commit**

```
git add assets/fonts/
git commit -m "chore: add project fonts (Atkinson Hyperlegible, Special Elite, JetBrains Mono)"
```

---

## Phase 3: Typst Template & Build System

### Task 7: Create template.typ

**Files:**
- Create: `guide/template.typ`

Typst 0.15 resolves fonts by family name via `--font-path`. Fonts in `assets/fonts/` are discovered automatically when the CLI flag is used. Reference them by family name string.

- [ ] **Step 1: Write template.typ**

```typst
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
  margin: (left: 20mm, right: 20mm, top: 20mm, bottom: 20mm),
  fill: color-bg,
  header: context [
    #set text(fill: color-gray, size: 8pt)
    #align(right)[
      No One is Coming — PZ B42 Modlist  \
      #counter(page).display()
    ]
  ],
  footer: context [
    #set text(fill: color-gray, size: 8pt)
    #align(center)[No One is Coming — Project Zomboid B42 Modlist]
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
#set link(fill: color-orange)

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
  set page(fill: color-bg, margin: 0pt)
  align(center + horizon,
    block(width: 100%, height: 100%, fill: color-bg, {
      v(40mm)
      image("assets/logo.png", width: 40%)
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
  set page(fill: color-bg, margin: 20mm)
  align(center + horizon,
    block(width: 100%, height: 100%, fill: color-bg, {
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
      #link("https://steamcommunity.com/sharedfiles/filedetails/?id=" + workshop-id)[Steam Workshop]
      #v(4pt)
      #text(fill: color-gray, size: 10pt)[*Category:* #category]
      #v(2pt)
      #text(fill: color-gray, size: 10pt)[*Dependencies:* #dependencies]
      #v(2pt)
      #text(fill: color-gray, size: 10pt)[*System Impact:* #system-impact]
      #v(4pt)
      #text(size: 11pt)[#description]
    ]
  )
  v(8pt)
}

// ===== SETTINGS TABLE =====
#let settings-table(rows) = {
  table(
    columns: (40%, 60%),
    stroke: 0.5pt + color-gray,
    inset: 8pt,
    ..rows.map(((key, value)) => (
      text(fill: color-orange, weight: "bold")[#key],
      text(fill: color-text)[#value],
    )).flatten(),
  )
  v(12pt)
}
```

- [ ] **Step 2: Verify template compiles**

Since `template.typ` has no standalone content, create a temporary test file:

```powershell
@'
#import "template.typ": *
#set page(fill: color-bg)
= Test Heading
Hello world.
'@ | Set-Content -Path "guide/_test.typ" -Encoding UTF8
```

Then compile with font path:

```
typst compile --font-path assets/fonts guide/_test.typ output/_test.pdf
```

Expected: PDF generated with 1 page, heading in Special Elite, body in Atkinson Hyperlegible, dark background. If fonts fail to resolve, check that `--font-path` is correct and TTF files are valid.

- [ ] **Step 3: Clean up test file**

```powershell
Remove-Item "guide\_test.typ", "output\_test.pdf" -ErrorAction SilentlyContinue
```

- [ ] **Step 4: Commit**

```
git add guide/template.typ
git commit -m "feat: add Typst template with colors, fonts, callouts, cover, divider"
```

---

### Task 8: Create build.bat

**Files:**
- Create: `build.bat`

- [ ] **Step 1: Write build.bat**

```batch
@echo off
echo ========================================
echo   Building "No One is Coming" Guide
echo ========================================
echo.
typst compile --font-path assets\fonts guide\main.typ output\No-One-Is-Coming.pdf
if %ERRORLEVEL% EQU 0 (
    echo.
    echo SUCCESS: output\No-One-Is-Coming.pdf
) else (
    echo.
    echo BUILD FAILED! Check Typst errors above.
    exit /b 1
)
```

- [ ] **Step 2: Verify batch file syntax**

```powershell
Get-Command ".\build.bat" -ErrorAction SilentlyContinue
# Just confirms file exists. Will test actual build later.
```

- [ ] **Step 3: Commit**

```
git add build.bat
git commit -m "chore: add build.bat"
```

---

### Task 9: Create main.typ

**Files:**
- Create: `guide/main.typ`

- [ ] **Step 1: Write main.typ**

```typst
// No One is Coming — Root Document

#import "template.typ": *

#set document(
  title: "No One is Coming — Project Zomboid B42 Modlist & Survival Guide",
  author: "No One is Coming Team",
)

// ===== COVER PAGE =====
#cover-page()

// ===== TABLE OF CONTENTS =====
#outline(
  title: text(font: heading-font, size: 22pt, fill: color-crimson)[Table of Contents],
  indent: 2em,
)
#pagebreak()

// ===== PREFACE =====
#include "preface.typ"
#pagebreak()

// ===== INSTALLATION =====
#include "installation.typ"
#pagebreak()

// ==========================================
// WAVE 0 — The First Night
// ==========================================
#wave-divider(0, "The First Night", [
  You were just an ordinary person. Maybe you worked in an office, maybe you were a student burning the midnight oil, maybe you were a parent putting the kids to bed. When the screams started outside your window, you had nothing — no gun under the pillow, no bunker in the backyard, no plan. Just the clothes on your back and whatever was in the fridge. The power flickered. The phone lines went dead. The TV played the emergency broadcast on loop until it didn't. You don't know what's happening. You don't know if anyone is coming. You just know you have to make it through the night.
])

#include "wave-0/story.typ"
#pagebreak()
#include "wave-0/settings.typ"
#pagebreak()
#include "wave-0/guide.typ"
#pagebreak()
#include "wave-0/modlist.typ"
#pagebreak()

// ==========================================
// WAVE 1 — Scars and Lessons
// ==========================================
#wave-divider(1, "Scars and Lessons", [
  You saw it coming. Not in time to save them, but in time to know the signs — the quarantines, the curfews, the way the news stopped showing footage from the exclusion zone. You were a mechanic. A carpenter. A nurse. Someone who knew how things worked and how to fix them. You fortified the house. You stockpiled what you could. It wasn't enough. They came through the west window. You don't talk about what happened next. Now you're alone, moving through a broken world with calloused hands and a hollow chest. You know how to survive — but survival and living are not the same thing. Not anymore.
])

#include "wave-1/story.typ"
#pagebreak()
#include "wave-1/settings.typ"
#pagebreak()
#include "wave-1/guide.typ"
#pagebreak()
#include "wave-1/modlist.typ"
#pagebreak()

// ==========================================
// WAVE 2 — No One is Coming
// ==========================================
#wave-divider(2, "No One is Coming", [
  The radio went silent three months ago. The last transmission you heard was a military frequency broadcasting evacuation coordinates for a city that was already burning. You've been on the move ever since — through towns, through forests, through hell. You've buried everyone who trusted you. You've put down people who turned before your eyes. You don't make friends anymore. You don't make plans. You don't hope. Because hope is a lie that gets you killed. There is no cavalry coming over the hill. There is no cure being airlifted from a secret lab. There is no extraction team. No one is coming. There is only you, your skills, your scars, and the dead. And you intend to outlast every last one of them.
])

#include "wave-2/story.typ"
#pagebreak()
#include "wave-2/settings.typ"
#pagebreak()
#include "wave-2/guide.typ"
#pagebreak()
#include "wave-2/modlist.typ"
```

- [ ] **Step 2: Verify main.typ compiles (will have missing includes — that's expected)**

```
typst compile --font-path assets/fonts guide/main.typ output/_noic-test.pdf 2>&1
```

Expected: Error about missing `preface.typ` or `wave-0/story.typ`. This is correct — we haven't written those files yet. The error confirms Typst is reading `main.typ` and the template import works.

- [ ] **Step 3: Commit**

```
git add guide/main.typ
git commit -m "feat: add root main.typ with cover, TOC, wave includes"
```

---

## Phase 4: Shared Guide Content

### Task 10: Create preface.typ

**Files:**
- Create: `guide/preface.typ`

- [ ] **Step 1: Write preface.typ**

```typst
#import "template.typ": *

= Preface

Welcome to *No One is Coming*, a wave-based modlist and survival guide for Project Zomboid Build 42. Whether you're loading into Knox County for the first time or you've survived a thousand winters, this guide walks you through curated experiences — each one a complete new game with its own story, settings, and mod list.

== How This Guide Works

This guide is organized into three *Waves*. Each wave is a self-contained game setup:

- *Wave 0 — The First Night*: A gentle introduction. Complete beginner? Start here. Minimal mods, easy settings, thorough tutorial.
- *Wave 1 — Scars and Lessons*: You've survived. Now thrive. More mods, harder settings, strategy-focused.
- *Wave 2 — No One is Coming*: The real apocalypse. Maximum mods, brutal settings, advanced systems.

Each wave assumes knowledge from previous waves. Start at Wave 0 even if you've played before.

== [B42] Mod Manager

All waves use the *[B42] Mod Manager* as the foundation for managing mods.

#mod-entry(
  name: "[B42] Mod Manager",
  workshop-id: "3567084868",
  category: "UI / QoL",
  dependencies: "None",
  system-impact: "Dedicated in-game mod management UI. Replaces the vanilla Mods screen with profiles, drag-and-drop load order, and conflict detection.",
  description: "Essential tool for managing mods in Build 42. Create mod profiles (one per wave), reorder mods, save/load configurations, and detect known conflicts.",
)

=== Mod Manager Setup

#list(
  [Subscribe to the mod on Steam Workshop using the link above.],
  [Launch Project Zomboid. On the main menu, click *Mods*.],
  [Enable *[B42] Mod Manager* and restart if prompted.],
  [Return to the main menu and click the new *Mod Manager* button.],
  [Create a profile for the wave you're playing (e.g., "Wave 0 — The First Night").],
  [For each mod in the wave: subscribe on Steam Workshop, then enable it in your profile.],
  [Arrange mods in the correct load order (see Installation chapter).],
  [Save the profile and launch the game through the Mod Manager.],
)

#tip[
  Always launch through the Mod Manager, not the vanilla Mods screen. The manager ensures your load order is respected and warns about missing dependencies.
]

=== A Note on Difficulty

Project Zomboid is a game about dying. You *will* die — probably a lot. That's the point. Each death teaches you something. The question isn't whether you'll survive, but how long you'll last and what story you'll leave behind.

*This is how you died.*
```

- [ ] **Step 2: Verify incremental build**

```
typst compile --font-path assets/fonts guide/main.typ output/_noic-test.pdf 2>&1
```

Expected: Error about missing `installation.typ` — confirmation that preface.typ compiled and was included. Delete test PDF:
```powershell
Remove-Item "output\_noic-test.pdf" -ErrorAction SilentlyContinue
```

- [ ] **Step 3: Commit**

```
git add guide/preface.typ
git commit -m "feat: add preface with Mod Manager setup"
```

---

### Task 11: Create installation.typ

**Files:**
- Create: `guide/installation.typ`

- [ ] **Step 1: Write installation.typ**

```typst
#import "template.typ": *

= Installation & Troubleshooting

== Before You Begin

#warning[
  Mods can break your game. Back up saves before adding mods. Saves are at:
  `C:\Users\<YourName>\Zomboid\Saves`
]

#info[
  All mods in this guide are verified for Build 42.12.3. If you encounter issues, check Troubleshooting below.
]

== Installing Mods

=== Step 1: Subscribe on Steam Workshop

Each mod entry includes a clickable Steam Workshop link. Click it, then click the green *Subscribe* button. Steam downloads the mod automatically.

=== Step 2: Enable in Mod Manager

#list(
  [Launch Project Zomboid.],
  [Click *Mod Manager* on the main menu.],
  [Select your wave profile (or create one).],
  [Move mods from *Available* to *Enabled*.],
)

=== Step 3: Arrange Load Order

#list(
  [*Libraries and frameworks first* — modding APIs, script extenders, UI libraries.],
  [*Core overhauls* — major gameplay changes, profession systems.],
  [*Content mods* — items, weapons, vehicles, clothing.],
  [*Map mods* — new locations, map expansions.],
  [*Graphics and visual mods* — textures, models, animations.],
  [*UI mods* — interface improvements, panels, tooltips.],
  [*QoL mods* — minor tweaks and convenience features.],
  [*Compatibility patches* — mods that fix conflicts between other mods.],
  [*Overrides and tweaks* — mods that change specific behaviors (load last).],
)

#danger[
  Incorrect load order is the #1 cause of mod conflicts and crashes.
]

=== Step 4: Start a New Game

#warning[
  Most mods require a *new game*. Do not add mods mid-save unless the mod explicitly says save-compatible. Each wave is designed as a fresh start.
]

== Wave-Specific Load Order

=== Wave 0 (5 mods)
1. [B42] Mod Manager
2-5. UI/QoL mods (order flexible)

=== Wave 1 (20-40 mods)
1. [B42] Mod Manager
2. UI libraries/frameworks
3. Content mods (items, weapons, vehicles)
4. Graphics mods
5. UI/QoL mods

=== Wave 2 (40+ mods)
1. [B42] Mod Manager
2. Modding frameworks and libraries
3. Major gameplay overhauls
4. Profession and trait mods
5. Content mods
6. Map mods (base maps first, then additions)
7. Graphics mods
8. UI/QoL mods
9. Compatibility patches
10. Override/tweak mods (load last)

== Troubleshooting

=== Game Won't Start (Black Screen / CTD)

#list(
  [Check for missing dependencies — Mod Manager shows red warnings.],
  [Verify load order. Move UI/QoL mods lower.],
  [Disable mods one by one to find the culprit.],
  [Verify game cache via Steam: Right-click PZ > Properties > Installed Files > Verify.],
)

=== Red Error Box

A red error box means Lua errors. Usually:
#list(
  [The mod is not B42 compatible.],
  [A dependency is missing or loading after the mod.],
  [Two mods are conflicting.],
)

=== Mods Not Showing in Game

#list(
  [Did you start a *new game*?],
  [Is the mod enabled in *Mod Manager* (not just the vanilla Mods screen)?],
  [Some mods require enabling in Sandbox settings — check the mod's Workshop page.],
)

=== Save Corrupted

#danger[
  Adding/removing mods from an existing save can corrupt it beyond repair. Always start a new game for a new wave. Back up saves before any mod changes.
]

=== Still Stuck?

Check the mod's Steam Workshop comments, search `r/projectzomboid`, or the official PZ Discord.
```

- [ ] **Step 2: Verify incremental build**

```
typst compile --font-path assets/fonts guide/main.typ output/_noic-test.pdf 2>&1
```

Expected: Error about missing `wave-0/story.typ`. Previous sections compile fine.

- [ ] **Step 3: Commit**

```
git add guide/installation.typ
git commit -m "feat: add installation guide with load order and troubleshooting"
```

---

## Phase 5: Wave 0 — The First Night

### Task 12: Create Wave 0 story

**Files:**
- Create: `guide/wave-0/story.typ`

- [ ] **Step 1: Write story.typ**

```typst
#import "../template.typ": *

= Background — The First Night

You were just an ordinary person. Maybe you worked in an office, staring at spreadsheets and counting down to Friday. Maybe you were a student, pulling all-nighters for exams that suddenly don't matter anymore. Maybe you were a parent, tucking your kids into bed and promising to check for monsters in the closet. You never imagined the monsters would come through the front door.

When the screams started outside your window, you had nothing. No gun under the pillow. No bunker in the backyard. No plan. Just the clothes on your back, whatever was in the fridge, and the sinking realization that the world had changed and nobody had sent you a memo.

The power flickered twice and died. The phone lines went dead an hour later. The TV played the emergency broadcast on a loop — *"Stay indoors. Lock all doors and windows. Do not approach anyone exhibiting symptoms."* — until the station cut out for good. Now there's only static and the distant sound of breaking glass.

You don't know what's happening. You don't know if the military is coming, if there's a safe zone, if this is happening everywhere or just here. You don't know anything except that the things outside your window used to be your neighbors and now they're pressing their faces against the glass with dead, hungry eyes.

*This is your first night. Make it count.*
```

- [ ] **Step 2: Verify incremental build**

```
typst compile --font-path assets/fonts guide/main.typ output/_noic-test.pdf 2>&1
```

Expected: Error about missing `wave-0/settings.typ`. Story compiled.

- [ ] **Step 3: Commit**

```
git add guide/wave-0/story.typ
git commit -m "feat: add Wave 0 background story"
```

---

### Task 13: Create Wave 0 settings

**Files:**
- Create: `guide/wave-0/settings.typ`

- [ ] **Step 1: Write settings.typ**

```typst
#import "../template.typ": *

= Sandbox Settings — Wave 0

Wave 0 is for complete beginners. Settings give you room to learn without punishing every mistake. Start here, learn the basics, then move on.

== Game World

Start a Sandbox game. Select *Survivor* preset, then enter *Custom Sandbox* for these overrides:

=== Population

#settings-table((
  ("Zombie Count", "Low (0.5x)"),
  ("Distribution", "Urban Focused"),
  ("Start Multiplier", "0.35"),
  ("Peak Multiplier", "0.65"),
  ("Peak Day", "28"),
))

=== Zombie Lore

#settings-table((
  ("Speed", "Shamblers"),
  ("Strength", "Weak"),
  ("Toughness", "Fragile"),
  ("Transmission", "Saliva Only (bites)"),
  ("Infection Mortality", "Instant"),
  ("Cognition", "Basic Navigation"),
  ("Memory", "Short"),
  ("Sight", "Normal"),
  ("Hearing", "Normal"),
  ("Environmental Attacks", "Off"),
  ("Drag Down", "Off"),
))

=== Loot

#settings-table((
  ("All Categories", "Common"),
  ("Ranged Weapons", "Common"),
  ("Ammunition", "Common"),
  ("Literature", "Common"),
  ("Fresh Food", "Normal"),
  ("Canned Food", "Common"),
  ("Medical", "Common"),
  ("Survival Essentials", "Common"),
  ("Mechanics", "Common"),
))

=== Character

#settings-table((
  ("XP Multiplier", "2.0x"),
  ("Multihit", "Enabled"),
  ("Rear Vulnerability", "Low"),
  ("Starter Kit", "Enabled"),
  ("Clothing Degradation", "Slow"),
))

=== World

#settings-table((
  ("Water Shutoff", "14-30 days"),
  ("Electricity Shutoff", "14-30 days"),
  ("House Alarms", "Rare"),
  ("Locked Houses", "Rare"),
  ("Helicopter Events", "Once"),
  ("Meta Events", "Rare"),
  ("Sleeping Event", "Never"),
))

=== Nature

#settings-table((
  ("Farming Abundance", "High"),
  ("Nature Abundance", "High"),
  ("Fishing Abundance", "High"),
  ("Foraging Abundance", "High"),
  ("Trapping Abundance", "High"),
))

== Starting Location

*Rosewood* or *Riverside*. Lower zombie count and good starter loot. Avoid West Point and Louisville.

== Beginner Trait Build

If character creation is overwhelming, try this:

*Occupation:* Unemployed (8 free points)

*Positives:* Cats Eyes (2), Dexterous (2), Outdoorsman (2), Wakeful (2)

*Negatives:* Weak Stomach (+3), Prone to Illness (+4), Slow Healer (+6), Smoker (+4)

#tip[
  *Smoker* is nearly free points — cigarettes are very common. Just don't forget to smoke when anxious.
]

#warning[
  Avoid: Deaf, Illiterate, Obese, Very Underweight, Asthmatic, anything below 3 Fitness/Strength. These will kill you quickly as a beginner.
]
```

- [ ] **Step 2: Verify incremental build**

```
typst compile --font-path assets/fonts guide/main.typ output/_noic-test.pdf 2>&1
```

Expected: Error about missing `wave-0/guide.typ`.

- [ ] **Step 3: Commit**

```
git add guide/wave-0/settings.typ
git commit -m "feat: add Wave 0 sandbox settings"
```

---

### Task 14: Create Wave 0 guide

**Files:**
- Create: `guide/wave-0/guide.typ`

- [ ] **Step 1: Write guide.typ**

Content kept concise: ~0.5-1 page per topic, beginner-friendly tone, no min-max advice.

```typst
#import "../template.typ": *

= How to Play — Wave 0

Welcome to Knox County. This chapter walks you through everything you need to know as a new player. Take it one section at a time.

== 1. Getting Started

Project Zomboid is on Steam. For Wave 0, you only need the base game and the 5 mods in the Wave 0 Modlist chapter. Subscribe to them on the Steam Workshop, enable in [B42] Mod Manager, create a "Wave 0" profile. Launch from Mod Manager, click *Solo*, then *Custom Sandbox*, and apply settings from the Sandbox Settings page.

== 2. Basic Controls

=== Movement & Combat

#settings-table((
  ("WASD", "Move"),
  ("Left Click", "Attack / Push"),
  ("Right Click", "Aim weapon"),
  ("Space", "Push / Stomp"),
  ("Ctrl", "Crouch (quieter)"),
  ("E", "Climb fence / Open window"),
  ("Shift", "Jog (noisy)"),
  ("Alt", "Sprint (very noisy — last resort)"),
))

=== Inventory & Interaction

#settings-table((
  ("I", "Inventory"),
  ("F", "Flashlight / Use item"),
  ("R", "Reload weapon"),
  ("Tab", "Health panel"),
  ("M", "Minimap"),
  ("B", "Crafting menu"),
  ("V", "Search/Foraging mode"),
))

#danger[
  The *Q key shouts*. It attracts zombies from a huge radius. Do not press Q by accident. Unbind it if needed.
]

== 3. Combat — Read This First

Project Zomboid combat is not forgiving. Here's the minimum you need before your first fight:

#list(
  [*Right-click to aim.* Your character faces the cursor. You cannot attack without aiming.],
  [*Left-click to attack.* Weapon in hand = swing. Empty hand = push.],
  [*Spacebar to push/stomp.* Push zombies away when they get close. Stomp a downed zombie's head.],
  [*Backpedal while fighting.* Walk backwards (S) while aiming. Never stand still.],
  [*Fight one at a time.* If 3+ zombies approach, walk away and find a safer position.],
  [*Check behind you.* Zombies come from off-screen. Turn around often.],
  [*Rest between fights.* If you see the Exhausted moodle (top-right), retreat and sit down (right-click ground > Rest).],
)

#tip[
  Practice on a single zombie: find one alone, approach slowly, aim, push it down, stomp its head. Do this a few times. Now you know the basics.
]

=== Weapons

Better weapons are found in garages, sheds, and hardware stores. Initially, anything is better than bare hands:

- *Frying pan, rolling pin, kitchen knife* — found in house kitchens. Use until you find better.
- *Hammer, pipe, wrench* — found in garages and sheds. Short range but common.
- *Baseball bat, crowbar, axe* — best weapons. Found in garages, hardware stores, and warehouses. Crowbars last the longest.

#tip[
  The *crowbar* is excellent for beginners — very durable. If you find one, keep it.
]

=== When to Run

Walk away if: there are 3+ zombies, you're tired, you're panicked, or you hear a helicopter. You can always come back.

== 4. The UI

Key parts of the screen:

- *Inventory window (I):* What you're carrying. Left side = you, right side = container you're looting.
- *Health panel (Tab):* Injuries, bandages, overall condition.
- *Crafting panel (B):* Available recipes. Grayed out = missing materials or skill.
- *Moodles (top-right):* Icons showing your physical/mental state. Hover over any moodle to see what it means.
- *Hotbar (bottom):* Drag items here for number-key quick access. Put your weapon and water bottle here.

== 5. Character Creation

=== Occupation

Your job determines starting skills. For a first playthrough, *Unemployed* gives the most flexibility (8 free trait points). Other friendly options:

- *Carpenter:* +3 Carpentry. Helps with building and barricading.
- *Burger Flipper:* +2 Cooking, +1 Maintenance. Cooking helps with food.
- *Nurse:* +2 First Aid, +1 Lightfooted. Medical skills and quieter movement.

=== Positive Traits (pick a few you can afford)

- *Cats Eyes (2pts):* See better at night.
- *Dexterous (2pts):* Transfer items faster — saves real time.
- *Outdoorsman (2pts):* Less likely to get sick from weather.
- *Wakeful (2pts):* Need less sleep. More looting time.
- *Brave (4pts):* Less panic in combat. Big difference.
- *Lucky (4pts):* Find better loot.
- *Thick Skinned (6pts):* Better defense against scratches and bites.

=== Negative Traits (fund your positives)

- *Weak Stomach (+3):* Don't eat rotten food. A good habit anyway.
- *Smoker (+4):* Need cigarettes. They're common. Manageable.
- *Slow Healer (+6):* Injuries heal slower. Stay safe and it won't matter.
- *High Thirst (+6):* Carry two water bottles instead of one.
- *Slow Reader (+2):* Books take longer. Annoying but not dangerous.

#warning[
  Do NOT take: Deaf, Illiterate, Obese, Very Underweight, Asthmatic. These make survival much harder.
]

== 6. Basic Needs

Your character needs four things (in order of urgency): safety, water, food, sleep.

=== Water

Find water sources immediately:
#list(
  [*Sinks, toilets, bathtubs* — every house. Right-click > Drink.],
  [*Water bottles* — kitchens. Fill at sinks and carry with you.],
  [*Water dispensers* — offices and schools. Big water jugs.],
)

#info[
  Water shuts off after 14-30 days. After that, plumbing runs dry. Eventually you'll need rain collectors (Carpentry 4). But that's a Wave 1 concern.
]

=== Food

Every house kitchen has:
#list(
  [*Fridge:* Fresh food. Eat this first — it rots.],
  [*Cabinets:* Canned food. Save this for later — it never rots.],
  [*Countertops:* Snacks, chips, soda.],
)

#warning[
  Don't eat *Rotten* food. The *Stale* tag is okay — just less nutritious.
]

=== Sleep

Find a bed in any house. Right-click > Sleep. Close curtains and lock doors before sleeping. An unsecured door while you sleep is how you die.

=== Shelter

Your first priority on day one: find a two-story house on the edge of town. Close all curtains. Lock all doors. Turn off lights. If you have a hammer, nails, and a plank, barricade a ground-floor window (right-click window > Barricade).

== 7. First Day Checklist

Follow this order on day one:

#list(
  [Find a weapon — anything from the kitchen or garage.],
  [Drink from a sink. Fill a water bottle if you find one.],
  [Find a safe house — two-story, edge of town. Close curtains, lock doors.],
  [Eat fresh food from the fridge.],
  [Find a bag — backpack, duffel, anything that increases carry capacity.],
  [Find a better weapon — check garages and sheds for axes, bats, crowbars.],
  [If you have a TV, check the *Life and Living* channel at 6:00, 12:00, and 18:00 for free skill XP.],
  [Before nightfall: close all curtains, lock all doors, turn off lights, go upstairs, be quiet.],
)

== 8. TV and Radio

=== Life and Living TV

At 6:00 AM, 12:00 PM, and 6:00 PM, the channel *Life and Living* runs skill shows:
- *6:00 AM — Cooking Show*
- *12:00 PM — Woodcraft (Carpentry)*
- *6:00 PM — Exposure Survival (Fishing, Trapping, Foraging)*

These shows stop after about 9 days — the broadcast eventually goes dead. Watch them while you can.

#tip[
  If you find a skill book for the matching skill, read it *before* watching. The XP bonus applies to TV XP too.
]

=== Radios

Radios can be tuned to the *Automated Emergency Broadcast* for weather forecasts and helicopter warnings. The frequency is random — check radios you find for the right channel. Keep a radio at your base.

== 9. Moodles

Moodles are the icons top-right. Hover over any to see details.

*Physical (Red):* Bleeding (bandage now), Injured, Heavy Load (drop items), Exhausted (rest).
*Sickness (Green):* Queasy/Nauseous (could be infection), Wet (dry off or get sick), Cold (find warm clothes).
*Mental (Blue):* Panic (fades as you kill zombies), Anxious/Stressed (Smoker = need cigarette), Bored (read or go outside).
*Comfort (Yellow):* Hungry (eat), Thirsty (drink), Tired (sleep), Pain (take painkillers).

If you were recently injured and see green moodles progressing (queasy -> nauseous -> sick -> fever), it's probably the Knox Infection. There is no cure. Prepare your next character.

== 10. Death and What Comes After

You will die. It's how the game works.

When you die, you get two choices:
1. *New Character* — Create a new character in the same world. Your old base, items, and crops are still there.
2. *Quit to Menu* — Start fresh. No shame in this as a beginner.

=== What to Do If Bitten

A zombie bite is always fatal (makes a distinctive sound, health panel shows "Bitten"):
#list(
  [Accept it. No cure.],
  [Put your best items in a container at your base for your next character.],
  [Go out fighting — clear zombies for your next life.],
)

== 11. First Night Strategy

When the sun sets:

#list(
  [Close all curtains on every window.],
  [Lock all exterior doors.],
  [Turn off all lights — they attract zombies.],
  [Go upstairs — zombies on the ground floor can't reach you immediately.],
  [Be quiet — don't run, don't use noisy tools.],
  [Eat, drink, read a skill book if you have one.],
  [Sleep. Your character will wake up if zombies break in.],
)

If you hear banging downstairs: stay upstairs, have a spare sheet + nail ready to craft a sheet rope for a window escape.

== 12. Days 2-7 — What's Next

You made it through the first night. Here's the plan for the first week:

#list(
  [*Scout your neighborhood.* Get a feel for where things are.],
  [*Watch Life and Living* at 6:00, 12:00, and 18:00 every day.],
  [*Find skill books.* Bookstores and schools. Read before practicing skills.],
  [*Barricade your base.* Board up ground-floor windows.],
  [*Collect water.* Fill pots, buckets, and bottles before the water shuts off.],
  [*Find a car.* Check driveways and parking lots. Keys in glove boxes, on the ground, or on zombies nearby.],
  [*Practice skills.* Disassemble furniture for Carpentry XP, cook meals for Cooking XP, read books.],
)

When you're comfortable with all of this, you're ready for Wave 1.
```

- [ ] **Step 2: Verify incremental build**

```
typst compile --font-path assets/fonts guide/main.typ output/_noic-test.pdf 2>&1
```

Expected: Error about missing `wave-0/modlist.typ`.

- [ ] **Step 3: Commit**

```
git add guide/wave-0/guide.typ
git commit -m "feat: add Wave 0 beginner guide (controls, combat, survival, first night)"
```

---

### Task 15: Discover and write Wave 0 modlist

**Files:**
- Create: `guide/wave-0/modlist.typ`
- Modify: `mod-conflicts.md` (if conflicts found)

**What to research:** 3-4 B42-compatible UI/QoL mods (plus Mod Manager = 4-5 total) that change nothing about gameplay.

- [ ] **Step 1: Research UI/QoL mods on Steam Workshop**

Use Playwright to open `https://steamcommunity.com/app/108600/workshop/`. For each candidate mod, verify:
1. Description mentions B42 or "Build 42"
2. Last updated ≥ October 2025
3. No comments reporting B42 crashes
4. Category is purely UI/QoL (no gameplay changes)

Known candidates to verify first (search by name or navigate to their Workshop pages):

- Mini Health Panel (Workshop 3018203346) — compact always-visible health display
- Better Sorting (Workshop 2932811582) — item category prefixes in inventory
- Has Been Read B42 (Workshop 3044843965) — marks books you've read
- Weapon Condition Indicator (Workshop 2618638488) — durability bar on hotbar icons
- Generator Range / Generator Time Remaining (if B42 compatible) — QoL without gameplay change
- Craft Helper / What Can I Craft (if B42 compatible)

If any candidate fails verification, find a replacement in the same category. Prioritize mods with high subscriber counts (more tested).

- [ ] **Step 2: Write modlist.typ with verified mods**

```typst
#import "../template.typ": *

= Modlist — Wave 0

Wave 0 keeps mods to a strict minimum: the Mod Manager plus a handful of UI improvements. Zero gameplay changes.

== Mod Manager

#mod-entry(
  name: "[B42] Mod Manager",
  workshop-id: "3567084868",
  category: "UI / QoL",
  dependencies: "None",
  system-impact: "Adds a dedicated mod management interface with profiles, drag-and-drop load order, and conflict detection.",
  description: "Mandatory for all waves. Create a 'Wave 0' profile before enabling any other mods.",
)

== UI & Quality of Life

// --- INSERT VERIFIED MODS BELOW ---
// Replace Workshop IDs and descriptions with verified data from Step 1.
// Use #mod-entry() for each. Expected: 3-4 entries.

#mod-entry(
  name: "Mini Health Panel",
  workshop-id: "3018203346",
  category: "UI",
  dependencies: "None",
  system-impact: "Adds a compact, always-visible health panel overlay. Purely visual — no gameplay changes.",
  description: "Shows a small health panel so you can see injuries at a glance without opening the full health screen.",
)

#mod-entry(
  name: "Better Sorting",
  workshop-id: "2932811582",
  category: "UI / QoL",
  dependencies: "None",
  system-impact: "Auto-categorizes inventory items with prefixes. No gameplay impact.",
  description: "Adds category tags like [Food], [Weapon], [Medical] to item names so inventory stays organized.",
)

#mod-entry(
  name: "Has Been Read B42",
  workshop-id: "3044843965",
  category: "UI / QoL",
  dependencies: "None",
  system-impact: "Visual indicator on previously read books and magazines. No gameplay impact.",
  description: "Marks skill books, magazines, and recipes you've already read so you don't pick up duplicates.",
)

#mod-entry(
  name: "Weapon Condition Indicator",
  workshop-id: "2618638488",
  category: "UI",
  dependencies: "None",
  system-impact: "Displays weapon durability as a colored bar on hotbar icons. No gameplay impact.",
  description: "Shows a condition bar on each weapon's hotbar icon so you know when it's about to break.",
)

#info[
  Wave 0 uses exactly 5 mods. All are UI or QoL. You are playing vanilla Project Zomboid with a better interface.
]
```

#tip[
  The Workshop IDs above are candidate mods. Verify each one during Step 1 research. If a mod fails verification (not B42 compatible, abandoned, etc.), replace it with a verified alternative and update the modlist.
]

**Load order:** Mod Manager first, then UI/QoL mods in any order.
```

- [ ] **Step 3: Verify incremental build**

```
typst compile --font-path assets/fonts guide/main.typ output/_noic-test.pdf 2>&1
```

Expected: Error about missing `wave-1/story.typ`. Wave 0 section is complete. Delete test:
```powershell
Remove-Item "output\_noic-test.pdf" -ErrorAction SilentlyContinue
```

- [ ] **Step 4: Commit**

```
git add guide/wave-0/modlist.typ
git add mod-conflicts.md  # if updated
git commit -m "feat: add Wave 0 modlist (5 mods, UI/QoL only)"
```

---

## Phase 6: Wave 1 — Scars and Lessons

### Task 16: Create Wave 1 story

**Files:**
- Create: `guide/wave-1/story.typ`

- [ ] **Step 1: Write story.typ**

```typst
#import "../template.typ": *

= Background — Scars and Lessons

You saw it coming. Not in time to save them, but in time to know the signs.

When the first reports came out of Louisville — "riots," they called them — you were already watching. You'd been a mechanic for fifteen years, fixing cars in a shop off the highway, and you'd learned to spot the things people don't want to see. The quarantines that kept expanding. The curfews nobody explained. The way the news anchors' smiles got tighter every night until the smiles stopped altogether.

You got the supplies. You boarded the windows. You told yourself the same thing everyone tells themselves: *it won't reach us here*.

It reached you.

They came through the west window at two in the morning. You don't talk about what happened next. You don't talk about the blood on the kitchen floor or the sound the door made when something kept throwing itself against it. You don't talk about the fact that you were the only one who made it out.

Now you're alone. You move through a broken world with calloused hands and a hollow chest. You know how to fix an engine, how to wire a generator, how to build a wall that'll hold. You know how to survive. But somewhere along the line, you forgot how to do anything else.

*Survival and living are not the same thing. Not anymore.*
```

- [ ] **Step 2: Verify incremental build**

```
typst compile --font-path assets/fonts guide/main.typ output/_noic-test.pdf 2>&1
```

Expected: Error about missing `wave-1/settings.typ`.

- [ ] **Step 3: Commit**

```
git add guide/wave-1/story.typ
git commit -m "feat: add Wave 1 background story"
```

---

### Task 17: Create Wave 1 settings

**Files:**
- Create: `guide/wave-1/settings.typ`

- [ ] **Step 1: Write settings.typ**

```typst
#import "../template.typ": *

= Sandbox Settings — Wave 1

Wave 1 is standard Apocalypse difficulty. Challenging but fair. You should have completed Wave 0 first.

== Game World

Start a Sandbox game. Select *Apocalypse* preset, then apply overrides:

=== Population

#settings-table((
  ("Zombie Count", "Normal (1.0x)"),
  ("Start Multiplier", "0.65"),
  ("Peak Multiplier", "1.5"),
  ("Peak Day", "28"),
))

=== Zombie Lore

#settings-table((
  ("Speed", "Fast Shamblers"),
  ("Strength", "Normal"),
  ("Toughness", "Normal"),
  ("Transmission", "Saliva Only"),
  ("Cognition", "Normal"),
  ("Memory", "Normal"),
  ("Sight", "Normal"),
  ("Hearing", "Normal"),
  ("Environmental Attacks", "On"),
))

=== Loot

#settings-table((
  ("All Categories", "Rare"),
))

=== Character

#settings-table((
  ("XP Multiplier", "1.0x"),
  ("Multihit", "Disabled"),
  ("Rear Vulnerability", "Normal"),
  ("Starter Kit", "Disabled"),
))

=== World

#settings-table((
  ("Water Shutoff", "0-14 days"),
  ("Electricity Shutoff", "0-14 days"),
  ("House Alarms", "Sometimes"),
  ("Helicopter Events", "Sometimes"),
  ("Meta Events", "Sometimes"),
))

=== Nature

#settings-table((
  ("All Abundances", "Normal"),
))

== Starting Location

*Muldraugh* or *Rosewood*. Muldraugh has a warehouse and main strip but higher zombie density.

== Intermediate Trait Build

*Occupation:* Carpenter (+3 Carpentry, +1 Short Blunt)

*Positives:* Brave (4), Dexterous (2), Outdoorsman (2), Cats Eyes (2)

*Negatives:* Smoker (+4), Weak Stomach (+3), Slow Healer (+6), High Thirst (+6)

#tip[
  At this difficulty, *Brave* is valuable — panic reduces damage by up to 30%. Less panic = more dead zombies.
]
```

- [ ] **Step 2: Verify incremental build**

```
typst compile --font-path assets/fonts guide/main.typ output/_noic-test.pdf 2>&1
```

Expected: Error about missing `wave-1/guide.typ`.

- [ ] **Step 3: Commit**

```
git add guide/wave-1/settings.typ
git commit -m "feat: add Wave 1 sandbox settings (Apocalypse)"
```

---

### Task 18: Create Wave 1 guide

**Files:**
- Create: `guide/wave-1/guide.typ`

- [ ] **Step 1: Write guide.typ**

```typst
#import "../template.typ": *

= Strategy Guide — Wave 1

You've survived your first week. You know how to push, swing a crowbar, and find a can of beans. Now stop surviving and start thriving. This covers intermediate strategy, base building, crafting, and mid-game planning.

*Assumes completion of Wave 0.*

== 1. Base Building & Fortification

A closed-curtain house was fine for Wave 0. Now you need a proper fortress.

=== Choosing a Base

Good bases have:
#list(
  [*Multiple floors.* Stairs are natural choke points.],
  [*Few ground-floor windows.* Fewer entry points to defend.],
  [*Proximity to water.* River, lake, or well. Critical after shutoff.],
  [*Proximity to woods.* Foraging and trapping require forest tiles.],
  [*Pre-built fences or walls.* Indestructible barriers are priceless.],
)

#tip[
  Gated communities in Rosewood and Riverside have tall fences zombies can't destroy. The Riverside warehouse and Rosewood fire station are classic base locations with roof access.
]

=== Carpentry Milestones

#settings-table((
  ("Level 2", "Board up windows."),
  ("Level 3", "Build walls, door frames, rain collectors."),
  ("Level 4", "Advanced rain collector barrels, bookcases."),
  ("Level 5", "Stairs, large crates."),
  ("Level 6-7", "Log walls, plastered walls, composters."),
))

=== Key Base Features

- *Sheet rope escape:* Nail + sheet rope on a second-floor window. Climb down. Remove rope from inside.
- *Airlock:* Small room with two doors at entrance. Outer door breaks, you have a second barrier.
- *Generator placement:* On the roof or sealed shed. It's noisy and attracts zombies — keep it away from sleeping area.

== 2. Farming

Long-term food. Once water and power shut off, farms become essential.

=== Getting Started
#list(
  [Find seeds (farming stores, warehouses, kitchens).],
  [Find trowel or shovel.],
  [Dig furrows, sow seeds, water each plant.],
  [Check daily for growth, water level, and disease.],
)

=== Crop Selection

#settings-table((
  ("Cabbages", "Fastest (10 days). Rots quickly. Good for practice."),
  ("Potatoes", "Slow (26 days). Long shelf life. Best staple."),
  ("Tomatoes", "Medium (18 days)."],
  ("Carrots", "Medium (18 days). Good nutrition."),
))

#tip[
  Stagger planting. Don't plant everything on the same day or everything rots at once. Plant a few seeds every 3-4 days.
]

=== Disease
Check plants daily. Remove any diseased plant immediately (it spreads). Don't overwater. Leave gaps between different crops.

== 3. Trapping & Fishing

=== Trapping
#list(
  [Craft traps (twine + wire + plank) and bait with food.],
  [Place in forest tiles, 75+ tiles from any player structure.],
  [Leave the area for at least 1 hour. Trapping doesn't work near players.],
  [Check within 24 hours — dead animals rot.],
)

=== Fishing
#list(
  [Craft or find a fishing rod (sturdy stick + fishing line + hook).],
  [Stand next to river/lake/pond. Right-click > Fish.],
  [Dawn and dusk yield the most fish (6:00-9:00 and 18:00-21:00).],
  [Winter fishing is much harder. At Fishing 2, you can spear fish without a rod.],
)

== 4. Vehicles & Mechanics

=== Finding and Starting a Car
#list(
  [Cars spawn in driveways, parking lots, roads.],
  [Check the glove box for a key. Also check the ground and nearby zombies.],
  [Check the gas gauge — many cars are empty. Bring a gas can.],
  [To hotwire without a key: need Mechanics 2 + Electrical 1. Right-click > Hotwire.],
)

=== Vehicle Condition

#settings-table((
  ("Engine", "Below 30% may not start."),
  ("Battery", "Drains over time. Charge with battery charger."),
  ("Gas Tank", "Fill from gas cans or fuel pumps."),
  ("Tires", "Burst tires prevent driving."),
  ("Muffler", "Broken muffler = extremely noisy car."),
))

#warning[
  Cars attract zombies. Don't drive directly to your base. Park a short distance away and walk.
]

=== Leveling Mechanics
Read Mechanics skill book. Remove and reinstall parts (lightbulbs, radio, battery) for XP. Repeat. Higher Mechanics allows engine/brake/suspension repairs.

== 5. Generators & Electrical

After the power grid fails, generators are your only electricity.

#list(
  [Find a generator in sheds, garages, warehouses.],
  [Find *"How to Use Generators"* magazine in bookstores, schools, mailboxes. You cannot connect a generator without it.],
  [Place generator *outside* — indoor generators produce carbon monoxide. You will die in your sleep.],
  [Connect: right-click generator > Connect. Turn on.],
  [A full tank lasts about 4-5 days.],
)

#danger[
  Generator indoors = death. Always outdoors or on the roof.
]

Level Electrical by dismantling TVs, radios, digital watches, lamps. At Electrical 1, you can hotwire cars (with Mechanics 2).

== 6. Metalworking

For stronger structures and vehicle repair.

#list(
  [Find a propane torch and welding mask (warehouses, garages).],
  [Find metal sheets, bars, pipes (disassemble metal furniture, wrecked cars).],
  [Build metal walls, doors, crates — stronger than wood.],
  [Repair vehicle bodywork with metal sheets.],
)

#tip[
  Propane torches are finite. Use wood for basic structures, save metal for critical fortifications like your front door.
]

== 7. Medical System

=== Injury Types

#settings-table((
  ("Scratch", "7% zombie infection. Bandage."),
  ("Laceration", "25% infection. Bandage, change when dirty."),
  ("Deep Wound", "Suture with needle + thread. Then bandage."),
  ("Bite", "100% fatal. No treatment. Prepare to die."),
  ("Fracture", "Splint (branch + ripped sheet). Weeks to heal."),
))

=== Supplies to Carry
Bandages (5+), disinfectant, painkillers, beta blockers (for panic), tweezers (for glass/bullets).

#danger[
  Zombie infection and wound infection are different. Wound infection = curable (antibiotics). Zombie infection = fatal (queasy -> fever -> dead). You'll know which one within 12 hours.
]

== 8. Tailoring & Armor

Add protective patches to clothing.

#list(
  [Find needle + thread (sewing kits, houses, clothing stores).],
  [Rip clothing for leather/denim/cloth strips.],
  [Right-click clothing > Inspect > Add Patch.],
  [Leather patches give the most protection.],
  [Prioritize hands and forearms — most common injury locations.],
)

#tip[
  Leather jackets and firefighter gear have high base protection. Patch them with leather for maximum defense. A fully patched leather jacket stops most scratches.
]

== 9. Long-Term Survival Planning

=== Pre-Shutoff Checklist
#list(
  [Find 2+ generators and the generator magazine.],
  [Stockpile 10+ gas cans. Gas pumps need power — fill up before it's out.],
  [Build 4+ rain collector barrels (Carpentry 4).],
  [Fill every pot, bucket, bottle with water.],
  [Start a farm. Cabbages for quick food, potatoes for storage.],
)

=== Winter Survival

#list(
  [Stockpile warm clothes — sweaters, jackets, scarves, gloves.],
  [Antique oven for indoor heat (rare, found in warehouses/cabins). Campfire indoors = death.],
  [Farming stops in winter. Build indoor farm with heat source if needed.],
  [Fishing and foraging yields drop significantly. Trapping continues at reduced rates.],
  [Your stockpile matters now. Every can you saved is a meal.],
)

=== The Long Game
After 2-3 months: fortified base, food independence, working vehicles, high skills. The challenge becomes venturing further (Louisville, military checkpoints), building outposts, and maxing skills. When you reach this stage and want more, you're ready for Wave 2.
```

- [ ] **Step 2: Verify incremental build**

```
typst compile --font-path assets/fonts guide/main.typ output/_noic-test.pdf 2>&1
```

Expected: Error about missing `wave-1/modlist.typ`.

- [ ] **Step 3: Commit**

```
git add guide/wave-1/guide.typ
git commit -m "feat: add Wave 1 strategy guide (base building, vehicles, farming, crafting)"
```

---

### Task 19: Discover and write Wave 1 modlist

**Files:**
- Create: `guide/wave-1/modlist.typ`
- Modify: `mod-conflicts.md` (if conflicts found)

- [ ] **Step 1: Research 20-40 B42 mods across categories**

Use Playwright to search Steam Workshop. For each candidate: verify B42 compatibility, check last updated ≥ Oct 2025, read comments.

Research by category (search keywords):

*Graphics (5-8 mods):*
Search: "B42 texture", "B42 HD", "B42 retexture", "B42 visual"
- Vehicle retextures, environment improvements, blood/gore, clothing textures, zombie variety

*Items & Equipment (5-8 mods):*
Search: "B42 weapons", "B42 clothing", "B42 items", "B42 food"
- Additional weapons (firearms, melee), clothing packs, food/cooking expansions, medical items

*Vehicles (3-5 mods):*
Search: "B42 vehicles", "B42 cars"
- Additional vehicle types (verify B42), vehicle accessories, vehicle skins

*QoL Expansions (5-8 mods):*
Search: "B42 UI", "B42 crafting", "B42 inventory"
- Map symbol packs, crafting UI helpers, equipment/inventory UI, context menu improvements

*Professions & Traits (2-4 mods):*
Search: "B42 traits", "B42 professions"
- Expanded trait lists, new occupations (B42 compatible)

*Mild Content (3-5 mods):*
Search: "B42 locations", "B42 events", "B42 loot"
- Small map additions, random events, loot variety

- [ ] **Step 2: Write modlist.typ with verified mods**

```typst
#import "../template.typ": *

= Modlist — Wave 1

Wave 1 introduces visual upgrades, additional content, vehicles, and mild gameplay expansions. All mods verified B42 compatible.

== Mod Manager

#mod-entry(
  name: "[B42] Mod Manager",
  workshop-id: "3567084868",
  category: "UI / QoL",
  dependencies: "None",
  system-impact: "Mod management profiles, load order, conflict detection.",
  description: "Mandatory. Create a 'Wave 1' profile.",
)

== Graphics

// INSERT graphics mods (5-8)
// Each verified mod: #mod-entry(...)

== Items & Equipment

// INSERT items mods (5-8)
// Each verified mod: #mod-entry(...)

== Vehicles

// INSERT vehicle mods (3-5)
// Each verified mod: #mod-entry(...)

== UI & Quality of Life

// INSERT QoL mods (5-8)
// Each verified mod: #mod-entry(...)

== Professions & Traits

// INSERT trait/profession mods (2-4)
// Each verified mod: #mod-entry(...)

== Content & Locations

// INSERT content mods (3-5)
// Each verified mod: #mod-entry(...)

== Summary

#info[
  Wave 1 targets 20-40 mods across 6 categories. Each entry verified for B42.12.3 via Steam Workshop.
]

== Load Order

1. [B42] Mod Manager
2. UI libraries/frameworks (if any)
3. Professions & Traits
4. Content & Locations
5. Items & Equipment
6. Vehicles
7. Graphics
8. UI & Quality of Life
```

- [ ] **Step 3: Document known conflicts in mod-conflicts.md** (template in Task 23)

- [ ] **Step 4: Verify incremental build**

```
typst compile --font-path assets/fonts guide/main.typ output/_noic-test.pdf 2>&1
```

Expected: Error about missing `wave-2/story.typ`.

- [ ] **Step 5: Commit**

```
git add guide/wave-1/modlist.typ mod-conflicts.md
git commit -m "feat: add Wave 1 modlist (20-40 mods, graphics/content/vehicles/QoL)"
```

---

## Phase 7: Wave 2 — No One is Coming

### Task 20: Create Wave 2 story

**Files:**
- Create: `guide/wave-2/story.typ`

- [ ] **Step 1: Write story.typ**

```typst
#import "../template.typ": *

= Background — No One is Coming

The radio went silent three months ago. You were holed up in a fire station near Brandenburg when the last transmission crackled through — a military frequency, staticky and desperate, broadcasting evacuation coordinates for a city that was already burning. You listened until the static swallowed the voice and the radio went dead.

That was the last time anyone promised you rescue.

You've been on the move ever since. Through towns where the streets are carpeted with the dead. Through forests where the silence is worse than the screaming. You've buried everyone who trusted you — faces and names you won't let yourself remember because remembering makes you slow and being slow makes you dead.

You don't make friends anymore. You don't make plans longer than the next sunrise. You don't hope. Hope is a lie that gets you killed. Hope is what killed Daniels when he went back for the photo of his wife. Hope is what killed Chen when she insisted there had to be a cure.

There is no cavalry coming over the hill. There is no cure. There is no extraction team. No one is coming.

There is only you. Your skills. Your scars. Your refusal to die. And the dead — thousands, millions, an entire world of them — who will never stop, never sleep, never give up trying to end you.

*You intend to outlast every last one of them.*
```

- [ ] **Step 2: Verify incremental build**

```
typst compile --font-path assets/fonts guide/main.typ output/_noic-test.pdf 2>&1
```

Expected: Error about missing `wave-2/settings.typ`.

- [ ] **Step 3: Commit**

```
git add guide/wave-2/story.typ
git commit -m "feat: add Wave 2 background story"
```

---

### Task 21: Create Wave 2 settings

**Files:**
- Create: `guide/wave-2/settings.typ`

- [ ] **Step 1: Write settings.typ**

```typst
#import "../template.typ": *

= Sandbox Settings — Wave 2

*No Hope* configuration. The ultimate challenge. Everything is against you.

== Game World

Start from *Apocalypse* preset, apply all overrides. This is custom hardcore.

=== Population

#settings-table((
  ("Zombie Count", "High (2.0x)"),
  ("Distribution", "Uniform"),
  ("Peak Multiplier", "3.0"),
  ("Peak Day", "14"),
  ("Respawn", "0.1x (nearly off — cleared stays cleared)"),
))

=== Zombie Lore

#settings-table((
  ("Speed", "Random (shamblers + sprinters mixed)"),
  ("Strength", "Tough"),
  ("Toughness", "Tough"),
  ("Transmission", "Blood + Saliva (scratches + lacerations + bites)"),
  ("Cognition", "Navigate + Open Doors"),
  ("Memory", "Long"),
  ("Sight", "Eagle"),
  ("Hearing", "Pinpoint"),
  ("Environmental Attacks", "On"),
  ("Drag Down", "On"),
))

=== Loot

#settings-table((
  ("All Categories", "Extremely Rare"),
))

=== Character

#settings-table((
  ("XP Multiplier", "0.75x"),
  ("Multihit", "Disabled"),
  ("Rear Vulnerability", "High"),
  ("Starter Kit", "Disabled"),
  ("Clothing Degradation", "Fast"),
))

=== World

#settings-table((
  ("Water Shutoff", "0 days (instant)"),
  ("Electricity Shutoff", "0 days (instant)"),
  ("House Alarms", "Frequent"),
  ("Locked Houses", "Frequent"),
  ("Helicopter", "Often"),
  ("Meta Events", "Often"),
  ("Sleeping Event", "Sometimes"),
  ("Car Spawn Rate", "Low"),
  ("Initial Gas", "Very Low"),
))

=== Nature

#settings-table((
  ("All Abundances", "Very Poor"),
  ("Compost Time", "Slow (2 weeks)"),
))

=== Starting Conditions

#settings-table((
  ("Starting Month", "December"),
  ("Temperature", "Cold"),
))

== Starting Location

*West Point* or *Muldraugh*. No easy option. West Point has the highest zombie density outside Louisville.

== Hardcore Trait Build

*Occupation:* Fire Officer (+1 Axe, +1 Sprinting, +1 Strength, +1 Fitness)

*Positives:* Keen Hearing (6), Brave (4), Thick Skinned (6), Outdoorsman (2), Wakeful (2)

*Negatives:* Thin-Skinned (+8), Slow Healer (+6), Weak Stomach (+3), High Thirst (+6)

#danger[
  Water is off. Power is out. It's December. Every scratch can infect you. Zombies open doors. You will die on day one. Multiple times. This is intentional.
]
```

- [ ] **Step 2: Verify incremental build**

```
typst compile --font-path assets/fonts guide/main.typ output/_noic-test.pdf 2>&1
```

Expected: Error about missing `wave-2/guide.typ`.

- [ ] **Step 3: Commit**

```
git add guide/wave-2/settings.typ
git commit -m "feat: add Wave 2 sandbox settings (No Hope custom hardcore)"
```

---

### Task 22: Create Wave 2 guide

**Files:**
- Create: `guide/wave-2/guide.typ`

- [ ] **Step 1: Write guide.typ**

```typst
#import "../template.typ": *

= Expert Guide — Wave 2

This is not a tutorial. You've conquered Wave 0 and Wave 1. Now face the real apocalypse. Wave 2 settings alone will kill most players. The mods add entire new survival systems. Die. Learn. Repeat.

*Prerequisites: Wave 0 and Wave 1 completed.*

== 1. The Winter Start

December. No water. No power. It's cold. Here's what that means:

=== Day 1 Priorities (in this order)
#list(
  [*Warm clothing:* Jacket, sweater, hat, scarf, gloves. Layer everything. Check every bedroom, every corpse.],
  [*Water:* Every sink is dry. Find bottled water or reach a river/lake immediately.],
  [*Weapon:* Anything. You can't push-stomp at 2.0x density.],
  [*Heat source:* Fireplace, antique oven, or generator + oven. You can't survive winter without a way to warm up.],
  [*Canned food:* All fresh food has rotted. Every can is precious.],
)

#danger[
  Hypothermia kills faster than starvation. Cold and wet = dead within hours. Heat + dry clothes before anything else.
]

== 2. Sprinters

In Wave 2, zombies are fast. Some *sprint*.

=== Rules

#list(
  [*Sprinters are faster than you.* Never fight one in the open. Back to a wall.],
  [*Windows and fences are weapons.* Sprinters lunge through and fall. Stomp them while down.],
  [*Push then stomp.* Even sprinters can be pushed (Space). Push, stomp, repeat.],
  [*Guns for emergenices.* A shotgun blast clears a charging sprinter — but the noise brings more.],
  [*Vehicles are death traps.* Sprinters surround your car while you start it. Clear the area first.],
  [*Sneak everywhere.* Walk. Crouch near buildings. Sprinters hear footsteps from far away.],
  [*Keen Hearing is nearly mandatory.* Sprinter from behind = dead before you react.],
)

=== Identifying Sprinters
Sprinters look gaunt and move with purpose. If a zombie moves faster than a brisk walk toward you, it's a sprinter. Kill it first — every time.

== 3. Hardcore Survival Systems

Wave 2 mods add new survival mechanics. Specific mod names and details are in the Modlist chapter. This section covers *how to approach* these systems.

=== Nutrition Management
Track calories, protein, carbs, fats. You need ~2000 cal/day; combat burns more. Protein from meat maintains strength. Fats from fish/processed food — zero fat causes health problems. Diversify: don't eat the same crop every day. Trapping and fishing become *essential*, not optional.

=== Temperature & Hypothermia
Expanded temperature tracks body heat, wind chill, wetness, clothing insulation. Wool > cotton. Wet clothes lose insulation — change immediately after getting wet. Forest blocks wind; open fields don't. Hypothermia stages: shivering -> confusion -> unconscious -> dead.

=== Hygiene
Wash regularly (soap + water source). Body odor may attract zombies (mod-depending). Dirty bandages are more dangerous — change frequently. Wash blood off clothes — bloody clothes increase panic and infection risk.

=== Mental Health
Killing zombies has psychological cost. You desensitize over time. Extended isolation causes depression — read books, listen to music, engage in hobbies. Traumatic events (comrade death, base loss) cause lasting debuffs. Some mods add addiction systems — don't run out of cigarettes.

=== Thirst
Expanded thirst = need more water. Carry 3 full bottles minimum. Rain collectors are survival-critical — build many. Boil river/lake water before drinking. Water purification tablets (if mods add them) are gold.

== 4. Advanced Combat

=== Horde Clearing Methods

*The Funnel:* Lure zombies to a narrow choke point (alley, door). Kill one at a time. Retreat when tired, return.

*The Fire Method:* Build a campfire in an open parking lot (NOT near buildings). Lead horde through fire. Zombies burn.

#danger[
  Fire spreads to buildings and trees. Town-leveling destruction possible. Parking lots and highways only.
]

*The Noise Distraction:* Set off a car alarm or use noise makers (Electrical skill) far from your target. Zombies migrate. Loot the now-empty area. Be gone before they wander back.

*Vehicle Reversing:* Drive in reverse through hordes. Trunk takes damage, not engine. Use a beater car you don't care about.

== 5. Community Server Setup

=== Self-Hosted
Main menu > Host > Create Server. Configure sandbox settings, add mods. Friends join via your Steam name or IP.

=== Dedicated Server
Install *Project Zomboid Dedicated Server* (Steam > Tools). Configure `servertest.ini` with sandbox and mod Workshop IDs. Port forward 16261-16262 UDP, 8766 UDP. Run `StartServer64.bat`.

#info[
  Admin commands: `/adduser`, `/grantadmin`. Full list at `pzwiki.net/wiki/Dedicated_Server`.
]

== 6. Endgame Meta

After 2+ months in Wave 2, you've beaten the hardest configuration.

=== Sustainability Checklist
#list(
  [8+ rain collectors, plumbed to sinks (pipe wrench).],
  [Year-round indoor farm with heat + light.],
  [Trapping field + fishing spot.],
  [2+ generators, rotation schedule, 20+ gas cans.],
  [Metal walls, airlock, escape route.],
  [Antique oven + log stockpile.],
  [Medical stockpile.],
)

=== Infinite Resources
Wood (trees), water (rain), food (farming/trapping/fishing), stone (foraging) = infinite. Finite: gasoline, ammunition, medical supplies, skill books. Use finite resources sparingly.

=== Your Goal
There is no win condition. Set your own: clear Louisville, max every skill, survive a full year, build the ultimate base. *No one is coming. This is how you lived.*
```

- [ ] **Step 2: Verify incremental build**

```
typst compile --font-path assets/fonts guide/main.typ output/_noic-test.pdf 2>&1
```

Expected: Error about missing `wave-2/modlist.typ`.

- [ ] **Step 3: Commit**

```
git add guide/wave-2/guide.typ
git commit -m "feat: add Wave 2 expert guide (sprinters, horde clearing, hardcore survival)"
```

---

### Task 23: Discover and write Wave 2 modlist

**Files:**
- Create: `guide/wave-2/modlist.typ`
- Modify: `mod-conflicts.md`

- [ ] **Step 1: Research 40+ B42 mods across categories**

Use Playwright on Steam Workshop. Same verification process as previous waves.

Categories (approximate counts):

*Frameworks & Libraries (3-5):* Modding APIs, script extenders. Search "B42 framework", "B42 library".

*Survival Overhauls (5-8):* Nutrition, temperature, medical, hygiene, thirst. Search "B42 survival", "B42 realism".

*Realism Systems (5-8):* Realistic injuries, body temperature, firearms ballistics, weight management. Search "B42 realism", "B42 hardcore".

*Professions & Traits (4-6):* Dynamic traits, new occupations, trait evolution. Search "B42 traits", "B42 professions".

*Maps & Locations (3-5):* Map additions. Search "B42 map". **Critical:** Most old map mods are NOT B42 compatible. Verify carefully.

*Zombie Overhauls (5-8):* Special infected, behavior mods, horde mechanics. Search "B42 zombies", "B42 sprinters".

*Crafting Expansions (5-8):* Advanced carpentry, engineering, chemistry, primitive technology. Search "B42 crafting", "B42 recipes".

*Immersion (3-5):* Atmosphere, sound, visual enhancements. Search "B42 immersion", "B42 atmosphere".

- [ ] **Step 2: Write modlist.typ**

```typst
#import "../template.typ": *

= Modlist — Wave 2

Wave 2 is the full apocalypse. Over 40 mods across every category — realism, difficulty, content, immersion. Each adds a layer to the survival simulation.

== Mod Manager

#mod-entry(
  name: "[B42] Mod Manager",
  workshop-id: "3567084868",
  category: "UI / QoL",
  dependencies: "None",
  system-impact: "Mod management, profiles, load order, conflict detection.",
  description: "Mandatory. Create a 'Wave 2' profile.",
)

== Frameworks & Libraries
// INSERT (3-5 mods)

== Survival Overhauls
// INSERT (5-8 mods)

== Realism Systems
// INSERT (5-8 mods)

== Professions & Traits
// INSERT (4-6 mods)

== Maps & Locations
// INSERT (3-5 mods)
// WARNING: Map mods must be verified B42. Many maps haven't been updated.

== Zombie Overhauls
// INSERT (5-8 mods)

== Crafting Expansions
// INSERT (5-8 mods)

== Immersion & Atmosphere
// INSERT (3-5 mods)

== Summary

#danger[
  Wave 2's mod list is massive. Follow the Installation chapter's load order rules carefully. Incorrect load order WILL cause crashes. The Mod Manager's conflict detection is your friend.
]

== Load Order

#list(
  [1. [B42] Mod Manager],
  [2. Frameworks & Libraries],
  [3. Survival Overhauls],
  [4. Realism Systems],
  [5. Professions & Traits],
  [6. Maps & Locations],
  [7. Zombie Overhauls],
  [8. Crafting Expansions],
  [9. Immersion & Atmosphere],
  [10. Compatibility patches (if any)],
  [11. Override/tweak mods],
)
```

- [ ] **Step 3: Document all inter-mod conflicts in mod-conflicts.md**

For each pair of mods that touch the same system, verify they don't conflict. If they do, document the conflict and which mod to keep.

- [ ] **Step 4: Verify incremental build**

```
typst compile --font-path assets/fonts guide/main.typ output/_noic-test.pdf 2>&1
```

Expected: Compilation should now succeed with NO errors. All includes are present.

- [ ] **Step 5: Commit**

```
git add guide/wave-2/modlist.typ mod-conflicts.md
git commit -m "feat: add Wave 2 modlist (40+ mods, full apocalypse experience)"
```

---

## Phase 8: Non-PDF Files & Final Build

### Task 24: Create mod-conflicts.md

**Files:**
- Create/Update: `mod-conflicts.md`

- [ ] **Step 1: Write template**

```markdown
# Mod Conflicts

Confirmed incompatible mod combinations discovered during curation. Not included in the PDF.

---

## Conflict: [Mod A] <> [Mod B]
- **Issue:** Description of what breaks
- **Resolution:** Which to use, which to drop
- **Affected Waves:** Wave 1, Wave 2
- **Date Identified:** YYYY-MM-DD

---
<!-- Add conflicts here as they are discovered during mod research -->
```

If conflicts were already documented during Tasks 15, 19, 23, this file already has entries. Verify the format is consistent.

- [ ] **Step 2: Commit**

```
git add mod-conflicts.md
git commit -m "chore: create mod conflicts tracker"
```

---

### Task 25: Create mod-ideas.md

**Files:**
- Create: `mod-ideas.md`

- [ ] **Step 1: Write**

```markdown
# Mod Ideas (To Develop)

Mod concepts that don't exist yet but would enhance the guide. For modders or future development. Not included in the PDF.

---

## Idea: Realistic Bandaging Overhaul
- **Category:** Mechanics
- **Description:** Multi-stage wound treatment. Wounds progress through stages (fresh, clotting, healing, scarred) with different treatment per stage. Infection risk scales with wound depth and cleanliness.
- **Target Wave:** 2
- **Priority:** High
- **Gap:** Current B42 medical mods focus on adding items, not depth of treatment.

## Idea: Mental Health Deep Dive
- **Category:** Mechanics
- **Description:** Comprehensive psychology system with PTSD events, coping mechanisms (journaling, hobbies, social), progressive desensitization vs. trauma, therapy mechanics.
- **Target Wave:** 2
- **Priority:** High
- **Gap:** Existing mood mods are shallow; no B42 mod fully explores survivor psychology.

## Idea: Weather Survival Overhaul
- **Category:** Mechanics
- **Description:** Realistic weather — blizzards reduce visibility/temperature, heat waves cause dehydration, thunderstorms damage electronics, tornadoes as rare catastrophic events.
- **Target Wave:** 2
- **Priority:** Medium
- **Gap:** B42 weather system is basic; no mod expands it significantly.

## Idea: Community/NPC Survival
- **Category:** Mechanics
- **Description:** Survivors form small communities with dynamic relationships, resource sharing, defense coordination, and internal conflicts. Build a settlement, not just a base.
- **Target Wave:** 2
- **Priority:** Medium
- **Gap:** NPC framework not fully available in B42 yet (TIS working on official NPCs).
```

- [ ] **Step 2: Commit**

```
git add mod-ideas.md
git commit -m "chore: create mod ideas tracker"
```

---

### Task 26: Final build and verification

**Files:**
- Generate: `output/No-One-Is-Coming.pdf`

- [ ] **Step 1: Full clean build**

```powershell
Remove-Item "output\No-One-Is-Coming.pdf" -ErrorAction SilentlyContinue
typst compile --font-path assets/fonts guide/main.typ output/No-One-Is-Coming.pdf
```

Expected: Zero errors. PDF generated.

- [ ] **Step 2: Verify PDF structure**

```powershell
# Check PDF exists and is non-empty
$pdf = Get-Item "output\No-One-Is-Coming.pdf"
Write-Host "PDF size: $($pdf.Length) bytes"
Write-Host "PDF exists and is non-empty: $($pdf.Length -gt 0)"
```

- [ ] **Step 3: Verify PDF content checklist**

Open the PDF and verify each item manually (can't automate content verification):

- [ ] Cover page: logo visible, title "NO ONE IS COMING", subtitle, badges, date
- [ ] Table of Contents: lists all sections, page numbers correct
- [ ] Preface: Mod Manager setup instructions present
- [ ] Installation: load order rules, troubleshooting sections present
- [ ] Wave 0 divider: "Wave 0" heading, story text, "The First Night"
- [ ] Wave 0 story: full background text
- [ ] Wave 0 settings: settings tables with values
- [ ] Wave 0 guide: all 12 sections (Getting Started through Days 2-7)
- [ ] Wave 0 modlist: 5 mod entries with Workshop links
- [ ] Wave 1 divider: "Wave 1", story text, "Scars and Lessons"
- [ ] Wave 1 content: story, settings, guide (all sections), modlist
- [ ] Wave 2 divider: "Wave 2", story text, "No One is Coming"
- [ ] Wave 2 content: story, settings, guide (all sections), modlist
- [ ] Headers: "No One is Coming — PZ B42 Modlist" with page numbers
- [ ] Links: each mod entry has a clickable Steam Workshop link
- [ ] Colors: dark background, crimson headings, orange links, callout blocks
- [ ] No placeholder text ("TBD", "TODO", "INSERT") in final output

- [ ] **Step 4: Run via build.bat**

```powershell
.\build.bat
```

Expected: "SUCCESS: output/No-One-Is-Coming.pdf"

- [ ] **Step 5: Fix any issues found in verification**

If the PDF has missing content, formatting errors, or broken links, fix the source files and rebuild.

- [ ] **Step 6: Final commit**

```
git add output/  # if tracking gitignored files
git add -A
git commit -m "feat: complete No One is Coming modlist and guide v1.0"
git tag v1.0.0
```

---

## Implementation Order

Execute phases in order. Each phase depends on the previous one:

1. Phase 1 (Tasks 1-5): Scaffold, validate assets
2. Phase 2 (Task 6): Fonts
3. Phase 3 (Tasks 7-9): Template, build.bat, main.typ
4. Phase 4 (Tasks 10-11): Shared content (preface, installation)
5. Phase 5 (Tasks 12-15): Wave 0 (story, settings, guide, modlist research)
6. Phase 6 (Tasks 16-19): Wave 1 (story, settings, guide, modlist research)
7. Phase 7 (Tasks 20-23): Wave 2 (story, settings, guide, modlist research)
8. Phase 8 (Tasks 24-26): Non-PDF files, final build, verification

After every `.typ` file is created, run the incremental build to catch errors early. The incremental build command is built into each task's Step 2.
