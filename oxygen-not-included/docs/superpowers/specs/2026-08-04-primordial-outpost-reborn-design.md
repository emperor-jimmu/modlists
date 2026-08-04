# Primordial Outpost Reborn — Design

**Game:** Oxygen Not Included (Steam App 457140)
**Target build:** Build 744825 (July 28, 2026), fallback June 11, 2026 update — resolved by the **Phase 0 build gate** (§6.1) *before any mod verification starts*. All compatibility claims are measured against whatever build the gate resolves to.
**DLCs owned:** Base game + Spaced Out! + Bionic Booster Pack.
**Mod organizer:** Mod Updater by Peter Han — <https://steamcommunity.com/sharedfiles/filedetails/?id=2018291283> (primary; verified in Phase 0 — if unverifiable/broken, the installation chapter documents the native Steam Workshop flow as the fallback organizer, §6.2).
**Modlist name:** Primordial Outpost Reborn
**Date:** 2026-08-04

## 1. Goal

A curated, verified modlist + full game guide (tutorial, strategy, glossary) for Oxygen Not Included, organized into three progressive "waves" (0–2), each with its own roleplay backstory and new-game setup. All mods must be compatible with the targeted build. No fabricated mod names, URLs, authors, versions, or descriptions — every mod is verified against the Steam Workshop (app 457140) before inclusion. Actual mod files are added later by the user; this project only curates the list + documentation.

## 2. Architecture

Mirror the completed `factorio/` project ("Synaptic Overproduction") exactly:

```
oxygen-not-included/
├── AGENTS.md                  # project-specific agent rules
├── README.md                  # overview, wave table, mod counts
├── STATUS.md                  # decision log: audit trail, decisions, accepted/rejected mods, conflicts, notes
├── guide/
│   ├── installation.typ       # Mod Updater setup, per-wave switching, verify steps
│   ├── glossary.typ           # ONI terms
│   ├── wave-0/                # how-to-play.typ, modlist.typ, mechanics.typ, graphics.typ
│   ├── wave-1/                # strategy.typ, modlist.typ, mechanics.typ, content.typ, graphics.typ
│   └── wave-2/                # strategy.typ, modlist.typ, mechanics.typ, content.typ, graphics.typ
├── template.typ               # master: cover + TOC + per-wave includes
├── query.typ                  # heading-page audit helper
├── build.bat                  # one-click PDF build via typst compile
├── conflicts-mods.md          # known mod conflicts (NOT in PDF)
├── mod-ideas.md               # unverified/future candidates (NOT in PDF)
├── docs/superpowers/
│   ├── specs/                 # this design doc
│   └── plans/                 # implementation plan
├── output/                    # generated PDF (gitignored)
└── assets/logo.jpg            # exists (465 KB)
```

Supporting files that factorio has and ONI reuses: `template.typ`, `query.typ`, `build.bat`, `.gitignore` (generated-artifacts line only).

## 3. Waves

Three distinct, progressively harder new-game setups. Each wave is its own save with its own mod subset and roleplay backstory. Wave 0's QoL base carries forward conceptually; each wave's content stays scoped to that wave.

### Wave 0 — "The First Breathe" (complete beginners)

- **Backstory:** Three rookie duplicants wake in a cramped escape pod with a single mandate — make air, make food, make water, and survive the first hundred cycles.
- **Audience:** No prior experience.
- **Content:** Full how-to-play tutorial. Chapters: roadmap; controls & keybindings; interface tour; your first minutes; oxygen & water production; food & farming; power & the electric grid; plumbing & sanitation; **duplicants: needs, priorities, skill points & morale**; critters (hatch ranching basics); research; common beginner mistakes; first-session walkthrough.
- **Mod philosophy:** CLIENT-ONLY + BEHAVIORAL-NEUTRAL mods only (§4). Nothing stat-changing.

### Wave 1 — "The Vent Tamer" (intermediate)

- **Backstory:** Survival is secure; the colony's mandate is now to tame the world — every geyser, every vent, every thermal threat the asteroid hides.
- **Audience:** Increasing experience.
- **Content:** Strategy & advanced topics: automation & logic circuits; geyser/vent taming; heat management & steam turbines; plastic & petroleum; ranching diversity; **dupe jobs, skill specialization & morale optimization**; transit tubes. Deeper systems.
- **Mod philosophy:** STAT-CHANGING allowed only if it passes the ONI-native power-spike gate (§4). No pure power spikes.

### Wave 2 — "The Voyager" (advanced, Spaced Out capstone)

- **Backstory:** The colony outgrows its asteroid — cross the void, claim new worlds, complete the endgame.
- **Audience:** Experienced.
- **Content:** Strategy: rocketry, interplanetary logistics, planetoid colonization, radiation & bionics, bionic dupes, endgame.
- **Mod philosophy:** Content + mechanics that deepen the Spaced Out DLC systems. DLC-aware mods welcome. **Anchor structure is research-dependent (§6.3):** if a genuine overhaul-scale mod exists it becomes the capstone anchor; otherwise a curated capstone set stands.

