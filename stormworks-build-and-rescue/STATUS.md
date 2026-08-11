# STATUS — Whitecap

Living decision register for the Stormworks: Build and Rescue + Steam Workshop modlist guide.

## 2026-08-12 — Initial build

- Registered `stormworks-build-and-rescue/` as a modlist (AGENTS.md); created guide in Typst (dark "storm at sea" theme), `build-pdf.bat`, `tools/make-logo.py` → `assets/logo.jpg`, output PDF `output/Whitecap.pdf`.
- **Base game pinned**: Stormworks: Build and Rescue **v1.15.18 — "The Airburst Update" (2026-06-24)** — current stable at guide time; Geometa keeps the game in active development (SteamDB activity through July 2026; v1.15.16 "Hydrogen Fuel Cell & Space Mining" 2026-04-29, v1.15.12 "Armour" 2026-03-19). Game version drifts — Steam News Hub is the source of truth.
- **Mod manager**: the **official Steam Workshop + in-game Mod Manager** (asset modding since v1.13.0) — subscribe on Workshop, enable per save at New Game → *Enabled Mods* → *Workshop* tab. Legacy external loaders (Stormloader) are obsolete; no third-party manager adopted.
- **Adopted mods — Layer 1 (QoL & graphics only, all verified on Workshop)**:
  - Opal Shader 2.6 (`3393471780`, Dheix, 27.6k subs, updated 2025-10-22, tag v1.15.4) — the community-standard shader overhaul: water, sky, clouds, atmosphere, grass/snow, world curvature, net sails, fire. Incompatible with other shader/particle mods.
  - Opal Shader - Grass Module (`3393475544`, 12.8k subs) — required companion for grass.
  - Opal Shader - Config Module (`3393475869`, 6.3k subs) — optional `_opal_config.glslh` customization.
  - Echo's Bigger Workbenches v11 (`3357835209`, Echoless, 61.2k subs, updated 2026-07-23, tag v1.15.18) — the definitive workbench mod, rebuilt from current game files.
  - Better Hitboxes (`3359500787`, 11.9k subs, updated 2025-09-23, tag v1.15.3) — removes invisible block hitboxes; Layer-1 only (touches stock component definitions — keep it out of the R.A.M.B.O. save).
- **Adopted mods — Layer 2 (full modded experience, added on top of Layer 1)**:
  - R.A.M.B.O. — Realistic Aerodynamics, Mass & Buoyancy Overhaul (`3737924863`, Thales, 11.4k subs, updated 2026-08-02, tag v1.15.18; guide `3736924997`) — physics overhaul; nerfs stock propulsion, rebalances mass/buoyancy/drag, adds paintable surfaces + static NPC seats. Centerpiece of Layer 2. Known quirk: load the save twice after each launch (game-constants bug, documented by author).
  - Frustum aka Square Pyramids (`3657682402`, 880 subs, updated 2026-02-01, tag v1.15.10) — 33 paintable frustum blocks; recommended by R.A.M.B.O.'s author.
  - Thales' Aviation Parts and Block Overhaul — Updated (`3535295022`, 8.5k subs, updated 2026-05-09, tag v1.15.16) — 250+ aviation parts, backwards-compatible with the legacy version.
  - Mango Cargo Overhaul (`3635338496`, 6.5k subs, updated 2026-05-13, tag v1.15.16) — cargo/passenger delivery system overhaul (kiosks, port-type cargo packs, routes).
  - ARCTIC+ | Arctic Ice Pack (`3703818116`, 9.3k subs, updated 2026-04-17, tag v1.15.12) — walkable arctic ice sheet.
  - Electric Parts Expanded (`3357494697`, 10.3k subs, updated 2026-02-20, tag v1.15.11) — additive electric parts.
  - Mechanical Parts Expanded (`3538324086`, 7.8k subs, updated 2026-03-29, tag v1.15.12) — additive mechanical parts.
  - Structural Parts (`3541463211`, 3.4k subs, updated 2026-03-04, tag v1.15.11) — additive structural parts.
  - Realistic Foghorn / Whistle (`3367942963`, 7.4k subs, updated 2026-07-09, tag v1.15.18) — realistic foghorn sound, non-replacing.
  - Better Thunder (`3523467712`, 976 subs, updated 2025-07-19, tag v1.15.1) — thunder sound overhaul.
  - Realistic Turbocharger (`3521082511`, 4.0k subs, updated 2025-07-09, tag v1.15.1) — realistic turbo spooling behaviour and sound.
