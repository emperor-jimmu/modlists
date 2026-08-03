# Synaptic Overproduction — Factorio Modlist & Guide Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Produce the complete "Synaptic Overproduction" Factorio 2.0.77 modlist + game guide as a 40–60 page PDF (`factorio/output/synaptic-overproduction.pdf`) plus the project's living docs.

**Architecture:** Static content authored as Typst (`.typ`) sources under `factorio/guide/`, composed by a single master `template.typ` into one PDF via `build.bat` (Typst 0.15/0.15.1). Every mod is researched and URL-verified **before** it enters a mod card; verification records live in `STATUS.md`. The organizer is Factorio's **built-in mod manager** (no third-party tool, no UI-flow verification required per user directive 2026-08-03). Content is authored per-wave (0 The Castaway / 1 The Architect / 2 The Krastorio Prodigy); Wave 2 is anchored by **Krastorio 2**, verified first as the critical de-risk. Then the PDF is compiled and audited against the Definition of Done.

**Tech Stack:** Typst 0.15/0.15.1, PowerShell batch (`build.bat`), `typst query` (reliable PDF structure checks), official Factorio Mod Portal (`mods.factorio.com`) — page fetch + the portal API (`mods.factorio.com/api/mods/<name>.json`) as the authoritative version/compatibility source, webfetch / ctx_fetch_and_index / Playwright for URL verification.

**Working tree note:** Work happens in the current working tree (`main`), consistent with the sibling projects. No worktree isolation.

**Reference project:** `kenshi/` (sibling, completed — same template lineage) — mirror its conventions: `template.typ` / `build.bat` / `guide/wave-<n>/` layout, `mod-entry` card function, STATUS.md table format. Adaptation deltas: 3 waves (not 5), built-in mod manager (no KMM), portal-only mod sources, Factorio industrial palette, 40–60 page target.

---

## File Structure

| File | Responsibility |
|---|---|
| `factorio/AGENTS.md` | Project-specific agent instructions |
| `factorio/README.md` | Overview, target, how to regenerate the PDF |
| `factorio/STATUS.md` | Live decision log: accepted/rejected mods, conflicts, verifications, K2 verdict |
| `factorio/conflicts-mods.md` | Known conflicts (excluded from PDF) |
| `factorio/mod-ideas.md` | Future / UNVERIFIED-but-promising candidates (excluded from PDF) |
| `factorio/.gitignore` | Ignores the generated PDF |
| `factorio/build.bat` | One-click Typst compile wrapper |
| `factorio/template.typ` | Master template: cover, TOC, palette, fonts, `callout()` helper, includes all guide files, `#label("end")` marker |
| `factorio/guide/installation.typ` | Built-in mod manager setup + per-wave switching |
| `factorio/guide/glossary.typ` | 30–40 player-facing + modding terms (harvested during wave tasks, assembled in Task 8) |
| `factorio/guide/wave-0/{how-to-play,modlist,mechanics,graphics}.typ` | Wave 0 chapter (no strategy/content — vanilla only) |
| `factorio/guide/wave-{1,2}/{strategy,modlist,mechanics,content,graphics}.typ` | Waves 1–2 chapters |
| `factorio/output/synaptic-overproduction.pdf` | Generated PDF (gitignored) |

All `modlist.typ` files define the shared `mod-entry` card function locally (proven sibling pattern — repeated deliberately, not extracted).

---

### Task 1: Scaffold project files + guide skeletons

**Files:**
- Create: `factorio/AGENTS.md`, `factorio/README.md`, `factorio/STATUS.md`, `factorio/conflicts-mods.md`, `factorio/mod-ideas.md`, `factorio/.gitignore`, `factorio/build.bat`
- Create: `factorio/guide/installation.typ`, `factorio/guide/glossary.typ`, and all 14 wave files as skeletons

- [ ] **Step 1: Create the supporting project files**

`.gitignore`:
```
# Generated artifacts
output/
```

`conflicts-mods.md`:
```
# Mod Conflicts

No conflicts identified yet. Populated when a real incompatibility is confirmed.

## Conflict Log
| Mod A | Mod B | Issue | Mitigation |
|---|---|---|---|
```

`mod-ideas.md`:
```
# Mod Ideas (Future / UNVERIFIED)

Candidates that are promising but unverified, or out of scope for the current release.
They are intentionally NOT in the guide PDF.

| Mod | Category | Why deferred |
|---|---|---|
```

`STATUS.md`:
```
# Synaptic Overproduction - STATUS

Target: Factorio 2.0.77 (released May 21, 2026), Space Age owned. Mod organizer: built-in
mod manager (main menu -> Mods). Mod source: official Factorio Mod Portal (mods.factorio.com).

## Audit Trail
| Date | Item | Verdict | Evidence |
|---|---|---|---|

## Decisions
| Date | Decision | Rationale |
|---|---|---|

## Accepted Mods
| Wave | Mod | URL | Last updated | Factorio version | Verified | Method | Deps | Compat | Notes |
|---|---|---|---|---|---|---|---|---|---|

## Rejected Mods
| Wave | Mod | Reason |
|---|---|---|

## Conflicts
| Mod A | Mod B | Issue | Mitigation |
|---|---|---|---|

## Notes
```

