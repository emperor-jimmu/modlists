# Aetherial Purity Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build the full *Aetherial Purity* No Man's Sky modlist + guide project (structure, prose, Singularity installation chapter, Typst PDF pipeline) inside `no-mans-sky/`, with all mod cards as user-fillable scaffolds.

**Architecture:** Typst sources in `guide/` included by a single `template.typ` master template (cover, TOC, per-wave chapter tinting, mod-card helper, callouts). `build.bat` compiles `template.typ → output/Aetherial-Purity.pdf`. `query.typ` audits heading→page structure. Markdown sibling files (`README.md`, `STATUS.md`, `AGENTS.md`, `conflicts-mods.md`, `mod-ideas.md`) document and track the project; `conflicts-mods.md` and `mod-ideas.md` are deliberately excluded from the PDF.

**Tech Stack:** Typst 0.15.1 (installed), batch script (Windows), Markdown. Fonts: Cinzel / Bahnschrift / Georgia (proven on this machine by the ONI project).

## Global Constraints

- Game: No Man's Sky, version 6.45.1, Steam. Mod organizer: Singularity. Modlist name: **Aetherial Purity**.
- **No mod curation by the project — ever.** Never validate, verify, search for, add, remove, or suggest mods. Only document mods the user supplies, using only the user's information. Missing card fields render as *"user to provide"*.
- Version-compatibility heuristic (user's rule, documented in the installation chapter, never applied by us): if a specific mod version is unknown, use patch/release date.
- Three waves: 0 (complete beginners, vanilla + UI/QoL only), 1 and 2 (increasing experience, content + new mechanics, no pure power spikes). Each wave is its own new-game setup with an RP backstory.
- Wave names: 0 = *First Light*, 1 = *The Cartographer*, 2 = *The Astral Architect*.
- PDF must contain: cover page (modlist name + `assets/logo.jpg` + bottom page numbers), top-level TOC, full installation instructions, complete guide + modlist. Colorful, high-readability, game-themed (light ethereal palette: teal `#2C9293`, navy `#2D4144`, deep teal-green `#1F6F5E`, sage `#4F7A6E`, rust `#773E3E`, ice `#F4F9F8`).
- `STATUS.md` = decisions, notes, open questions only — never mod validation results.
- `conflicts-mods.md` and `mod-ideas.md` are NOT included in the PDF.
- Required tree: `AGENTS.md`, `README.md`, `STATUS.md`, `guide/`, `output/`, `conflicts-mods.md`, `mod-ideas.md`, `assets/logo.jpg`.
- Typst 0.15 / 0.15.1 only; `build.bat` regenerates the PDF.
- Working style: guide structure/writing/layout may be brainstormed; decisions traceable in STATUS.md; never fabricate content.

---

### Task 1: Foundation files

**Files:**
- Create: `no-mans-sky/AGENTS.md`
- Create: `no-mans-sky/README.md`
- Create: `no-mans-sky/STATUS.md`
- Create: `no-mans-sky/.gitignore`
- Create: `no-mans-sky/conflicts-mods.md`
- Create: `no-mans-sky/mod-ideas.md`

**Interfaces:**
- Consumes: design spec `docs/superpowers/specs/2026-08-05-aetherial-purity-design.md`.
- Produces: file names/paths later tasks rely on; the mod-card contract ("paste into `guide/wave-N/modlist.typ`").

- [ ] **Step 1: Write AGENTS.md**

Structure it like `oxygen-not-included/AGENTS.md` but encode this project's rules: identity (No Man's Sky 6.45.1, Steam, Singularity, Aetherial Purity); structure map; key rules — **no mod research/validation/selection by the project, user-supplied mods only**, card fields (name+URL / dependencies / impact / notes), missing fields → "user to provide"; Wave 0 UI/QoL-only philosophy; STATUS.md is a decision log, not a validation log; PDF generation via `build.bat` (Typst 0.15.1), fonts Cinzel/Bahnschrift/Georgia.

- [ ] **Step 2: Write README.md**

