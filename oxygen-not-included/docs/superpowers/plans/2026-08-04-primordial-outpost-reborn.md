# Primordial Outpost Reborn Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a verified, three-wave modlist + full game guide + themed PDF for Oxygen Not Included ("Primordial Outpost Reborn"), mirroring the completed `factorio/` project.

**Architecture:** All sources are Typst files under `oxygen-not-included/guide/`, assembled by a master `template.typ` (cover → TOC → installation → 3 wave chapters → glossary) and compiled to `output/primordial-outpost-reborn.pdf` by `build.bat`. Mod curation is evidence-driven: every mod is verified against the Steam Workshop (app 457140) and logged in `STATUS.md` before it may appear in a guide card. Phase 0 research gates (build resolution + Mod Updater verification) block all mod work until resolved.

**Tech Stack:** Typst 0.15.1 (installed), PowerShell `build.bat`, Steam Workshop research via webfetch/ctx tools + Playwright MCP fallback, fonts Cinzel/Bahnschrift/Georgia (all available to Typst).

**Standing repo rule:** never commit without explicit user approval. Each task's commit step is a *checkpoint* — pause and ask the user before committing at the first checkpoint; if the user approves, commit at the remaining checkpoints too, otherwise skip all commits until close-out.

**SCOPE CHANGE (2026-08-04, user direction):** The project does NOT research or select mods — the user adds all mods later. Tasks 5–7 (mod research) are CANCELLED. Tasks 10–12 write the guide prose AND ship the modlist/mechanics/graphics/content files as *fillable scaffolds* (mod-entry helper + wave-philosophy intro + placeholder; user pastes verified mod cards later). No mod name or URL appears in any guide file.

**Design doc:** `docs/superpowers/specs/2026-08-04-primordial-outpost-reborn-design.md` — this plan implements that spec exactly. Cross-references below point to spec sections (e.g., §6.1).

---

## File Structure

| File | Responsibility |
|---|---|
| `.gitignore` | Generated-artifacts comment (mirror factorio). |
| `AGENTS.md` | Project-specific agent rules (mod policy, verification, PDF build). |
| `README.md` | Overview, wave table, mod counts, structure, regenerate instructions. |
| `STATUS.md` | Decision log: audit trail, decisions, accepted/rejected mods (tables), conflicts, notes. |
| `conflicts-mods.md` | Known mod conflicts — NOT included in the PDF. |
| `mod-ideas.md` | Future/UNVERIFIED candidates — NOT included in the PDF. |
| `template.typ` | Master template: page setup, callout helper, headings, cover, TOC, per-wave includes. |
| `query.typ` | Heading-page audit helper (mirror factorio). |
| `build.bat` | One-click PDF build (`typst compile template.typ output/primordial-outpost-reborn.pdf`). |
| `guide/installation.typ` | Mod Updater (or fallback) install/config + per-wave switching. |
| `guide/glossary.typ` | Seeded ONI term list with definitions (§8 of spec). |
| `guide/wave-0/{how-to-play,modlist,mechanics,graphics}.typ` | Wave 0 tutorial + QoL mod cards. |
| `guide/wave-1/{strategy,modlist,mechanics,content,graphics}.typ` | Wave 1 strategy + content/mechanics mod cards. |
| `guide/wave-2/{strategy,modlist,mechanics,content,graphics}.typ` | Wave 2 strategy + Spaced Out capstone cards. |
| `output/primordial-outpost-reborn.pdf` | Generated PDF (deliverable). |
| `assets/logo.jpg` | Existing cover art (465 KB). |

---

## Task 1: Project Skeleton

Create the directory tree, `.gitignore`, `AGENTS.md`, and the empty-skeleton `STATUS.md`, `conflicts-mods.md`, `mod-ideas.md`. Mirror factorio's `.gitignore` exactly.

**Files:**
- Create: `oxygen-not-included/.gitignore`
- Create: `oxygen-not-included/AGENTS.md`
- Create: `oxygen-not-included/STATUS.md`
- Create: `oxygen-not-included/conflicts-mods.md`
- Create: `oxygen-not-included/mod-ideas.md`

- [ ] **Step 1: Create the directory tree**

```bash
New-Item -ItemType Directory -Force -Path "guide/wave-0","guide/wave-1","guide/wave-2","output"
```
Run from `oxygen-not-included/`. Expected: five folders created or confirmed (`guide`, `guide/wave-0`, `guide/wave-1`, `guide/wave-2`, `output`).

- [ ] **Step 2: Write `.gitignore`** (mirror factorio — a generated-artifacts comment only)

```text
# Generated artifacts
```

- [ ] **Step 3: Write `AGENTS.md`**

