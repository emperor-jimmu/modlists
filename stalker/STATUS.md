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

## Open questions / drift risks

- GAMMA version numbers and addon compatibility shift with each release; chapters point readers to the Discord as the source of truth.
- If the GAMMA installer flow changes materially (new launcher versions, GOG method prominence), update `10-installation.typ` accordingly.