`README.md`:
```
# Synaptic Overproduction - Factorio Modlist & Guide

A curated modlist and game guide for **Factorio 2.0.77** (May 21, 2026), organized in three
progressively harder "waves" (0-2), each with its own roleplay backstory.

- Mod organizer: Factorio's built-in mod manager
- Mod source: official Factorio Mod Portal (mods.factorio.com)
- PDF: run `build.bat` to regenerate `output/synaptic-overproduction.pdf`

## Structure
- `guide/` - Typst sources (installation, per-wave chapters, glossary)
- `output/` - generated PDF (gitignored)
- `STATUS.md` - live audit (accepted/rejected mods, decisions, verifications)
- `conflicts-mods.md` / `mod-ideas.md` - not included in the PDF
```

`AGENTS.md`:
```
# Synaptic Overproduction - Agent Instructions

Factorio 2.0.77 (May 21, 2026) modlist and game guide.

## Structure
- `guide/` - wave-based Typst sources (installation, per-wave files, glossary)
- `output/` - generated PDF (`synaptic-overproduction.pdf`)
- `assets/` - static assets (`logo.jpg`)
- `template.typ` - Typst master template (cover, TOC, page setup, fonts)
- `build.bat` - one-click PDF generator
- `STATUS.md` - live audit: decisions, accepted/rejected mods, conflicts, verifications
- `conflicts-mods.md` - known mod conflicts (excluded from PDF)
- `mod-ideas.md` - future/UNVERIFIED candidates (excluded from PDF)
- `docs/superpowers/` - specs and plans

## Key Rules
- Mods must be compatible with Factorio 2.0.77; every mod card needs a verified URL
  from the official Factorio Mod Portal (mods.factorio.com). Space Age is owned.
- Mod organizer = Factorio's built-in mod manager (main menu -> Mods); no third-party
  tool and no UI-flow verification needed.
- No meme/joke mods, explicit porn, redundant, or cheating/overpowered content.
- Power-spike test: mods raising output caps, throughput, or efficiency above vanilla
  caps, or lowering costs below vanilla, are rejected unless they add a proportionate
  challenge/cost.
- Every mod card: verified clickable name+URL, portal-listed factorio version +
  last-updated date, dependencies, system/mechanic impact, notes.
- Fact-check every structural game claim against official Factorio sources before it
  goes into a guide; log discrepancies in STATUS.md.
- Decision log maintained in `STATUS.md`.

## PDF Generation
Run `build.bat` -> `typst compile template.typ output/synaptic-overproduction.pdf` (Typst 0.15/0.15.1).
Fonts: Cinzel / Bahnschrift / Georgia. Target 40-60 pages.
```

- [ ] **Step 2: Create `build.bat`**

```bat
@echo off
echo ============================================
echo  Synaptic Overproduction - PDF Generator (Factorio 2.0.77)
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
typst compile template.typ output/synaptic-overproduction.pdf
if %ERRORLEVEL% equ 0 (
    echo.
    echo ============================================
    echo  SUCCESS: PDF generated at output/synaptic-overproduction.pdf
    echo ============================================
) else (
    echo.
    echo ERROR: PDF generation failed. Check the errors above.
    pause
)
```

- [ ] **Step 3: Create guide skeletons (16 files)**

Each skeleton is a minimal valid file so the document compiles from day one. Pattern for `guide/installation.typ`:

```typ
== Installation Guide
// Content lands here in Task 7.
```

Pattern for `guide/glossary.typ`:

```typ
== Glossary
// Content lands here in Task 8.
```

Per-wave skeleton (`guide/wave-0/how-to-play.typ`):

```typ
== The Castaway: How to Play
// Content lands here in Task 4.
```

Same pattern for every wave file (`guide/wave-<n>/<file>.typ`), heading text = `<Wave Name>: <Section>`. Wave names: 0 The Castaway, 1 The Architect, 2 The Krastorio Prodigy.

Wave 0 files (4): `how-to-play.typ`, `modlist.typ`, `mechanics.typ`, `graphics.typ`.
Wave 1 files (5): `strategy.typ`, `modlist.typ`, `mechanics.typ`, `content.typ`, `graphics.typ`.
Wave 2 files (5): `strategy.typ`, `modlist.typ`, `mechanics.typ`, `content.typ`, `graphics.typ`.

- [ ] **Step 4: Commit**

```bash
git add factorio/
git commit -m "chore(factorio): scaffold Synaptic Overproduction project and guide skeletons"
```

---

### Task 2: Verify toolchain + smoke-compile the PDF

**Files:**
- Create: `factorio/template.typ` (initial version, includes `callout()` helper and `#label("end")` marker)
- Verify: `build.bat`, Typst, fonts

