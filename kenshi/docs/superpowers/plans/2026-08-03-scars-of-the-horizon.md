# Scars of the Horizon — Kenshi Modlist & Guide Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Produce the complete "Scars of the Horizon" Kenshi 1.0.68 modlist + game guide as a 60-80 page PDF (`kenshi/output/scars-of-the-horizon.pdf`) plus the project's living docs.

**Architecture:** Static content authored as Typst (`.typ`) sources under `kenshi/guide/`, composed by a single master `template.typ` into one PDF via `build.bat` (Typst 0.15/0.15.1). Every mod is researched and URL-verified **before** it enters a mod card; verification records live in `STATUS.md`. Mods are organized by **KMM** (Kenshi Mod Manager, Nexus mod 1765) with a verified contingency (in-game mod manager) if KMM proves incompatible. Content is authored per-wave; each wave is a self-contained chapter; then the PDF is compiled and audited against the Definition of Done.

**Tech Stack:** Typst 0.15/0.15.1, PowerShell batch (`build.bat`), `typst query` (reliable PDF structure checks), Steam Workshop (primary mod source) + Nexus Mods (secondary), KMM (mod organizer), webfetch / websearch / context-mode / Playwright for URL verification.

**Working tree note:** Work happens in the current working tree (`main`), consistent with how the sibling `open-rails` project was built. No worktree isolation.

**Reference project:** `open-rails/` (sibling, completed) — mirror its conventions: `template.typ` / `build.bat` / `guide/<wave-N>/` layout, `mod-entry` card function, STATUS.md table format.

---

## File Structure

| File | Responsibility |
|---|---|
| `kenshi/AGENTS.md` | Project-specific agent instructions (mirror open-rails style) |
| `kenshi/README.md` | Overview, target, how to regenerate the PDF |
| `kenshi/STATUS.md` | Live decision log: accepted/rejected mods, conflicts, verifications, KMM verdict |
| `kenshi/conflicts-mods.md` | Known conflicts (excluded from PDF) |
| `kenshi/mod-ideas.md` | Future / UNVERIFIED-but-promising candidates (excluded from PDF) |
| `kenshi/.gitignore` | Ignores the generated PDF |
| `kenshi/build.bat` | One-click Typst compile wrapper |
| `kenshi/template.typ` | Master template: cover, TOC, palette, fonts, `callout()` helper, includes all guide files, `#label("end")` marker |
| `kenshi/guide/installation.typ` | KMM install + config + load order + per-wave switching |
| `kenshi/guide/glossary.typ` | 40-60 player-facing + KMM terms (harvested during wave tasks, assembled in Task 10) |
| `kenshi/guide/wave-0/{how-to-play,modlist,mechanics,graphics}.typ` | Wave 0 chapter |
| `kenshi/guide/wave-{1,2,3,4}/{strategy,modlist,mechanics,content,graphics}.typ` | Waves 1-4 chapters |
| `kenshi/output/scars-of-the-horizon.pdf` | Generated PDF (gitignored) |

All `modlist.typ` files define the shared `mod-entry` card function locally (proven open-rails pattern — repeated deliberately, not extracted).

---

### Task 1: Scaffold project files + guide skeletons

**Files:**
- Create: `kenshi/AGENTS.md`, `kenshi/README.md`, `kenshi/STATUS.md`, `kenshi/conflicts-mods.md`, `kenshi/mod-ideas.md`, `kenshi/.gitignore`, `kenshi/build.bat`
- Create: `kenshi/guide/installation.typ`, `kenshi/guide/glossary.typ`, and all 24 wave files as skeletons

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
# Scars of the Horizon - STATUS

Target: Kenshi 1.0.68 (released Apr 1, 2024). Mod organizer: KMM (Kenshi Mod Manager,
Nexus mod 1765) - verdict pending (Task 3).
Mod sources: Steam Workshop (primary), Nexus Mods (secondary).

## Audit Trail
| Date | Item | Verdict | Evidence |
|---|---|---|---|

## Decisions
| Date | Decision | Rationale |
|---|---|---|

## Accepted Mods
| Wave | Mod | URL | Last updated | Verified | Method | Deps | Compat | Notes |
|---|---|---|---|---|---|---|---|---|

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
# Scars of the Horizon - Kenshi Modlist & Guide

A curated modlist and game guide for **Kenshi 1.0.68** (April 1, 2024), organized in five
progressively harder "waves" (0-4), each with its own roleplay backstory.

- Mod organizer: KMM - Kenshi Mod Manager (Nexus mod 1765)
- Mod sources: Steam Workshop (primary) + Nexus (secondary)
- PDF: run `build.bat` to regenerate `output/scars-of-the-horizon.pdf`

## Structure
- `guide/` - Typst sources (installation, per-wave chapters, glossary)
- `output/` - generated PDF (gitignored)
- `STATUS.md` - live audit (accepted/rejected mods, decisions, verifications)
- `conflicts-mods.md` / `mod-ideas.md` - not included in the PDF
```

`AGENTS.md`:
```
# Scars of the Horizon - Agent Instructions