```markdown
# Primordial Outpost Reborn - Agent Instructions

Oxygen Not Included (Steam App 457140) modlist and game guide. Target build + DLCs resolved in STATUS.md; DLCs owned: Spaced Out! + Bionic Booster Pack.

## Structure
- `guide/` - wave-based Typst sources (installation, per-wave files, glossary)
- `output/` - generated PDF (`primordial-outpost-reborn.pdf`)
- `assets/` - static assets (`logo.jpg`)
- `template.typ` - Typst master template (cover, TOC, page setup, fonts)
- `build.bat` - one-click PDF generator
- `STATUS.md` - live audit: decisions, accepted/rejected mods, conflicts, verifications
- `conflicts-mods.md` - known mod conflicts (excluded from PDF)
- `mod-ideas.md` - future/UNVERIFIED candidates (excluded from PDF)
- `docs/superpowers/` - specs and plans

## Key Rules
- Mods must be verified against the Steam Workshop (app 457140); every card needs a verified URL + page-visible metadata. Target build + DLCs: see STATUS.md.
- Mod organizer = Mod Updater by Peter Han (workshop 2018291283) if verified, else the native Steam Workshop flow; see STATUS.md and installation.typ.
- No meme/joke mods, explicit porn, redundant, or cheating/overpowered/all-knowing content.
- ONI-native power-spike gate (spec §4): no ex-nihilo resources, no free heat deletion, no tech/labor bypass, no morale/skill breaks, no all-knowing info — unless a proportionate cost exists.
- Classification: CLIENT-ONLY and BEHAVIORAL-NEUTRAL allowed in Wave 0; STAT-CHANGING is Wave 1+ only and must pass the gate.
- Every mod card: verified clickable name+URL, workshop last-updated date + classification, dependencies (incl. DLC), system/mechanic impact, notes.
- No fabrication: unverifiable mods go to mod-ideas.md + STATUS.md, never into guide cards.
- Decision log maintained in `STATUS.md`.

## PDF Generation
Run `build.bat` -> `typst compile template.typ output/primordial-outpost-reborn.pdf` (Typst 0.15/0.15.1).
Fonts: Cinzel / Bahnschrift / Georgia.
```

- [ ] **Step 4: Write `STATUS.md` skeleton**

```markdown
# Primordial Outpost Reborn - STATUS

## Audit Trail
- 2026-08-04: Project started. Spec + plan written (docs/superpowers/).

## Decisions
- (record every decision here: build gate result, mod organizer verdict, wave-2 anchor, classification calls)

## Accepted Mods
| Mod | URL | Author | Class | Last updated | DLC | Wave | Verdict date | Evidence |
|---|---|---|---|---|---|---|---|---|

## Rejected Mods
| Mod | URL | Reason | Date |
|---|---|---|---|

## Conflicts
- (see conflicts-mods.md)

## Notes
- (open items, pending verifications, discrepancies)
```

- [ ] **Step 5: Write `conflicts-mods.md` skeleton**

```markdown
# Known Mod Conflicts

> Not included in the PDF. This file tracks mods that conflict with each other or with the target build.

- (none yet — populate from Task 5-7 verdicts)
```

- [ ] **Step 6: Write `mod-ideas.md` skeleton**

```markdown
# Future Mod Ideas (UNVERIFIED)

> Not included in the PDF. Every entry here is a CANDIDATE, not a shipped mod. Nothing here may appear in a guide card until it passes verification (spec §6.4).

- (none yet)
```

- [ ] **Step 7: Commit checkpoint** — pause, ask the user for approval to commit; if approved:

```bash
git add oxygen-not-included/.gitignore oxygen-not-included/AGENTS.md oxygen-not-included/STATUS.md oxygen-not-included/conflicts-mods.md oxygen-not-included/mod-ideas.md
git commit -m "chore(oxygen-not-included): project skeleton"
```

---

## Task 2: Phase 0 — Build Gate Research

Resolve the target build per the decision tree in spec §6.1. This gate **blocks all mod work**.

**Files:**
- Modify: `oxygen-not-included/STATUS.md` (Audit Trail + Decisions + Notes)
- Later: `oxygen-not-included/template.typ` cover line (Task 8) uses the resolved value.

- [ ] **Step 1: Research the live ONI build**

Fetch the following and index them (raw bytes must not enter context — use `ctx_fetch_and_index` then `ctx_search`, or `webfetch`):
- SteamDB build info for app 457140: `https://steamdb.info/app/457140/` (builds tab)
- Official patch notes / news feed: `https://store.steampowered.com/news/app/457140`
- Steam community hub announcements: `https://steamcommunity.com/app/457140/allnews/`

Expected: the current public build number + its release date, and the dates of recent updates.

- [ ] **Step 2: Resolve the gate**

Apply the decision tree in order:
1. Is **Build 744825 / July 28, 2026** verifiable as a real build? → target it.
2. Else is the **June 11, 2026** update build verifiable? → target that.
3. Else → target the **latest verifiable build**; record the exact discrepancy (stated vs found) in STATUS.md.

- [ ] **Step 3: Record the resolution in STATUS.md**

Append to Audit Trail and add a Decisions entry, e.g.:
```markdown
## Decisions
- **Build gate (2026-08-04):** resolved to BUILD <resolved-build>, released <date>. Stated target was "Build 744825 (July 28, 2026)" / "June 11, 2026 update" — <MATCHED | discrepancy noted: ...>. Source: <URL>.
```