Model on `oxygen-not-included/README.md`: overview; waves table (Wave | Theme | Status) with the three named waves, all "mods pending user addition"; mod organizer line (Singularity — official docs); "How to add a mod" section explaining the card helper and where to paste (each wave's `modlist.typ`); "How to build" (run `build.bat` → `output/Aetherial-Purity.pdf`).

- [ ] **Step 3: Write STATUS.md**

Sections: header (target 6.45.1 Steam, organizer Singularity, theme), Audit trail (reverse-chronological: 2026-08-05 project start, design + plan written, decisions below), Decisions (mod curation ownership — user supplies all mods; organizer = Singularity; platform Steam; waves 0/1/2; theme light ethereal; PDF via build.bat), Open questions (6.45.1-specific mechanics pending user confirmation; Singularity version/UI labels to be confirmed from official docs during Task 3; user to confirm main-menu build number), Pending user inputs (the mod lists per wave), Conflicts section pointing at `conflicts-mods.md`, Notes. **No accepted/rejected mod tables — mod validation is out of scope.**

- [ ] **Step 4: Write .gitignore, conflicts-mods.md, mod-ideas.md**

`.gitignore`: `output/`. `conflicts-mods.md`: title + explanation + empty table (Mod A | Mod B | Nature of conflict | Resolution | Date) + note that it is excluded from the PDF. `mod-ideas.md`: title + explanation + empty table (Mod idea | Wave | Notes) + exclusion note.

- [ ] **Step 5: Commit**

```bash
git add no-mans-sky/AGENTS.md no-mans-sky/README.md no-mans-sky/STATUS.md no-mans-sky/.gitignore no-mans-sky/conflicts-mods.md no-mans-sky/mod-ideas.md
git commit -m "feat(no-mans-sky): add Aetherial Purity foundation docs"
```

### Task 2: Typst master template + build pipeline

**Files:**
- Create: `no-mans-sky/template.typ`
- Create: `no-mans-sky/query.typ` (copy ONI's, adjust nothing except path — it includes `template.typ`)
- Create: `no-mans-sky/build.bat`

**Interfaces:**
- Consumes: `assets/logo.jpg`, guide files created in Tasks 3–7.
- Produces: `mod-entry(name, url, deps, impact, notes)` helper and `callout(title, body)` used by every `guide/*.typ` file; `output/Aetherial-Purity.pdf`.

- [ ] **Step 1: Write template.typ**

Adapt ONI's template with the Aetherial palette and wave colors. Elements, in order:
1. Page setup: margin `(x: 2cm, y: 2.5cm)`; footer `context` showing `#counter(page).display("1 / 1", both: true)` centered.
2. `#let callout(title, body)` — ice fill `#F4F9F8`, teal stroke `0.5pt + #2C9293` (keep signature `(title, body)`).
3. `#let mod-entry(name, url, deps: none, impact: none, notes: none)` — bordered block (ice fill, teal stroke, radius 4pt, inset 10pt): bold teal link name; then optional rows `*Dependencies:*`, `*Impact:*`, `*Notes:*`; each missing field renders the literal italic text *"user to provide"* (do NOT omit — the scaffold must show the contract).
4. Text defaults: Georgia 11pt, body `#2D4144` (dark navy — high contrast on white); justify; heading spacing.
5. Heading styles: H1 Bahnschrift bold 22pt teal; H2 Bahnschrift bold 16pt teal; H3 Bahnschrift bold 13pt deep teal-green; H1 underline rule in teal; links teal.
6. Cover: `#v(2.5cm)` + centered logo (`assets/logo.jpg`, width 34%) + `#v(2.5cm)` + title "Aetherial Purity" (Cinzel 36pt teal) + subtitle "No Man's Sky" (16pt navy) + "Modlist & Guide" (14pt) + version line "Version 6.45.1 · 2026" (11pt gray) + pagebreak.
7. TOC: `== Table of Contents` + `#outline(depth: 3)` + pagebreak.
8. `== Installation Guide` + `#include "guide/installation.typ"` + pagebreak.
9. Per wave: a `#block[]` wrapping the wave's files with wave-colored H2/H3 (`#show heading.where(level: 2): set text(fill: <wave color>)`), wave header `=== Wave 0: First Light` etc., includes: wave-0 → how-to-play, modlist, mechanics, graphics; wave-1/2 → strategy, modlist, mechanics, content, graphics. Wave colors: 0 = `#2C9293`, 1 = `#2D4144`, 2 = `#1F6F5E`. Pagebreak between waves.
10. `== Glossary` + `#include "guide/glossary.typ"`.

- [ ] **Step 2: Write build.bat**

Adapt ONI's: banner "Aetherial Purity - PDF Generator (No Man's Sky)"; `where typst` check → error + `pause` + exit 1 if missing; `if not exist output mkdir output`; `typst compile template.typ output/Aetherial-Purity.pdf`; SUCCESS/ERROR echo blocks.

- [ ] **Step 3: Copy query.typ from ONI**

`cp oxygen-not-included/query.typ no-mans-sky/query.typ` (it includes `template.typ`, same relative layout — no change needed).

- [ ] **Step 4: Smoke-compile the empty skeleton**

Temporarily create empty `guide/` files (touch each path referenced by the template), run `typst compile template.typ output/Aetherial-Purity.pdf`, confirm exit 0 and a non-empty PDF. This validates includes + fonts before content lands. (Font check: if Cinzel/Bahnschrift/Georgia are missing, typst fails or warns — resolve then.)

- [ ] **Step 5: Commit**

```bash
git add no-mans-sky/template.typ no-mans-sky/query.typ no-mans-sky/build.bat
git commit -m "feat(no-mans-sky): add Aetherial Purity Typst template and build script"
```

### Task 3: Singularity research + installation chapter

**Files:**
- Create: `no-mans-sky/guide/installation.typ`

**Interfaces:**
- Consumes: `callout` from template; official Singularity documentation (web search — organizer docs are not mod content); NMS Steam mod-folder mechanics (GAMEDATA/PCBANKS — long-stable, version-agnostic).
- Produces: the "Full installation instructions" chapter required in the PDF; concrete file paths referenced by the wave guides.

- [ ] **Step 1: Research Singularity (web search)**

Search official Singularity docs/site: what it is, download, install, first-run, adding a game, profile/modlist creation, deploying/enabling mods, load order, backup. Record source URLs + version in STATUS.md's audit trail. Note: the version-unknown heuristic ("use the patch/release date") is user's rule and goes in the Version Compatibility section.

- [ ] **Step 2: Write installation.typ**

Sections (mirror ONI's structure, adapted to Singularity + NMS):
1. Game Prep — Steam install of No Man's Sky, launch once to main menu, confirm build reads 6.45.1 (callout Note + Tip about build changes).
2. Installing Singularity — download from official site, install, first launch, what first-run config asks.
3. Adding No Man's Sky to Singularity — point it at the Steam install; the mods folder mechanics (pak files under `GAMEDATA/PCBANKS/MODS`), `enablemods.txt` note if relevant to Singularity's flow (only what the organizer docs state).
4. Creating the Aetherial Purity modlist — create profile, name, per-wave note.
5. Adding and enabling mods — per card, drag/import, enable, deploy.
6. Load order — how Singularity orders mods; conflicts → see conflicts-mods.md.
7. Backup / restore — save + mod backup guidance.
8. Version compatibility — the patch/release-date heuristic (user's rule, quoted); re-check after game updates.
9. Launch & verify — in-game check; start a *new* game per wave.
10. Per-wave switching — swap mod subsets per wave (each wave = own new game).
Use callouts for Note/Tip/Warning (rust-fill variant for warnings: create locally in this file with `block(fill: rgb("#f6ecea"), stroke: 0.5pt + rgb("#773E3E"))` — or extend template's callout; prefer extending template in Task 2 with an optional `fill`/`stroke` argument).

- [ ] **Step 3: Compile + audit**

`typst compile template.typ output/Aetherial-Purity.pdf` → exit 0. Run `typst run query.typ` (or `typst query` equivalent per 0.15 CLI) and confirm installation headings appear on expected pages.

- [ ] **Step 4: Commit**

```bash
git add no-mans-sky/guide/installation.typ no-mans-sky/STATUS.md
git commit -m "feat(no-mans-sky): write Singularity installation chapter"
```

### Task 4: Wave 0 — First Light (beginners)

**Files:**
- Create: `no-mans-sky/guide/wave-0/how-to-play.typ`
- Create: `no-mans-sky/guide/wave-0/modlist.typ`
- Create: `no-mans-sky/guide/wave-0/mechanics.typ`
- Create: `no-mans-sky/guide/wave-0/graphics.typ`

**Interfaces:**
- Consumes: `callout`, `mod-entry` from template; installation chapter conventions.
- Produces: wave-0 files included by template in order how-to-play → modlist → mechanics → graphics.

- [ ] **Step 1: Write how-to-play.typ — full beginner tutorial**

`=== How to Play` structure: RP backstory block (*First Light* — waking on a strange planet); getting your bearings (first-person controls, scanner, mining beam, life support/hazard protection meters); the survival loop (resource gathering, refueling, hazard survival); first flight (launch thrusters, pulse drive, landing); the three core quest lines at a beginner level (story/mission log navigation); base building basics (base computer, first structures, power basics); crafting & inventory (exosuit upgrades); new-game start checklist. Written for 6.45.1 conventions where known-stable; anything uncertain → open question in STATUS.md (never asserted).

- [ ] **Step 2: Write modlist.typ — the UI/QoL-only wave**

`=== Wave 0: Modlist` — wave philosophy prose (UI/QoL only: see/operate/plan, nothing changes game values), then section `==== Mechanics` and `==== Graphics` each with one placeholder card call: `#mod-entry("user to provide", "https://example.invalid/", deps: "user to provide", impact: "user to provide", notes: "user to provide")` — plus a prose line: paste one card per mod, per the rules in AGENTS.md/STATUS.md. No invented mod names.

- [ ] **Step 3: Write mechanics.typ + graphics.typ**

`=== Wave 0: Mechanics` — beginner systems prose (survival meters, inventory, upgrading), each subsection ending with a placeholder `#mod-entry(...)` block for the user's mechanics mods. `=== Wave 0: Graphics` — visual settings guidance (performance vs fidelity) + placeholder cards for graphics/UI mods.

- [ ] **Step 4: Compile + commit**

Compile (exit 0); `git add no-mans-sky/guide/wave-0/ && git commit -m "feat(no-mans-sky): write Wave 0 First Light guide"`.

### Task 5: Wave 1 — The Cartographer (intermediate)

**Files:**
- Create: `no-mans-sky/guide/wave-1/strategy.typ`, `modlist.typ`, `mechanics.typ`, `content.typ`, `graphics.typ`

**Interfaces:**
- Consumes: template helpers; wave-0 conventions.
- Produces: wave-1 files (template includes order: strategy → modlist → mechanics → content → graphics).

- [ ] **Step 1: Write strategy.typ** — RP backstory (*The Cartographer*); economy & trading strategy, exploration/discovery strategy, frigate fleet basics, upgrading priorities; harder new-game setup notes.
- [ ] **Step 2: Write modlist.typ** — wave philosophy (content + new mechanics allowed; no pure power spikes — a mod that just inflates numbers is out; additions must open new decisions/systems); `==== Content` and `==== Mechanics` placeholder `#mod-entry("user to provide", ...)` scaffolds.
- [ ] **Step 3: Write mechanics.typ** — deeper systems prose (multi-tool tech, starship classes, exocraft, base automation) with placeholder cards.
- [ ] **Step 4: Write content.typ** — what content mods may add (new gameplay layers) — prose + placeholder cards.
- [ ] **Step 5: Write graphics.typ** — visual/UI polish prose + placeholder cards.
- [ ] **Step 6: Compile + commit** (message `feat(no-mans-sky): write Wave 1 The Cartographer guide`).

### Task 6: Wave 2 — The Astral Architect (advanced)

**Files:** same five as Task 5 under `guide/wave-2/`.

**Interfaces:** same as Task 5.

- [ ] **Step 1: Write strategy.typ** — RP backstory (*The Astral Architect*); endgame strategy: settlements, capital ships/fleet depth, endgame loops, hardest new-game setup; how the richest mod set composes with it.
- [ ] **Steps 2–5: Write modlist/mechanics/content/graphics** — same scaffold pattern as Task 5, wave-2 philosophy (deepest systems; content must compose with existing mechanics; still no pure power spikes).
- [ ] **Step 6: Compile + commit** (message `feat(no-mans-sky): write Wave 2 The Astral Architect guide`).

### Task 7: Glossary

**Files:**
- Create: `no-mans-sky/guide/glossary.typ`

**Interfaces:** included last by template.

- [ ] **Step 1: Write glossary.typ** — `== Glossary` with a definition list of core NMS terms (game terms: units, nanites, quicksilver, sentinels, atlas path, anomaly, frigates, freighter, settlement, exosuit, multi-tool, star system types, glyphs, portal, expedition, etc.). Terms defined at beginner level; no mod-derived terms unless the user later supplies them.
- [ ] **Step 2: Compile + commit** (message `feat(no-mans-sky): add glossary`).

### Task 8: Full build, structural audit, final commit

**Files:** all of the above.

**Interfaces:** n/a.

- [ ] **Step 1: Full build** — `build.bat` (or equivalent `typst compile`) → `output/Aetherial-Purity.pdf`; confirm exit 0.
- [ ] **Step 2: Structure audit** — run `query.typ`; confirm every expected heading (Installation, each wave chapter + its sections, Glossary) appears exactly once, in order, and record page count.
- [ ] **Step 3: PDF sanity** — page count via a quick script; confirm cover + TOC pages precede installation.
- [ ] **Step 4: STATUS.md final entry** — audit results (pages, structure pass), pending user inputs (all mod cards).
- [ ] **Step 5: Final commit** — `git add no-mans-sky/ && git commit -m "feat(no-mans-sky): complete Aetherial Purity build"`.

## Self-Review Notes

- Spec coverage: every design-spec section maps to a task (foundation docs → Task 1; template/build → Task 2; installation → Task 3; waves → 4–6; glossary → 7; verification → 8). The no-mod-curation constraint is encoded in AGENTS.md/STATUS.md/README (Task 1), the mod-entry helper signature (Task 2), and every modlist scaffold (Tasks 4–6).
- Placeholder scan: no TBD/TODO — "user to provide" strings are the shipped contract, spelled out verbatim.
- Consistency: helper signature `mod-entry(name, url, deps: none, impact: none, notes: none)` and `callout(title, body)` are the same in Task 2 and all consuming tasks; wave colors/names constant.