- **Rejected / not adopted (reasons recorded)**:
  - **Project Reshade** (`3526600258`) — water/smoke/foam shaders, explicitly **not compatible with Opal**; Opal is the adopted graphics pillar.
  - **Sea Lanes Shader** (`3674016135`) — Opal-based Frankenstein shader; community-documented broken tsunami/whirlpool rendering; Opal covers the pillar without the bugs.
  - **SunRays** (`3404352923`) — volumetric sunrays; "DOES NOT WORK WITH OPAL SHADER AT THE MOMENT".
  - **DEEPER OCEANS MOD | SODS** (`3406945681`) — dramatic whole-world seabed overhaul; tag v1.13.3 (2025-01), unmaintained through four game versions → compatibility risk.
  - **North Sawyer Overhaul** (`3379227838`) — popular world overhaul; tag v1.13.1 (2024-12), unmaintained → not compatible risk with v1.15.18.
  - **ilp0tt1s Decoration Mod** (`3385569019`) — 289 parts but tag v1.13.0 (2024-12), author notes a full rewrite pending ("direct port for now") → not current.
  - **Improved Default Mission** (`2480605685`) — mission variety mod; last updated 2022 → predates the official mod system.
  - **Legacy Aviation Parts and Block Overhaul** (`3357808533`) — superseded by the Updated version (`3535295022`).
  - **Better Workbenchs** (`3396298028`) / **Bigger Workbenches** (`3369735235`) / **lowPoly Workbench** (`3422280722`) — workbench mods superseded by Echo's Bigger Workbenches v11 (current-version, most subscribed).
  - **QOL microcontroller series** (`3636904463` etc.) — shrink logic chips; pure convenience that removes space-management friction → violates the "no easier" pillar.
  - **Joke/chaos mods** (e.g. `randomized models` `3776561161`, "SB mod" all-in-one packs `3595903740`) — noise or uncurated bundles; no pillar served.
  - **Stormloader / legacy external loaders** — obsolete since the official Workshop mod system (v1.13+).
- **"More AI" pillar note**: no maintained "smarter traffic/AI" mod exists for Stormworks at guide time (candidates like Improved Default Mission are abandoned). The guide covers the pillar with (a) the vanilla career's AI mission generator, (b) Mango Cargo Overhaul's expanded mission/cargo generation, and (c) R.A.M.B.O.'s static-NPC passenger seats — stated honestly in the guide's design pillars.

## 2026-08-12 — Amendment round 2 (user requests)

- **DLC requirement added (user directive)**: the guide now requires *all three* DLCs — Search and Destroy (app 1542360), Industrial Frontier (app 2124750), Space (app 2383250); "Complete Collection" bundle (46782) covers base + all three. Added to `10-installation.typ` (What you need table + explanation paragraph), `20-modlist.typ` (glance table), README, and this register.
- **How-to-play expanded**: new "Your first 20 minutes" walkthrough in `30-how-to-play.typ` (menu → first rescue → workbench lesson; controls table; refuel/fuel-gauge warnings) — facts grounded in the career-start flow (starter boat preset, tutorial mission spawn, transponder locator, gyro stabilizer, hose-anchor refuelling); keybinds stated as defaults with a "check Settings" hedge.
- **Step-by-step builds added**: "Building, step by step" in `30-how-to-play.typ` — first boat, helicopter, fixed-wing plane, car/truck — with the community "rule of three" (engine low, hull sealed, fuel/air/exhaust separate) and per-build failure checklists; R.A.M.B.O. consequences noted.
- PDF rebuilt and re-verified (17 pages, all probes pass).

## Open questions / drift risks

- Game and mod versions move fast (Geometa ships several updates a year). Chapters point to each mod's Workshop page rather than hard-coding versions; re-verify the *Last updated* / version tags before restating any pinned version.
- Opal Shader's last update predates v1.15.18 (tag v1.15.4, Oct 2025) — still the community standard (SMH Modpack ships it), but if a game update breaks it, check the mod's discussions for the fix before changing the guide.
- R.A.M.B.O. + Better Hitboxes both touch stock component definitions — the guide keeps Better Hitboxes in Layer 1 only and documents the reasoning; if the R.A.M.B.O. author confirms compatibility, revisit.
- If the in-game Mod Manager UI changes (menu names), update `10-installation.typ` accordingly.