Expected: `grep -i "Build gate" oxygen-not-included/STATUS.md` returns the line.

- [ ] **Step 4: Commit checkpoint** (with user approval):

```bash
git add oxygen-not-included/STATUS.md
git commit -m "docs(oxygen-not-included): resolve build gate"
```

---

## Task 3: Phase 0 — Mod Updater Verification

Verify workshop item `2018291283` (spec §6.2). Outcome decides the installation chapter's primary/fallback organizer.

**Files:**
- Modify: `oxygen-not-included/STATUS.md`
- Later: `oxygen-not-included/guide/installation.typ` (Task 9) is written against the outcome.

- [ ] **Step 1: Fetch the workshop page**

`https://steamcommunity.com/sharedfiles/filedetails/?id=2018291283` via `ctx_fetch_and_index` (then `ctx_search` for the metadata) or `webfetch`. If the page is JS-heavy, rate-limited, or returns a login wall, use Playwright MCP (`playwright_browser_navigate` + `playwright_browser_snapshot`).

- [ ] **Step 2: Extract metadata**

Confirm and record: item title, author, last-updated date, description (what the tool does — mods folder, update behavior, per-save/profile enabling), whether the item still exists and is not hidden/removed.

- [ ] **Step 3: Decide the organizer path**

- **Verified & working** → primary organizer = Mod Updater. Record install/config facts (subscribe, mods folder path, update behavior) for Task 9.
- **Unverifiable / removed / broken** → primary organizer = native Steam Workshop flow (subscribe → ONI auto-downloads into its mods folder → enable/disable in the in-game mod menu). Record the substitution and why in STATUS.md.

- [ ] **Step 4: Record in STATUS.md**

Add a Decisions entry:
```markdown
## Decisions
- **Mod organizer (2026-08-04):** Mod Updater by Peter Han (2018291283) = <VERIFIED as organizer | NOT VERIFIED>; <path taken>. Evidence: <URL / verification method>.
```

- [ ] **Step 5: Commit checkpoint** (with user approval):

```bash
git add oxygen-not-included/STATUS.md
git commit -m "docs(oxygen-not-included): resolve mod organizer"
```

---

## Task 4: Phase 1 — Wave-2 Overhaul Premise Research

Confirm or refute the Wave-2 premise (spec §6.3): does a genuine overhaul-scale mod exist for ONI?

**Files:**
- Modify: `oxygen-not-included/STATUS.md` (Decisions + Notes)

- [ ] **Step 1: Search the workshop for overhauls**

Use the workshop browse/search: `https://steamcommunity.com/app/457140/workshop/` and `https://steamcommunity.com/workshop/browse/?appid=457140&browsesort=trend&section=readytouseitems`. Search terms: "overhaul", "content pack", "expansion", "rebalance". Also check Steam community discussions for "biggest mods" lists. Index findings via `ctx_fetch_and_index` + `ctx_search`.

- [ ] **Step 2: Judge each candidate against the definition**

A genuine overhaul = a mod that restructures core progression (tech tree, resources, mid/late game) at the scale of factorio's Krastorio 2 — not a content add-on. For each candidate, record: name, URL, author, last-updated, what it changes, and a GO / NO-GO verdict on "overhaul-scale".

- [ ] **Step 3: Record the decision**

- Overhaul found → Wave 2 anchors on it (factorio-style); re-scope Wave 2 modlist accordingly and log the decision.
- None found → the curated capstone-set design stands.

STATUS.md:
```markdown
## Decisions
- **Wave-2 anchor (2026-08-04):** overhaul-scale mod <FOUND: name+URL | NOT FOUND>. Wave 2 = <anchor on NAME | curated capstone set>. Candidate evidence: ...
```

- [ ] **Step 4: Commit checkpoint** (with user approval):

```bash
git add oxygen-not-included/STATUS.md
git commit -m "docs(oxygen-not-included): wave-2 anchor research"
```

---

## Task 5: Wave 0 Mod Research & Verdicts — CANCELLED (user adds mods later)

Do not execute. The user curates all mods. No Wave 0 mod research, no verdicts, no STATUS.md mod tables from this project. Context retained: the Wave 0 philosophy (CLIENT-ONLY + BEHAVIORAL-NEUTRAL only) and the power-spike gate still apply when the user fills the scaffolds.

---

## Task 6: Wave 1 Mod Research & Verdicts — CANCELLED (user adds mods later)

Do not execute. Context retained: Wave 1 allows STAT-CHANGING mods only past the power-spike gate (spec §4); the user applies this when filling scaffolds.

---

## Task 7: Wave 2 Mod Research & Verdicts — CANCELLED (user adds mods later)