- [ ] **Step 1: Verify Typst is installed and versioned**

Run: `typst --version`
Expected: `typst 0.15.x` (0.15 or 0.15.1). If not found, install Typst 0.15 from https://typst.app/ and confirm.

- [ ] **Step 2: Create the initial `template.typ`** (final per-wave color polish happens in Task 9; this version must compile against the skeletons)

```typ
#set page(
  margin: (x: 2cm, y: 2.5cm),
  footer: context {
    align(center)[
      #counter(page).display("1 / 1", both: true)
    ]
  },
)

#let callout(title, body) = block(
  fill: rgb("#f2ede0"), inset: 8pt, radius: 4pt,
  stroke: 0.5pt + rgb("#e8590c"),
)[*#title* #body]

#set text(font: "Georgia", size: 11pt, fill: rgb("#232323"))
#set par(justify: true, leading: 0.65em, spacing: 0.6em)
#set heading(numbering: none)
#show heading: set block(above: 1.4em, below: 0.5em)
#show heading.where(level: 1): set text(fill: rgb("#e8590c"), weight: "bold", size: 22pt, font: "Bahnschrift")
#show heading.where(level: 2): set text(fill: rgb("#f0a202"), weight: "bold", size: 16pt, font: "Bahnschrift")
#show heading.where(level: 3): set text(fill: rgb("#2b7a42"), weight: "bold", size: 13pt, font: "Bahnschrift")
#show heading.where(level: 1): it => { it; line(length: 100%, stroke: 0.5pt + rgb("#e8590c")) }
#show link: set text(fill: rgb("#e8590c"))

// == Cover Page
#v(3.5cm)
#align(center)[#image("assets/logo.jpg", width: 45%)]
#v(3.5cm)
#align(center)[
  #text(size: 36pt, weight: "bold", fill: rgb("#e8590c"), font: "Cinzel", "Synaptic Overproduction")
  #v(0.8em)
  #text(size: 16pt, fill: rgb("#232323"), "Factorio 2.0.77")
  #v(0.2em)
  #text(size: 14pt, fill: rgb("#232323"), "Modlist & Guide")
  #v(0.6em)
  #text(size: 11pt, fill: rgb("#6b6b6b"), "Version 2.0.77 - 2026")
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
=== Wave 0: The Castaway
#include "guide/wave-0/how-to-play.typ"
#include "guide/wave-0/modlist.typ"
#include "guide/wave-0/mechanics.typ"
#include "guide/wave-0/graphics.typ"
#pagebreak()

=== Wave 1: The Architect
#include "guide/wave-1/strategy.typ"
#include "guide/wave-1/modlist.typ"
#include "guide/wave-1/mechanics.typ"
#include "guide/wave-1/content.typ"
#include "guide/wave-1/graphics.typ"
#pagebreak()

=== Wave 2: The Krastorio Prodigy
#include "guide/wave-2/strategy.typ"
#include "guide/wave-2/modlist.typ"
#include "guide/wave-2/mechanics.typ"
#include "guide/wave-2/content.typ"
#include "guide/wave-2/graphics.typ"
#pagebreak()

// == Glossary
== Glossary
#include "guide/glossary.typ"

#label("end")
```

The `#label("end")` marker lets `typst query` report the total page count reliably (Step 4).

- [ ] **Step 3: Smoke-compile**

Run: `.\build.bat` from `factorio/`
Expected: `SUCCESS: PDF generated at output/synaptic-overproduction.pdf`, zero errors. If Typst warns about missing fonts, log it in STATUS.md Notes (Cinzel/Bahnschrift/Georgia are expected present — the sibling project rendered with them).

- [ ] **Step 4: Verify structure with `typst query` (not raw-byte greps — PDF text is compressed and raw-byte checks lie)**

Total page count:
```
typst query template.typ '<end>' --field page.number
```
Expected: a small integer > 4 (cover + TOC + installation + wave 0 + glossary skeleton pages).

All skeleton headings present, in order:
```
typst query template.typ 'heading' --field page.number
```
Expected: one page number per line, ~16 lines (2 installation/glossary + 4 per wave + glossary). The last wave heading's page must be >= the installation heading's page (sections are ordered).

- [ ] **Step 5: Commit**

```bash
git add factorio/
git commit -m "feat(factorio): add master template and smoke-compile the PDF"
```

---

### Task 3: Verify Krastorio 2 2.0.77 compatibility (critical de-risk — do before any Wave 2 research)

**Files:**
- Modify: `factorio/STATUS.md` only

This task decides whether Wave 2's anchor overhaul is usable at all. Its findings feed Task 6 and the installation chapter's compatibility section (Task 7).

- [ ] **Step 1: Fetch the Krastorio 2 portal page**

Fetch `https://mods.factorio.com/mod/Krastorio2` (webfetch; if the page is JS-walled or rate-limited, use Playwright to load and read it). Record: exact mod title, author, **last-update date**, the portal-listed compatible **Factorio version**, and dependencies (especially whether it depends on `space-age` or is base-2.0-only).

