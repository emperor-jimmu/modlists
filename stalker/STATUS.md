# STATUS — G.A.M.M.A Protocol

Living decision register for the STALKER Anomaly + GAMMA modlist guide.

## 2026-08-11 — Initial build

- Registered `stalker/` as a modlist (AGENTS.md); created guide in Typst (dark "Zone" theme), `build-pdf.bat`, output PDF `output/G.A.M.M.A-Protocol.pdf`.
- Modlist: **G.A.M.M.A Protocol** = Anomaly 1.5.3 (ModDB) + GAMMA pack (official Discord/GitHub).
- Versions captured: Anomaly 1.5.3 (only supported base); GAMMA 0.9.x line — 0.9.3 (Dec 2024), 0.9.5 current mid-2026. Installation chapter advises checking Discord for the current version rather than hard-coding.
- Documented systems: launcher install flow, MO2, progression presets (Tourist/Scavenger/Survivalist), repair kits A–D + parts + tool tiers, MCM tuning, no-weapons-at-traders rule, Warfare mode flagged not recommended.
- Addons chapter: audio (Dark Signal weapon sounds / amplified footsteps, Audio Expansion, JSRS flagged high-risk), weapons/visuals (Kmack's Weapon Projects, BaS with caution), graphics (Rotten Life 3.0, C-con Grass & Trees, Glossy Puddles), ReShade presets (ZeN, Emergent Zone, Reshade Database) + ReShade install steps.

## 2026-08-11 — Moderation & links pass

- Verified latest versions online: GAMMA **0.9.5 (May 8, 2026)** is current (0.9.6 does not exist); Anomaly 1.5.3 unchanged. Updated cover, installation, and modlist chapters.
- Applied user's moderation policy to the addon list (cosmetic/QoL only; no overpower, redundant, conflicting, or adult content):
  - Dropped: **JSRS** (conflicts with GAMMA's tuned audio), **Dark Signal** (discontinued legacy project, no stable source), **BaS** (already integrated — redundant), **Rotten Life 3.0** (unstable/removed ModDB pages + texture-pack conflicts), **Emergent Zone** (already in GAMMA's ecosystem).
  - Kept with verifiable sources: **Audio Expansion** (ModDB), **Kmack's weapon projects** (Discord #mods-postings, redundancy check), **CCon Grass n Trees** (ModDB), **Glossy Puddles** (Discord), **ZeN presets** (Discord), **GAMMA Reshade Database** (Discord).
- Every addon card now carries a download link (ModDB page or official Discord); modlist chapter gained a "Download sources" section.

## 2026-08-11 — Depth, addons & readability pass

- **Deeper how-to-play**: expanded to 21 sections — "a day in the Zone" routine, first-90-minutes Loner walkthrough, health status table (bleeding/fracture/radiation/chem/psy/hunger/fatigue), anomaly encyclopedia table, artifact-hunt workflow, mutant tactics table, caliber guide + ammo types, armor class table, stashes/safehouses, A-Life & faction dynamics, "how to die less" checklist.
- **More addons (verified online)**: added RETUNE Ambience Sounds (ModDB slug confirmed), DynaHUD, Scopes as Binoculars, Nicer Flashlights and Headlamps; new Performance section (shadow map / SSDO / grass shadows / water reflections tuning + 1k texture packs). Excluded with reasons: AO Engine/ALAO/modded EXEs (replace exe, conflict with GAMMA's own engine build), Quick Action Wheel (already in GAMMA).
- **Readability**: line leading 0.55em → 0.78em, paragraph spacing 0.5em → 0.7em, side margins 2.2cm → 1.9cm, more heading spacing.
- **Screenshots**: skipped by user decision (2026-08-11) — the guide remains text-based; if captures are ever provided, wire them as figures per AGENTS.md convention.

## 2026-08-11 — Visible mod list & heading polish

- **Modlist chapter now lists actual mods**: added "Notable mods inside the pack" — 26 verified entries in 3 tables (Core systems & survival / Items, weapons & animations / Visuals, audio & UI), each linked to its folder in the official pack repo (github.com/Grokitach/Stalker_GAMMA, default branch `main`, verified 2026-08-10). Sources: pack's `modpack_addons` directory via GitHub API (385 entries) + official README (MO2 right-click → visit moddb.com).
- Confirmed headline pack mods: Weapon Parts Overhaul, ZCP, MCM, GAMMA Economy, Cooking Overhaul, Dynamic Anomalies Overhaul, FDDA, Gunslinger Guns, BaS (integrated), Anomaly Magazines Redux, Hippos Atmospherics, Enhanced Shaders, Oleh's sounds, Dark Signal Mutants Audio (component only), PDA Taskboard, SortingPlus, Minimalist HUD, Hunger Thirst Sleep UI.
- Note: the official full-list endpoint stalker-gamma.com/api/list currently 404s (site partially down); guide points to MO2 + GitHub repo instead.
- **Heading polish**: removed duplicate manual numbers from how-to-play headings (was "3.5 5. …"); increased space beneath headings (level 1: 0.75em → 1.05em, level 2/3: 0.5em → 0.75em).
- PDF now 25 pages.

## Open questions / drift risks

- GAMMA version numbers and addon compatibility shift with each release; chapters point readers to the Discord as the source of truth.
- If the GAMMA installer flow changes materially (new launcher versions, GOG method prominence), update `10-installation.typ` accordingly.
