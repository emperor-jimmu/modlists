# STATUS — Minecraft Modpack

## Completed

### V3 Documentation (MODLIST.md) — Full V3 Mod List Written
- [x] All mods pinned to their exact NeoForge 1.21.1 versions
- [x] Waves 0-7 fully documented with mod tables, dependency tables, and config sections
- [x] Interdependency notes for every wave noting cross-mod interactions

### Wave 0 — Foundation (~65 mods incl. deps)
- [x] Performance: Sodium, Iris, Lithium, Distant Horizons, ModernFix, ImmediatelyFast, Entity Culling, Dynamic FPS, NoisiumForked
- [x] Visual/Client QoL: LambDynamicLights, BetterF3, Sound Physics Remastered, AmbientSounds, The Immersive Music Mod, Immersive UI, Status Effect Bars Reforged, Traveler's Titles, Better Modlist, First Person Model, 3D Skin Layers, Better Safe Bed, Presence Footsteps, Particular Reforged, Wakes Reforged, Cosy Critters, Foxified Dense Flowers
- [x] Inventory/UI: EMI, Jade, Jade Addons, JourneyMap + Integration, AppleSkin, Inventory Essentials, Advancement Plaques, Tooltip Overhaul, Loot Journal, Better Advancements, Polymorph+, Shulker Box Tooltip, Item Borders
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

### Wave 2 — Exploration (~31 mods)
- [x] Worldgen: Terralith, Tectonic, BetterEnd NeoForge, Moog's End Structures
- [x] Structures: YUNG's full collection (10 mods), Structory, Towns & Towers
- [x] Dimensions: The Aether, Deeper and Darker, Twilight Forest
- [x] Navigation: Explorer's Compass
- [x] Mobility: Immersive Aircraft, Small Ships
- [x] Aquatic: Hybrid Aquatic (marine creatures, diving armor, corals)
- [x] Dependencies: BCLib, WorldWeaver, WunderLib, Moog's Structure Lib, Cristel Lib (Towns & Towers)

### Wave 3 — Equipment Magic & RPG (~18 mods incl. 10 deps)
- [x] Apotheosis fully configured (5 modules, socketing, reforging costs, enchants, spawners, Deadly module enabled)
- [x] Dependencies added: Placebo, Apothic Attributes, Apothic-Enchanting, Apothic-Spawners, Patchouli
- [x] Simply Swords, Too Many Bows, Spartan Weaponry Unofficial, Relics RPG, Runes
- [x] Simply Swords deps: Simply Tooltips, Fzzy Config
- [x] Relics RPG / Skill Tree deps: Ranged Weapon API, Spell Engine
- [x] Runes dep: Bundle API
- [x] Skill Tree (RPG Series), Pufferfish's Skills
- [x] Compat notes: Apotheosis affixes apply to Simply Swords weapons and Twilight Forest bosses

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

## Completed Decisions

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

## Completed Decisions

- [x] Terralith URL switched from CurseForge to Modrinth (NeoForge 1.21.1 available)
- [x] Tectonic URL switched from CurseForge to Modrinth (NeoForge 1.21.1 available)
- [x] Better Days added to Wave 0 (day/night length control, chill QoL)
- [x] Serene Seasons added to Wave 2 (seasonal colors, crop impact ON, temperature damage OFF)
- [x] Better Days config: 2x day length, time effects disabled (compat with Serene Seasons crop system)
- [x] MineColonies + 4 deps (Structurize, MultiPiston, BlockUI, Domum Ornamentum) confirmed CurseForge-only — not on Modrinth for NeoForge 1.21.1

## Completed — Recent Changes

- [x] Replaced GDLauncher with XMCL across all docs (MODLIST.md, GETTING-STARTED.md, STATUS.md) — July 2026

## Pending

### Testing
- [ ] Test launch with Waves 0-7 — generate default configs for all mods
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
- [x] Chunky (Forge/NeoForge) (Wave 0 — Infrastructure) — world pregenerator, `/chunky` commands, zero dependencies, complements NoisiumForked and Distant Horizons. Documented in GETTING-STARTED.md as one-time setup step.

### Added Mods (Jul 2026 batch 13)
- [x] Mekanism Tools (Wave 1 — Mekanism Addons) — armor/shields/tools/paxels for Osmium, Bronze, Refined Obsidian, Refined Glowstone, Steel. Fills gear progression gap between netherite and MekaSuit. Official Mekanism addon. Apotheosis affixes apply to its gear.

### Added Mods (Jul 2026 batch 14 — MineColonies Addons)
- [x] JadeColonies (Wave 0 — Inventory & UI) — Jade tooltips for MineColonies huts, workers, and Domum Ornamentum blocks. 5.4M DL, NeoForge 1.21.1.
- [x] Byzantine Styles Pack (Wave 1.5 — Colony Addons) — 3 build styles: Byzantine, Shogun, Nile. 12.4M DL, updated May 2026.
- [x] Stylecolonies (Wave 1.5 — Colony Addons) — Official MineColonies blueprint addon by Raycoms. 10+ styles: Steampunk, Frontier, Aquatica, High Magic, Antique, Crimson Keep, etc. 27.6M DL, updated Jul 2026. FairyTale style unavailable (requires Quark, not in pack).
- [x] Create: Colony Logistics (Wave 1.5 — Colony Addons) — bridges MineColonies to Create logistics (belts, chutes, trains). 54K DL, updated Jul 2026.
- [x] ColonyLink (Wave 1.5 — Colony Addons) — connects MineColonies builders to AE2 for resource monitoring and autocrafting. 11K DL, updated Jul 2026.
- [x] Day Counter (Wave 0 — Inventory & UI) — day counter HUD with dawn display and fade. Requires Hud Texts dependency. 5.7M DL, MIT, updated Apr 2026.

### Skipped After Review (Jul 2026 batch 14)
- [x] MineColonies Questline — requires FTB Quests + KubeJS (neither in pack)
- [x] ExtraQuests — requires FTB Quests
- [x] Certain Questing Additions — requires FTB Quests
- [x] FTB JEI Extras — JEI-specific (pack uses EMI)
- [x] FTB XMod Compat — only needed with FTB mods (none adopted)
- [x] FTB Ez Crystals — simplifies AE2 crystal growth, contradicts 200h+ progression philosophy

### Discussion Held (Jul 2026 batch 14)
- [ ] FTB Echoes — lore-driven milestone hologram system. Pros: immersive, built-in shop, stage-gating. Cons: requires authoring 30-50 custom echo definitions from scratch, persistent NPC may conflict with chill living. Decision: deferred, Bountiful remains the questing system.

### Added Mods (Jul 2026 — Research Batch)
- [x] Eating Animations (Wave 0 — Visual & Client QoL) — NeoForge 1.21.1 available as eatinganimation-1.21.0-6.0.1.jar
- [x] Camera Overhaul (Wave 0 — Visual & Client QoL) — v2.0.5 for NeoForge 1.21.0-1.21.1
- [x] Improved Village Placement (Wave 0 — Village & Trading) — v1.2.0 for NeoForge 21.1 — **requires Lithostitched** (undeclared dep, added to GUIDE.md Wave 0.5 dependencies)
- [x] The Magic Mirror (Wave 6 — Building & Decoration) — v1.21.1-1.0.0.1887 for NeoForge
- [x] \[DLS\] Dark Loading Screen (Wave 0 — Visual & Client QoL) — dark loading screen replacement

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
