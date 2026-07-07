# Textures & Meshes

**MO2 Separator:** `Graphics` → `Graphics - Textures & Meshes`

## Mesh Improvements And Parallax Support → `Graphics - Textures & Meshes`

Improve shape quality and silhouette readability without turning the mesh stack into an unmaintainable conflict swamp. The best outcome is a hybrid stack: stable baseline mesh improvements, targeted fixes where they matter, and parallax support only where the chosen textures actually benefit from it.

### Baseline

- **Static Mesh Improvement Mod (SMIM)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/659)) — Core mesh foundation. → `Graphics - Community Shaders`
- **Unofficial Material Fix** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/21027)) — After SMIM. Corrects material records for the Community Shaders PBR pipeline (21k endorsements). → `Graphics - Textures & Meshes`
- **Simplicity of Snow** v0.26 ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/56235)) — Main file only (32.8 MB). Skip Parallax Meshes and patches for mods not in the list. → `Graphics - Textures & Meshes`
- **FYX - Nordic Doors and Traps Collisions** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/100295)) — Collision geometry fix. Requires **XEMI Utility** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/159084)). → `Graphics - Textures & Meshes`
- **Stockades of Skyrim 3D** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/43227)) + **FYX - 3D Stockades** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/65104)) — 3D stockade walls and barricades. Stockades first as base layer, FYX overwrites. → `Graphics - Textures & Meshes`
- **Flame VFX Edit** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/109414)) — Mesh-only fire spell effect improvement, CS-compatible. → `Graphics - Textures & Meshes`
- **Glorious Doors of Skyrim (GDOS) SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/32376)) — Higher-detail door meshes across all architecture types. FOMOD: choose **2K textures**, install **all door categories**, include **Splendid Mechanized Dwemer Door** (ESL). → `Graphics - Textures & Meshes`
- **Security Overhaul SKSE** series — **Lock Variations** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/58224)), **Regional Locks** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/62781)), **Lock Add-ons** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/59529)), **Some More Locks** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/59961)), **Extra Locks** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/126119)), **PBR** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/152269)). Choose 2K texture options where offered — locks are examined up close and 4K is wasted VRAM. → `Graphics - Textures & Meshes`
- **Snazzy Furniture and Clutter Overhaul (SFCO)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/2414)) — Adds clutter objects, geometry, and variety beyond VPBR base textures. → `Graphics - Textures & Meshes`
- **Snazzy City series** — Whiterun AIO ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/147621)), Windhelm AIO ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/147620)), Solitude AIO ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/147618)), Markarth AIO ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/147624)), Riften AIO ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/147594)), Falkreath AIO ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/147671)), Dawnstar AIO ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/147758)), Winterhold AIO ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/150194)), Towns and Settlements ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/147761)), Misc Locations ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/147762)), Player Homes ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/182336)) — City-by-city clutter improvements via Base Object Swapper. → `Graphics - Textures & Meshes`
- **Mesh replacer series** — **V.A.E.R.** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/145018)), **Thrones Expanded** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139544)), **Rustic Repose** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/138889)), **Use Those Blankets** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/75481)), **Sleipnir Beds** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/143168)), **The Royal Seat** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/118892)), **Divide and Conquer** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/117295)), **Oddments and Miscellanea** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/118859)), **Utenlands Nordic Tents** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/121203)), **Redoran Reverie** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/132997)), **HFs Archery Target Remodel** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/138492)), **Diverse Grindstones** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/145870)), **Blary's Booksets** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/159303)), **ElSopa Misc Ruins Redone** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/153797)), **Snazzy Orc Chests** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/142275)). All mesh-only, no ESP or BOS-based. → `Graphics - Textures & Meshes`
- **TB's 3D Driftwood** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/80418)) — 3D driftwood mesh replacer. No ESP, mesh-only. Complements the animated-ship and coastal ecosystem. → `Graphics - Textures & Meshes`
- **WiZkiD Hunter's Camp Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/113558)) — Hunter camp visual overhaul. Replaces camp meshes and textures (tents, campfires, cooking pots, hunter clutter). No ESP. Pairs with any hunting overhaul. → `Graphics - Textures & Meshes`
- **Whiterun Has Walls Redone** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/119229)) — Whiterun wall mesh and texture upgrade with parallax support. Replaces the flat Whiterun exterior walls with 3D geometry. → `Graphics - Textures & Meshes`
- **Born in a Barn - Door Curtains for Shacks - Base Object Swapper** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/113432)) — BOS-based door curtains for shacks and poor homes across Skyrim. Adds visual privacy to doorways in smaller buildings. No ESP. → `Graphics - Textures & Meshes`
- **Improved Fish SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/17324)) — Higher-quality fish meshes and textures. Replaces vanilla fish models. → `Graphics - Textures & Meshes`
- **Improved Fish PBR** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/145624)) — PBR texture upgrade for fish. Requires Improved Fish SE as the mesh base. → `Graphics - Textures & Meshes`
- **CC Fish PBRed** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/131083)) — PBR texture upgrade for Creation Club fish. Requires the free AE fish addon. → `Graphics - Textures & Meshes`
- **JS Badges of Office SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/128579)) — Mesh-only replacer for the Jarl's crown, court-mage's circlet, and steward's key. No ESP. → `Graphics - Textures & Meshes`

Use the PGPatcher workflow in → `Graphics - PGPatcher` for late-stage parallax generation rules.

### Alternatives

- **High Poly Project** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/12029)) — Optional; only keep if the extra geometry earns its conflict cost. → `Graphics - Textures & Meshes`
- **RUSTIC CLUTTER COLLECTION** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/5795)) — Higher-resolution diffuse/normal replacer for existing clutter. May be redundant with VPBR's own clutter coverage — evaluate side-by-side. → `Graphics - Textures & Meshes`