- [ ] **Step 2: Cross-check with the portal API (authoritative)**

Fetch `https://mods.factorio.com/api/mods/Krastorio2.json` (webfetch / ctx_fetch_and_index). Record from the JSON: `name`, `title`, `latest_release.game_version`, the releases' game-version history, `last_updated`, and the full `info_json.dependencies`. The API is the authoritative source for the `factorio_version` field and any `space-age` dependency entry.

- [ ] **Step 3: Assess 2.0.77 compatibility and log the verdict**

Verdict rules: if the API/portal lists a **2.0.x compatible game_version** and the mod was updated after Factorio 2.0's release (Oct 21, 2024), verdict = COMPATIBLE with 2.0.77 (2.0.x line covers 2.0.77 unless the page states a lower max). If the API shows a stale/broken version line, or the mod's page warns it lags the current 2.0.x, verdict = CONDITIONAL — investigate the author's changelog/comments before proceeding.

Also record: does K2 require `space-age`? (Space Age is owned, so a dependency is eligible but must be noted on the card and in the installation chapter.)

- [ ] **Step 4: Log the verdict in STATUS.md**

Add to the Decisions table: K2 verdict (COMPATIBLE / CONDITIONAL / INCOMPATIBLE), the API `factorio_version` evidence, `last_updated`, and any `space-age` dependency. If INCOMPATIBLE, pause and flag the user — Wave 2's anchor would need re-selection.

- [ ] **Step 5: Commit**

```bash
git add factorio/STATUS.md
git commit -m "docs(factorio): record Krastorio 2 2.0.77 compatibility verdict"
```

---

### Task 4: Wave 0 — The Castaway (beginner chapter, UI/QoL only)

**Files:**
- Create: `factorio/guide/wave-0/how-to-play.typ`, `factorio/guide/wave-0/modlist.typ`, `factorio/guide/wave-0/mechanics.typ`, `factorio/guide/wave-0/graphics.typ`
- Modify: `factorio/STATUS.md`, `factorio/guide/glossary.typ` (harvest)

**Rules in force for this wave:** no content mods (only UI/UX, performance, QoL). Cut list applies: no meme/porn/redundant/unverifiable mods. Power-spike test: a mod that raises output caps/throughput/efficiency above vanilla, or lowers costs below vanilla, is rejected unless it adds a proportionate challenge or cost. **Target 5-8 mods (guidance only — never pad).**

- [ ] **Step 1: Research 5-8 UI/QoL/performance candidates**

Searches on the portal (webfetch search / ctx_fetch_and_index / portal category pages): "Factorio quality of life mods 2.0", "Factorio UI improvement mod", "Factorio crafting queue QoL", "Factorio even distribution", "Factorio squeak through", "Factorio rate calculator", "Factorio bottleneck mod", "Factorio recipe book", "Factorio todo list", "Factorio visual/lighting mod". Browsing the portal's *Mods* list sorted by downloads under categories "Simple" / "Quality of Life" is the primary discovery path.

Candidate quality bar (all must hold): (a) exists on the official Factorio Mod Portal for 2.0; (b) matches the UI/QoL/performance category; (c) passes the cut list and power-spike test; (d) portal lists a 2.0.x compatible game version with a post-Oct-2024 last-update (or an active 2.0 maintenance history).

**Time budget:** max ~15 minutes of searching. If you cannot shortlist 5 quality candidates after 2 rounds of alternate queries, proceed with quality over quantity and record the shortfall in STATUS.md Notes — never pad with junk.

- [ ] **Step 2: Verify every shortlisted URL + log in STATUS.md (evidence bar)**