Do not execute. Context retained for the user: Wave 2 is the Spaced Out/Bionic capstone; the user should verify DLC requirements (unowned DLCs: Aquatic Planet Pack, Frosty, Prehistoric) and apply the power-spike gate. Informational anchor research (Ronivan's Legacy - Industrial Revolution) is in STATUS.md Notes.

---

## Task 8: Typst Infrastructure + Pipeline Smoke Test

Create `template.typ`, `query.typ`, `build.bat`, and minimal stub wave files so the pipeline compiles end-to-end early (proves the toolchain before content writing).

**Files:**
- Create: `oxygen-not-included/template.typ`
- Create: `oxygen-not-included/query.typ`
- Create: `oxygen-not-included/build.bat`
- Create: `oxygen-not-included/guide/wave-0/how-to-play.typ` (stub), `guide/wave-0/modlist.typ` (stub), `guide/wave-0/mechanics.typ` (stub), `guide/wave-0/graphics.typ` (stub)
- Create: `oxygen-not-included/guide/wave-1/strategy.typ` (stub) + the other 4 (stubs)
- Create: `oxygen-not-included/guide/wave-2/strategy.typ` (stub) + the other 4 (stubs)
- Create: `oxygen-not-included/guide/installation.typ` (stub), `guide/glossary.typ` (stub)

- [ ] **Step 1: Write `template.typ`** — replace `<RESOLVED-BUILD>` with the Task 2 build string

```typst
#set page(
  margin: (x: 2cm, y: 2.5cm),
  footer: context {
    align(center)[
      #counter(page).display("1 / 1", both: true)
    ]
  },
)

#let callout(title, body) = block(
  fill: rgb("#f5efe2"), inset: 8pt, radius: 4pt,
  stroke: 0.5pt + rgb("#1fa2a0"),
)[*#title* #body]

#set text(font: "Georgia", size: 11pt, fill: rgb("#232323"))
#set par(justify: true, leading: 0.65em, spacing: 0.6em)
#set heading(numbering: none)
#show heading: set block(above: 1.4em, below: 0.5em)
#show heading.where(level: 1): set text(fill: rgb("#1fa2a0"), weight: "bold", size: 22pt, font: "Bahnschrift")
#show heading.where(level: 2): set text(fill: rgb("#d9a33c"), weight: "bold", size: 16pt, font: "Bahnschrift")
#show heading.where(level: 3): set text(fill: rgb("#0b6e6c"), weight: "bold", size: 13pt, font: "Bahnschrift")
#show heading.where(level: 1): it => { it; line(length: 100%, stroke: 0.5pt + rgb("#1fa2a0")) }
#show link: set text(fill: rgb("#1fa2a0"))

// == Cover Page
#v(3.5cm)
#align(center)[#image("assets/logo.jpg", width: 45%)]
#v(3.5cm)
#align(center)[
  #text(size: 36pt, weight: "bold", fill: rgb("#1fa2a0"), font: "Cinzel", "Primordial Outpost Reborn")
  #v(0.8em)
  #text(size: 16pt, fill: rgb("#232323"), "Oxygen Not Included")
  #v(0.2em)
  #text(size: 14pt, fill: rgb("#232323"), "Modlist & Guide")
  #v(0.6em)
  #text(size: 11pt, fill: rgb("#6b6b6b"), "Build <RESOLVED-BUILD> - 2026")
]
#pagebreak()

// == Table of Contents
== Table of Contents
#v(0.5em)
#outline(depth: 3)
#pagebreak()

// == Installation
== Installation Guide
#include "guide/installation.typ"
#pagebreak()

// == Waves
== Waves & New-Game Setups

#block[
  #show heading.where(level: 2): set text(fill: rgb("#1fa2a0"))
  #show heading.where(level: 3): set text(fill: rgb("#1fa2a0"))
  === Wave 0: The First Breathe
  #include "guide/wave-0/how-to-play.typ"
  #include "guide/wave-0/modlist.typ"
  #include "guide/wave-0/mechanics.typ"
  #include "guide/wave-0/graphics.typ"
]
#pagebreak()

#block[
  #show heading.where(level: 2): set text(fill: rgb("#d9a33c"))
  #show heading.where(level: 3): set text(fill: rgb("#d9a33c"))
  === Wave 1: The Vent Tamer
  #include "guide/wave-1/strategy.typ"
  #include "guide/wave-1/modlist.typ"
  #include "guide/wave-1/mechanics.typ"
  #include "guide/wave-1/content.typ"
  #include "guide/wave-1/graphics.typ"
]
#pagebreak()

#block[
  #show heading.where(level: 2): set text(fill: rgb("#6a2d91"))
  #show heading.where(level: 3): set text(fill: rgb("#6a2d91"))
  === Wave 2: The Voyager
  #include "guide/wave-2/strategy.typ"
  #include "guide/wave-2/modlist.typ"
  #include "guide/wave-2/mechanics.typ"
  #include "guide/wave-2/content.typ"
  #include "guide/wave-2/graphics.typ"
]
#pagebreak()

// == Glossary
== Glossary
#include "guide/glossary.typ"

#label("end")
```

- [ ] **Step 2: Write `query.typ`** (verbatim from factorio)

```typst
// Page-position helper for structure audits.
// Includes the full document, then reports heading pages and total pages.
#include "template.typ"

#context {
  let seen = ()
  for h in query(heading) {
    let parts = if type(h.body) == "sequence" { h.body } else { (h.body,) }
    let text = parts.map(it => if type(it) == "text" { it.text } else { "" }).join()
    let pos = h.location().position()
    seen.push(str(pos.page) + " | " + str(h.level) + " | " + text)
  }
  seen.push(str(query(<end>).at(0).location().position().page) + " | 0 | END")
  text(seen.join("\n"))
}
```

- [ ] **Step 3: Write `build.bat`**

```bat
@echo off
echo ============================================
echo  Primordial Outpost Reborn - PDF Generator (Oxygen Not Included)
echo ============================================
echo.
echo Checking Typst installation...
where typst >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo ERROR: typst is not installed or not in PATH.
    echo Please install Typst 0.15 from https://typst.app/
    pause
    exit /b 1
)
echo Typst found.
echo.
echo Building PDF...
if not exist output mkdir output
typst compile template.typ output/primordial-outpost-reborn.pdf
if %ERRORLEVEL% equ 0 (
    echo.
    echo ============================================
    echo  SUCCESS: PDF generated at output/primordial-outpost-reborn.pdf
    echo ============================================
) else (
    echo.
    echo ERROR: PDF generation failed. Check the errors above.
    pause
)
```

- [ ] **Step 4: Write stub wave files**

Each stub = one `#let mod-entry(name, url, version: none, verified: none, deps: none, impact: none, notes: none)` helper block + one `===` heading, so every included file compiles. Example stub (`guide/wave-0/modlist.typ`):

```typst
#let mod-entry(name, url, version: none, verified: none, deps: none, impact: none, notes: none) = {
  block(fill: rgb("#f5efe2"), inset: 10pt, radius: 4pt, stroke: 0.5pt + rgb("#1fa2a0"))[
    #link(url)[#text(weight: "bold", size: 11pt, fill: rgb("#1fa2a0"), name)]
    #if version != none [#v(4pt) *Version/Updated:* #version]
    #if verified != none [#v(3pt) *Verified:* #verified]
    #if deps != none [#v(3pt) *Dependencies:* #deps]
    #if impact != none [#v(3pt) *Impact:* #impact]
    #if notes != none [#v(3pt) *Notes:* #notes]
  ]
}

== Wave 0: Modlist
```

Headings for stubs (exact):
- wave-0: how-to-play `== Wave 0: How to Play`; modlist `== Wave 0: Modlist`; mechanics `== Wave 0: Mechanics`; graphics `== Wave 0: Graphics`
- wave-1: strategy `== Wave 1: Strategy`; modlist `== Wave 1: Modlist`; mechanics `== Wave 1: Mechanics`; content `== Wave 1: Content`; graphics `== Wave 1: Graphics`
- wave-2: strategy `== Wave 2: Strategy`; modlist `== Wave 2: Modlist`; mechanics `== Wave 2: Mechanics`; content `== Wave 2: Content`; graphics `== Wave 2: Graphics`
- installation.typ: `== Installation Guide` stub body: `This chapter is populated in Task 9.`
- glossary.typ: `== Glossary` stub body: `Terms populated in Task 13.`

- [ ] **Step 5: Smoke-test the pipeline**

```bash
& .\build.bat
```
Expected: `SUCCESS: PDF generated at output/primordial-outpost-reborn.pdf`, exit 0. If it fails, fix the typst error before proceeding.

- [ ] **Step 6: Audit the heading structure**

```bash
typst query template.typ "heading"
```
Expected: JSON listing the 4 top-level headings (Table of Contents, Installation Guide, Waves & New-Game Setups, Glossary), the 3 wave headings, and each stub heading — with page numbers. Record the total page count via `typst query template.typ "<end>"`.

- [ ] **Step 7: Commit checkpoint** (with user approval):

```bash
git add oxygen-not-included/template.typ oxygen-not-included/query.typ oxygen-not-included/build.bat oxygen-not-included/guide
git commit -m "build(oxygen-not-included): typst pipeline + stubs"
```

---

## Task 9: Installation Guide (`guide/installation.typ`)

Full install/config chapter written against the **Task 3 outcome**. Sections are frozen per spec §7.

**Files:**
- Modify: `oxygen-not-included/guide/installation.typ`

- [ ] **Step 1: Write the chapter**

Cover, in order: game prep (install ONI + both DLCs on Steam; confirm the gated build from Task 2); the mod organizer (Mod Updater primary — subscribe to 2018291283, its local mods folder, update behavior, per-save/profile enabling — *or* the native Steam Workshop flow, per Task 3); fetching the wave's mods (per-card workshop URLs); version compatibility (mismatched builds, "last updated" date as evidence heuristic — spec §6.4); launch & verify (in-game mod menu as ground truth); per-wave switching (new game per wave; enable/disable the wave's subset). Use `#callout("Note:", ...)` / `#callout("Warning:", ...)` / `#callout("Tip:", ...)` for emphasis, themed to the palette.