### Notes

- High Poly Project can add overlap and complexity for surprisingly small on-screen gains.
- Parallax can look excellent on some surfaces and broken on others if support is inconsistent.
- Snow, rock, landscape, and water meshes should not be finalized independently of the texture and water winners.

## Unique Entity Replacers → `Graphics - Textures & Meshes`

This subsection owns model and texture upgrades for unique named entities or one-of-a-kind objects — characters, corpses, and set-piece models not covered by broad creature, skeleton, or texture overhauls. The goal is to close visual gaps that generic replacer packs leave open, without swelling into a full NPC-beautification project.

### Baseline

- **Night Mother** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/83527)) — High-quality model and texture replacer for the Night Mother's corpse. ESL-flagged, zero script or record conflicts. → `Graphics - Textures & Meshes`
- **Skyking Signs** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/112902)) — Sign texture and mesh replacer with wind-sway, wood materials, no ESP. Optional companion: **Skyking Unique Signs** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/114940)) — standalone sign mesh replacer for unique signs. → `Graphics - Textures & Meshes`
- **Skyland Imperial and Nordic Tents** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/57002)) — 4K tent texture replacer with new mesh for the large Nordic fur tent. No ESP. → `Graphics - Textures & Meshes`

### Notes

- Unique entity replacers are generally safe. Verify Night Mother does not conflict with any lighting or interior overhaul that modifies the sanctuary cell.
- Do not let this subsection grow into a general NPC or creature overhaul — those tracks are already owned by → `NPCs`.

## Blood, Decals, And Combat Visual Effects → `Graphics - Textures & Meshes`

This subsection owns the in-world visual effects that fire when combat happens: blood pools, persistent decals, and lingering marks that make fights leave visible traces. Kept separate from lighting/weather/texture subsections because combat effects are event-driven overlays, not ambient worldstate. Also separate from hit-reaction and stagger ownership in → `modlist-third-person.md` and → `Expanded Systems` — the hit moment is their decision, the visual aftermath is this one's.

### Baseline

- **Dynamic Bloodpool Framework** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/172080)) — Blood and decal framework. Lock in only after weather and lighting baselines are stable, because blood decals need to read correctly under both daylight and the chosen night-darkness setup. → `Graphics - Textures & Meshes`
- **Dragon Breath VFX Edit** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/118431)) — Dragon-combat VFX companion. Replaces vanilla dragon breath projectile and impact effects with higher-fidelity visuals (fire, frost, shock). Mesh replacer only, no ESP. → `Graphics - Textures & Meshes`

### Alternatives

- **Improved Sparks** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/19831)) — Realistic orange spark effects on metal impacts and grindstones. FOMOD with spark-density options (1X-20X). → `Graphics - Textures & Meshes`
- **Lightning VFX Edit** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/124520)) — Lightning bolt VFX replacer. Mesh replacer only, no ESP. → `Graphics - Textures & Meshes`
- **Dynamic Footprints SKSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/175254)) — Persistent footprint decals on snow, mud, sand, and other ground surfaces. Add after blood/decals baseline is stable. → `Graphics - Textures & Meshes`

### Notes

- Blood and decal frameworks can interact poorly with Community Shaders weather mods that handle screen-space wetness and surface effects. Verify under the locked weather baseline.
- Persistent blood decals can create frame-rate or memory pressure in long combat sessions. Check MCM for decal lifetime and density settings.
- Blood pools can look out of place in snowy regions if the framework does not handle surface-specific blending.
- Keep ownership scoped to the persistent-decals-and-pool layer, not the hit-effect layer.

## Book and Paper Visual Overhauls → `Graphics - Textures & Meshes`

This subsection owns visual upgrades for books, notes, and paper items — the most-read world objects in the game. Texture and mesh improvements here make reading feel more tactile and library exploration more rewarding without changing any gameplay records.

### Baseline

- **Book Covers Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/901)) — Core book-cover texture replacer. Gives every book in Skyrim a unique hand-crafted cover texture instead of the vanilla cover-swapping system. 200K+ endorsements; the definitive book-visual mod. → `Graphics - Textures & Meshes`
    - **Main file:** `Book Covers Skyrim` (the base mod). Choose the **Main Files** download (not the USSEP Update variant).
    - **Book Covers Skyrim Enhanced Textures** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/178820)) — Higher-resolution texture upgrade for the book covers. 2K/4K options. Install after the base mod and overwrite. → `Graphics - Textures & Meshes`
    - **Book Covers Skyrim - SkyPatched** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/109254)) — SkyPatcher-based forward-port that resolves conflicts with other mods editing the same book records without needing a traditional patch. Choose **Recommended Main File**. → `Graphics - Textures & Meshes`
- **Book Covers Skyrim - Lost Library** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/902)) — Book content expansion adding 150+ lore books from earlier TES games. Listed here as the content companion to Book Covers Skyrim; section 08 owns the quest-level decision. → `Graphics - Textures & Meshes`

### Notes

- Book Covers Skyrim has a USSEP Update variant (mod 50615) that forwards USSEP changes. If USSEP is in the load order (it is, via `modlist-foundations.md`), use the SkyPatched variant instead — it handles USSEP forwarding + broader compatibility.
- The Enhanced Textures pack is optional but recommended for 4K displays. At 2K the base BC7 textures from the main mod are adequate.
- Verify compatibility with any mod that touches book inventory records (e.g., Unread Books Glow). The SkyPatched variant resolves most record-level conflicts.
- The base mod is large (~600 MB for 2K). Evaluate whether unique book covers earn their visual weight versus the 600 MB of VRAM and disk space.
