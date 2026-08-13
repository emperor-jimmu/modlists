# STATUS — Minecraft Modpack

## Completed

### GUIDE.md Conciseness Pass (Aug 2026)

- [x] GUIDE.md trimmed from 4,629 → 4,300 lines (~25 KB). Removed duplicated wave intros/closings, the redundant "Performance Mods — Install and Forget" table, per-mod prose blurbs condensed to one-line bullets (Wave 0.5 What to Expect + Daily Tools, texture packs, Create Addon Details), duplicated interdependency notes (Hybrid Aquatic × Starcatcher/Better Fishtanks, Starcatcher's Delight × FD, Better Fishtanks × Create, Wave 6 trio), and fluff lines (Wave 2/3/5/6 intros, Torchmaster, Wave 7). Fixed Wave 1 broken integration table (glued `### Ores` heading), deduped Mod Count Summary (stale Wave 2 row), moved it out of the middle of Wave 7 to before Keybindings. All instructions/configs/compat notes preserved. DRIFTWOOD-GUIDE.pdf regenerated cleanly.
- [x] Fixed accidental setext heading: Wave 6 "Chill living fit" paragraph was directly followed by `---` with no blank line, so CommonMark (via cmarker) rendered it as an H2 in the PDF ToC. Added the blank line — now renders as a normal paragraph. Scan confirmed it was the only occurrence.

### Added Mods (Aug 2026 — Mekanism Guide Mods)

- [x] **Mekanism: Ponders 1.0.3** (Wave 1 — Tech) — Ponder scenes for Mekanism machines and multiblocks (fission/fusion reactors, turbine). Modrinth, NeoForge 1.21.1. Requires Mekanism. Matches Create's in-game Ponder guides.
- [x] **Mekanism Guide Book** (Wave 1 — Tech) — Patchouli-based in-game guidebook for Mekanism 10.7. CurseForge. Requires Patchouli (already in pack via Apotheosis).

### V3 Documentation (MODLIST.md) — Full V3 Mod List Written

- [x] All mods pinned to their exact NeoForge 1.21.1 versions
- [x] Waves 0-8 fully documented with mod tables, dependency tables, and config sections
PUT 90.*:

### Wave 8 — Programmable Computers (1 mod)

- [x] CC:Tweaked added as programmable computer mod (Modrinth — dev-recommended platform for NeoForge builds)
- [x] KubeJS recipe script: `kubejs/server_scripts/wave8_cc_tweaked.js` — gates turtles (TFMG steel), Advanced Computer (Mekanism Enriched Alloy), Wireless Modem (Create brass)
- [x] Config override: `config/computercraft-server.toml` — HTTP disabled, command computers disabled, turtle fuel limit 200000
- [x] GUIDE.md Wave 8 section written — mod table, config, Lua tutorial (shell, editor, syntax primer, event loop, peripherals, turtles, redstone, wireless networking, 5 integration scripts), interdependency notes, 7-session plan
- [x] FTB Quests: 6 CC:Tweaked quests in new "Programmable Computers" chapter

- [x] Interdependency notes for every wave noting cross-mod interactions

### Wave 0 — Foundation (~65 mods incl. deps)

- [x] Performance: Sodium, Iris, Lithium, Distant Horizons, ModernFix, ImmediatelyFast, Entity Culling, Dynamic FPS, NoisiumForked
- [x] Visual/Client QoL: LambDynamicLights, BetterF3, Sound Physics Remastered, AmbientSounds, The Immersive Music Mod, Immersive UI, Status Effect Bars Reforged, Traveler's Titles, Better Modlist, First Person Model, 3D Skin Layers, Better Safe Bed, Presence Footsteps, Particular Reforged, Wakes Reforged, Cosy Critters, Foxified Dense Flowers
- [x] Inventory/UI: EMI, Jade, Jade Addons, JourneyMap + Integration, AppleSkin, Inventory Essentials, Advancement Plaques, Tooltip Overhaul, Loot Journal, Better Advancements, Polymorph+, Shulker Box Tooltip, Item Borders, EMIffect
- [x] Storage & Travel: Sophisticated Storage, Sophisticated Backpacks, Waystones, GraveStone Mod
- [x] Dependencies: Cloth Config, Architectury API, YACL, Curios API, CreativeCore, OctoLib (ShatterLib), Fragmentum, M.R.U, Balm, Iceberg
- [x] Added YUNG's API to New Dependencies

### Wave 1 — Tech, Colony & Chunk Loading (~22 mods)

- [x] Core Tech: Create, Mekanism, AE2, Applied Mekanistics
- [x] ~~Ores: Skniro's Nether & End Ores~~ (removed — unnecessary, unpopular mod)
- [x] Colony Automation: MineColonies, Structurize, MultiPiston, BlockUI, Domum Ornamentum
- [x] Infrastructure: Chunk Loaders, SuperMartijn642's Config Lib, SuperMartijn642's Core Lib
- [x] Mekanism Addons: Advanced Finders, Advanced Chimneys + ForgeEndertech dep
- [x] Create Addons: Create Crafts & Additions, Create: Power Grid, Steam 'n' Rails, TFMG, TFMG Energy Converter, Mekanism TFMG Compat
- [x] Create Addons (new): Create: Gunsmithing + NTGL + GeckoLib + Framework deps, Create Ornithopter Glider
- [x] All interdependency notes written (Create→Mekanism→AE2 integration, colony tech gating)
- [x] Create train addons: Train Utilities, Railways Navigator, Interiors, Train Parts, Threaded Trains

### Wave 1.1 — Megabuilding (1 mod + 18 schematics)

- [x] Forgematica 0.4.3+mc1.21.11 — client-side schematic mod (Litematica unofficial Forge/NeoForge port)
- [x] No dependencies (standalone — no MaLiLib required)
- [x] 18 recommended schematics curated from abfielder.com covering all three progression phases
- [x] Schematics span: starter homes (4), farms/windmills (3), factories/warehouses (5), underground bases (1), castles (2), bridges/walls/towers (3)
- [x] All schematics are free .litematic downloads, survival-compatible (Forgematica is visual guide only)
- [x] Shader caveat noted: toggle shaders off while placing schematics if flickering occurs
- [x] Interdependency notes written (Forgematica × Create / MineColonies / AE2 / Apotheosis)
- [x] Session plan written (5 progressive building sessions)

### Wave 2 — Exploration (~36 mods)

- [x] Overworld Worldgen: Terralith, Tectonic
- [x] Nether Worldgen: Incendium v5.4.4 (Modrinth — NeoForge 1.21.1 data pack wrapper)
- [x] Environment: Serene Seasons
- [x] Underground & Ocean: Darker Depths, Upgrade Aquatic, Hybrid Aquatic
- [x] Structures: YUNG's full collection (12 mods: 9 Better series + Bridges + Extras + Better End Island), Structory, Structory: Towers
- [x] End Access: End Remastered, Moog's End Structures, Nullscape (data pack)
- [x] Dimensions: The Aether, Deep Aether, Umbral Skies, Deeper and Darker, Twilight Forest
- [x] Navigation: Explorer's Compass
- [x] Mobility: Immersive Aircraft, Small Ships, Hang Glider, Man of Many Planes, Immersive Machinery
- [x] Dependencies: BCLib, WorldWeaver, WunderLib, Moog's Structure Lib, TerraBlender

### Wave 3 — Equipment Magic & RPG (~20 mods incl. 10 deps)

- [x] Apotheosis fully configured (5 modules, socketing, reforging costs, enchants, spawners, Deadly module enabled)
- [x] Dependencies added: Placebo, Apothic Attributes, Apothic-Enchanting, Apothic-Spawners, Patchouli
- [x] Simply Swords, Too Many Bows, Spartan Weaponry Unofficial, Relics (RPG Series), Runes, Immersive Armors
- [x] Simply Swords deps: Simply Tooltips, Fzzy Config
- [x] Relics (RPG Series) / Skill Tree deps: Ranged Weapon API, Spell Engine
- [x] Runes dep: Bundle API
- [x] Skill Tree (RPG Series), Pufferfish's Skills
- [x] Compat notes: Apotheosis affixes apply to Simply Swords weapons, Twilight Forest bosses, Incendium weapons, and Immersive Armors pieces

### Wave 4 — Food, Farming & Comfort (~10 mods)

- [x] Farmer's Delight, Brewin' And Chewin'
- [x] Storage Delight, My Nether's Delight, Ocean's Delight, Ender's Delight (moved from Wave 2)
- [x] More Delight updated to 26.05.20a-1.21-neoforge (was stale pin 3.5.0)
- [x] Delight Lib 26.05.18-1.21-neoforge added as required dep for More Delight
- [x] Starcatcher (fishing overhaul — 100+ fish, minigame, trophies, tournaments, catalogue)
- [x] Better Fishtanks (functional aquariums — fish bags, decorations, feeding, Create/AE2 compat)
- [x] All mod URLs switched to Modrinth
- [x] All interdependency notes written (food storage with AE2)

### Wave 4.5 — Quests (1 mod)

- [x] Bountiful 8.0.0-beta.2 selected
- [x] Bountiful generates fetch/kill/exploration quests and automatically includes items from all installed mods
- [x] Compat notes for Bountiful + Farmer's Delight + Simply Swords + Apotheosis

### Wave 5 — Combat (~7 mods)

- [x] Better Combat, Mutant Monsters, L_Ender's Cataclysm, When Dungeons Arise, Enchantment Descriptions
- [x] Create Big Cannons + Ritchie's Projectile Library
- [x] All mods configured at defaults

### Wave 6 — Building & Decoration (12 mods + 3 deps)

- [x] Rechiseled (replaces Chipped), Supplementaries (Modrinth), Macaw's Bridges/Doors/Roofs/Windows, Building Wands, Handcrafted
- [x] Rechiseled addons: Rechiseled: Create, Rechiseled: Applied Energistics 2
- [x] Fetzi's Displays (glass cloches, katana stands, wall holders, racks)
- [x] Lili's Pottery (decorative pots, vases, urns, amphores, clay variants)
- [x] Dependencies: Moonlight Library (Supplementaries), Resourceful Lib (Handcrafted), Fusion (Rechiseled)

### Wave 7 — Space Exploration (~1 mod)

- [x] Stellaris 1.4.23 as core space mod

- [x] Dependency: Potentials API
- [x] ~~TFMG-Stellaris Compatibility~~ removed (not needed, Stellaris has native fuel system)

### Wave 8 — Programmable Computers (1 mod)

- [x] CC:Tweaked added as programmable computer mod (Modrinth — dev-recommended platform for NeoForge builds)
- [x] KubeJS recipe script: `kubejs/server_scripts/wave8_cc_tweaked.js` — gates turtles (TFMG steel), Advanced Computer (Mekanism Enriched Alloy), Wireless Modem (Create brass)
- [x] Config override: `config/computercraft-server.toml` — HTTP disabled, command computers disabled, turtle fuel limit 200000
- [x] GUIDE.md Wave 8 section written — mod table, config, Lua tutorial (shell, editor, syntax primer, event loop, peripherals, turtles, redstone, wireless networking, 5 integration scripts), interdependency notes, 7-session plan
- [x] FTB Quests: 6 CC:Tweaked quests in new "Programmable Computers" chapter

### Design choices

- [x] Added Hybrid Aquatic, Starcatcher, Better Fishtanks, Fetzi's Displays, Lili's Pottery (July 2026)
- [x] Skipped Hybrid Delights (no NeoForge 1.21.1), Jungle Treehouse Village (no NeoForge 1.21.1), The Bumblezone (dimension overload — 4th dimension doesn't integrate with progression)
- [x] Switched all mod links from Modrinth to CurseForge (July 2026)
- [x] Updated installation instructions to use XMCL instead of GDLauncher (July 2026)
- [x] Removed TFMG-Stellaris Compatibility (not on CurseForge, Stellaris has native fuel system)
- [x] Added Advanced Finders + Advanced Chimneys to Wave 1 (Mekanism addons for ore detection and factory smoke)
- [x] Added ForgeEndertech as dependency for Advanced Finders and Advanced Chimneys
- [x] Removed Regions Unexplored (FPS concerns with Terralith/Tectonic overlap, no global-tag structure compat)
- [x] Removed Additional Structures (Towns & Towers + Structory cover structures adequately)
- [x] Removed Nullscape (BetterEnd's biome overhaul replaces Nullscape's End transformation)
- [x] Removed Spell Power (Pufferfish's Skills + Skill Tree cover RPG); Spell Engine retained as mandatory dependency of Relics (RPG Series) and Skill Tree
- [x] Replaced Corail Tombstone with GraveStone Mod (NeoForge native, active development)
- [x] Added MineColonies + 4 deps to Wave 1 (colony automation gates Phase 2 tech progression)
- [x] Added Chunk Loaders + 2 deps to Wave 1 (cross-dimension chunk loading for Phase 2+ automation)
- [x] Added Create Big Cannons + Ritchie's Projectile Library (artillery engineering for colony defense)
- [x] Expanded FD addons: Storage Delight, More Delight, My Nether's Delight, Ocean's Delight
- [x] Expanded Apotheosis config with socket count, gem types, reforging costs, spawner details, enchanting details
- [x] Deadly module enabled (traps are telegraphed, GraveStone protects items)
- [x] AE2 channels kept on (logistics puzzle)
- [x] Mekanism chunk loading disabled (delegated to Chunk Loaders mod)
- [x] vanilla advancements + Fancy Toasts for progression guidance (no FTB Quests)
- [x] Replaced BlazeandCave's Advancements Pack with v1.17.2, placed in global datapacks folder (later removed — advancement bloat)
- [x] Noisium → NoisiumForked (Noisium archived on 1.21.1; NoisiumForked is active fork, same functionality)
- [x] Constant Music → The Immersive Music Mod (Constant Music forced 2min fade limit with 5 songs; Immersive Music Mod has 147 songs, biome/structure-aware, no dead air gap override)
- [x] Chat Heads → removed (multiplayer-only feature, unnecessary for singleplayer pack)
- [x] Reliable Advancements → Better Advancements (reverted — Better Advancements is the original, actively maintained; RA was a fork that didn't add meaningful value over BA)
- [x] V1/V2 files deleted, V3 files renamed (MODLIST-V3.md -> MODLIST.md, GETTING-STARTED-V3.md -> GETTING-STARTED.md)
- [x] PDFs rendered via cmarker Typst package: MODLIST.pdf (434 KB) and GETTING-STARTED.pdf (1.08 MB) in rendered/
- [x] Removed Obscure API from V3 mod list (not available on NeoForge — Obscure Tooltips and Loot Journal depend on Fragmentum instead)
- [x] Fixed OctoLib URL: modrinth.com/mod/octo-lib → modrinth.com/mod/shatterbyte-lib (slug is shatterbyte-lib, not octo-lib)
- [x] Moved all 9 YUNG's mod URLs from CurseForge to Modrinth (CurseForge lacks NeoForge 1.21.1 builds; Modrinth has them for all YUNG's mods)
- [x] More Delight version pin fixed: 3.5.0 → 26.05.20a-1.21-neoforge (3.5.0 doesn't exist; mod uses date-based versioning)
- [x] Added Delight Lib as Wave 4 dependency (required by More Delight v26.04.30+)
- [x] Switched all Wave 4 mod URLs to Modrinth
- [x] Replaced JEI with EMI — recipe viewer with recipe trees, craftable mode, favorites, zero dependencies
- [x] Replaced Fancy Toasts with Advancement Plaques — glowing plaque popups (copper/silver/gold borders), requires Iceberg
- [x] Added Iceberg as Wave 0.5 dependency (Advancement Plaques library)

- [x] Terralith URL switched from CurseForge to Modrinth (NeoForge 1.21.1 available)
- [x] Tectonic URL switched from CurseForge to Modrinth (NeoForge 1.21.1 available)
- [x] Better Days added to Wave 0 (day/night length control, chill QoL)
- [x] Serene Seasons added to Wave 2 (seasonal colors, crop impact ON, temperature damage OFF)
- [x] Better Days config: 2x day length, time effects disabled (compat with Serene Seasons crop system)
- [x] MineColonies + 4 deps (Structurize, MultiPiston, BlockUI, Domum Ornamentum) confirmed CurseForge-only — not on Modrinth for NeoForge 1.21.1

- [x] Replaced GDLauncher with XMCL across all docs (MODLIST.md, GETTING-STARTED.md, STATUS.md) — July 2026

## Pending

- [ ] Test launch with Waves 0-8 — generate default configs for all mods
- [ ] Verify no mod conflicts
- [ ] Cross-wave integration testing
- [ ] Config tuning per mod
- [ ] After test launch, capture Apotheosis defaults (adventure.cfg, ench.cfg, enchantments.cfg, potion.cfg, village.cfg) then apply overrides per GUIDE.md §Wave 3

### Data Packs

- [x] Day Counter mod added to Wave 0 — replaces typewriter day counter (data pack format was incompatible with 1.21.1)
- [x] BlazeandCave's Advancements Pack removed (advancement bloat, conflicts with Fancy Toasts progression clarity)
- [x] No Creeper Grief data pack

### Shaderpacks

- [x] Complementary Unbound selected and documented in MODLIST-V3.md

### Merged Guide (Jul 2026)

- [x] GUIDE.md created — single canonical source merged from MODLIST.md + GETTING-STARTED.md
- [x] Driftwood Typst theme — cover page with logo, TOC, color palette from logo
- [x] templates/modlist.typ removed — superseded by single guide.typ
- [x] generate-pdf.ps1 simplified to single DRIFTWOOD-GUIDE.pdf output
- [x] DRIFTWOOD-GUIDE.pdf compiled cleanly

### Added Mods (Jul 2026)

- [x] Beautiful Enchanted Books (Wave 0 — Visual & Client QoL)
- [x] ~~Subtle Effects~~ → replaced with Particular Reforged (Wave 0 — Visual & Client QoL)
- [x] Darker Depths (Wave 2 — Underground & Ocean)
- [x] Upgrade Aquatic + Blueprint dep (Wave 2 — Underground & Ocean)
- [x] Cut Through (Wave 5 — Combat)
- [x] Nullscape re-added as End data pack (Wave 2 — End Overhaul)

### Fixed Crashes (Jul 2026)

- [x] Darker Depths 2.1.4 crash at startup — missing TerraBlender (worldgen API). Darker Depths 2.1+ requires TerraBlender or Biolith to register its cave biomes. Added TerraBlender NeoForge 1.21.1-4.1.0.8 as a required dependency.

### Added Mods (Jul 2026 continued)

- [x] Cherished Worlds v10.1.1 (Wave 0 — Visual & Client QoL)

### Added Mods (Jul 2026 batch 2)

- [x] Particular Reforged (Wave 0 — replaces Subtle Effects, same category)
- [x] First Person Model + Not Enough Animations dep (Wave 0 — Visual & Client QoL)
- [x] Presence Footsteps (Wave 0 — Visual & Client QoL)
- [x] Wakes Reforged (Wave 0 — Visual & Client QoL)
- [x] Shulker Box Tooltip (Wave 0 — Inventory & UI)
- [x] Item Borders (Wave 0 — Inventory & UI)
- [x] Vanilla Refresh → Typewriter Day Counter → Day Counter mod (Wave 0 — Visual & Client QoL)

### Removed Mods (Jul 2026 batch 2)

- [x] Obscure Tooltips — removed (Tooltip Overhaul retained as sole tooltip mod)
- [x] Subtle Effects — removed (replaced by Particular Reforged)

### Skipped After Review

- [x] Spelunkery — too much overlap with YUNG's Better Caves + Mekanism tool progression
- [x] Galosphere — Darker Depths chosen as the cave content mod instead; Galosphere gems are orphan content
- [x] Environmental — biome conflict with Terralith

### Added Mods (Jul 2026 batch 4)

- [x] Dynamic Villager Trades (Wave 0 — Village & Trading)

### Added Mods (Jul 2026 batch 3)

- [x] 3D Skin Layers (Wave 0 — Visual & Client QoL)
- [x] Better Safe Bed (Wave 0 — Visual & Client QoL)
- [x] Neo Bee Fix (Wave 4 — Food & Farming)
- [x] Small Ships (Wave 2 — Mobility)
- [x] Create: Power Grid (Wave 1 — Create Addons)
- [x] TFMG Energy Converter (Wave 1 — Create Addons) + Kotlin for Forge dep — crash was missing Kotlin stdlib, fixed

### Added Mods (Jul 2026 batch 12 — Mod Review)

- [x] Chunky (Forge/NeoForge) (Wave 0 — Infrastructure) — world pregenerator, `/chunky` commands, zero dependencies, complements NoisiumForked and Distant Horizons. Documented in GUIDE.md §Infrastructure with continue-on-restart config and first-launch checklist entry.

### Added Mods (Jul 2026 batch 13)

- [x] Mekanism Tools (Wave 1 — Mekanism Addons) — armor/shields/tools/paxels for Osmium, Bronze, Refined Obsidian, Refined Glowstone, Steel. Fills gear progression gap between netherite and MekaSuit. Official Mekanism addon. Apotheosis affixes apply to its gear.

### Added Mods (Jul 2026 batch 14 — MineColonies Addons)

- [x] JadeColonies (Wave 0 — Inventory & UI) — Jade tooltips for MineColonies huts, workers, and Domum Ornamentum blocks. 5.4M DL, NeoForge 1.21.1.
- [x] Byzantine Styles Pack (Wave 1.5 — Colony Addons) — 3 build styles: Byzantine, Shogun, Nile. 12.4M DL, updated May 2026.
- [x] Stylecolonies (Wave 1.5 — Colony Addons) — Official MineColonies blueprint addon by Raycoms. 10+ styles: Steampunk, Frontier, Aquatica, High Magic, Antique, Crimson Keep, etc. 27.6M DL, updated Jul 2026. FairyTale style unavailable (requires Quark, not in pack).
- [x] Create: Colony Logistics (Wave 1.5 — Colony Addons) — bridges MineColonies to Create logistics (belts, chutes, trains). 54K DL, updated Jul 2026.
- [x] ColonyLink (Wave 1.5 — Colony Addons) — connects MineColonies builders to AE2 for resource monitoring and autocrafting. 11K DL, updated Jul 2026.
- [x] Day Counter (Wave 0 — Inventory & UI) — day counter HUD with dawn display and fade. Requires Hud Texts dependency. 5.7M DL, MIT, updated Apr 2026.
- [x] Day Counter config — superseded by Day Counter Plus (batch 28), then restored with Day Counter (batch 29 — see pending item there)

### Added Mods (Jul 2026 batch 15 — Questing Ecosystem)

- [x] FTB Library (Wave 4.5 — Questing Foundation) — core FTB library, 211M+ DL ecosystem. NeoForge 1.21.1.
- [x] FTB Quests (Wave 4.5 — Questing Foundation) — quest book framework with in-game editor. Chapters organized by mod. 211M DL, NeoForge 1.21.1.
- [x] FTB Teams (Wave 4.5 — Questing Foundation) — quest progress tracker. In SP: team of 1, transparent.
- [x] KubeJS (Wave 4.5 — Questing Foundation) — JavaScript scripting engine. Required by MineColonies Questline. Also enables recipe tweaks and event hooks for future pack tuning.
- [x] FTB XMod Compat (Wave 4.5 — Questing Foundation) — bridges FTB Quests with KubeJS, EMI compat layer.
- [x] MineColonies Questline (Wave 4.5 — Quest Addons) — pre-written 40+ quest chain for MineColonies. Requires FTB Quests + KubeJS.
- [x] ExtraQuests (Wave 4.5 — Quest Addons) — additional task/reward types: key-value tracking, progressive tasks, daily/weekly quests, console command rewards. 75K DL, MIT, Modrinth.

### Removed Mods (Jul 2026 batch 15)

- [x] Bountiful — replaced by FTB Quests ecosystem. Procedural bounty boards removed in favor of authored quest book with chapters per mod.

### Skipped After Review (Jul 2026 batch 15)

- [x] Certain Questing Additions — cosmetic UI animation tweaks for FTB Quests. Adds no functionality. Skipped.
- [x] FTB Echoes — superseded by FTB Quests. Two questing systems would conflict. Hologram NPC also clashes with chill living.
- [x] FTB JEI Extras — JEI-specific (pack uses EMI). Skipped.
- [x] FTB Ez Crystals — simplifies AE2 crystal growth. Contradicts 200h+ progression. Skipped.

### Discussion Held (Jul 2026 batch 15)

- [x] EMI vs JEI — keeping EMI. Recipe trees + native Create Ponder outweigh JEI addon ecosystem. FTB Quests works with EMI compat layer.
- [x] FTB Quests adoption — replaced Bountiful. Full ecosystem: 7 mods, 201 total. Pre-written MineColonies questline. ~85 quests to author for other mods.
- [x] Survival + single-player constraints added to AGENTS.md

### Added Mods (Jul 2026 — Research Batch)

- [x] Eating Animations (Wave 0 — Visual & Client QoL) — NeoForge 1.21.1 available as eatinganimation-1.21.0-6.0.1.jar
- [x] Camera Overhaul (Wave 0 — Visual & Client QoL) — v2.0.5 for NeoForge 1.21.0-1.21.1
- [x] Improved Village Placement (Wave 0 — Village & Trading) — v1.2.0 for NeoForge 21.1 — **requires Lithostitched** (undeclared dep, added to GUIDE.md Wave 0.5 dependencies)
- [x] The Magic Mirror (Wave 6 — Building & Decoration) — v1.21.1-1.0.0.1887 for NeoForge
- [x] \[DLS\] Dark Loading Screen (Wave 0 — Visual & Client QoL) — dark loading screen replacement
- [x] Incendium v5.4.4 (Wave 2 — Nether Worldgen) — Nether biome and structure overhaul by Starmute (34M+ DL). 8 new biomes, 9+ structures (Forbidden Castle, Sanctum, Nether Reactor), 25+ custom weapons, Hovering Inferno boss. Modrinth-only (NeoForge 1.21.1 .jar wrapper for the data pack). Alpha/unsupported 1.21.x port — Stardust Labs working on rewrite. Requires new world or Nether reset. Zero dependencies. Documented in GUIDE.md §Wave 2 Nether Worldgen with 5 interdependency notes and session plan update.
- [x] Immersive Machinery v0.2.0 (Wave 2 — Mobility) — rustic utility machines by Conczin. Copperfin submarine (sonar), Tunnel Digger (piloted boring machine), Redstone Sheep (farm automaton), Bamboo Bee (item transport drone). Zero dependencies. Ported to Immersive Aircraft 1.2.0. NeoForge 1.21.1, release status. Documented in GUIDE.md §Wave 2 Mobility with interdependency notes.
- [x] Immersive Armors (Wave 3 — Equipment Magic) — 40+ unique armor sets with custom effects by Conczin (36.4M DL). Wooden (arrow prot), Skeleton (speed, wither variant), Divine (dyeable, blocks 1 attack/min), Heavy (anti-knockback), Slime (bounce), Warrior (berserk), Robe (fire thorns), Steampunk (hostile radar, double jump, no fall damage), Prismarine (spikes, depth strider). All Apotheosis-compatible. Zero dependencies. NeoForge 1.21.1. Documented in GUIDE.md §Wave 3 Equipment with interdependency note.

### Skipped After Review (Jul 2026)

- [x] Dynamic Surroundings — overlaps with AmbientSounds (ambience), Presence Footsteps (footsteps), and Particular Reforged (particles)
- [x] Ambient Environment — redundant with AmbientSounds
- [x] Cool Rain — Fabric-only; Cool Rain Reforged stale; overlap with DS/AmbientSounds
- [x] Continuity — requires Sinytra Connector + FFAPI on NeoForge; Fusion (already a dep) covers connected textures
- [x] Smooth Scrolling Refurbished — Fabric-only, no NeoForge version
- [x] Pocketwatch — Fabric-only, no NeoForge version
- [x] Make Bubbles Pop — no native NeoForge (requires Connector); author planning port but unreleased
- [x] Fadeless — available but skippable; loading fades are a minor annoyance
- [x] Explosive Enhancement — not essential; Camera Overhaul already adds explosion screen shakes

### Added Mods (Jul 2026 batch 5)

- [x] Easy Anvils (Wave 0 — Utility & QoL) — anvil overhaul, requires Puzzles Lib (already in pack)
- [x] Euphoria Patches (Wave 0 — Shaderpack) — optional add-on for Complementary Unbound, standalone on NeoForge
- [x] Euphoria Patches recommended settings added to GUIDE.md (Popular Settings tab + feature table)
- [x] Architectury API installation documented in GUIDE.md Wave 0.5 (cross-loader dependency, was missing from GUIDE despite being in mod list)

### Config Overrides Created (Jul 2026)

- [x] YUNG's Better Caves (config/bettercaves/neoforge-1.21.1/better_cave.json) — cavern_spawn_chance 23% → 30%, gives Crystal Cavern biome more room to breathe
- [x] Waystones (config/waystones-common.toml) — free teleport (enableCosts=false), inventory button on "ANY"
- [x] Better Days (config/betterdays-common.toml) — SEASON mode, seasonDayMinutes=20.0, seasonLatitude=48.0, all time effects off, smooth sleep acceleration
- [x] Dynamic Villager Trades (config/dynamicvillagertraders.properties) — global_randomness=0.7, refresh_delay=1, no_book_duplicates=true
- [x] Loot Journal (config/obscuria/loot_journal-client.toml) — trackItemPickups=true, trackXpPickups=true
- [x] Mekanism (config/Mekanism/general.toml) — allowChunkloading=false (delegated to Chunk Loaders mod)
- [x] Aether (aether-common.toml) — Curios menu=true, no portal frame, starting loot on entry, Patreon message off, freezing/ruined portal data packs off
- [x] Comfortable Campfires (config/comfortable_campfires.json) — Regen I near campfires, Resistance I near soul campfires, 30s duration, 8-block range, 5s tick interval
- [x] Reforged Accurate Block Placement (config/reforged_accurate_block_placement.json) — accurate placement on, fast breaking off, crouch prompt hidden, placement highlight on
- [x] GraveStone Mod (config/gravestone-server.toml) — obituary on, owner-only break, sneak pickup, break pickup, ghost off, friendly ghost on
- [x] Serene Seasons (config/sereneseasons-common.toml) — seasonal_crops=true, out_of_season_crop_behavior=0 (slow growth, no breakage), crop_tooltips=true
- [x] Apotheosis module toggles (config/apotheosis/apotheosis.cfg) — all modules enabled (Deadly, Enchantment, Adventure, Spawner, Potion, Village), Garden disabled, book on first join
- [x] Apotheosis spawner (config/apotheosis/spawner.cfg) — default spawner silk touch level 1, damage 100, no banned mobs
- [ ] Apotheosis remaining configs (adventure.cfg, ench.cfg, enchantments.cfg, potion.cfg, village.cfg) — need test launch to capture defaults, then apply overrides from GUIDE.md section
- [ ] Starcatcher (config/starcatcher-server.toml) — set giveGuideOnFirstJoin=false, verified after test launch

### Removed Mods (Jul 2026)

- [x] Vervada's 3D Plants (Wave 0 — Texture Pack) — removed due to incompatibility issues with other mods
- [x] 3D Ladders (Wave 0 — Texture Pack) — duplicate functionality; RAY's 3D Rails already covers 3D ladders alongside its rail models

### Added Mods (Jul 2026 batch 11 — Visual Polish)

- [x] (Bee's) Fancy Crops (Wave 0 — Texture Pack) — 6.5M downloads, works with Farmer's Delight
- [x] Fire Rekindled (Wave 0 — Texture Pack) — animated fire/lava/water textures, Create mod support
- [x] ~~Rainbow's Foliage (Wave 0 — Texture Pack) — foliage color variation~~ **REMOVED** — no compatible NeoForge version
- [x] ~~Mickey Joe's Flowers (Wave 0 — Texture Pack) — enhanced 3D flowers~~ **REMOVED** — no compatible NeoForge version
- [x] Bushy Pink Petals, Wildflowers & Leaf Litter (Wave 0 — Texture Pack) — 3D ground cover
- [x] Effectual (Wave 0.5 — Visual & Client QoL) — atmospheric particles, compatible with Particular Reforged via config
- [x] ~~Polytone (Wave 0.5 — Dependency) — required by Rainbow's Foliage~~ **REMOVED** — orphaned dep
- [x] TLib (Wave 0.5 — Dependency) — required by Effectual
- [ ] Effectual config tuning: disable cave dust (duplicated by Particular Reforged) after test launch

### Additional Mod Candidates

- [ ] Additional RPG classes (Wizards, Archers, Paladins — if Spell Engine ecosystem returns)

### Mod Review — 8 Candidates (Jul 2026)

- [x] Chunky — **ADDED** (Wave 0 Infrastructure) — zero-risk world pregenerator, complements NoisiumForked + DH
- [x] Physics Mod — skipped (history of Iris/3DSL bugs, 59MB for ragdolls, Chill Rule conflict with collapsing structures)
- [x] Panda's Falling Trees — skipped (user preference, non-essential QoL)
- [x] EnhancedVisuals — skipped (overlaps with Camera Overhaul + Effectual, HUD damage effects vs. Chill Rule)
- [x] Alex's Mobs (Unofficial Port) — skipped (6 months unmaintained, requires unofficial Citadel port; no alternative needed — current mob lineup sufficient)
- [x] JJThunder To The Max — **BLOCKED** (incompatible with all worldgen mods — would break Terralith/Tectonic/BetterEnd/YUNG's)
- [x] C2ME NeoForge — skipped (NoisiumForked + ModernFix cover chunk-gen optimization; seed non-determinism risk with mod worldgen)
- [x] Patrix 32x — skipped (stick with current 16x packs; 32x PBR too heavy, incomplete mob/item coverage)
- [x] Alex's Mobs alternatives researched: Naturalist, Critters & Companions, Friends&Foes, Ecologics — all rejected; current creature lineup sufficient

### Added Mods (Jul 2026 batch 6)

- [x] Hang Glider v21.1.0 (Wave 2 — Mobility) — simple fabric-and-wood glider, Phase 1 accessible exploration aid. Requires Puzzles Lib (already in pack).
- [x] Man of Many Planes 0.2.1 (Wave 2 — Mobility) — Immersive Aircraft addon, two Create-themed aircraft. Requires Immersive Aircraft (already in pack).

### Skipped After Review (Jul 2026 batch 6)

- [x] Automobility — no NeoForge version, only maintained for 1.20/1.20.1. Last updated Jun 2023. Abandoned.

### Added Mods (Jul 2026 batch 8 — Weather Particles)

- [x] Particle Rain v4-beta.10 (Wave 0 — Visual & Client QoL) — replaces default weather with particle effects: angled rain, desert sandstorms, fog, wind. Client-side only, by PigCart (same author as Cosy Critters). MIT license, 16.3M downloads, NeoForge 1.21.1 native.
- [x] Swinging Lanterns v1.5.0.1 (Wave 0 — Visual & Client QoL) — subtle physics-based swaying on lanterns and chains. Client-side only, no dependencies, 250K downloads, NeoForge 1.21.1 native.

### Added Mods (Jul 2026 batch 7 — Ambient Visuals)

- [x] Cosy Critters & Creepy Crawlies v0.3.3 (Wave 0.5 — Visual & Client QoL) — ambient atmospheric animals: birds, bugs, critters. Client-side only, 97KB, all effects configurable. NeoForge 1.21.1 native. By PigCart (GrandArtisan, 709K downloads).
- [x] Foxified Dense Flowers v1.0.0 (Wave 0.5 — Visual & Client QoL) — renders multiple flowers per block in flower fields. NeoForge 1.21.1 native, client-side only. NeoForge port of the original Fabric mod (172K downloads, MIT licensed). By owen233.

### Added Mods (Jul 2026 batch 9 — Dark UI)

- [x] Dark Mode Everywhere v1.4.0 (Wave 0.5 — Visual & Client QoL) — shader-based dark mode for all GUIs, 3 darkness levels, toggleable in-game. Client-side only, MIT license, 36.2M downloads, NeoForge 1.21.1 native. By Buuz135. No dependencies.

### Added Resource Packs (Jul 2026 batch 10 — Font)

- [x] Smooth Font 32x (Wave 0 — Texture Pack) — Faithful 32x-based smooth font, 7.8M downloads, 69KB. Only overrides font textures, safe alongside 16x packs. By apt9002. [CurseForge](https://www.curseforge.com/minecraft/texture-packs/smooth-font)

### Review History — Foliage Resource Packs (Jul 2026)

- [x] ~~Rainbow's Foliage — was blocked by Polytone dep; verified Polytone has NeoForge 1.21.1 but no compatible version of the resource pack for 1.21.1~~ ❌ REMOVED
- [x] Os' Colorful Grasses — 814K downloads but 32x texture conflict with 16x packs, Patreon-gated full version ❌ STILL SKIPPED
- [x] ~~Mickey Joe's Flowers — enhanced 3D flowers, 95K downloads, actively updated~~ ❌ REMOVED — no compatible NeoForge version found
- [x] Bushy Pink Petals, Wildflowers & Leaf Litter — 3D ground cover, 178K downloads, Apache 2.0, actively maintained ✅ ADDED (Jul 2026 batch 11)
- [x] (Bee's) Fancy Crops — 6.5M downloads, Farmer's Delight compatible — too popular to skip ✅ ADDED (Jul 2026 batch 11)
- [x] Retextured Vine — still too narrow in scope (vines only, 22K downloads) ❌ STILL SKIPPED
- [x] LambdaBetterGrass — Fabric-only. No NeoForge version exists. 9.2M downloads but on wrong modloader ❌ STILL SKIPPED

### Mod Review — 11 Candidates (Jul 2026 batch 16)

- [x] Traveler Tool Belt — **ADDED** (Wave 0.5 — Inventory & UI) — tool radial menu, 2→9 slots, Curios integration. By Tiviacz1337. NeoForge 26.1.2.
- [x] Field Guide — **ADDED** (Wave 2 — Field Guide) — spyglass-based creature/plant catalog. Exploration doc mod. By evanbones. NeoForge 26.1.2.
- [x] Create Deep Seas — **REMOVED** (was Wave 2) — requires Sable ecosystem (Create Aeronautics dep). Alpha/Early Access. Iris shader incompatibility concern. Dropped alongside Create Aeronautics.
- [x] Kaleidoscope Tavern — skipped (overlaps with Brewin' And Chewin' FD ecosystem — FD integration more valuable)
- [x] Kaleidoscope World Liquor — skipped (niche drink addon, overlaps with Brewin' And Chewin')
- [x] Kaleidoscope Dimensions Wine — skipped (niche dimension-wine addon, overlaps with Brewin' And Chewin')
- [x] Create: Gears and Tavern — skipped (tavern-themed Create addon, too niche, overlaps with food/drink ecosystem)
- [x] Create Aeronautics — skipped (requires Sable dep, known incompatibilities, existing flight stack sufficient)
- [x] Trek Mod — skipped (150+ structures but YUNG's + Structory already cover variety adequately)
- [x] TarotCards: Remastered — skipped (RNG buff/debuff cards overlap with Apotheosis gear ecosystem)
- [x] Create: Stats & Additions — skipped (uncertain scope, potential overlap with Create Crafts & Additions)

### Added Mods (Jul 2026 batch 17 — Deep Aether)

- [x] Deep Aether 1.1.5.1 (Wave 2 — Dimensions) — Aether dimension expansion: 5 biomes, Skyjade/Stratus gear, new mobs, poison swamps. Aeroblender pre-bundled, TerraBlender already in pack. No config needed.

### Added Mods (Jul 2026 — Countered's Smooth F5)

- [x] Countered's Smooth F5 (Wave 0.5 — Visual & Client QoL) — smooth third-person camera transitions on F5, cinematic, configurable. Client-only, no dependencies, CC0-1.0. NeoForge 1.21.1 (Modrinth). Replaced Seramicx's fork.

### Added Mods (Jul 2026 batch 18 — Twilight's Flavors & Delight)

- [x] Twilight's Flavors & Delight 3.2.2 (Wave 4 — Food & Farming) — Twilight Forest × Farmer's Delight crossover: 35+ FD-style TF foods, 4 TF knives, maze stove, 5 potion effects, trophy dismantling. Dependencies: TF + FD (both in pack). No config needed.

### Added Mods (Jul 2026 batch 19 — Umbral Skies)

- [x] Umbral Skies 1.6.2 (Wave 2 — Dimensions) — Aether × Twilight Forest crossover: Aether-themed TF structures, Aether boss trophies in TF style, TF-material gloves. Dependencies: Aether + TF (both in pack). No config needed.

### Added Mods (Jul 2026 batch 20 — Create: Dragons Plus + Create: Shimmer)

- [x] Create: Dragons Plus 1.11.2b (Wave 1 — Create Addons) — Bulk Fan Processing (coloring, freezing, ending, sanding), Fluid Hatch, Aether Bulk Enchanting. Library/lib for Create addon devs. GPLv3.
- [x] Create: Shimmer 1.2.10 (Wave 1 — Create Addons) — Create × Twilight Forest compat: Shimmer fluid + Bulk Transmutation automates TF item production. Requires Create: Dragons Plus. GPLv3.

### Removed Mods (Jul 2026 batch 21 — BetterEnd replacement)

- [x] BetterEnd: New Dawn — removed. Replaced by End Remastered (portal progression overhaul — 16 custom Ender Eyes instead of End dimension biomes). End overhaul was thin (unofficial continuation, 415K DL). End dimension now uses Nullscape (terrain) + Moog's End Structures for content.

### Added Mods (Jul 2026 batch 21 — End Remastered)

- [x] Controll… End Remastered 6.3.0 (Wave 2 — End Access & Structures) — portal progression overhaul: 16 custom Ender Eyes hidden across vanilla structures and bosses. Find 12+ to open the End. 42.6M DL, LGPLv3. No config needed.

### Added Mods (Jul 2026 batch 22 — UI/Inventory QoL Review)

- [x] Smooth GUI v2.0.0 (Wave 0 — Visual & Client QoL) — GUI open/close slide-in animation, fade-in background overlay + blur. Client-side, no deps, MIT license.
- [x] Immersive Hotbar v1.1.2 (Wave 0 — Visual & Client QoL) — animated hotbar slot transitions on pickup/use/swap, XP bar + level-up effects, tooltip animations. Requires YACL (already in pack). Complements Immersive UI (different animation targets).
- [x] Controlling v29.0.1 (Wave 0 — Inventory & UI) — search keybinds by name, show only conflicting binds, list available keys. Essential for 150+ mod pack. No deps, client-side.
- [x] ClientSort v2.2.2 (Wave 0 — Inventory & UI) — 4-mode sorting (creative/quantity/alphabetical/ID), Fill Stacks, Transfer Matching, customizable button positions. Requires Cloth Config API (already in pack). Keeps Inventory Essentials for drag-to-transfer.
- [x] Leave My Bars Alone v21.11.0 (Wave 0 — Visual & Client QoL) — keeps food/health/armor bars visible while riding mounts. Requires Puzzles Lib (already in pack). Client-side, by Fuzs.
- [x] Immersive Armor HUD v1.0.1 (Wave 0 — Inventory & UI) — armor type icons + durability indicators above armor bar. Works with modded armor. No deps, client-side, 6.9M DL.
- [x] Mod counts updated: Wave 0.5 50→56 (Visual & Client QoL 29→32, Inventory & UI 17→20)

### Added Mods (Jul 2026 batch 23 — Megabuilding)

- [x] Forgematica 0.4.3+mc1.21.11 (Wave 1.1 — Megabuilding) — Litematica unofficial Forge/NeoForge port. Client-side schematic rendering, holographic overlay, material list, layer-by-layer placement. Standalone (no MaLiLib), 1.6M DL, LGPLv3.
- [x] 18 schematics curated from abfielder.com — 4 Phase 1 starters, 3 farms/windmills, 5 factories/warehouses, 1 underground base, 2 castles, 3 bridges/walls/towers. All free, all .litematic format.
- [x] Wave 1.1 section written in GUIDE.md — mod entry, keybinds, usage guide, schematic table (18 rows), interdependence notes, session plan.
- [x] Shader compatibility caveat documented (toggle shaders off while placing schematics if flickering)

### Added Mods (Aug 2026 batch 24 — Mod Review Adoption)

- [x] Create: Protection Pixel (Wave 1 — Create Addons) — steampunk power armor with per-piece active abilities (Plague Helmet, Lancer Helmet, Magnetic Storm, Float Shield, etc.). Brass/alloy tier progression. Powered by Combustion Reactor (blaze rods + water). Requires Create + Kleiders Custom Renderer API. Fills Phase 2 power-armor gap between Mekanism Tools and MekaSuit.
- [x] Laser Bridges & Doors (Wave 6 — Building & Decoration) — laser platforms, bridges, doors, fences powered by redstone. Dye-customizable colors, dynamic length scaling with signal strength. Recipe requires End Crystal (post-End gate). No dependencies. By Mars (42.3M DL across projects).
- [x] Kleiders Custom Renderer API added as Wave 1 dependency (required by Create: Protection Pixel v1.9.0+)
- [x] GUIDE.md updated: Protection Pixel table row + detail section + interdependency note in Wave 1. Laser Bridges & Doors table row + detail section in Wave 6. Session plans updated. Mod counts: Wave 1 18→19 mods, Wave 6 11→12 mods. Total 162→164.

### Skipped After Review (Aug 2026 batch 24)

- [x] Extreme Reactors — redundant with Mekanism fission/fusion reactors (Wave 1). Both are multiblock nuclear reactor systems producing FE/t. Mekanism's chain already gates MekaSuit and antimatter. 1.21.1 NeoForge status uncertain ("it is coming"). "No mod should duplicate another mod's core purpose" rule.
- [x] Timeless and Classics Zero (TACZ) + all addons — redundant with Create: Gunsmithing (Wave 1). Both are firearm systems with crafting, attachments, ammo. TACZ requires unofficial NeoForge port by MUKSC (631K DL, Jul 2026) — "DO NOT REPORT BUGS TO ORIGINAL DEVS." Pack Upgrader needed for gun packs. 5+ moving parts from different maintainers. Create: Gunsmithing is native Create-integrated, steampunk-aesthetic, no port risk.
- [x] TACZ addons (Pack Upgrader, Create Armorer, TTI Gunpack, Cyber Armorer) — all depend on rejected parent mod. Gun packs are .zip data packs, not standalone mods.

### Added Mods (Aug 2026 batch 25 — Territory Conquest)

- [x] Torchmaster (Wave 5 — Combat & Mobs) — Mega Torch suppresses hostile spawns in a 48-block radius; Feral Flare Lantern (24-block) for cave/ruin clearing. NeoForge 1.21.1 native (`torchmaster-neoforge-1.21.1-21.1.9`), no deps. By xalcon.
- [x] KubeJS recipe gate `kubejs/server_scripts/wave5_torchmaster.js` — Mega Torch requires Ignitium Ingot (Cataclysm Ignite drop) + Create brass + blaze rods. Every torch = one earned boss conquest, not a daytime walk. Prevents torch-hoarding loophole.
- [x] Config override `config/torchmaster-common.toml` — mega_torch_radius=48 (village-sized zone), feral_flare_radius=24. [VERIFY] exact keys after first launch.
- [x] GUIDE.md Wave 5: Torchmaster mod row, "Torchmaster — Conquering the Land" section (5-step conquest loop: scout → clear → harvest → craft → plant), config notes, Chill Rule check. Wave 5 session plan Session 7 (First Conquest). Mod counts: Wave 5 7→8 mods, 13→14 total. Grand total 164→165.
- [ ] Verify Torchmaster config key names against generated `torchmaster-common.toml` after test launch; reconcile with documented override.

### Added Mods (Aug 2026 batch 26 — Mod Review)

- [x] EMIffect (Wave 0.5 — Inventory & UI) — status effects in EMI browser with descriptions, sources, and colors. Client-side only, zero deps beyond EMI, MIT license. Complements Status Effect Bars Reforged (HUD display vs EMI lookup).
- [x] Fresh Animations: Extensions (Wave 0 — Texture Packs) — official FA all-in-one bundle by FreshLX: 8 extensions (Objects, Details, Emissive, Creepers, Spiders, Quivers, Classic Horses, Slamacow). Replaces individual Objects addon. 16x, vanilla-friendly. Load above Fresh Animations. 20.5M DL.


### Added Config — Tectonic Ocean Depth (Aug 2026)

- [x] Deeper oceans via Tectonic v3 config: `ocean_depth: -0.35` (45 blocks), `deep_ocean_depth: -0.7` (90 blocks, trench floor at Y=-28 deepslate), `monument_offset: -55`, `min_y: -96`, `ore_fix: true`
- [x] `ore_fix: true` redistributes ores to fill the expanded vertical range between bedrock (Y=-96) and trench floor (Y=-28)
- [x] `min_y: -96` gives 68 blocks of stone/ores below the trench floor — room for Darker Depths cave biomes + YUNG's Better Caves + underground rivers
- [x] Config override `config/tectonic.json` committed — 5 values changed from defaults
- [x] GUIDE.md Wave 2: Tectonic config section added — table with all 5 settings, depth formula, ore generation explanation, verification steps
- [x] Reviewed Deeper Oceans mod alternative — rejected (incompatible with Tectonic; Tectonic's own ocean depth config is more flexible and already integrated)


### Added Mods (Aug 2026 — Starcatcher's Delight)

- [x] Starcatcher's Delight v3.0.1 (Wave 4 — Food & Farming) — Farmer's Delight addon adding fish-related cooking recipes for Starcatcher catches. Fish fillets, sushi, fish stew, fried fish, and legendary dishes (absorption hearts). Quality tiers based on fish rarity. By wdiscute (same author as Starcatcher). NeoForge 1.21.1, 207K DL. Replaces former interdependency note that recommended installing it.
- [x] GUIDE.md updated: Wave 4 table row, interdependency note rewritten as installed-mod note, Starcatcher section integration updated, new detail section added, mod counts (Wave 4 9→10, total 167→168 / 210→211)

### Added Mods (Aug 2026 — Crate Delight)

- [x] Crate Delight v26.07.01 (Wave 4 — Food & Farming) — bulk ingredient storage: crates (apples, berries, eggs, fish) and bags (cocoa, sugar, gunpowder). Same author as Storage Delight (axperty, 30M DL). NeoForge 1.21.1, 2.8M DL. Complements Storage Delight's furniture — crates handle bulk, cabinets handle decorative.
- [x] GUIDE.md updated: table row after Storage Delight, detail section, mod counts (Wave 4 10→11, total 168→169 / 211→212)
- [x] End's Delight (foggyhillside, 30.8M DL) — skipped. Direct overlap with installed Ender's Delight (both add End-themed FD food). Author warns mod is beta/under development with stability caveats. "No duplicate purpose" rule.

### Skipped After Review (Aug 2026 batch 26)

- [x] Advancements Reloaded — redundant: Better Advancements (UI) + Advancement Plaques (popups) cover this; mod warns about conflicts with other advancement mods
- [x] Continuity — already skipped (STATUS.md §304): Fabric-native, requires Sinytra Connector bridge on NeoForge; Fusion covers connected textures natively
- [x] Immersive Hotbar — already in pack since Jul 2026 batch 22

### Removed Mods (Aug 2026 — Wave 2 Restructure)

- [x] Towns & Towers — removed data pack. Replaced by Structory: Towers + YUNG's Bridges + YUNG's Extras for superior structure variety without the Cristel Lib dependency burden
- [x] Cristel Lib — removed dependency (only used by Towns & Towers)

### Added Mods (Aug 2026 — Wave 2 Restructure)

- [x] Structory: Towers v1.0.16 (Wave 2 — Structures) — biome-themed towers, outposts, and landmarks with custom loot. Waystones integration. Standalone .jar mod. **v1.0.17 is broken** on NeoForge (config-loading race condition, crashes with Mod Menu). CurseForge.
- [x] YUNG's Bridges (Wave 2 — Structures) — 15+ naturally generated bridges with biome-specific variants. Requires YUNG's API. Modrinth (NeoForge 1.21.1 builds)
- [x] YUNG's Extras (Wave 2 — Structures) — small vanilla+ additions: improved Desert Wells (rare Wishing Wells), Desert Obelisks, Flame Outposts, ruins, pillars. Requires YUNG's API. Modrinth (NeoForge 1.21.1)
- [x] YUNG's Better End Island (Wave 2 — End Access & Structures) — overhauls the main End island dragon arena: redesigned pillars, gateways, bell-tower summoning, new portal structure. Dragon AI unchanged. Requires YUNG's API. Modrinth (NeoForge 1.21.1)


### Changed Mods (Aug 2026 — Skill Tree Migration)

- [x] Removed Skill Tree (RPG Series) — replaced by Skills Mastery Reimagined. Skill Tree's simple stat-bonus design ("numbers go up") didn't fit the pack's power fantasy; lacked meaningful build decisions for a 200h+ runway.
- [x] Added Skills Mastery Reimagined v1.2.1 (Wave 3 — RPG Progression) — 71-node Pufferfish's Skills tree with tradeoff design: 36 max unlockable nodes, some unique nodes carry negative effects, sound feedback on unlocks. XP from diverse sources: mob kills, mining (2), fishing (5), enchanting (2×level), boss bonuses (Evoker 100 → Dragon 600). Unique attributes: Gravity, Scale, Burning Time, Sneak Speed, Crossbow Projectile Speed, weapon-specific damage. CurseForge (NeoForge 1.21.1).
- [x] Added Pufferfish's Attributes (Wave 3 — New Dependency) — custom attribute registry required by Skills Mastery Reimagined. 35+ dynamic attributes (Stamina, Fortune, Melee/Ranged/Magic Damage, Life Steal, Stealth, Jump, Mining Speed, etc.). By Pufferfish (21.3M DL, same author as Pufferfish's Skills). CurseForge (NeoForge 1.21.1).
- [x] Spell Engine + Ranged Weapon API retained — still required by Relics (RPG Series); dependency notes updated to reflect removal of Skill Tree requirement.
- [x] Keybind updated: Open Skill Tree → `K` (Pufferfish's Skills), was `P` (Skill Tree RPG Series).
- [x] GUIDE.md Wave 3 updated: RPG Progression table, dependency notes, Skill Tree section replaced with full Skills Mastery Reimagined writeup (design philosophy, XP table, unique attributes, weapon synergy), wave summary counts (deps 10→11, total 20→21), overall totals (deps 41→42, total 209→210).

### Wave 3 Equipment Review (Aug 2026)

- [x] Removed Spartan Weaponry Unofficial — replaced by Simply More. Spartan's traditional polearms overlapped with Simply More's more exotic weapon types (Great Katanas, Grandswords, Backhand Blades, Lances, Khopeshs, Daggers, Pernachs, Quarterstaffs, Great Spears, Deer Horns). Simply More integrates natively as a Simply Swords addon and is balanced around Better Combat (already in Wave 5).
- [x] Added Simply More (Wave 3 — Equipment) — 10 new weapon types + 33 unique weapons. Simply Swords addon. Dependencies (Cloth Config + Architectury) already in Wave 0.5 — zero new mods required. CurseForge (NeoForge 1.21.1).
- [x] Skipped Knaves' Needs — 520+ additional swords is overkill. Simply Swords' 60+ weapons already provide sufficient variety. Adding 520 more dilutes drop uniqueness and creates inventory bloat.
- [x] Renamed "Runes" → "Enchanting Runes" (actual mod name). URL unchanged (slug is `runes`).
- [x] Reclassified Curios API from Equipment table to dependency notes. Curios is an API/library (296M DL, by TheIllusiveC4) — provides accessory slot infrastructure used by Relics (RPG Series) and Immersive Armors. By default adds no content except an inventory GUI. Moved to interdependency notes alongside Spell Engine, Ranged Weapon API, and Pufferfish's Attributes.
- [x] Kept Relics (RPG Series) — deep leveling system is the killer feature for 200h+ progression. Alternatives (Artifacts, Lost Trinkets) lack leveling mechanics. More Relics noted as potential future addon.
- [x] Kept Better Combat in Wave 5 — combat animation mod, not a weapon mod. Enhances all weapons, doesn't compete.
- [x] Counts updated: Wave 3 mods 10→9, deps 11→12, total 21 (unchanged). Overall mods 168→167, deps 42→43, total 210 (unchanged).

### Mod Review — 4 Candidates (Aug 2026 batch 27)

- [x] Real Camera — **ADDED** (Wave 0.5 — Visual & Client QoL) — realistic first-person camera: view binds to head/body part with configurable position/rotation, player model renders in FPV. Pin `realcamera-1.21.1-neoforge-0.7.8-beta` (Modrinth, 2026-06-28, client-only, no required deps; Cloth Config optional-recommended and already in pack). 818K DL. Compatible (all in pack): First Person Model, Not Enough Animations, Better Combat, Camera Overhaul; works with Iris + Complementary. Incompatibles (OptiFine, GeckoLib armors, CPM, Epic Fight, TACZ) absent from pack — GeckoLib is present only for Create: Gunsmithing items, Protection Pixel armor uses Kleiders Custom Renderer API. Core purpose distinct from Camera Overhaul (motion feel) and Countered's Smooth F5 (third-person transitions) — no duplication. GUIDE.md: Wave 0.5 table row + detail section; counts 169→170 mods, total 212→213. [VERIFY] Protection Pixel custom-rendered armor + shader rendering after test launch.
- [x] ~~Day Counter Plus — REJECTED (redundant)~~ — **OVERRIDDEN by user instruction** (Aug 2026 batch 28): user requested replacing Day Counter with Day Counter Plus. The redundancy objection stands on the merits, but user instruction supersedes policy — adopted as a straight swap (see batch 28). Original reasoning: duplicates installed Day Counter (Wave 0, Hud Texts dep); Day Counter Plus (4.1K DL, 3lbash3) adds animated rainbow/wave/fade HUD effects.
- [x] Antique Atlas 4 — **REJECTED** (loader incompatibility) — hand-drawn clientside world map, but on NeoForge requires Sinytra Connector + Forgified Fabric API + Surveyor framework. Same rejection grounds as Continuity and Make Bubbles Pop. JourneyMap (+ Integration) and Explorer's Compass already cover mapping, waypoints, and structure finding. Updated 7 months ago; no dedicated native NeoForge build.
- [x] Better Statistics Screen — **REJECTED** (no native NeoForge 1.21.1 build) — 30.3M DL stats-screen overhaul (search/filter/sort, item/mob visual grid, save/share stats files) would slot into Wave 0.5 Inventory & UI, but every MC 1.21.1 build is Fabric/Quilt-only (v3.13.x); NeoForge builds (5.5.x+fn-26.1/26.2) target the newer 26.1/26.2 loader line (incl. 26w14a snapshot). Installing would require Connector + FFAPI bridge — rejected on precedent. Revisit if the pack ever moves to a newer MC line (then: TCDCommons API + betterstats 5.5.x+fn-26.1).
- [ ] Real Camera post-launch verify — F6 toggle, model binding with Protection Pixel armor, shader rendering; capture config keys for GUIDE.md

### Day Counter → Day Counter Plus (Aug 2026 batch 28 — user instruction)

- [x] Day Counter **REMOVED** (Wave 0 — Inventory & UI) — replaced per user instruction. Old mod: dawn-only ActionBar message + optional calendar block/rewards system. Its Hud Texts dependency is now orphaned.
- [x] Day Counter Plus **ADDED** (Wave 0.5 — Inventory & UI) — persistent live "Day X" HUD, fully customizable in-game (position, scale, color, transparency, per-effect toggles, shadow). Pin `daycounterplus-1.0.0-1.21.X-NewForge` (CurseForge/Modrinth, 2025-10-04, 65KB, **zero dependencies** — standalone, no Hud Texts needed). Client + server sides — integrated server satisfies single-player. 4.1K DL. Overrides the batch 27 redundancy rejection per user instruction.
- [x] Hud Texts **REMOVED** (Wave 0.5 dependency) — only required by Day Counter; orphaned after replacement.
- [x] GUIDE.md updated: Wave 0.5 Inventory & UI table row, Day Counter Plus config section (chill settings — fade/outline on, rainbow/wave/growing off), detail section, Mod Count Summary (deps 43→42, total 213→212; mods unchanged at 170).
- [ ] Day Counter Plus config verify — closed: mod removed (batch 29, user instruction — persistent HUD not wanted)

### Day Counter Plus Reverted (Aug 2026 batch 29 — user instruction)

- [x] Day Counter Plus **REMOVED** (Wave 0.5 — Inventory & UI) — user tested it: the always-on HUD element isn't the wanted behavior. Day Counter Plus shows "Day X" permanently on screen and has no "show only at dawn and fade" mode — its Fade effect only animates the text, never hides the counter.
- [x] Day Counter **RESTORED** (Wave 0 — Inventory & UI) — exactly the requested behavior: a brief "Day 42" on the ActionBar at dawn that auto-fades after ~3s and disappears until the next day. Lightweight HUD-only mod (calendar block and rewards exist but stay unused per config). Config: ActionBar only, no sound, no rewards, no week days, no date system.
- [x] Hud Texts **RESTORED** (Wave 0.5 dependency) — required by Day Counter (from V3.4).
- [x] GUIDE.md updated: Wave 0.5 table rows (Day Counter + Hud Texts), Day Counter config section, detail section, Mod Count Summary (deps 42→43, total 212→213; mods unchanged at 170).
- [x] Day Counter config — DONE (batch 31): user supplied the real config keys; override written to `config/day_counter.toml` (actionbar new-day flash only, everything else off)

### DH Generator Mode + Day Counter Config (Aug 2026 batch 31 — user instruction)

- [x] **INTERNAL_SERVER removed** from all Distant Horizons guidance in GUIDE.md (user instruction — does not want INTERNAL_SERVER mode): §2 table row + tip, §5 practical setup revert step, Infrastructure cross-ref. Normal play uses the default generator mode; the Chunky-phase setup (`PRE_EXISTING_ONLY` + Low/Balanced CPU) is unchanged and the "never `SURFACE`/`FEATURES` while Chunky runs" warning stays. Better Caves crash note dropped along with the mode.
- [x] **Day Counter config override created** — `config/day_counter.toml` (mod id `ags_day_counter`; first written as `ags_day_counter.toml`, renamed to `day_counter.toml` in batch 32 — user confirmed the real filename; the original `daycounter-common.toml` guess in the guide was also wrong). Only the new-day notification is enabled: Display `actionbar`, everything else off (`[Sound]`, `[UI.Scoreboard]`/`[UI.Playerlist]`/`[UI.Name]`, `[Date]`, `[Block]`, `[UI."Disabled Feature Text"]` all `false`, rewards zeroed).
- [x] GUIDE.md updated: Day Counter config table rewritten against the real keys, filename corrected, detail section fixed (was inaccurate: "title overlay at dawn with milestone celebrations, no config").

### Day Counter Rewards (Aug 2026 batch 32 — user instruction)

- [x] Config renamed `ags_day_counter.toml` → `day_counter.toml` (user confirmed the mod's actual filename — the user renamed the file in the working tree; rename staged with git).
- [x] **Milestone rewards enabled** in `config/day_counter.toml` `[Rewards.1]`–`[Rewards.5]`: Day 100 (100 EXP, 8 diamond), Day 250 (250 EXP, 2 diamond block), Day 500 (500 EXP, 5 diamond block), Day 1000 (1000 EXP, 4 netherite ingot), Day 2000 (2000 EXP, 2 netherite block) — each with a chat message, `Command` left empty (the mod's example command string looked corrupted). All items vanilla — no pack gating bypassed.
- [x] GUIDE.md updated: filename → `config/day_counter.toml`, milestone rewards table added under the config section, role row + detail section updated.

### Day Counter Reward Messages (Aug 2026 batch 33 — user instruction)

- [x] Milestone reward chat messages in `config/day_counter.toml` rewritten to be snarky/playful (chill-vibe roasting, §-format preserved): Day 100 "haven't finished your first build... looks expensive", Day 250 "villagers have started charging you rent", Day 500 "still on 'easy' difficulty... show-off", Day 1000 "base is still 40% scaffolding... You earned it. Barely.", Day 2000 "we're just renting it. Obviously." No guide/PDF changes (messages live only in the config file).

### Distant Horizons + Chunky Setup (Aug 2026 batch 30)

- [x] GUIDE.md — "Distant Horizons + Chunky — practical setup" added to First Launch Checklist §5 (Chunky — World Pregeneration): Distant Generation ON, `distantGeneratorMode: PRE_EXISTING_ONLY`, DH CPU Load Low/Balanced during Chunky, never `SURFACE`/`FEATURES`/`INTERNAL_SERVER` while Chunky is active; revert to `INTERNAL_SERVER` + Aggressive when Chunky finishes (Better Caves crash protection).
- [x] GUIDE.md — §2 Distant Horizons tip updated with Chunky-phase pointer; Infrastructure → Chunky section cross-references the workflow. No mod or config-file changes — mode switch is a runtime setting, no tracked DH config override needed.

### Added Mods (Aug 2026 batch 34 — Bigger Guns)

- [x] Create Big Cannons: Advanced Technologies (Wave 5 — Combat & Mobs) — CBC addon by dsvv_modding (1.6M DL): 110 new cannon blocks (muzzle brakes, silencers/suppressors, fume extractors, rifled barrels, twin & vertical twin autocannons, heavy autocannons, rocket pods, medium rocket rails) + new ammo (autocannon/heavy autocannon cartridges & caseless rounds, rockets AP/HE/HEI/Flak, medium rockets AP/HE/HEAT/HEF, fluid shells, grapeshot). All tiers (bronze → cast iron → steel → nethersteel) follow the standard CBC casting workflow with cast moulds. Requires Create Big Cannons + Create (both in pack). 1.21.1 NeoForge 0.1.4c (2026-05-02). CurseForge-first, no public GitHub — item IDs verified by extracting the jar's `en_us.json` (namespace `cbc_at`). Installation handled by user (jar downloaded to Downloads).
- [x] GUIDE.md updated: Wave 5 CBC AT mod row + "Create Big Cannons: Advanced Technologies — Bigger Guns" detail section. Mod counts: Wave 5 8→9 mods, 14→15 total. Grand total 173→174 (43 deps, 217 grand total).

### Wave 5 Review (2026-08-13) — Pillar Fit & Conflict/Override/Redundancy Pass

Reviewed all 9 Wave 5 mods (Better Combat, Mutant Monsters, L_Ender's Cataclysm, When Dungeons Arise, Enchantment Descriptions, Create Big Cannons + Advanced Technologies, Cut Through, Torchmaster) against the four pillars and the not-overpowering / not-conflicting / not-overriding / not-redundant rules.

- [x] **Better Combat — KEEP.** Animation/feel layer, no raw stats (no overpowering). Compat with First Person Model, Not Enough Animations, 3D Skin Layers, Real Camera, Camera Overhaul already vetted (batch 27). Native integration: Simply Swords / Simply More (balanced around it), Create: Gunsmithing (built-in optional compat). No override (Epic Fight absent), no redundancy.
- [x] **Mutant Monsters — KEEP, 1 [VERIFY].** Mid-game boss-lite drops (Hulk Hammer, Mutant Skeleton Armor) sit under the Apotheosis/MekaSuit ceiling — not overpowering. Spawn weight configurable for Phase-1 friendliness (already documented). ⚠ **[VERIFY] Mutant Creeper + Creeper Minion use custom explosion logic reported to bypass `doMobGriefing`; No Creeper Grief datapack is pinned 1.20→1.20.1 and its coverage of mutant explosions is unverified** — check at test launch; mitigation already in pack: Torchmaster suppresses natural spawns (incl. mutants) near base.
- [x] **L_Ender's Cataclysm — KEEP (wave anchor).** All 5 bosses opt-in (summon/arena), gated: Ender Guardian requires End (End Remastered's 16 eyes → naturally Phase 3), gear under MekaSuit ceiling. Needs GeckoLib (already in pack). No conflict with Apotheosis (scripted bosses unaffected by affixes). Replaces AdventureZ (Fabric-only). Ignitium Ingot gate is the wave's signature loop.
- [x] **When Dungeons Arise — KEEP (redundancy monitor).** NeoForge 1.21.1 confirmed (2.1.68, CurseForge). Closest redundancy call: YUNG's Better Dungeons is also roguelike — but WDA's niche is combat gauntlets with depth-scaling loot + Explorer's Compass integration feeding the Apotheosis chase; prior structure removals (Additional Structures, Trek Mod) were generic packs. Monitor at playtesting; no removal now.
- [x] **Enchantment Descriptions — KEEP.** Info transparency supporting Wave 3 Apotheosis enchant overhaul. Complementary to EMI (browser info vs tooltips/enchanting GUI). Apotheosis custom enchants self-describe.
- [x] **Create Big Cannons + Ritchie's Projectile Library — KEEP.** Role split vs Create: Gunsmithing affirmed: personal firearms (Wave 1) vs base-defense artillery (Wave 5) — consistent with TACZ rejection rationale (that was handheld firearms). Tier-gated (bronze/steel, Phase 2). Block-breaking shells are player-directed.
- [x] **CBC: Advanced Technologies — KEEP.** Pure extension of CBC (same casting workflow, bronze→nethersteel); no override/redundancy by construction.
- [x] **Cut Through — KEEP.** Client-side QoL; serves Chill Rule (no grass-farm destruction mid-swing). No conflicts.
- [x] **Torchmaster — KEEP.** Chill-living payoff gated behind conquest (KubeJS: Ignitium Ingot + Create brass + blaze rods). Not overpowering — each torch costs a Cataclysm boss; blocks natural spawns only (WDA dungeons, Cataclysm arenas, spawners unaffected). [VERIFY] items already tracked: config key names, KubeJS item IDs.
- [x] **Doc fix — GUIDE.md stale references:** removed Spartan Weaponry Unofficial still mentioned in Wave 3 weapon synergy (line 2154) and Wave 5 Better Combat integration (line 2792) → both updated to Simply More.
- [ ] **New [VERIFY] (test launch):** No Creeper Grief datapack (PK V.2.0.3, pinned 1.20→1.20.1) coverage of Mutant Creeper / Creeper Minion explosions; if uncovered, decide: accept risk (Torchmaster mitigates near-base), tune Mutant spawn weight, or find a 1.21.1 anti-grief replacement.

### Removed Mod (2026-08-13) — Mutant Monsters (Wave 5)

User decision, same session as the Wave 5 review — supersedes the "KEEP, 1 [VERIFY]" verdict above.

- [x] **Mutant Monsters REMOVED** from Wave 5 — reasons: (1) the only non-voluntary combat content in the wave (natural night spawns vs everything else opt-in/gated — violates the easy-ramp pillar); (2) Mutant Creeper + Creeper Minion use custom explosion logic reported to bypass `doMobGriefing` (Chill Rule risk — the No Creeper Grief [VERIFY] above is now moot); (3) the mini-boss niche is already covered by Apotheosis Deadly elites + WDA Easy tier; (4) drops (Hulk Hammer, Mutant Skeleton Armor, Creeper Minion) partially overlapped the Wave 3 gear chase.
- [x] **Puzzles Lib retained** — still required by Hang Glider, Leave My Bars Alone, and Easy Anvils. Not orphaned.
- [x] GUIDE.md updated: Wave 5 table row, "Mutant Monsters — Boss Variants" section, session plan (Session 2 removed, renumbered), Mod Count Summary (Wave 5 9→8 mods, 6→5 deps, 15→13 total; overall 174→173 mods, 216 total), Phase 2 progression mention, Easy Anvils + Hang Glider Puzzles Lib attribution notes.
- [x] TODO.md: No Creeper Grief mutant-coverage [VERIFY] item removed (moot).
- [x] DRIFTWOOD-GUIDE.pdf regenerated.