# STATUS — Minecraft Modpack

## Completed

### V3 Documentation (MODLIST.md) — Full V3 Mod List Written
- [x] All mods pinned to their exact NeoForge 1.21.1 versions
- [x] Waves 0-7 fully documented with mod tables, dependency tables, and config sections
- [x] Interdependency notes for every wave noting cross-mod interactions

### Wave 0 — Foundation (~65 mods incl. deps)
- [x] Performance: Sodium, Iris, Lithium, Distant Horizons, ModernFix, ImmediatelyFast, Entity Culling, Dynamic FPS, NoisiumForked
- [x] Visual/Client QoL: LambDynamicLights, BetterF3, Sound Physics Remastered, AmbientSounds, The Immersive Music Mod, Immersive UI, Traveler's Titles, Better Modlist, First Person Model, 3D Skin Layers, Better Safe Bed, Presence Footsteps, Particular Reforged, Wakes Reforged
- [x] Inventory/UI: JEI, Jade, Jade Addons, JourneyMap + Integration, AppleSkin, Mouse Tweaks, Inventory Essentials, Fancy Toasts, Tooltip Overhaul, Loot Journal, Reliable Advancements, Polymorph, Shulker Box Tooltip, Item Borders
- [x] Storage & Travel: Sophisticated Storage, Sophisticated Backpacks, Waystones, GraveStone Mod
- [x] Dependencies: Cloth Config, Architectury API, YACL, Curios API, CreativeCore, OctoLib (ShatterLib), Fragmentum, M.R.U, Balm
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

### Wave 2 — Exploration (~30 mods)
- [x] Worldgen: Terralith, Tectonic, BetterEnd NeoForge, Moog's End Structures
- [x] Structures: YUNG's full collection (10 mods), Structory, Towns & Towers
- [x] Dimensions: The Aether, Deeper and Darker, Twilight Forest
- [x] Navigation: Explorer's Compass
- [x] Mobility: Immersive Aircraft, Small Ships
- [x] Dependencies: BCLib, WorldWeaver, WunderLib, Moog's Structure Lib, Cristel Lib (Towns & Towers)

### Wave 2.5 — Schematic Building (2 mods)
- [x] Forgematica + MaFgLib dep selected
- [x] Tutorial written in GETTING-STARTED.md covering schematic sources, keybinds, Easy Place Mode, Material List, Schematic Verifier, single-layer mode
- [x] Interdependency notes: pairs with Building Wands (Wave 6), client-side only, shader compatibility

### Wave 3 — Equipment Magic & RPG (~18 mods incl. 10 deps)
- [x] Apotheosis fully configured (5 modules, socketing, reforging costs, enchants, spawners, Deadly module enabled)
- [x] Dependencies added: Placebo, Apothic Attributes, Apothic-Enchanting, Apothic-Spawners, Patchouli
- [x] Simply Swords, Too Many Bows, Spartan Weaponry Unofficial, Relics RPG, Runes
- [x] Simply Swords deps: Simply Tooltips, Fzzy Config
- [x] Relics RPG / Skill Tree deps: Ranged Weapon API, Spell Engine
- [x] Runes dep: Bundle API
- [x] Skill Tree (RPG Series), Pufferfish's Skills
- [x] Compat notes: Apotheosis affixes apply to Simply Swords weapons and Twilight Forest bosses

### Wave 4 — Food, Farming & Comfort (~8 mods)
- [x] Farmer's Delight, Brewin' And Chewin'
- [x] Storage Delight, My Nether's Delight, Ocean's Delight, Ender's Delight (moved from Wave 2)
- [x] More Delight updated to 26.05.20a-1.21-neoforge (was stale pin 3.5.0)
- [x] Delight Lib 26.05.18-1.21-neoforge added as required dep for More Delight
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

### Wave 6 — Building & Decoration (10 mods + 3 deps)
- [x] Rechiseled (replaces Chipped), Supplementaries (Modrinth), Macaw's Bridges/Doors/Roofs/Windows, Building Wands, Handcrafted
- [x] Rechiseled addons: Rechiseled: Create, Rechiseled: Applied Energistics 2
- [x] Dependencies: Moonlight Library (Supplementaries), Resourceful Lib (Handcrafted), Fusion (Rechiseled)

### Wave 7 — Space Exploration (~1 mod)
- [x] Stellaris 1.4.23 as core space mod
- [x] Dependency: Potentials API
- [x] ~~TFMG-Stellaris Compatibility~~ removed (not needed, Stellaris has native fuel system)

## Completed Decisions