Kenshi 1.0.68 (Apr 1, 2024) modlist and game guide.

## Structure
- `guide/` - wave-based Typst sources (installation, per-wave files, glossary)
- `output/` - generated PDF (`scars-of-the-horizon.pdf`)
- `assets/` - static assets (`logo.jpg`)
- `template.typ` - Typst master template (cover, TOC, page setup, fonts)
- `build.bat` - one-click PDF generator
- `STATUS.md` - live audit: decisions, accepted/rejected mods, conflicts, verifications
- `conflicts-mods.md` - known mod conflicts (excluded from PDF)
- `mod-ideas.md` - future/UNVERIFIED candidates (excluded from PDF)
- `docs/superpowers/` - specs and plans

## Key Rules
- Mods must be compatible with Kenshi 1.0.68; every mod card needs a verified URL.
- Mod organizer = KMM (Nexus 1765); verify behavior before writing install instructions.
- Mod sources: Steam Workshop (primary), Nexus (secondary).
- No meme/joke mods, explicit porn, redundant, or cheating/overpowered content.
- Power-spike test: mods raising stats/damage/armor above vanilla caps are rejected
  unless they add a proportionate challenge/cost.
- Every mod card: verified clickable name+URL, dependencies, system/mechanic impact, notes.
- Fact-check every structural game claim against the Kenshi wiki (kenshi.fandom.com)
  before it goes into a guide; log discrepancies in STATUS.md.
- Decision log maintained in `STATUS.md`.

## PDF Generation
Run `build.bat` -> `typst compile template.typ output/scars-of-the-horizon.pdf` (Typst 0.15/0.15.1).
Fonts: Cinzel / Bahnschrift / Georgia. Target 60-80 pages.
```

- [ ] **Step 2: Create `build.bat`**

```bat
@echo off
echo ============================================
echo  Scars of the Horizon - PDF Generator (Kenshi 1.0.68)
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
typst compile template.typ output/scars-of-the-horizon.pdf
if %ERRORLEVEL% equ 0 (
    echo.
    echo ============================================
    echo  SUCCESS: PDF generated at output/scars-of-the-horizon.pdf
    echo ============================================
) else (
    echo.
    echo ERROR: PDF generation failed. Check the errors above.
    pause
)
```

- [ ] **Step 3: Create guide skeletons (25 files)**

Each skeleton is a minimal valid file so the document compiles from day one. Pattern for `guide/installation.typ`:

```typ
== Installation Guide
// Content lands here in Task 9.
```

Pattern for `guide/glossary.typ`:

```typ
== Glossary
// Content lands here in Task 10.
```

Per-wave skeleton (`guide/wave-0/how-to-play.typ`):

```typ
== The Wanderer: How to Play
// Content lands here in Task 4.
```

Same pattern for every wave file (`guide/wave-<n>/<file>.typ`), heading text = `<Wave Name>: <Section>`. Wave names: 0 The Wanderer, 1 The Outlander, 2 The Smith, 3 The Expedition, 4 The Conqueror.

- [ ] **Step 4: Commit**

```bash
git add kenshi/
git commit -m "chore(kenshi): scaffold Scars of the Horizon project and guide skeletons"
```

---

### Task 2: Verify toolchain + smoke-compile the PDF

**Files:**
- Create: `kenshi/template.typ` (initial version, includes `callout()` helper and `#label("end")` marker)
- Verify: `build.bat`, Typst, fonts

- [ ] **Step 1: Verify Typst is installed and versioned**

Run: `typst --version`
Expected: `typst 0.15.x` (0.15 or 0.15.1). If not found, install Typst 0.15 from https://typst.app/ and confirm.