For each candidate, fetch its portal page AND its API entry (`mods.factorio.com/api/mods/<name>.json`). Capture and record **evidence** per mod: exact page title, last-update date, the portal-listed `factorio_version` (from the API's `latest_release.game_version`), and any dependencies.

**Verification verdict rule:** a mod is VERIFIED only if the fetched page/API title matches the card name exactly AND the last-update date + game version are recorded. A page/API that won't load, or a title mismatch, = UNVERIFIED -> log it in `mod-ideas.md`. Never fabricate a title, date, URL, version, or verdict.

**Compatibility rule (restated):** a mod is assumed 2.0.77-compatible when its API `game_version` is a 2.0.x line (which covers 2.0.77) or later, OR it was updated after Oct 21, 2024 with a 2.0-compatible version field. Anything stale or version-less is flagged for review. Record the verdict per mod in the Compat column.

Rejected candidates get a row in Rejected with the reason (e.g., "content mod at Wave 0", "unverifiable", "redundant", "power spike").

- [ ] **Step 3: Write `modlist.typ` with mod cards**

Define `mod-entry` locally and emit one card per accepted mod:

```typ
#let mod-entry(name, url, version: none, verified: none, deps: none, impact: none, notes: none) = {
  block(fill: rgb("#f2ede0"), inset: 10pt, radius: 4pt, stroke: 0.5pt + rgb("#e8590c"))[
    #link(url)[#text(weight: "bold", size: 11pt, fill: rgb("#e8590c"), name)]
    #if version != none [#v(4pt) *Version/Updated:* #version]
    #if verified != none [#v(3pt) *Verified:* #verified]
    #if deps != none [#v(3pt) *Dependencies:* #deps]
    #if impact != none [#v(3pt) *Impact:* #impact]
    #if notes != none [#v(3pt) *Notes:* #notes]
  ]
}

== Wave 0 — Modlist: Vanilla + UI/QoL Only
// Intro line: wave 0 adds no content; these mods improve usability and performance only.
// One #mod-entry(...) per accepted mod, fields copied from STATUS.md.
```

- [ ] **Step 4: Write `graphics.typ`** — the visual/UI QoL cards (interface skins, status indicators, lighting/visual clarity). Heading + one card per mod, via `mod-entry`.
- [ ] **Step 5: Write `mechanics.typ`** — the QoL/performance system mods (distribution QoL, calculator aids, queue/planning helpers), one card per mod via `mod-entry`, each card's Impact field explaining the system change.
- [ ] **Step 6: Write `how-to-play.typ` Part 1 — fundamentals** (target ~6-7 pages). Use `#callout("Tip:", ...)` / `#callout("Warning:", ...)` for keybinds and pitfalls. Must cover:
  1. Controls & keybindings (movement, camera zoom/pan, build/copy/paste/pipette, deconstruct, blueprint, map, alt-mode) — present as a keybind table
  2. The interface tour (toolbar, crafting menu, minimap, production stats, logistic network view)
  3. Your first minutes: mining by hand, the starter burner loop (coal -> furnace -> steam power), hand-crafting vs assembling machines
  4. Automation basics: assembling machines, inserters, belts — turning a manual loop into a machine line
- [ ] **Step 7: Write `how-to-play.typ` Part 2 — the bootstrap campaign** (target ~5-7 pages). Must cover:
  5. Science packs & research (red/green first; the automation loop)
  6. Oil processing (when and why; cracking basics)
  7. Early rail (a train line that justifies itself)
  8. Biters & defense (pollution, evolution, turrets, walls)
  9. Launching the rocket (the wave-0 goal)
  10. Common beginner mistakes (spaghetti paralysis, ratio blindness, hand-feeding, ignoring pollution)
- [ ] **Step 8: Wave 0 audit + commit**

1. **Page span:** run `typst query template.typ 'heading' --field page.number`; compute Wave 0's span (page of `=== Wave 0` to page of `=== Wave 1`). Expected: **13-15**. If under, expand; if over, trim.
2. **Placeholder grep:** `Select-String -Path guide\wave-0\*.typ -Pattern 'Content lands here|TBD|TODO'` -> zero matches.
3. **URL audit:** every `https://` in `guide/wave-0/*.typ` has a VERIFIED row in STATUS.md (spot-check by comparing extracted URLs to the table).
4. **Fact-check:** verify Wave 0's structural claims against official Factorio sources (wiki.factorio.com / the game's in-game tutorials): steam power ratios, science pack progression, pollution/evolution basics, rocket requirements. Fix any discrepancy in the text; log the check in STATUS.md Notes.
5. **Glossary harvest:** append this wave's new terms to `guide/glossary.typ` (e.g., assembler, inserter, science pack, pollution, evolution, blueprints, main bus).

```bash
git add factorio/
git commit -m "feat(factorio): write Wave 0 The Castaway chapter with verified UI/QoL mods"
```

---

### Task 5: Wave 1 — The Architect (content & mechanics)

**Files:**
- Create: `factorio/guide/wave-1/{strategy,modlist,mechanics,content,graphics}.typ`
- Modify: `factorio/STATUS.md`, `factorio/guide/glossary.typ` (harvest)

**Rules in force for this wave:** content + new mechanics that deepen systems; no pure power spikes. Cut list + power-spike test apply. **Target 8-12 mods (guidance only — never pad).**

- [ ] **Step 1: Research 8-12 logistics/production/circuit candidates**

Searches on the portal: "Factorio train signals mod", "Factorio loader mod", "Factorio miniloader", "Factorio warehouse mod", "Factorio circuit network mod", "Factorio combinator mod", "Factorio logistics network mod", "Factorio belt mod", "Factorio production chain mod", "Factorio defense biter mod". Browse portal categories "Logistics" / "Transportation" / "Circuits" sorted by downloads.

Candidate quality bar: same as Task 4 Step 1 (a-d), plus: the benefit must be gated behind research/materials, not handed out; anything adding ore/machines/recipes must come with real research + effort cost.

**Time budget:** max ~15 minutes of searching; if the floor can't be met after 2 rounds of alternate queries, ship quality-over-quantity and record the deviation in STATUS.md Notes.

- [ ] **Step 2: Verify every URL + log in STATUS.md (evidence bar)**