### Design choices
- [x] Switched all mod links from Modrinth to CurseForge (July 2026)
- [x] Updated installation instructions to use GDLauncher instead of CurseForge App (July 2026)
- [x] Removed TFMG-Stellaris Compatibility (not on CurseForge, Stellaris has native fuel system)
- [x] Added Advanced Finders + Advanced Chimneys to Wave 1 (Mekanism addons for ore detection and factory smoke)
- [x] Added ForgeEndertech as dependency for Advanced Finders and Advanced Chimneys
- [x] Removed Regions Unexplored (FPS concerns with Terralith/Tectonic overlap, no global-tag structure compat)
- [x] Removed Additional Structures (Towns & Towers + Structory cover structures adequately)
- [x] Removed Nullscape (BetterEnd's biome overhaul replaces Nullscape's End transformation)
- [x] Removed Spell Power (Pufferfish's Skills + Skill Tree cover RPG); Spell Engine retained as mandatory dependency of Relics RPG and Skill Tree
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
- [x] Better Advancements → Reliable Advancements (BA stale on 1.21.1 since Oct 2024; RA is active fork with scrollable tabs, search, auto-refresh, updated Apr 2026)
- [x] V1/V2 files deleted, V3 files renamed (MODLIST-V3.md -> MODLIST.md, GETTING-STARTED-V3.md -> GETTING-STARTED.md)
- [x] PDFs rendered via cmarker Typst package: MODLIST.pdf (434 KB) and GETTING-STARTED.pdf (1.08 MB) in rendered/
- [x] Removed Obscure API from V3 mod list (not available on NeoForge — Obscure Tooltips and Loot Journal depend on Fragmentum instead)
- [x] Fixed OctoLib URL: modrinth.com/mod/octo-lib → modrinth.com/mod/shatterbyte-lib (slug is shatterbyte-lib, not octo-lib)
- [x] Moved all 9 YUNG's mod URLs from CurseForge to Modrinth (CurseForge lacks NeoForge 1.21.1 builds; Modrinth has them for all YUNG's mods)
- [x] More Delight version pin fixed: 3.5.0 → 26.05.20a-1.21-neoforge (3.5.0 doesn't exist; mod uses date-based versioning)
- [x] Added Delight Lib as Wave 4 dependency (required by More Delight v26.04.30+)
- [x] Switched all Wave 4 mod URLs to Modrinth

## Completed Decisions

- [x] Terralith URL switched from CurseForge to Modrinth (NeoForge 1.21.1 available)
- [x] Tectonic URL switched from CurseForge to Modrinth (NeoForge 1.21.1 available)
- [x] Better Days added to Wave 0 (day/night length control, chill QoL)
- [x] Serene Seasons added to Wave 2 (seasonal colors, crop impact ON, temperature damage OFF)
- [x] Better Days config: 2x day length, time effects disabled (compat with Serene Seasons crop system)
- [x] MineColonies + 4 deps (Structurize, MultiPiston, BlockUI, Domum Ornamentum) confirmed CurseForge-only — not on Modrinth for NeoForge 1.21.1

## Pending

### Testing
- [ ] Test launch with Waves 0-7
- [ ] Verify no mod conflicts
- [ ] Cross-wave integration testing
- [ ] Config tuning per mod
### Data Packs

- [x] Day Counter mod added to Wave 0 — replaces typewriter day counter (data pack format was incompatible with 1.21.1)
- [x] BlazeandCave's Advancements Pack removed (advancement bloat, conflicts with Fancy Toasts progression clarity)
- [x] No Creeper Grief data pack

### Shaderpacks
- [x] Complementary Unbound selected and documented in MODLIST-V3.md

### PDF Generator
- [x] Typst 0.15.0 installed via winget
- [x] cmarker 0.1.10 package for inline markdown-to-Typst rendering
- [x] generate-pdf.ps1 with dependency check, auto-install, and fallback winget path
- [x] Both PDFs compile cleanly: MODLIST.pdf, GETTING-STARTED.pdf

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
- [x] Forgematica + MaFgLib dep (Wave 2.5 — Schematic Building)
- [x] Cherished Worlds v10.1.1 (Wave 0 — Visual & Client QoL)

### Added Mods (Jul 2026 batch 2)
- [x] Particular Reforged (Wave 0 — replaces Subtle Effects, same category)
- [x] First Person Model + Not Enough Animations dep (Wave 0 — Visual & Client QoL)
- [x] Presence Footsteps (Wave 0 — Visual & Client QoL)
- [x] Wakes Reforged (Wave 0 — Visual & Client QoL)
- [x] Shulker Box Tooltip (Wave 0 — Inventory & UI)
- [x] Item Borders (Wave 0 — Inventory & UI)
- [x] Smooth Font 32x (Wave 0 — Texture Pack)
- [x] Vervada's 3D Plants (Wave 0 — Texture Pack)
- [x] Vanilla Refresh → Typewriter Day Counter → Day Counter mod (Wave 0 — Visual & Client QoL)

### Removed Mods (Jul 2026 batch 2)
- [x] Obscure Tooltips — removed (Tooltip Overhaul retained as sole tooltip mod)
- [x] Subtle Effects — removed (replaced by Particular Reforged)

### Config Overrides (Jul 2026)
- [x] YUNG's Better Caves: cavern_layer spawn chance 23% → 30% (cavern_spawn_chance in better_cave.json) — gives Crystal Cavern biome more room to breathe

### Skipped After Review
- [x] Spelunkery — too much overlap with YUNG's Better Caves + Mekanism tool progression
- [x] Galosphere — Darker Depths chosen as the cave content mod instead; Galosphere gems are orphan content
- [x] Environmental — biome conflict with Terralith

### Added Mods (Jul 2026 batch 3)
- [x] 3D Skin Layers (Wave 0 — Visual & Client QoL)
- [x] Better Safe Bed (Wave 0 — Visual & Client QoL)
- [x] Neo Bee Fix (Wave 4 — Food & Farming)
- [x] Small Ships (Wave 2 — Mobility)
- [x] Create: Power Grid (Wave 1 — Create Addons)
- [x] TFMG Energy Converter (Wave 1 — Create Addons)

### Additional Mod Candidates
- [ ] Additional RPG classes (Wizards, Archers, Paladins — if Spell Engine ecosystem returns)