Content rules: every factual claim about Mod Updater or the native flow must match Task 3's verified facts; do not invent tool behavior. Link the workshop item and the guide's mod-card URLs as `#link("https://...")[name]`.

- [ ] **Step 2: Verify the chapter renders**

```bash
& .\build.bat
```
Expected: compile succeeds. Spot-check by reading the Installation section's page range in the query output.

- [ ] **Step 3: Commit checkpoint** (with user approval):

```bash
git add oxygen-not-included/guide/installation.typ
git commit -m "docs(oxygen-not-included): installation guide"
```

---

## Task 10: Wave 0 Guide Files

Write the beginner tutorial + Wave 0 QoL modlist sections as FILLABLE SCAFFOLDS (user adds mod cards later). Chapters frozen per spec §3.

**Files:**
- Modify: `oxygen-not-included/guide/wave-0/how-to-play.typ`
- Modify: `oxygen-not-included/guide/wave-0/modlist.typ`
- Modify: `oxygen-not-included/guide/wave-0/mechanics.typ`
- Modify: `oxygen-not-included/guide/wave-0/graphics.typ`

- [ ] **Step 1: Write `how-to-play.typ`**

`== Wave 0: How to Play` then these `===` sections, in order, each beginner-scoped (define the mechanic + first actionable setup, no multi-page essays):
1. The First Breathe's Roadmap
2. Controls & Keybindings
3. The Interface Tour
4. Your First Minutes
5. Oxygen & Water Production
6. Food & Farming
7. Power & the Electric Grid
8. Plumbing & Sanitation
9. Duplicants: Needs, Priorities, Skill Points & Morale
10. Critters: Hatch Ranching Basics
11. Research
12. Common Beginner Mistakes
13. The First Breathe's First Session

