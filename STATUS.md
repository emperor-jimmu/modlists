# STATUS — Minecraft Modpack

## Completed

### Wave 3 — Equipment Magic, Loot & RPG Progression
- [x] Design doc written: `docs/superpowers/specs/wave-3-equipment-magic.md`
- [x] Version pins confirmed via Modrinth API
  - Skill Tree (RPG Series) 1.4.4+1.21.1-fabric
  - Pufferfish's Skills 0.18.0
  - Simply Swords 1.63.0-1.21.1
  - Savaru's Affixology 2.1.6
  - Relics RPG 1.3.0+1.21.1-fabric
  - Runes 1.2.1+1.21.1-fabric
  - Spell Engine 1.9.9+1.21.1-fabric
  - Spell Power 1.4.6+1.21.1-fabric
  - Trinkets 3.10.0
- [x] Updated MODLIST-V2.md with full Wave 3 section
- [x] Updated GETTING-STARTED-V2.md with Wave 3 tutorial
- [x] Updated design doc with Skill Tree integration
- [x] Added Complementary Unbound as recommended shaderpack in MODLIST-V2.md

### Wave 2 — Exploration (World, Dimensions & Dungeons)
- [x] Added: Lithostitched 1.7.11, YUNG's API 5.1.6, Terralith 2.6.2, Tectonic 3.0.22
- [x] Added: YUNG's Better Dungeons 5.1.4, Explorer's Compass 2.6.0
- [x] Added: The Aether 1.5.11, Deeper and Darker 1.3.3-plus-b, BetterEnd 21.0.11, BCLib 21.0.13
- [x] Updated AGENTS.md with Lithostitched requirement

### Wave 4 — Food, Farming & Comfort
- [x] Design doc written: `docs/superpowers/specs/wave-4-food-farming-comfort.md`
- [x] Version pins confirmed via Modrinth API
  - Farm & Charm 1.1.22
  - Bakery 2.1.6
  - Brewery 2.1.9
  - HerbalBrews 1.1.3
  - Candlelight 2.1.12
- [x] Updated MODLIST-V2.md with full Wave 4 section
- [x] Updated GETTING-STARTED-V2.md with Wave 4 tutorial

### Wave 0 — Foundation (QoL, Performance, Storage, Comfort)
- [x] Determined complete Wave 0 mod set
- [x] Documented in MODLIST-V2.md
- [x] Added QoL/Performance polish pass: ModernFix, ImmediatelyFast, C2ME, Krypton, Entity Culling, Dynamic FPS, Noisium, Reese's Sodium Options, LambDynamicLights, BetterF3, Sound Physics Remastered, Ambient Leaves, Mouse Tweaks, Chat Heads, Simple Harvest, Jade Addons
- [x] Added chill music: AmbientSounds + Constant Music
- [x] Updated GETTING-STARTED-V2.md with Wave 0 QoL tutorial sections

### Wave 1 — Tech (Tech Reborn)
- [x] Replaced Oritech with Tech Reborn 5.11.19
- [x] Added Reborn Core as new dependency
- [x] Kept Mythic Metals, Clutter, Alloy Forgery as cross-processing compat
- [x] Removed owo lib, Athena, Geckolib from Wave 1 deps (moved to Wave 2 where needed)
- [x] Updated all integration references across design docs

### Wave 5 — Tech Expansion
- [x] Design doc written: `docs/superpowers/specs/wave-5-tech-expansion.md`
- [x] Version pins confirmed via Modrinth API
  - Logistics: Automation 0.7.4+mc1.21.1.fabric
  - Powah ReFabric 5.1.0
- [x] Updated MODLIST-V2.md with full Wave 5 section
- [x] Updated GETTING-STARTED-V2.md with Wave 5 tutorial
- [x] Updated all Oritech references to Tech Reborn across all docs

### Wave 6 — Combat & Mobs
- [x] Design doc written: `docs/superpowers/specs/wave-6-combat-mobs.md`
- [x] Version pins confirmed via Modrinth API
  - Better Combat 2.3.2+1.21.1-fabric
  - Mutant Monsters 21.1.1-1.21.1-Fabric
  - AdventureZ 1.5.0+1.21.1
  - Champions 1.0.6v-1.21.1
  - Enchantment Descriptions 21.1.10
- [x] Updated MODLIST-V2.md with full Wave 6 section
- [x] Updated GETTING-STARTED-V2.md with Wave 6 tutorial
- [x] Removed Better Combat from Pending (now included)

### Wave 7 — World Expansion & Exploration
- [x] Design doc written: `docs/superpowers/specs/wave-7-world-expansion.md`
- [x] Version pins confirmed via Modrinth API
  - YUNG's Better Nether Fortresses 3.1.5, Ocean Monuments 4.1.2, Jungle Temples 3.1.2, Mineshafts 5.1.1, End Island 3.1.2, Strongholds 5.1.3, Witch Huts 4.1.1, Desert Temples 4.1.5, Better Caves 3.1.4
  - Regions Unexplored 0.6.1
  - Repurposed Structures 7.5.21
  - Additional Structures 5.1.0
  - The Bumblezone 7.15.0
- [x] Updated MODLIST-V2.md with full Wave 7 section
- [x] Updated GETTING-STARTED-V2.md with Wave 7 tutorial

### Wave 4.5 — Quests
- [x] Researched quest mods for NeoForge 1.21.1 (Bountiful, DarkQuesting, Questlog, Better Advancements)
- [x] Selected Bountiful 8.0.0-beta.2 — procedural bounty boards, zero quest authoring needed
- [x] Updated MODLIST-V3.md with Wave 4.5 section
- [x] Updated mod count summary

### AGENTS.md
- [x] Updated vision pillars to include RPG-style levels/skills
- [x] Updated technical standards to Fabric 1.21.1, Java 21
- [x] Added V2 file references (MODLIST-V2.md, GETTING-STARTED-V2.md)

### V3 NeoForge Conversion (MODLIST-V3.md)
- [x] Created MODLIST-V3.md with full mod list (V1 → V3 migration)
- [x] Wave 7 renamed to "Space Exploration" with Stellaris as core mod
- [x] Added GETTING-STARTED-V3.md with Wave 7 tutorial
- [x] Completed V3 modlist gap audit — achievements/questing, progression tracking, extended item info, UI improvements
- [x] Added missing QoL/UI mods to Wave 0: Immersive UI, Traveler's Titles, Better Modlist, Fancy Toasts, Better Advancements, Obscure Tooltips, Loot Journal, Polymorph
- [x] Added new dependencies: OctoLib, Obscure API, Fragmentum
- [x] Decided: vanilla advancements + Fancy Toasts for progression guidance (no FTB Quests)

## Pending (all config details documented in MODLIST-V3.md)

### Testing
- Test launch with Waves 0–7
- Verify no mod conflicts
- Cross-wave integration testing (Tech Reborn + Logistics + Powah, Let's Do automated farming, loot in Terralith biomes)
- Config tuning per mod

### Testing
- Test launch with Waves 0–7
- Verify no mod conflicts
- Cross-wave integration testing (Tech Reborn + Logistics + Powah, Let's Do automated farming, loot in Terralith biomes)
- Config tuning per mod

### Data Packs
- No Creeper Grief data pack

### Shaderpacks
- [x] Complementary Unbound selected and documented in MODLIST-V2.md

### Additional Mod Candidates
- Additional RPG classes (Wizards, Archers, Paladins — Spell Engine ecosystem)
- Jewelry (RPG Series) — optional for Savaru's Affixology