Same protocol and evidence bar as Task 4 Step 2: portal page + API per mod; exact title + last-update date + `game_version`; VERIFIED only on exact title match. Reject any mod that hands out power without research/material cost (log reason).

- [ ] **Step 3: Write `modlist.typ`** — intro explaining Wave 1's scale philosophy, then one card per accepted mod via `mod-entry`.
- [ ] **Step 4: Write `content.typ`** — the logistics/production content mods (loaders, warehouses, new belts/containers, production chains), one card each.
- [ ] **Step 5: Write `mechanics.typ`** — the systems mods (train/circuit/logistics mechanics) and their system impact, one card each.
- [ ] **Step 6: Write `graphics.typ`** — the visual mods for this wave (visual clarity for logistics, signal/overlay visuals), one card each.
- [ ] **Step 7: Write `strategy.typ`** (target ~8-10 pages, the bulk of the budget). Use `#callout(...)` for tips. Must cover:
  1. Main bus vs spaghetti (bus design, which lanes, where to expand)
  2. Trains & rail networks (signals, chain signals, blocks, station naming, train limits)
  3. Circuit networks & combinators (constant/decider/arithmetic, simple real applications)
  4. Logistics robots (roboports, requester/provider/storage chests, when to switch from belts)
  5. Modules & beacons (efficiency/prod/speed tradeoffs, beacon arrays)
  6. Quality mechanics (tiers, recycling/upcycling, when quality pays off)
  7. Rate mathematics (items-per-second, belt throughput, assembler count)
  8. Megabase block design (city blocks, train-based cells — the Architect's capstone)
- [ ] **Step 8: Audit + commit**

1. **Page span:** `typst query template.typ 'heading' --field page.number`; Wave 1 span (`=== Wave 1` to `=== Wave 2`). Expected: **10-12**. Adjust content to fit.
2. **Placeholder grep:** `Select-String -Path guide\wave-1\*.typ -Pattern 'Content lands here|TBD|TODO'` -> zero matches.
3. **URL audit:** every `https://` in `guide/wave-1/*.typ` has a VERIFIED row in STATUS.md.
4. **Fact-check:** verify structural claims against official Factorio sources: rail signal rules, circuit network fundamentals, module/beacon numbers, quality percentages, bot logistics mechanics. Fix discrepancies; log in STATUS.md Notes.
5. **Glossary harvest:** append new terms (rail signal, chain signal, combinator, roboport, requester chest, module, quality, beacon).

```bash
git add factorio/
git commit -m "feat(factorio): write Wave 1 The Architect chapter with verified content/mechanics mods"
```

---

### Task 6: Wave 2 — The Krastorio Prodigy (K2 capstone)

**Files:**
- Create: `factorio/guide/wave-2/{strategy,modlist,mechanics,content,graphics}.typ`
- Modify: `factorio/STATUS.md`, `factorio/guide/glossary.typ` (harvest)

**Rules in force for this wave:** only mods explicitly compatible with K2's 2.0-era chain; nothing that hands victory away. Cut list + power-spike test apply. **Target 8-12 mods (guidance only — never pad). Krastorio 2 itself ships here.** Uses the Task 3 verdict.

- [ ] **Step 1: Research 8-12 K2-compatible candidates**

Searches on the portal: "Krastorio 2 compatible", "K2 addon", "Krastorio companion", "Krastorio2" (browse every mod tagged `Krastorio2` in its dependencies). The portal's dependency field is the filter: every Wave 2 candidate must list `Krastorio2` as a dependency OR be an explicitly K2-compatible QoL mod. Start from K2's own page's *Dependencies* / *Referenced by* lists.

Candidate quality bar: same as Task 4 Step 1 (a-d), plus: (e) must declare `Krastorio2` dependency on the portal OR be a QoL mod verified compatible with K2's rebalanced recipes; (f) must not restore vanilla-only behavior that K2 intentionally changed (would conflict).

**Time budget:** max ~15 minutes of searching; if the floor can't be met after 2 rounds of alternate queries, ship quality-over-quantity (K2 + a handful of verified companions is an acceptable floor) and record the deviation in STATUS.md Notes.

- [ ] **Step 2: Verify every URL + log in STATUS.md (evidence bar)**

Same protocol and evidence bar as Task 4 Step 2: portal page + API per mod; exact title + last-update date + `game_version`; VERIFIED only on exact title match. Additionally record each mod's `info_json.dependencies` to prove the K2 link (or the QoL-compat rationale). Reject anything that restores vanilla behaviors K2 replaced, or hands out power (log reason).

- [ ] **Step 3: Write `modlist.typ`** — intro explaining Wave 2's overhaul philosophy and the K2-compat rule, then one card per accepted mod via `mod-entry`.
- [ ] **Step 4: Write `content.typ`** — the K2 content/compat mods, one card each (Krastorio 2 itself first).
- [ ] **Step 5: Write `mechanics.typ`** — the K2 system/mechanic mods and their impact, one card each.
- [ ] **Step 6: Write `graphics.typ`** — the visual mods for this wave (K2-adjacent visual/QoL additions), one card each.
- [ ] **Step 7: Write `strategy.typ`** (target ~8-10 pages). Use `#callout(...)`. Must cover:
  1. K2's new ores & mining (which new materials appear, and where)
  2. New intermediates & processing chains (what each new tier feeds)
  3. K2's research overhaul (new tech tiers, what unlocks when)
  4. Adapting each vanilla system to K2 (smelting, oil, power, trains, bots)
  5. K2 combat & biters (challenge curve, what got harder)
  6. K2's endgame (the deep science push, the "win" condition)
  7. The Prodigy's arc (RP capstone)
- [ ] **Step 8: Audit + commit**

1. **Page span:** `typst query template.typ 'heading' --field page.number`; Wave 2 span (`=== Wave 2` to `== Glossary`). Expected: **10-12**.
2. **Placeholder grep:** `Select-String -Path guide\wave-2\*.typ -Pattern 'Content lands here|TBD|TODO'` -> zero matches.
3. **URL audit:** every `https://` in `guide/wave-2/*.typ` has a VERIFIED row in STATUS.md.
4. **Fact-check:** verify structural claims about K2's systems against the mod's own portal description/changelog and its official wiki (wiki.k2.team / krastorio wiki) — do NOT assert specific recipe numbers unless sourced. Fix discrepancies; log in STATUS.md Notes.
5. **Glossary harvest:** append new terms (imersite, K2 tech tiers, new intermediates, K2 science packs).

```bash
git add factorio/
git commit -m "feat(factorio): write Wave 2 The Krastorio Prodigy chapter with verified K2 capstone mods"
```

---

### Task 7: Installation guide (built-in mod manager)

**Files:**
- Modify: `factorio/guide/installation.typ`
- Modify: `factorio/STATUS.md`

Written from established Factorio behavior per the user directive (2026-08-03: no UI-flow verification required, nothing flagged UNVERIFIED in this area).

- [ ] **Step 1: Write the installation chapter.** Required sections, in order:
  1. Game prep — install Factorio from Steam/standalone, confirm build **2.0.77 (May 21, 2026)**; note Space Age DLC (owned) and that the 2.0 version line is shared between base and expansion
  2. Enable the built-in manager — main menu → Mods; it syncs with the official portal (browse, search, one-click Install, dependency auto-resolution)
  3. Fetch mods — per-card portal URLs; the built-in manager's search + Install flow places each mod in `mods/`
  4. Version compatibility — the manager flags incompatible mods; every card's portal-listed `factorio_version` is the compatibility evidence (cite the STATUS.md records)
  5. Launch & verify — start the game, open the Mods menu, confirm every enabled mod is loaded; in-game mod state is the ground truth
  6. Per-wave switching — each wave = its own new game + mod subset; the shared Wave 0 QoL base persists; disabling a wave's content mods between waves is a checkbox toggle in the built-in manager
- [ ] **Step 2: Note the K2 anchor** — if Task 3 returned CONDITIONAL, include the caveat; if any accepted mod depends on `space-age`, name that dependency in the setup (Space Age is owned).
- [ ] **Step 3: Audit + commit** — placeholder grep on `guide/installation.typ` (`Content lands here|TBD|TODO`) -> zero; every mod named in the chapter has a VERIFIED row in STATUS.md.

```bash
git add factorio/
git commit -m "docs(factorio): write installation guide with built-in mod manager setup"
```

---

### Task 8: Glossary assembly

**Files:**
- Modify: `factorio/guide/glossary.typ`
- Modify: `factorio/STATUS.md`

- [ ] **Step 1: Assemble the harvested terms** from Tasks 4-6 into `guide/glossary.typ`. Deduplicate, and add the modding group that waves don't naturally produce: mod portal, `factorio_version`, dependency, mod conflict, `mods/` folder, built-in mod manager, "later wins".

Format per term:
```typ
*Term* — one-sentence definition with game context.
```

- [ ] **Step 2: Audit** — count terms with `Select-String -Path guide\glossary.typ -Pattern '^\*'`. Expected: **30-40**. If under 30, expand; if over 40, trim the least-used terms.
- [ ] **Step 3: Commit**

```bash
git add factorio/
git commit -m "docs(factorio): assemble 30-40 term glossary"
```

---

### Task 9: Template polish + PDF build + DoD verification

**Files:**
- Modify: `factorio/template.typ` (per-wave color coding via scoped show rules)
- Verify: full build

- [ ] **Step 1: Add per-wave color coding**

Wrap every wave section in a scoped block so the included files' level-2 headings pick up that wave's accent, then revert automatically. Per-wave heading accents (all dark enough for contrast on paper `#f2ede0`): Wave 0 signal-orange `#e8590c`, Wave 1 hazard-yellow `#b8860b` (darker yellow for contrast), Wave 2 copper-green `#2b7a42`.

This is the working pattern — scoped `#show` inside a `#block[...]` (a plain `#set text(...)` around a section does NOT recolor headings, because the template's `#show heading` rules override it):

```typ
#block[
  #show heading.where(level: 2): set text(fill: rgb("#b8860b"))
  #show heading.where(level: 3): set text(fill: rgb("#b8860b"))
  === Wave 1: The Architect
  #include "guide/wave-1/strategy.typ"
  #include "guide/wave-1/modlist.typ"
  #include "guide/wave-1/mechanics.typ"
  #include "guide/wave-1/content.typ"
  #include "guide/wave-1/graphics.typ"
]
#pagebreak()
```

Apply the same block wrapper to all 3 wave sections with their accents. The TOC and top-level headings remain at the base signal-orange color.

- [ ] **Step 2: Callout consistency pass** — `callout()` is already defined in template.typ (Task 2) and used in wave content. Sweep each wave file: every tip/warning must use `#callout(...)`, not an inline `#block(...)`. Convert any stragglers.

- [ ] **Step 3: Rebuild the PDF**

Run: `.\build.bat`
Expected: `SUCCESS: PDF generated at output/synaptic-overproduction.pdf`, zero warnings/errors.

- [ ] **Step 4: Total page count (reliable check)**

```
typst query template.typ '<end>' --field page.number
```
Expected: **40-60** (target 44-51).

- [ ] **Step 5: Definition-of-Done spot checks**
  - **Headings present:** `typst query template.typ 'heading' --field page.number` shows all 3 wave headings + installation + glossary, in order.
  - **No placeholders:** `Select-String -Path guide\*.typ, guide\wave-*\*.typ -Pattern 'Content lands here|TBD|TODO'` -> zero matches.
  - **Page numbers:** footer renders "N / M" — spot-check by opening the PDF in the browser (Playwright: navigate to `file:///<abs path>\output\synaptic-overproduction.pdf`, snapshot the cover, verify the logo and footer).
  - **URLs resolve:** spot-check 3 URLs per wave by fetching each portal page (webfetch / ctx_fetch_and_index) and confirming the page loads.

- [ ] **Step 6: Commit**

```bash
git add factorio/
git commit -m "feat(factorio): polish template, rebuild PDF, and verify definition of done"
```

---

### Task 10: Final close-out

**Files:**
- Modify: `factorio/README.md`, `factorio/STATUS.md`, `factorio/AGENTS.md`
- Verify: everything

- [ ] **Step 1: Cut-list audit**

Walk every accepted mod against the cut list and the power-spike test; confirm each has a written verdict in STATUS.md (or a "borderline" note). Fix any that fail.

- [ ] **Step 2: Conflict scan**

Cross-check accepted mods for same-file/recipe edits; populate `conflicts-mods.md` with any real incompatibilities + mitigations (notably: Wave 1 content mods must NOT be carried into Wave 2, per the K2 recipe-rebalance rule), or leave the "No conflicts identified yet" header if none.

- [ ] **Step 3: Final PDF rebuild + full DoD pass**

Run `.\build.bat`, confirm SUCCESS. Page count via `typst query template.typ '<end>' --field page.number` in the 40-60 range. Verify the PDF opens and the cover/TOC render (Playwright file:// snapshot).

- [ ] **Step 4: Finalize docs**

Update README.md with the finished mod count per wave and the verified K2 verdict. Close out STATUS.md Notes with a summary line (mods accepted, mods rejected, conflicts, PDF page count).

- [ ] **Step 5: Final commit**

```bash
git add factorio/
git commit -m "docs(factorio): finalize README and STATUS; close out Synaptic Overproduction"
```

---

## Self-Review

- **Spec coverage:** DoD items map to tasks: 1 (build.bat/template.typ, Tasks 1-2), 2 (page range + cover/TOC/installation/3 waves/glossary, Tasks 2/9/10), 3 (verified URLs, Tasks 4-6 Step 2), 4 (compat assessment logged, all wave Tasks + Task 3), 5 (conflicts, Tasks 6/10), 6 (cut-list audit, all wave Tasks + Task 10), 7 (page budgets, wave Tasks Step 8), 8 (no padding, all wave Tasks). Section 4 (installation, Task 7). Section 7 (PDF, Tasks 2/9). Section 8 (verification rules, Tasks 4-6).
- **Placeholder scan:** every step carries exact content (file contents, commands, expected output, card format). No TBD/TODO.
- **Type consistency:** `mod-entry(name, url, version:, verified:, deps:, impact:, notes:)` is identical across Tasks 4-6; template.typ's wave-section block pattern is consistent across Tasks 2 and 9; the STATUS.md Accepted table columns match the card fields.
- **Adaptation deltas confirmed:** 3 waves (spec Section 2), built-in manager w/o verification (spec Section 4), portal-only sources (spec Section 3), K2-first de-risk (spec Section 9 risk register), 40-60 page target (spec Section 7).