- [ ] **Step 2: Write `modlist.typ`**

`== Wave 0: Modlist` intro prose (why QoL-only; the CLIENT-ONLY/BEHAVIORAL-NEUTRAL rule), then the split intro for the next two sections.

- [ ] **Step 3: Write `mechanics.typ` and `graphics.typ` as FILLABLE SCAFFOLDS**

- Define the `mod-entry` helper (copy from Task 8 Step 4).
- One `===` section each (`Mechanics` / `Graphics`) with a short intro describing what this wave's mechanics/graphics mods are for (pure UI/visual/informational).
- A clearly marked placeholder block for the user, e.g.:
  ```typst
  // ============================================================================
  // MOD CARDS GO HERE — added by the user (per project decision, this project
  // does not research or select mods). Paste one #mod-entry(...) call per mod.
  // Requirements (spec §4, §5): verified workshop URL; CLIENT-ONLY or
  // BEHAVIORAL-NEUTRAL only for Wave 0; DLC must be owned (Base / Spaced Out!
  // / Bionic Booster Pack; NOT Aquatic/Frosty/Prehistoric); power-spike gate
  // must pass (no ex-nihilo resources, no free heat deletion, no tech/labor
  // bypass, no morale/skill breaks, no all-knowing info incl. geyser reveal).
  // ============================================================================
  ```
- NO mod name/URL in any file.

- [ ] **Step 4: Verify the wave compiles**

```bash
& .\build.bat
```
Expected: compile succeeds; `typst query template.typ "heading"` shows Wave 0 sections in order.

- [ ] **Step 5: Commit checkpoint** (with user approval):

```bash
git add oxygen-not-included/guide/wave-0
git commit -m "docs(oxygen-not-included): wave 0 guide"
```

---

## Task 11: Wave 1 Guide Files

Intermediate strategy + content/mechanics modlist sections as FILLABLE SCAFFOLDS (user adds mod cards later).

**Files:**
- Modify: `oxygen-not-included/guide/wave-1/strategy.typ`
- Modify: `oxygen-not-included/guide/wave-1/modlist.typ`
- Modify: `oxygen-not-included/guide/wave-1/mechanics.typ`
- Modify: `oxygen-not-included/guide/wave-1/content.typ`
- Modify: `oxygen-not-included/guide/wave-1/graphics.typ`

- [ ] **Step 1: Write `strategy.typ`**

`== Wave 1: Strategy` then `===` sections, in order:
1. Automation & Logic Circuits
2. Geyser & Vent Taming
3. Heat Management & Steam Turbines
4. Plastic & Petroleum
5. Ranching Diversity
6. Dupe Jobs, Skill Specialization & Morale Optimization
7. Transit Tubes

- [ ] **Step 2: Write `modlist.typ`**