### Content budget (frozen topics, no drift)

Each wave's chapter list above is **frozen** — a chapter must cover exactly its listed topics and nothing more. Wave 0's how-to-play sections are beginner-scoped (define the mechanic + first actionable setup; no multi-page essays). Final page count is recorded in STATUS.md as an *informational metric only* — it is not a target or a gate.

## 4. Mod policy

**Allowed:** graphics/visual improvements; new content; new mechanics (Wave 1+); adult/nude where thematically relevant (see below).
**Forbidden:** conflicting mods; meme/joke mods; explicit porn; redundant mods; cheating/overpowered/all-knowing mods; any mod not supporting the target build.
**ONI-native power-spike gate** (replaces a factorio-derived rule; ONI's economy is mass/energy conservation, heat transfer, and dupe labor). A mod is a power spike and is rejected — unless it adds a proportionate challenge/cost (research, materials, labor, heat management) — if it:

- creates mass/resource/energy *ex nihilo* (infinite water, oxygen, food, power);
- deletes heat or exploits heat differentials for free (no cost building that evaporates/condenses at will);
- bypasses dupe labor, research, or tech gates (buildings that need no skill, no research, or no materials);
- breaks morale/skill balance (free skill points, maxed attributes, infinite morale);
- is all-knowing (full map/asteroid reveal, x-ray of all geysers, complete duplicate stats cheat).
Applied per card; the verdict and the specific clause that failed are logged in STATUS.md.
**Mod classification** (resolves "UI/QoL only, nothing changes recipes"): every candidate is tagged one of:
- *CLIENT-ONLY* — purely visual/UI/informational; touches no simulation data (allowed in Wave 0).
- *BEHAVIORAL-NEUTRAL* — changes how the player interacts with buildings (e.g., Pliers-style wiring tools) but no stats, recipes, or values change (allowed in Wave 0 as QoL).
- *STAT-CHANGING* — alters building stats, recipes, or gameplay values (Wave 1+ only; must pass the power-spike gate).
Wave 0 ships only CLIENT-ONLY + BEHAVIORAL-NEUTRAL mods.
**No fabrication (critical):** every mod card must carry a real, verified workshop URL and page-visible metadata (name, author, last-updated date, DLC dependency, description). If a mod cannot be verified via tools/search/Playwright, it is NOT added; it goes to `mod-ideas.md` and STATUS.md instead. Fake/broken links are worse than missing entries.
**Adult/nude:** ONI is a colony-sim with no thematically relevant adult content; recorded as N/A in STATUS.md. Nothing included.

## 5. Mod card format

Every card (via a Typst `mod-entry()` helper, as in factorio) contains:

- Clickable name with real, verified URL.
- Version/updated: workshop "last updated" date + the classification tag (CLIENT-ONLY / BEHAVIORAL-NEUTRAL / STAT-CHANGING).
- Verified: YES + verification date + method (page fetch / Playwright / search) + the *evidence* behind the compatibility claim (see §6.4).
- Dependencies: explicit list, including DLC requirements (e.g., "Requires Spaced Out!").
- System / mechanic impact: what it changes.
- Notes: load order, configuration, per-wave placement, power-spike verdict (with the failed clause, if any).

## 6. Verification workflow

### 6.1 Phase 0 — Build gate (blocks all mod work)

Research the live ONI build (SteamDB, official ONI patch notes / steam news, community changelogs) and resolve the target by this decision tree, in order:

1. If **Build 744825 / July 28, 2026** is verifiable as a real build → target it.
2. Else if the **June 11, 2026 update** build is verifiable → target that.
3. Else → target the **latest build that is verifiable**, and record the exact discrepancy (what was stated vs what was found) in STATUS.md.
The resolved build + date is written to the guide cover and README. No mod card is written until this gate closes.

### 6.2 Phase 0 — Mod Updater contingency

Verify workshop item `2018291283` (title, author, description, last-updated, whether it still works as a mod organizer):

- **Verified & working** → installation chapter documents Mod Updater as the primary organizer (its local mods folder, update behavior, per-save/profile enabling).
- **Unverifiable, removed, or broken** → the installation chapter documents the **native Steam Workshop flow** (subscribe in the workshop → ONI auto-downloads into its mods folder → enable/disable in the in-game mod menu) as the organizer, and STATUS.md records the substitution and why.

### 6.3 Phase 1 — Wave-2 premise research

"ONI has no single Krastorio-2-equivalent overhaul" is a **research deliverable, not a design premise**. Before Wave 2 mods are selected:

- Search the workshop for major content packs / overhaul-scale mods.
- If a genuine overhaul is found → Wave 2 anchors on it (factorio-style) or the capstone set is re-scoped; decision logged.
- If none found → the curated capstone-set design (§3 Wave 2) stands.

### 6.4 Phase 2 — Per-candidate verification

1. Fetch the candidate's workshop page (web fetch). For JS-heavy, rate-limited, or age-gated pages, use Playwright MCP.
2. Confirm: exists, title/author match, not flagged/hidden, page renders metadata.
3. Record compatibility **evidence**, never a bare binary claim:
   - workshop "last updated" date relative to the gated build;
   - stated DLC dependency vs owned DLCs;
   - author/description statements about supported versions;
   - for CLIENT-ONLY mods, staleness is weak evidence of breakage (pure UI mods can be years old and still fine) — the rationale is logged, not assumed.
4. Tag the mod CLIENT-ONLY / BEHAVIORAL-NEUTRAL / STAT-CHANGING and apply the power-spike gate (§4).
5. Verdict taxonomy (exactly one, logged with date + evidence):
   - `ACCEPTED` — verified + passed gate + compatible evidence.
   - `REJECTED` — with reason: `POWER-SPIKE` | `REDUNDANT` | `MEME` | `EXPLICIT-PORN` | `UNVERIFIED` | `INCOMPATIBLE` | `CONFLICT`.
   - `DEFERRED` — plausible but needs more evidence; parked in mod-ideas.md.
   - `CONFLICT` — accepted mods that conflict with each other; resolved in conflicts-mods.md.
6. Only `ACCEPTED` mods appear in guide cards.

## 7. Installation guide content (installation.typ)

Written against the **Phase 0 outcome** (§6.2): the Mod Updater path is primary; the native Steam Workshop path is the documented fallback if Mod Updater cannot be verified. Expected sections:

- Game prep: install ONI + both DLCs on Steam; confirm the gated build.
- Mod organizer: Mod Updater (subscribe, what it does — local mods folder, update behavior, per-save/profile enabling) *or* the native workshop flow, per §6.2.
- Fetching mods: per-card workshop URLs; download flow for the chosen organizer.
- Version compatibility: how ONI/Mod Updater handle mismatched builds; the "last updated" date as the evidence heuristic when exact build numbers are unknown (§6.4).
- Launch & verify: the in-game mod menu as ground truth.
- Per-wave switching: new game per wave; enable/disable the wave's subset.

## 8. Glossary coverage (guide/glossary.typ)

A defined seed list — these terms **must** be covered (may grow during writing, never shrink below this set):

- Duplicant (dupe), morale, skill points, priorities, job assignment, attribute/interest
- Oxygen & air: oxygen diffuser, electrolyzer, SPOM, algae, polluted oxygen, carbon dioxide, oxygen mask / atmo suit / exosuit, atmo suit dock
- Food & water: mealwood, bristle blossom, cooking, grill, food spoilage, water sieve, liquid reservoir
- Power & heat: power grid, heavi-watt wire, battery, hamster wheel, coal generator, hydrogen generator, steam turbine, aquatuner, thermo regulator, heat deletion, thermal mass, insulated tile, liquid lock
- Critters: hatch, drecko, puft, slickster, pip, shine bug, ranching, stable
- Geysers & terrain: geyser, vent, cool steam vent, water geyser, oil reservoir, oil well, petroleum, plastic
- Automation: automation wire, sensors, shutoffs, logic gates
- Spaced Out: rocket, rocket platform, cargo modules, planetoid, radiation, radbolt, bionic dupe

## 9. PDF design

- Toolchain: Typst 0.15.1 (verified installed) via `build.bat` → `typst compile template.typ output/primordial-outpost-reborn.pdf`.
- Fonts (same trio as the collection for cohesion): Cinzel (titles), Bahnschrift (headings), Georgia (body) — all available to Typst.
- ONI theme palette: deep-space navy backgrounds for cover accents; cyan/teal primary (oxygen/water); gold/amber highlights (liquid copper, researched tech); sand-tan callout fills.
- Cover page: `assets/logo.jpg`, modlist name, "Oxygen Not Included" + verified build line, page numbers at bottom.
- Top-level table of contents via `outline(depth: 3)`.
- Callout boxes for Note/Warning/Tip (as in factorio's `callout` helper), themed to the palette.
- `query.typ` audit helper for heading-page structure verification.

## 10. Deliverables

- All files in §2.
- `output/primordial-outpost-reborn.pdf` generated and verified (page count recorded in README/STATUS).
- STATUS.md decision log complete (audit trail, decisions, accepted/rejected/conflicts).
- README.md, AGENTS.md, conflicts-mods.md, mod-ideas.md finalized.

## 11. Non-goals

- Installing/downloading actual mod files (user does this later).
- Multiple language editions.
- Explicit adult content (N/A for ONI).
- A Wave-2 overhaul anchor is **not assumed** — it is resolved by research (§6.3): anchor on a verified overhaul if one exists, otherwise a curated capstone set.