- [ ] **Step 2: Create the initial `template.typ`** (final per-wave color polish happens in Task 11; this version must compile against the skeletons)

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
  fill: rgb("#f7e8d8"), inset: 8pt, radius: 4pt,
  stroke: 0.5pt + rgb("#d97b3a"),
)[*#title* #body]

#set text(font: "Georgia", size: 11pt, fill: rgb("#2b2622"))
#set par(justify: true, leading: 0.65em, spacing: 0.6em)
#set heading(numbering: none)
#show heading: set block(above: 1.4em, below: 0.5em)
#show heading.where(level: 1): set text(fill: rgb("#b3492e"), weight: "bold", size: 22pt, font: "Bahnschrift")
#show heading.where(level: 2): set text(fill: rgb("#8c2b2b"), weight: "bold", size: 16pt, font: "Bahnschrift")
#show heading.where(level: 3): set text(fill: rgb("#4a3a30"), weight: "bold", size: 13pt, font: "Bahnschrift")
#show heading.where(level: 1): it => { it; line(length: 100%, stroke: 0.5pt + rgb("#b3492e")) }
#show link: set text(fill: rgb("#8c2b2b"))

// == Cover Page
#v(3.5cm)
#align(center)[#image("assets/logo.jpg", width: 45%)]
#v(3.5cm)
#align(center)[
  #text(size: 36pt, weight: "bold", fill: rgb("#b3492e"), font: "Cinzel", "Scars of the Horizon")
  #v(0.8em)
  #text(size: 16pt, fill: rgb("#2b2622"), "Kenshi 1.0.68")
  #v(0.2em)
  #text(size: 14pt, fill: rgb("#2b2622"), "Modlist & Guide")
  #v(0.6em)
  #text(size: 11pt, fill: rgb("#6b5b4e"), "Version 1.0.68 - 2026")
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
=== Wave 0: The Wanderer
#include "guide/wave-0/how-to-play.typ"
#include "guide/wave-0/modlist.typ"
#include "guide/wave-0/mechanics.typ"
#include "guide/wave-0/graphics.typ"
#pagebreak()

=== Wave 1: The Outlander
#include "guide/wave-1/strategy.typ"
#include "guide/wave-1/modlist.typ"
#include "guide/wave-1/mechanics.typ"
#include "guide/wave-1/content.typ"
#include "guide/wave-1/graphics.typ"
#pagebreak()

=== Wave 2: The Smith
#include "guide/wave-2/strategy.typ"
#include "guide/wave-2/modlist.typ"
#include "guide/wave-2/mechanics.typ"
#include "guide/wave-2/content.typ"
#include "guide/wave-2/graphics.typ"
#pagebreak()

=== Wave 3: The Expedition
#include "guide/wave-3/strategy.typ"
#include "guide/wave-3/modlist.typ"
#include "guide/wave-3/mechanics.typ"
#include "guide/wave-3/content.typ"
#include "guide/wave-3/graphics.typ"
#pagebreak()

=== Wave 4: The Conqueror
#include "guide/wave-4/strategy.typ"
#include "guide/wave-4/modlist.typ"
#include "guide/wave-4/mechanics.typ"
#include "guide/wave-4/content.typ"
#include "guide/wave-4/graphics.typ"
#pagebreak()

// == Glossary
== Glossary
#include "guide/glossary.typ"

#label("end")
```

The `#label("end")` marker lets `typst query` report the total page count reliably (Step 4).

- [ ] **Step 3: Smoke-compile**

Run: `.\build.bat` from `kenshi/`
Expected: `SUCCESS: PDF generated at output/scars-of-the-horizon.pdf`, zero errors. If Typst warns about missing fonts, log it in STATUS.md Notes (Cinzel/Bahnschrift/Georgia are expected present — the sibling project rendered with them).

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
Expected: one page number per line, ~25 lines (2 installation/glossary + 4 per wave + glossary). The last wave heading's page must be >= the installation heading's page (sections are ordered).

- [ ] **Step 5: Commit**

```bash
git add kenshi/
git commit -m "feat(kenshi): add master template and smoke-compile the PDF"
```

### Task 3: Verify KMM compatibility (critical de-risk — do before any mod research)

**Files:**
- Modify: `kenshi/STATUS.md` only

This task decides whether the installation chapter uses KMM or the in-game fallback. Its findings feed Task 9.

- [ ] **Step 1: Fetch the KMM Nexus page**

Fetch `https://www.nexusmods.com/kenshi/mods/1765` (webfetch; if Cloudflare blocks, use Playwright to load and read the page). Record: mod title, author, **last update date**, description, and any listed requirements (runtime, .NET, etc.).

- [ ] **Step 2: Assess 1.0.68 compatibility and verify load-order claims**

Verdict rules: if KMM's last update is within a reasonable window of Kenshi's current era (post-2018) AND the page or credible community sources (Steam guides, referenced GitHub repo) report it working with the current build, verdict = COMPATIBLE. If clearly abandoned AND community sources report breakage with 1.0.68, verdict = INCOMPATIBLE (Plan B).

Also verify (from the page/GitHub/community guides): how KMM detects the Steam install, how it manages load order (`mods.cfg`), and whether load order "later = higher priority" is accurate. Record each claim as VERIFIED or UNVERIFIED, with the source URL.

- [ ] **Step 3: Log the verdict in STATUS.md**

Add to the Decisions table: KMM verdict (COMPATIBLE / INCOMPATIBLE / UNVERIFIED), source URLs, and load-order claim status. If INCOMPATIBLE, note Plan B (in-game manager) as the organizer for `installation.typ`.

- [ ] **Step 4: Commit**

```bash
git add kenshi/STATUS.md
git commit -m "docs(kenshi): record KMM compatibility verdict and load-order findings"
```

---

### Task 4: Wave 0 — The Wanderer (beginner chapter, UI/QoL only)

**Files:**
- Create: `kenshi/guide/wave-0/how-to-play.typ`, `kenshi/guide/wave-0/modlist.typ`, `kenshi/guide/wave-0/mechanics.typ`, `kenshi/guide/wave-0/graphics.typ`
- Modify: `kenshi/STATUS.md`, `kenshi/guide/glossary.typ` (harvest)

**Rules in force for this wave:** no content mods (only UI/UX, performance, QoL). Cut list applies: no meme/porn/redundant/unverifiable mods. Power-spike test: a mod that raises stats/damage/armor above vanilla caps, or lowers costs below vanilla, is rejected unless it adds a proportionate challenge or cost. **Target 5-8 mods.**

- [ ] **Step 1: Research 5-8 UI/QoL/performance candidates**

Searches (websearch / webfetch / ctx_batch_execute; Workshop + Nexus): "Kenshi UI overhaul Steam Workshop", "Kenshi QoL mods 2024 compatible", "Kenshi performance optimization mod", "Kenshi hotkey camera mod".

Candidate quality bar (all must hold): (a) exists on Steam Workshop or Nexus for Kenshi; (b) matches the UI/QoL/performance category; (c) passes the cut list and power-spike test; (d) plausible 1.0.68 compatibility (no stated lower max version, last update not pre-2019 with zero updates).

**Time budget:** max ~15 minutes of searching. If you cannot shortlist 5 quality candidates after 2 rounds of alternate queries, proceed with quality over quantity and record the shortfall in STATUS.md Notes — never pad with junk.

- [ ] **Step 2: Verify every shortlisted URL + log in STATUS.md (evidence bar)**

For each candidate, fetch its page (Workshop: webfetch; Nexus: webfetch then Playwright fallback). Capture and record **evidence** per mod: exact page title, last-update date, and the mod ID (Steam `?id=NNNNN` / Nexus `/kenshi/mods/NNNN`).

**Verification verdict rule:** a mod is VERIFIED only if the fetched page title matches the card name exactly AND the last-update date is recorded. A page that won't load, or a title mismatch, = UNVERIFIED -> log it in `mod-ideas.md`. Never fabricate a title, date, URL, or verdict.

**Compatibility rule (restated):** a mod is assumed 1.0.68-compatible unless its page states a lower max version, or it predates ~2019 with no updates (flag for review). Record the verdict per mod in the Compat column.

Rejected candidates get a row in Rejected with the reason (e.g., "content mod at Wave 0", "unverifiable", "redundant", "power spike").

- [ ] **Step 3: Write `modlist.typ` with mod cards**

Define `mod-entry` locally and emit one card per accepted mod:

```typ
#let mod-entry(name, url, version: none, verified: none, deps: none, impact: none, notes: none) = {
  block(fill: rgb("#f2ead9"), inset: 10pt, radius: 4pt, stroke: 0.5pt + rgb("#b3492e"))[
    #link(url)[#text(weight: "bold", size: 11pt, fill: rgb("#8c2b2b"), name)]
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

- [ ] **Step 4: Write `graphics.typ`** — the visual/UI QoL cards that are not strictly "system" mods (textures, UI skins, visual clarity). Heading + one card per mod, via `mod-entry`.
- [ ] **Step 5: Write `mechanics.typ`** — the QoL/performance system mods (QoL changes, performance/loading fixes), one card per mod via `mod-entry`, each card's Impact field explaining the system change.
- [ ] **Step 6: Write `how-to-play.typ` Part 1 — fundamentals** (target ~6-7 pages). Use `#callout("Tip:", ...)` / `#callout("Warning:", ...)` for keybinds and pitfalls. Must cover:
  1. Controls & keybindings (movement, camera, selection, pause/speed) — present as a keybind table
  2. The interface tour (HUD, inventory, map, squad panel)
  3. Your character: stats, health, hunger, and which four stats matter early
  4. Combat basics (stagger, block/attack, hit chance, what happens when you lose — death, recovery, slavery)
- [ ] **Step 7: Write `how-to-play.typ` Part 2 — the survival loop** (target ~5-7 pages). Must cover:
  5. Making your first cats (mining copper near The Hub — verify the deposit claim against the wiki, Step 8)
  6. Your first recruit (how recruiting works, the cost)
  7. The survival loop: eat, heal, fight, level, repeat
  8. Common beginner mistakes (wandering at night, aggro, no food)
- [ ] **Step 8: Wave 0 audit + commit**

1. **Page span:** run `typst query template.typ 'heading' --field page.number`; compute Wave 0's span (page of `=== Wave 0` to page of `=== Wave 1`). Expected: **12-14**. If under, expand; if over, trim.
2. **Placeholder grep:** `Select-String -Path guide\wave-0\*.typ -Pattern 'Content lands here|TBD|TODO'` -> zero matches.
3. **URL audit:** every `https://` in `guide/wave-0/*.typ` has a VERIFIED row in STATUS.md (spot-check by comparing extracted URLs to the table).
4. **Fact-check:** verify Wave 0's structural claims against the Kenshi wiki (kenshi.fandom.com): The Hub exists and is a starting town; copper deposits are present near The Hub; recruiting costs cats. Fix any discrepancy in the text; log the check in STATUS.md Notes.
5. **Glossary harvest:** append this wave's new terms to `guide/glossary.typ` (e.g., cats, hunger, Toughness, squad, corpse, The Hub, Holy Nation).
```bash
git add kenshi/
git commit -m "feat(kenshi): write Wave 0 The Wanderer chapter with verified UI/QoL mods"
```

---

### Task 5: Wave 1 — The Outlander (survival & settlement)

**Files:**
- Create: `kenshi/guide/wave-1/{strategy,modlist,mechanics,content,graphics}.typ`
- Modify: `kenshi/STATUS.md`, `kenshi/guide/glossary.typ` (harvest)

**Rules in force for this wave:** content aids survival/settling, not combat power. Cut list + power-spike test apply. **Target 8-12 mods.**

- [ ] **Step 1: Research 8-12 survival/settlement candidates**

Searches: "Kenshi farming crops mod", "Kenshi new buildings workshop", "Kenshi weather/dust storm mod", "Kenshi settlement expansion mod", "Kenshi food production mod". Shortlist 8-12 across food/agriculture, weather/climate, building variety, and light survival mechanics.

**Adult/thematic content (per spec policy):** also search "Kenshi body texture mod", "Kenshi skin overlay mod", "Kenshi nude mod". Quality nude/skin mods may be included as their own entries; verify via Playwright (Nexus adult pages are rate-limited/hard to fetch). If verification fails, log as UNVERIFIED in `mod-ideas.md` — do not guess. Explicit porn is never accepted.

Candidate quality bar: same as Task 4 Step 1 (a-d), plus: not a combat-power mod.

**Time budget:** max ~15 minutes of searching; if the 8-12 floor can't be met after 2 rounds of alternate queries, ship quality-over-quantity and record the deviation in STATUS.md Notes.

- [ ] **Step 2: Verify every URL + log in STATUS.md (evidence bar)**

Same protocol and evidence bar as Task 4 Step 2: fetch each page, capture exact title + last-update date + mod ID, verdict = VERIFIED only on exact title match + recorded date. Same compatibility rule and cut list. Rejections logged with reason.

- [ ] **Step 3: Write `modlist.typ`** — intro explaining Wave 1's philosophy, then one card per accepted mod via `mod-entry` (fields from STATUS.md).
- [ ] **Step 4: Write `graphics.typ`** — the visual mods for this wave (landscape, weather, building textures).
- [ ] **Step 5: Write `content.typ`** — the new buildings/crops/survival content mods, one card each.
- [ ] **Step 6: Write `mechanics.typ`** — the survival/climate mechanic changes and their system impact, one card each.
- [ ] **Step 7: Write `strategy.typ`** (target ~8-10 pages, the bulk of the budget). Use `#callout(...)` for tips. Must cover:
  1. Reading the landscape (choosing a base site: fertility, ore, water, security)
  2. First outpost layout (a footprint that scales)
  3. Walls, gates & defense-in-depth
  4. Food production: farming vs hunting vs trade
  5. Stone & iron logistics (harvesting, storage, hauling)
  6. Managing the first raid
  7. The Outlander's first year (RP arc)
- [ ] **Step 8: Audit + commit**

1. **Page span:** `typst query template.typ 'heading' --field page.number`; Wave 1 span (page of `=== Wave 1` to `=== Wave 2`). Expected: **10-12**. Adjust content to fit.
2. **Placeholder grep:** `Select-String -Path guide\wave-1\*.typ -Pattern 'Content lands here|TBD|TODO'` -> zero matches.
3. **URL audit:** every `https://` in `guide/wave-1/*.typ` has a VERIFIED row in STATUS.md.
4. **Fact-check:** verify structural claims against the wiki: base-site factors (fertility/ore/water), the vanilla crop list, and raid behavior. Fix discrepancies; log in STATUS.md Notes.
5. **Glossary harvest:** append new terms (fertility, hydroponics, ore node, outpost, walls, raid).
```bash
git add kenshi/
git commit -m "feat(kenshi): write Wave 1 The Outlander chapter with verified survival/settlement mods"
```

### Task 6: Wave 2 — The Smith (crafting & production)

**Files:**
- Create: `kenshi/guide/wave-2/{strategy,modlist,mechanics,content,graphics}.typ`
- Modify: `kenshi/STATUS.md`, `kenshi/guide/glossary.typ` (harvest)

**Rules in force for this wave:** everything gated behind research time and materials — no free power. Cut list + power-spike test apply. **Target 8-12 mods.**

- [ ] **Step 1: Research 8-12 smithing/production candidates**

Searches: "Kenshi crafting expansion mod", "Kenshi research tree mod", "Kenshi crossbow turret mod", "Kenshi armor weapon crafting mod", "Kenshi hydroponics farming mod". Shortlist 8-12 across crafting expansion, tech/research, material economy, production automation.

Candidate quality bar: same as Task 4 Step 1 (a-d), plus: power must be gated behind research/materials, not handed out.

**Time budget:** max ~15 minutes of searching; if the floor can't be met after 2 rounds of alternate queries, ship quality-over-quantity and record the deviation in STATUS.md Notes.

- [ ] **Step 2: Verify every URL + log in STATUS.md (evidence bar)**

Same protocol and evidence bar as Task 4 Step 2: exact title + last-update date + mod ID per mod; VERIFIED only on exact title match. Reject any mod that hands out power without research/material cost (log reason).

- [ ] **Step 3: Write `modlist.typ`** — intro explaining Wave 2's gating philosophy, then one card per accepted mod via `mod-entry`.
- [ ] **Step 4: Write `content.typ`** — the crafting/research/production content mods, one card each.
- [ ] **Step 5: Write `mechanics.typ`** — the research/material-economy mechanic changes and their impact, one card each.
- [ ] **Step 6: Write `graphics.typ`** — the visual mods for this wave (weapon/armor/forge visuals).
- [ ] **Step 7: Write `strategy.typ`** (target ~8-10 pages). Use `#callout(...)`. Must cover:
  1. The research tree, mapped (which benches/levels unlock what)
  2. Weapon crafting tiers (quality levels, materials, diminishing returns)
  3. Armor crafting & protection economy
  4. Crossbows & turrets (production line + defense use)
  5. Hydroponics & sustainable food
  6. The material economy (ore -> bars -> components -> product)
  7. Building your smith (RP arc)
- [ ] **Step 8: Audit + commit**

1. **Page span:** `typst query template.typ 'heading' --field page.number`; Wave 2 span (`=== Wave 2` to `=== Wave 3`). Expected: **10-12**.
2. **Placeholder grep:** `Select-String -Path guide\wave-2\*.typ -Pattern 'Content lands here|TBD|TODO'` -> zero matches.
3. **URL audit:** every `https://` in `guide/wave-2/*.typ` has a VERIFIED row in STATUS.md.
4. **Fact-check:** verify against the wiki: the research bench tiers and weapon quality ladder (e.g., rusty -> edgewalker) as named in your text. Fix discrepancies; log in STATUS.md Notes.
5. **Glossary harvest:** append new terms (research bench, quality tier, crossbow, turret, hydroponics).
```bash
git add kenshi/
git commit -m "feat(kenshi): write Wave 2 The Smith chapter with verified crafting/production mods"
```

---

### Task 7: Wave 3 — The Expedition (exploration & new lands)

**Files:**
- Create: `kenshi/guide/wave-3/{strategy,modlist,mechanics,content,graphics}.typ`
- Modify: `kenshi/STATUS.md`, `kenshi/guide/glossary.typ` (harvest)

**Rules in force for this wave:** content expands the map/journey, not raw stat boosts. Cut list + power-spike test apply. **Target 8-12 mods.**

- [ ] **Step 1: Research 8-12 exploration/new-lands candidates**

Searches: "Kenshi new zones biomes mod", "Kenshi expanded map mod", "Kenshi new race mod", "Kenshi camping caravan mod", "Kenshi unique recruits mod". Shortlist 8-12 across new zones/biomes, new races/factions, travel/camping mechanics, unique recruits/legendary finds.

Candidate quality bar: same as Task 4 Step 1 (a-d), plus: map/journey expansion, not stat inflation.

**Time budget:** max ~15 minutes of searching; if the floor can't be met after 2 rounds of alternate queries, ship quality-over-quantity and record the deviation in STATUS.md Notes.

- [ ] **Step 2: Verify every URL + log in STATUS.md (evidence bar)**

Same protocol and evidence bar as Task 4 Step 2: exact title + last-update date + mod ID per mod; VERIFIED only on exact title match. Reject raw stat-boost content (log reason).

- [ ] **Step 3: Write `modlist.typ`** — intro explaining Wave 3's journey philosophy, then one card per accepted mod via `mod-entry`.
- [ ] **Step 4: Write `content.typ`** — the new zones/races/ruins/recruit content mods, one card each.
- [ ] **Step 5: Write `mechanics.typ`** — the travel/camping/weather mechanics changes and their impact, one card each.
- [ ] **Step 6: Write `graphics.typ`** — the visual mods for this wave (new-land textures, biome visuals).
- [ ] **Step 7: Write `strategy.typ`** (target ~8-10 pages). Use `#callout(...)`. Must cover:
  1. Planning long expeditions (food, medicine, replacement limbs, escape routes)
  2. Biome navigation & hazards (acid, gas, sandstorms, Beak Things)
  3. World states & faction territory (how territory shifts and why it matters)
  4. Unique recruits & legendary finds (where rarity lives)
  5. Caravans & trade routes (buying low, selling high across zones)
  6. The cartographer's endgame (RP arc)
- [ ] **Step 8: Audit + commit**

1. **Page span:** `typst query template.typ 'heading' --field page.number`; Wave 3 span (`=== Wave 3` to `=== Wave 4`). Expected: **10-12**.
2. **Placeholder grep:** `Select-String -Path guide\wave-3\*.typ -Pattern 'Content lands here|TBD|TODO'` -> zero matches.
3. **URL audit:** every `https://` in `guide/wave-3/*.typ` has a VERIFIED row in STATUS.md.
4. **Fact-check:** verify against the wiki: the hazards you name exist in the zones you name (acid pools, gas, sandstorms, Beak Thing territory) and faction/world-state behavior. Fix discrepancies; log in STATUS.md Notes.
5. **Glossary harvest:** append new terms (world state, expedition, caravan, Beak Thing, biome).
```bash
git add kenshi/
git commit -m "feat(kenshi): write Wave 3 The Expedition chapter with verified exploration mods"
```

---

### Task 8: Wave 4 — The Conqueror (warfare & endgame)

**Files:**
- Create: `kenshi/guide/wave-4/{strategy,modlist,mechanics,content,graphics}.typ`
- Modify: `kenshi/STATUS.md`, `kenshi/guide/glossary.typ` (harvest)

**Rules in force for this wave:** keeps challenge honest — nothing that hands victory away. Cut list + power-spike test apply. **Target 8-12 mods.**

- [ ] **Step 1: Research 8-12 warfare/endgame candidates**

Searches: "Kenshi faction overhaul mod", "Kenshi endgame enemies mod", "Kenshi raid siege mod", "Kenshi army formation management mod". Shortlist 8-12 across faction expansion, raids/sieges, endgame enemy scaling, army management.

Candidate quality bar: same as Task 4 Step 1 (a-d), plus: challenge-preserving, not victory-giving.

**Time budget:** max ~15 minutes of searching; if the floor can't be met after 2 rounds of alternate queries, ship quality-over-quantity and record the deviation in STATUS.md Notes.

- [ ] **Step 2: Verify every URL + log in STATUS.md (evidence bar)**

Same protocol and evidence bar as Task 4 Step 2: exact title + last-update date + mod ID per mod; VERIFIED only on exact title match. Reject anything that hands victory away (log reason).

- [ ] **Step 3: Write `modlist.typ`** — intro explaining Wave 4's honest-challenge philosophy, then one card per accepted mod via `mod-entry`.
- [ ] **Step 4: Write `content.typ`** — the faction/siege/endgame content mods, one card each.
- [ ] **Step 5: Write `mechanics.typ`** — the warfare/difficulty mechanic changes and their impact, one card each.
- [ ] **Step 6: Write `graphics.typ`** — the visual mods for this wave (army/faction visuals).
- [ ] **Step 7: Write `strategy.typ`** (target ~8-10 pages). Use `#callout(...)`. Must cover:
  1. Faction relations & diplomacy (what you can and can't trade)
  2. Raids, sieges & defense (garrison doctrine, turret placement)
  3. Army management (squads, medic strategy, limb replacement for soldiers)
  4. World conquest (cities, leaders, world-state victories)
  5. Endgame enemies (what the hardest content demands)
  6. The "end" of Kenshi (RP arc capstone)
- [ ] **Step 8: Audit + commit**

1. **Page span:** `typst query template.typ 'heading' --field page.number`; Wave 4 span (`=== Wave 4` to `== Glossary`). Expected: **10-12**.
2. **Placeholder grep:** `Select-String -Path guide\wave-4\*.typ -Pattern 'Content lands here|TBD|TODO'` -> zero matches.
3. **URL audit:** every `https://` in `guide/wave-4/*.typ` has a VERIFIED row in STATUS.md.
4. **Fact-check:** verify against the wiki: faction relations/diplomacy behavior, world-state victory conditions, and any named leaders. Fix discrepancies; log in STATUS.md Notes.
5. **Glossary harvest:** append new terms (faction relation, siege, garrison, world conquest).
```bash
git add kenshi/
git commit -m "feat(kenshi): write Wave 4 The Conqueror chapter with verified warfare mods"
```

---

### Task 9: Installation guide (KMM)

**Files:**
- Modify: `kenshi/guide/installation.typ`
- Modify: `kenshi/STATUS.md`

- [ ] **Step 1: Write the installation chapter** using the Task 3 verdict. Required sections, in order:
  1. Game prep — install Kenshi from Steam, confirm build **1.0.68 (Apr 1, 2024)**, disable auto-updates after confirming
  2. Install KMM (Nexus 1765) — download, extract, run; note runtime requirements (from Task 3)
  3. Point KMM at the game (verify the Steam path resolves)
  4. Fetch mods — Steam Workshop subscribe + Nexus downloads via KMM
  5. Load order — Kenshi's system, `mods.cfg`, "later = higher priority" (as verified in Task 3), canonical order per wave: base fixes/QoL first, content after
  6. Launch & verify — start via KMM, confirm mods load in the in-game Mods menu, no ".mod file" errors
  7. Per-wave switching — enabling only the active wave's mods per new game
- [ ] **Step 2:** If Task 3 verdict was INCOMPATIBLE, write the Plan B variant (in-game mod manager) as the primary flow instead, and note the swap in STATUS.md.
- [ ] **Step 3: Audit + commit** — placeholder grep on `guide/installation.typ` (`Content lands here|TBD|TODO`) -> zero; every claim in the chapter matches a VERIFIED line from Task 3.

```bash
git add kenshi/
git commit -m "docs(kenshi): write installation guide with verified KMM setup and load order"
```

---

### Task 10: Glossary assembly

**Files:**
- Modify: `kenshi/guide/glossary.typ`
- Modify: `kenshi/STATUS.md`

- [ ] **Step 1: Assemble the harvested terms** from Tasks 4-8 into `guide/glossary.typ`. Deduplicate, and add the modding/KMM group that waves don't naturally produce: load order, `mods.cfg`, `.mod` file, Steam Workshop ID, KMM, mod conflict, "later wins", mod card.

Format per term:
```typ
*Term* — one-sentence definition with game context.
```

- [ ] **Step 2: Audit** — count terms with `Select-String -Path guide\glossary.typ -Pattern '^\*'`. Expected: **40-60**. If under 40, expand; if over 60, trim the least-used terms.
- [ ] **Step 3: Commit**

```bash
git add kenshi/
git commit -m "docs(kenshi): assemble 40-60 term glossary"
```

---

### Task 11: Template polish + PDF build + DoD verification

**Files:**
- Modify: `kenshi/template.typ` (per-wave color coding via scoped show rules)
- Verify: full build

- [ ] **Step 1: Add per-wave color coding**

Wrap every wave section in a scoped block so the included files' level-2 headings pick up that wave's accent, then revert automatically. Per-wave heading accents (all dark enough for contrast on bone `#f2ead9`): Wave 0 rust `#b3492e`, Wave 1 ember `#d97b3a`, Wave 2 blood `#8c2b2b`, Wave 3 dark brown `#4a3a30`, Wave 4 dark rust `#5d2a1f`.

This is the working pattern — scoped `#show` inside a `#block[...]` (a plain `#set text(...)` around a section does NOT recolor headings, because the template's `#show heading` rules override it):

```typ
#block[
  #show heading.where(level: 2): set text(fill: rgb("#d97b3a"))
  #show heading.where(level: 3): set text(fill: rgb("#d97b3a"))
  === Wave 1: The Outlander
  #include "guide/wave-1/strategy.typ"
  #include "guide/wave-1/modlist.typ"
  #include "guide/wave-1/mechanics.typ"
  #include "guide/wave-1/content.typ"
  #include "guide/wave-1/graphics.typ"
]
#pagebreak()
```

Apply the same block wrapper to all 5 wave sections with their accents. The TOC and top-level headings remain at the base rust color.

- [ ] **Step 2: Callout consistency pass** — `callout()` is already defined in template.typ (Task 2) and used in wave content. Sweep each wave file: every tip/warning must use `#callout(...)`, not an inline `#block(...)`. Convert any stragglers.

- [ ] **Step 3: Rebuild the PDF**

Run: `.\build.bat`
Expected: `SUCCESS: PDF generated at output/scars-of-the-horizon.pdf`, zero warnings/errors.

- [ ] **Step 4: Total page count (reliable check)**

```
typst query template.typ '<end>' --field page.number
```
Expected: **60-80**.

- [ ] **Step 5: Definition-of-Done spot checks**
  - **Headings present:** `typst query template.typ 'heading' --field page.number` shows all 5 wave headings + installation + glossary, in order.
  - **No placeholders:** `Select-String -Path guide\*.typ, guide\wave-*\*.typ -Pattern 'Content lands here|TBD|TODO'` -> zero matches.
  - **Page numbers:** footer renders "N / M" — spot-check by opening the PDF in the browser (Playwright: navigate to `file:///<abs path>\output\scars-of-the-horizon.pdf`, snapshot the cover, verify the logo and footer).
  - **URLs resolve:** spot-check 3 URLs per wave by fetching each page (webfetch / ctx_fetch_and_index) and confirming the page loads.

- [ ] **Step 6: Commit**

```bash
git add kenshi/
git commit -m "feat(kenshi): polish template, rebuild PDF, and verify definition of done"
```

---

### Task 12: Final close-out

**Files:**
- Modify: `kenshi/README.md`, `kenshi/STATUS.md`, `kenshi/AGENTS.md`
- Verify: everything

- [ ] **Step 1: Cut-list audit**

Walk every accepted mod against the cut list and the power-spike test; confirm each has a written verdict in STATUS.md (or a "borderline" note). Fix any that fail.

- [ ] **Step 2: Conflict scan**

Cross-check accepted mods for same-file edits; populate `conflicts-mods.md` with any real incompatibilities + mitigations, or leave the "No conflicts identified yet" header if none.

- [ ] **Step 3: Final PDF rebuild + full DoD pass**

Run `.\build.bat`, confirm SUCCESS. Page count via `typst query template.typ '<end>' --field page.number` in the 60-80 range. Verify the PDF opens and the cover/TOC render (Playwright file:// snapshot).

- [ ] **Step 4: Finalize docs**

Update README.md with the finished mod count per wave and the verified KMM verdict. Close out STATUS.md Notes with a summary line (mods accepted, mods rejected, conflicts, PDF page count).

- [ ] **Step 5: Final commit**

```bash
git add kenshi/
git commit -m "docs(kenshi): finalize README and STATUS; close out Scars of the Horizon"
```