`== Wave 1: Modlist` intro prose (the wave's rule: STAT-CHANGING allowed only past the power-spike gate).

- [ ] **Step 3: Write `mechanics.typ`, `content.typ`, `graphics.typ` as FILLABLE SCAFFOLDS**

`mod-entry` helper (as Task 10 Step 3), `===` sections (`Mechanics` / `Content` / `Graphics`) with short intros, and the same clearly marked placeholder block as Task 10 Step 3 — with Wave 1 requirements: STAT-CHANGING allowed only if the power-spike gate passes (spec §4); power-spike verdict should go in each card's Notes.

- [ ] **Step 4: Verify the wave compiles**

```bash
& .\build.bat
```
Expected: compile succeeds; query shows Wave 1 sections in order.

- [ ] **Step 5: Commit checkpoint** (with user approval):

```bash
git add oxygen-not-included/guide/wave-1
git commit -m "docs(oxygen-not-included): wave 1 guide"
```

---

## Task 12: Wave 2 Guide Files

Advanced Spaced Out capstone strategy + modlist sections as FILLABLE SCAFFOLDS (user adds mod cards later).

**Files:**
- Modify: `oxygen-not-included/guide/wave-2/strategy.typ`
- Modify: `oxygen-not-included/guide/wave-2/modlist.typ`
- Modify: `oxygen-not-included/guide/wave-2/mechanics.typ`
- Modify: `oxygen-not-included/guide/wave-2/content.typ`
- Modify: `oxygen-not-included/guide/wave-2/graphics.typ`

- [ ] **Step 1: Write `strategy.typ`**

`== Wave 2: Strategy` then `===` sections, in order:
1. Rocketry
2. Interplanetary Logistics
3. Planetoid Colonization
4. Radiation & Radbolts
5. Bionic Dupes
6. The Endgame

- [ ] **Step 2: Write `modlist.typ`**

`== Wave 2: Modlist` intro prose (the DLC-aware capstone rule; note the anchor research context in STATUS.md).

- [ ] **Step 3: Write `mechanics.typ`, `content.typ`, `graphics.typ` as FILLABLE SCAFFOLDS**

As Task 11 Step 3, with Wave 2 requirements: DLC dependencies must be explicitly stated on each card; unowned DLCs (Aquatic Planet Pack, Frosty, Prehistoric) are out of scope.

- [ ] **Step 4: Verify the wave compiles**

```bash
& .\build.bat
```
Expected: compile succeeds; query shows Wave 2 sections in order.

- [ ] **Step 5: Commit checkpoint** (with user approval):

```bash
git add oxygen-not-included/guide/wave-2
git commit -m "docs(oxygen-not-included): wave 2 guide"
```

---

## Task 13: Glossary (`guide/glossary.typ`)

Define every term in the spec §8 seed list (may grow, never shrink).

**Files:**
- Modify: `oxygen-not-included/guide/glossary.typ`

- [ ] **Step 1: Write the glossary**

`== Glossary` then definitions for the full seed list: duplicant (dupe), morale, skill points, priorities, job assignment, attribute/interest; oxygen diffuser, electrolyzer, SPOM, algae, polluted oxygen, carbon dioxide, oxygen mask/atmo suit/exosuit, atmo suit dock; mealwood, bristle blossom, cooking, grill, food spoilage, water sieve, liquid reservoir; power grid, heavi-watt wire, battery, hamster wheel, coal generator, hydrogen generator, steam turbine, aquatuner, thermo regulator, heat deletion, thermal mass, insulated tile, liquid lock; hatch, drecko, puft, slickster, pip, shine bug, ranching, stable; geyser, vent, cool steam vent, water geyser, oil reservoir, oil well, petroleum, plastic; automation wire, sensors, shutoffs, logic gates; rocket, rocket platform, cargo modules, planetoid, radiation, radbolt, bionic dupe.

Format: term as `*Term:*` bolded lead-in + 1–3 sentence definition. Group under `===` subheads (Oxygen & Air; Food & Water; Power & Heat; Critters; Geysers & Terrain; Automation; Spaced Out).

- [ ] **Step 2: Verify the glossary renders**

```bash
& .\build.bat
```
Expected: compile succeeds; glossary appears at the end of the query output.

- [ ] **Step 3: Commit checkpoint** (with user approval):

```bash
git add oxygen-not-included/guide/glossary.typ
git commit -m "docs(oxygen-not-included): glossary"
```

---

## Task 14: README + Meta Files Finalize

Finish `README.md` and reconcile `conflicts-mods.md` / `mod-ideas.md` / `STATUS.md`.

**Files:**
- Create: `oxygen-not-included/README.md`
- Modify: `oxygen-not-included/STATUS.md` (final Audit Trail + Notes)
- Modify: `oxygen-not-included/conflicts-mods.md`
- Modify: `oxygen-not-included/mod-ideas.md`

- [ ] **Step 1: Write `README.md`**

```markdown
# Primordial Outpost Reborn - Oxygen Not Included Modlist & Guide

A curated modlist and game guide for **Oxygen Not Included** (Build <RESOLVED-BUILD>, <date>; DLCs: Spaced Out!, Bionic Booster Pack), organized in three progressively harder "waves" (0-2), each with its own roleplay backstory.

- Modlist: **mods added by the user** — the guide ships with fillable modlist scaffolds (guide/wave-*/); the user pastes verified mod cards there (rules in STATUS.md / spec §4)
- Mod organizer: Mod Updater (see STATUS.md)
- Mod source: Steam Workshop (app 457140)
- PDF: run `build.bat` to regenerate `output/primordial-outpost-reborn.pdf`

## Mods per wave
| Wave | Theme | Status |
|---|---|---|
| 0 - The First Breathe | UI/QoL essentials (vanilla base) | mods pending user addition |
| 1 - The Vent Tamer | Content + mechanics (no power spikes) | mods pending user addition |
| 2 - The Voyager | Spaced Out capstone | mods pending user addition |

## Structure
- `guide/` - Typst sources (installation, per-wave chapters, glossary)
- `output/` - generated PDF
- `STATUS.md` - live audit (decisions, verifications, notes)
- `conflicts-mods.md` / `mod-ideas.md` - not included in the PDF
```

Fill `<RESOLVED-BUILD>` and page count from STATUS.md / Task 15. Mark "mods pending user addition" until the user fills the scaffolds, then update the table.

- [ ] **Step 2: Finalize meta files**

- `conflicts-mods.md`: keep the placeholder — conflicts are resolved when the user adds mods (the file is the tracking spot for it).
- `mod-ideas.md`: keep any DEFERRED/unverified leads from the (cancelled) research tasks — currently only the pre-scope research notes; leave the placeholder otherwise.
- `STATUS.md`: complete the Audit Trail (page count from Task 15, any discrepancies). The Accepted/Rejected tables stay empty — the user populates them when they add mods.

- [ ] **Step 3: Commit checkpoint** (with user approval):

```bash
git add oxygen-not-included/README.md oxygen-not-included/STATUS.md oxygen-not-included/conflicts-mods.md oxygen-not-included/mod-ideas.md
git commit -m "docs(oxygen-not-included): finalize README and meta files"
```

---

## Task 15: Final Build, Audit & Close-Out

Build the final PDF, audit the structure, verify against the spec's PDF requirements, and close out STATUS.md.

**Files:**
- Generate: `oxygen-not-included/output/primordial-outpost-reborn.pdf`
- Modify: `oxygen-not-included/STATUS.md` (final Audit Trail + Notes)

- [ ] **Step 1: Final build**

```bash
& .\build.bat
```
Expected: `SUCCESS`, exit 0.

- [ ] **Step 2: Audit heading structure**

```bash
typst query template.typ "heading"
typst query template.typ "<end>"
```
Expected: 1 cover page; TOC; Installation Guide; the 3 wave chapters with their sections in the frozen order; Glossary; total page count. Every spec §3 frozen section heading appears exactly once.

- [ ] **Step 3: Verify PDF requirements (spec §9)**

Confirm via the query output + a visual check (open the PDF): cover page with `assets/logo.jpg` + modlist name + page numbers at bottom; top-level TOC; full installation instructions; complete guide + modlist; themed colors/fonts render.

- [ ] **Step 4: Record close-out in STATUS.md**

Append to Audit Trail: final page count, build date, verification pass result. Add Notes entries for anything deferred.

- [ ] **Step 5: Final commit checkpoint** (with user approval):

```bash
git add oxygen-not-included/output oxygen-not-included/STATUS.md
git commit -m "docs(oxygen-not-included): output PDF and finalize STATUS"
```

---

## Self-Review

**Spec coverage check (post scope-change):**
- §1 Goal → guide + scaffolds + infrastructure tasks. ✓
- §2 Architecture → Task 1, Task 8. ✓
- §3 Waves (themes, frozen chapters, dupe topics) → Tasks 10–12 (section lists match). ✓
- §4 Mod policy (gate + classification + no-fabrication + adult N/A) → **user-owned now**; policy documented in AGENTS.md + scaffold placeholders so the user applies it when filling mods. ✓
- §5 Card format → `mod-entry` helper shipped in Tasks 8/10–12 scaffolds for the user. ✓
- §6.1 Build gate → Task 2. §6.2 Mod Updater → Task 3. §6.3 Wave-2 premise → Task 4 (informational for user). §6.4 verdict taxonomy → user-owned (documented, not executed). ✓
- §7 Installation guide → Task 9 (sections match). ✓
- §8 Glossary seed → Task 13 (exact seed list). ✓
- §9 PDF design → Task 8 (template) + Task 15 (verify). ✓
- §10 Deliverables → Tasks 1–4, 8–15 (+ scaffolds). ✓
- §11 Non-goals → no task ships unverified mods or an assumed overhaul anchor. ✓

**Placeholder scan:** no TBD/TODO/aspirational steps in what ships; the only intentional placeholders are the USER-FILLABLE mod-card blocks in Tasks 10–12 scaffolds and the STATUS.md mod tables (per the scope change).

**Type consistency:** `mod-entry` signature is identical across Task 8 stubs and Tasks 10–12. Stub headings (Task 8) match the real headings written in Tasks 9–13. Output filename `output/primordial-outpost-reborn.pdf` is consistent in build.bat, template coverage, README, and AGENTS.md. `<RESOLVED-BUILD>` resolves once in Task 2 and is consumed by Task 8 (template cover) and Task 14 (README).
