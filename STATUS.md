# STATUS — Minecraft Modpack

## Completed

### V3 Documentation (MODLIST-V3.md) — Full V3 Mod List Written
- [x] All mods pinned to their exact NeoForge 1.21.1 versions
- [x] Waves 0-7 fully documented with mod tables, dependency tables, and config sections
- [x] Interdependency notes for every wave noting cross-mod interactions

### Wave 0 — Foundation (~42 mods)
- [x] Performance: Sodium, Iris, Lithium, Distant Horizons, Continuity, ModernFix, ImmediatelyFast, Entity Culling, Dynamic FPS, NoisiumForked
- [x] Visual/Client QoL: LambDynamicLights, BetterF3, Sound Physics Remastered, AmbientSounds, The Immersive Music Mod, Immersive UI, Traveler's Titles, Better Modlist
- [x] Inventory/UI: JEI, Jade, Jade Addons, Xaero's Minimap + World Map, AppleSkin, Mouse Tweaks, Harvest With Ease, Fancy Toasts, Obscure Tooltips, Loot Journal, Reliable Advancements, Polymorph
- [x] Storage & Travel: Sophisticated Storage, Sophisticated Backpacks, Waystones, GraveStone Mod
- [x] Dependencies: Cloth Config, Architectury API, YACL, Curios API, CreativeCore, OctoLib (ShatterLib), Fragmentum, M.R.U
- [x] Added Cobweb, Sinytra Connector, Forgified Fabric API, YUNG's API to New Dependencies

### Wave 1 — Tech, Colony & Chunk Loading (~13 mods)
- [x] Core Tech: Create, Mekanism, AE2
- [x] Ores: Skniro's Nether & End Ores
- [x] Colony Automation: MineColonies, Structurize, MultiPiston, BlockUI, Domum Ornamentum
- [x] Chunk Loading: Chunk Loaders, SuperMartijn642's Config Lib, SuperMartijn642's Core Lib
- [x] All interdependency notes written (Create→Mekanism→AE2 integration, colony tech gating)

### Wave 2 — Exploration (~23 mods)
- [x] Worldgen: Terralith, Tectonic, BetterEnd NeoForge, Moog's End Structures
- [x] Structures: YUNG's full collection (10 mods), Structory, Towns & Towers
- [x] Dimensions: The Aether, Deeper and Darker, Twilight Forest
- [x] Navigation: Explorer's Compass
- [x] Dependencies: BCLib, WorldWeaver, WunderLib, Moog's Structure Lib

### Wave 3 — Equipment Magic & RPG (~7 mods)
- [x] Apotheosis fully configured (5 modules, socketing, reforging costs, enchants, spawners, Deadly module enabled)
- [x] Simply Swords, Relics RPG, Runes
- [x] Skill Tree (RPG Series), Pufferfish's Skills
- [x] Compat notes: Apotheosis affixes apply to Simply Swords weapons and Twilight Forest bosses

### Wave 4 — Food, Farming & Comfort (~6 mods)
- [x] Farmer's Delight, Brewin' And Chewin'
- [x] Storage Delight, More Delight, My Nether's Delight, Ocean's Delight
- [x] All interdependency notes written (crop harvest with Harvest With Ease, food storage with AE2)

### Wave 4.5 — Quests (1 mod)
- [x] Bountiful 8.0.0-beta.2 selected
- [x] Bountiful generates fetch/kill/exploration quests and automatically includes items from all installed mods
- [x] Compat notes for Bountiful + Farmer's Delight + Simply Swords + Apotheosis

### Wave 5 — Combat (~7 mods)
- [x] Better Combat, Mutant Monsters, L_Ender's Cataclysm, When Dungeons Arise, Enchantment Descriptions
- [x] Create Big Cannons + Ritchie's Projectile Library
- [x] All mods configured at defaults

### Wave 6 — Building & Decoration (8 mods)
- [x] Chipped, Supplementaries, Macaw's Bridges/Doors/Roofs/Windows, Building Wands, Handcrafted

### Wave 7 — Space Exploration (~1 mod)
- [x] Stellaris 1.4.23 as core space mod
- [x] Dependency: Architectury API (already in Wave 0)

## Completed Decisions

### Design choices
- [x] Removed Regions Unexplored (FPS concerns with Terralith/Tectonic overlap, no global-tag structure compat)
- [x] Removed Additional Structures (Towns & Towers + Structory cover structures adequately)
- [x] Removed Nullscape (BetterEnd's biome overhaul replaces Nullscape's End transformation)
- [x] Removed Spell Engine, Spell Power (Pufferfish's Skills + Skill Tree cover RPG without a separate magic casting framework)
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
- [x] Added BlazeandCave's Advancements Pack data pack for 1000+ tracked milestones across 16 tabs — pairs with Reliable Advancements (UI) for a complete advancement experience
- [x] Noisium → NoisiumForked (Noisium archived on 1.21.1; NoisiumForked is active fork, same functionality)
- [x] Constant Music → The Immersive Music Mod (Constant Music forced 2min fade limit with 5 songs; Immersive Music Mod has 147 songs, biome/structure-aware, no dead air gap override)
- [x] Right Click Harvest → Harvest With Ease (RCH archived, Fabric-only; HWE is active, NeoForge native, supports all tools)
- [x] Chat Heads → removed (multiplayer-only feature, unnecessary for singleplayer pack)
- [x] Better Advancements → Reliable Advancements (BA stale on 1.21.1 since Oct 2024; RA is active fork with scrollable tabs, search, auto-refresh, updated Apr 2026)
- [x] V3 docs rendered to PDF: MODLIST-V3.pdf and GETTING-STARTED-V3.pdf in rendered/
- [x] Removed Obscure API from V3 mod list (not available on NeoForge — Obscure Tooltips and Loot Journal depend on Fragmentum instead)
- [x] Fixed OctoLib URL: modrinth.com/mod/octo-lib → modrinth.com/mod/shatterbyte-lib (slug is shatterbyte-lib, not octo-lib)
- [x] Moved all 9 YUNG's mod URLs from CurseForge to Modrinth (CurseForge lacks NeoForge 1.21.1 builds; Modrinth has them for all YUNG's mods)

## Pending

### Testing
- [ ] Test launch with Waves 0-7
- [ ] Verify no mod conflicts
- [ ] Cross-wave integration testing
- [ ] Config tuning per mod

### Data Packs
- [x] BlazeandCave's Advancements Pack selected (1000+ advancements, data pack for 1.21.x)
- [ ] No Creeper Grief data pack

### Shaderpacks
- [x] Complementary Unbound selected and documented in MODLIST-V3.md

### Additional Mod Candidates
- [ ] Additional RPG classes (Wizards, Archers, Paladins — if Spell Engine ecosystem returns)
