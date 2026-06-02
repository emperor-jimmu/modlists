# Elder Wilds Installation Guide

Target build: Skyrim Special Edition / Anniversary Edition runtime `1.6.1170` via Steam

This guide turns the planning files into an install order that can actually be followed in `Mod Organizer 2`.

This is not a "install every mod in `mods-checklist.md`" dump. Several sections are still active research areas, so this guide marks those branch points explicitly as `Choice Required` instead of pretending they are already locked.

## How To Use This Guide

- Follow the steps in order.
- Create the exact separators named in this guide.
- Install one mod at a time inside each separator unless a subsection is clearly a tight dependency cluster.
- When this guide says `Choice Required`, pick one path before continuing.
- Do not install every candidate from open sections just because it appears in `mods-checklist.md`.
- Keep generated files in dedicated output mods. Do not let them pile up in `Overwrite`.

## Step 1. Prepare Skyrim And Tool Folders

1. Install Steam and Skyrim SE/AE outside `Program Files`, ideally under a shallow path such as `C:\Games\Steam\steamapps\common\Skyrim Special Edition`.
2. Confirm the game is on runtime `1.6.1170`.
3. Launch the vanilla launcher once so Skyrim creates its registry entries and INI files.
4. Create a separate modding path such as:
   - `C:\Modding`
   - `C:\Modding\Tools`
5. Install the core tooling into `C:\Modding\Tools`:
   - `Mod Organizer 2`
   - `BethINI Pie`
   - `LOOT`
   - `xEdit`
   - `xLODGen`
   - `DynDOLOD` / `TexGen`
   - `Wrye Bash`
   - `Synthesis`
   - `BodySlide and Outfit Studio`
   - `Pandora Behaviour Engine Plus`
   - `Cathedral Assets Optimizer` only if a specific mod later needs it

Every named tool and mod in this guide has a download reference in `Appendix A` at the end of the file so the install steps stay readable.

## Step 2. Set Up Mod Organizer 2

1. Launch `Mod Organizer 2`.
2. Create a `global instance`.
3. Select the Steam install of `Skyrim Special Edition`.
4. Name the instance something obvious like `Elder Wilds 1.6.1170`.
5. If prompted for profile settings, tick every box so the profile keeps its own INIs.
6. Connect MO2 to Nexus and allow it to handle `nxm` links.
7. In `Settings > Workarounds`, tick `Enable archives parsing (experimental)`.
8. Create a clean working profile before installing mods.

## Step 3. Create The Separator Layout

Create these separators in MO2 in this order.

1. `01 Foundations and Compatibility`
2. `02 Modern Graphics`
3. `03 Animations and Movement`
4. `04 Third-Person Gameplay`
5. `05 Expanded Systems`
6. `06 Modernized UI`
7. `07 Immersive Scale and World Feel`
8. `08 World Content`
9. `09 NPCs and Creatures`
10. `10 Audio and Feedback`
11. `11 Survival, Difficulty, and Balance`
12. `12 Targeted Bugfix Mods`
13. `13 Legacy of the Dragonborn`
14. `14 Modlist Curation Rules and Testing Plan`
15. `15 Performance and Technical Workflow`
16. `Patches`
17. `Output`

Use the subsection names from `separators.md` as visual sub-blocks inside these main separators when the section grows large enough to need them.

## Step 4. Create Output Mods

Create these empty mods in MO2 before registering tools:

- `xEdit Output`
- `SKSE Output`
- `BodySlide Output`
- `Pandora Output`
- `Grass Cache Output`
- `Terrain LOD Output`
- `TexGen Output`
- `DynDOLOD Output`
- `Occlusion Output`
- `Synthesis Output`
- `Bashed Patch Output`

Place them under the `Output` separator.

## Step 5. Register Tools In MO2

Open MO2's executable editor and register the following entries:

| Tool                   | Executable                          | Arguments                                                             | Output Handling               | Download URL                                                 |
|------------------------|-------------------------------------|-----------------------------------------------------------------------|-------------------------------|--------------------------------------------------------------|
| `BethINI Pie`          | `Bethini.exe`                       | none                                                                  | none                          | <https://www.nexusmods.com/site/mods/631>                    |
| `LOOT`                 | `LOOT.exe`                          | `--game="Skyrim Special Edition"`                                     | none                          | <https://github.com/loot/loot/releases>                      |
| `SKSE Skyrim Launcher` | `skse64_loader.exe`                 | none                                                                  | `SKSE Output`                 | <https://www.nexusmods.com/skyrimspecialedition/mods/30379>  |
| `xEdit`                | `xEdit.exe`                         | `-SSE -IKnowWhatImDoing -AllowMasterFilesEdit`                        | `xEdit Output`                | <https://github.com/TES5Edit/TES5Edit/releases>              |
| `xEditQuickAutoClean`  | `xEditQuickAutoClean.exe`           | `-SSE`                                                                | `xEdit Output`                | <https://github.com/TES5Edit/TES5Edit/releases>              |
| `xLODGen`              | `xLODGenx64.exe`                    | `-lodgen -SSE -o:"DriveLetter:\Modding\Tools\xLODGen\xLODGen_Output"` | `Terrain LOD Output`          | <https://dyndolod.info/Downloads>                            |
| `TexGen`               | `TexGen64.exe`                      | `-SSE`                                                                | `TexGen Output`               | <https://dyndolod.info/Downloads>                            |
| `DynDOLOD`             | `DynDOLODx64.exe`                   | `-SSE`                                                                | `DynDOLOD Output`             | <https://www.nexusmods.com/skyrimspecialedition/mods/68518>  |
| `Wrye Bash`            | `Wrye Bash.exe`                     | none                                                                  | `Bashed Patch Output` if used | <https://github.com/wrye-bash/wrye-bash/releases>            |
| `Synthesis`            | `Synthesis.exe`                     | none                                                                  | `Synthesis Output`            | <https://github.com/Mutagen-Modding/Synthesis/releases>      |
| `BodySlide`            | `BodySlide x64.exe`                 | none                                                                  | `BodySlide Output`            | <https://www.nexusmods.com/skyrimspecialedition/mods/201>    |
| `Pandora`              | `Pandora Behaviour Engine Plus.exe` | none                                                                  | `Pandora Output`              | <https://www.nexusmods.com/skyrimspecialedition/mods/133232> |

If `LOOT` fails through MO2, switch its arguments to `--single-process --game="Skyrim Special Edition"`.

## Step 6. Set The Working Rules Before Installing Mods

This build uses the per-mod `xEdit` method, not a giant late-stage megapatch.

For every new mod or tight mod cluster:

1. Install it and place it where you think it belongs.
2. Run `LOOT` if plugin order changed materially. `LOOT` is an iterative tool in this workflow, not a one-time end step.
3. If LOOT explicitly flags a plugin for cleaning, run `xEditQuickAutoClean` on that plugin only.
4. Run `xEdit` conflict review.
5. Try load-order adjustments before building a patch.
6. If a real conflict remains, build a small focused ESL-flagged patch and place it under the `Patches` separator.
7. Build small `ModGroups` for intentional conflicts instead of one giant catch-all group.
8. Re-open `xEdit` and confirm only intentional conflicts remain hidden.

Rules:

- `Overwrite` is a failure state.
- `Bashed Patch` owns leveled-list style merging and Bash-tag-driven imports only.
- `Synthesis` owns broad rule-based patching, not record-by-record judgment calls.
- Per-pair `xEdit` patches own the actual conflict resolution work.

## Step 7. Install The Core Runtime And Foundation Layer

Create or use separator `01 Foundations and Compatibility`.

Install these baseline mods first:

- `SKSE64`
- `Address Library for SKSE Plugins`
- `SSE Engine Fixes`
- `Scrambled Bugs`
- `powerofthree's Tweaks`
- `powerofthree's Papyrus Extender`
- `PapyrusUtil`
- `MCM Helper`
- `JContainers`
- `Keyword Item Distributor (KID)`
- `Spell Perk Item Distributor (SPID)`
- `Base Object Swapper (BOS)`
- `Crash Logger SSE AE VR`
- `RaceMenu SE`
- `Dual Casting Fix`
- `Andrealphus' Papyrus Functions`
- `ConsoleUtilSSE NG`
- `SkyPatcher`

### Choice Required

- `Unofficial Skyrim Special Edition Patch - USSEP`
    - Ownership is still unresolved between section `01` and section `12`.
    - If you want the traditional modern baseline, install it here and treat it as part of the foundation.
    - If you do not want it, commit to a non-USSEP build now and expect more manual patching later.
- `Backported Extended ESL Support`
    - Research exists, but it is not a locked baseline pick yet.
    - Install only if a later chosen mod explicitly needs it.
- `SSE Display Tweaks`
    - Mentioned in planning, but not yet locked in the checklist.
    - Treat it as optional unless the display stack later clearly wants it.

Stop here and do a clean boot test before moving on.

## Step 8. Install The UI Foundation Early

Create or use separator `06 Modernized UI`.

Install these locked or strongly preferred baseline picks early because later systems depend on them:

- `SkyUI`
- `UIExtensions`
- `Oathvein UI`
- `SkyHUD`
- `TrueHUD`
- `Flat World Map Framework (FWMF)`
- `Skyrim and Solstheim Paper Maps by Mirhayasu for FWMF`
- `Compass Navigation Overhaul`
- `Constructible Object Custom Keyword System`
- `Sovngarde - Mist's Font Replacer`
- `Better Dialogue Controls`
- `Better MessageBox Controls`
- `Convenient Reading UI - SE`

### Choice Required

- UI visual branch:
    - Locked preference: `Oathvein UI`
    - Alternative: `Norden UI`
    - Do not install both.
- Inventory helper path:
    - preferred first-pass: `moreHUD Inventory Edition`
    - optional companion: `moreHUD SE`
    - narrower alternative: `SkyUI Item Card Fixes`
    - organizational alternative: `Aura's Inventory Tweaks`
- Dialogue presentation path:
    - baseline control fix: `Better Dialogue Controls`
    - presentation alternatives: `Dialogue Interface ReShaped` or `Convenient Dialogue UI - SE`
- Controller extras:
    - baseline: `Skyrim SE Controller Interface Fix`
    - optional expansion: `Gamepad Plus Plus`
    - optional quick-access layer: `Wheeler - Quick Action Wheel Of Skyrim`
- High-resolution support:
    - install `Complete Widescreen Fix for Vanilla and SkyUI` if the display setup actually needs it

Install `UIExtensions` now even if it feels auxiliary, because later follower and utility mods depend on it.

## Step 9. Install The Graphics Framework And Visual Baseline

Create or use separator `02 Modern Graphics`.

### Install Now

Under `02.01 Community Shaders Core Setup` and `02.02 Community Shaders Add-Ons And Required Features`:

- `Community Shaders`
- `Screen Space Shadows - Community Shaders`
- `Grass Lighting - Community Shaders`
- `Water Effects - Community Shaders`
- `Wetness Effects - Community Shaders`
- `Terrain Shadows - Community Shaders`
- `Subsurface Scattering - Community Shaders`
- `Skylighting - Community Shaders`
- `Screen Space Global Illumination (SSGI)`

Under `02.04 Texture Overhauls By Material Type` and `02.05 Mesh Improvements And Parallax Support` install the strongest non-controversial baseline pieces:

- `Skyland AIO`
- `RUSTIC CLUTTER COLLECTION - Special Edition`
- `RUSTIC CLOTHING - Special Edition`
- `Static Mesh Improvement Mod - SMIM`
- `Enhanced Rocks and Mountains - Complex Material and PBR`
- `Enhanced Rocks and Mountains - Fix and Addon`
- `Nordic Snow`
- `Simplicity of Snow`
- `FYX - Water Mesh Optimization`
- `Natural Waterfalls`
- `Rally's Water Foam`

Under `02.13 Character, Skin, And Creature Visuals` install the current strongest baseline:

- `CBBE NSFW - Caliente's Beautiful Bodies Enhancer`
- `CBBE 3BA (3BBB)`
- `Highly Improved Male Body Overhaul - HIMBO`
- `BnP - Female Skin`
- `BnP - Male Skin`
- `FitnessGoal CBBE 3BA 3BBB Bodyslide Preset for Modest Players`
- `BodySlide and Outfit Studio`
- `KS Hairdos SSE`
- `Eyes Nouveaux`
- `AURORA S.E.`
- `Bellyaches Animal and Creature Pack SSE`
- `CC's HD Dwemer Automatons - Remastered`
- `Skeleton Replacer HD - SE`

Under `02.12 LOD Generation And Distant Detail`, install the LOD resources now so later generation has its dependencies ready:

- `DynDOLOD Resources SE 3`
- `DynDOLOD DLL NG`
- `HD LODs Textures SE`
- `xLODGen Resource - SSE Terrain Tamriel`

### Choice Required

- Lighting branch:
    - `Lux` + `Lux Orbis` + `Lux Via` + `Lux CS`
    - or `Relighting Skyrim SE` + `Luminosity Lighting Overhaul - The Cathedral Concept`
    - or `Enhanced Lights and FX` + `ELFX Shadows`
    - or lighter `Community Shaders`-first path with `CS Light`
- Weather branch:
    - `NAT.CS III`
    - or `Azurite Weathers III - Enhanced` + `Azurite III CS`
    - or `RAID Weathers` + `Raid Weathers CS`
- Water branch:
    - preferred current comparison: `A Water Made For CS in mind`
    - alternative branch: `Simplicity of Sea - Water Color and Transparency Tweaks` + `Simplicity of Sea - Water Mod with ENB and Community Shaders Displacement Textures`
- Roads branch:
    - safer baseline: `Blended Roads - Light Plugin (ESL)`
    - unresolved heavier branch: `Northern Roads` if chosen later with dedicated patch planning
- Tree branch:
    - `Happy Little Trees`
    - or `Traverse the Ulvenwald - 3.3 - Trees and Forests of Skyrim`
    - do not install both as if they were complementary full tree replacements
- Grass branch:
    - quality-heavy route: `Skoglendi - A Grass Mod` + `Flora Orientalis` + `Folkvangr - Grass and Landscape Overhaul` + `Waterplants` + `Vinland Grass Patch`
    - lighter alternatives remain open research
- PBR / parallax coverage level:
    - choose how deep to go with `PBR Hub`, `Complex Parallax Materials`, `PGPatcher`, `Auto Parallax`, and the PBR texture packs before installing them all
- Optional performance helper:
    - `Skyrim Upscaler - DLSS FSR2 XeSS` only if hardware and display goals justify it
- Optional mesh expansion:
    - `High Poly Project` remains a deliberate branch, not a default lock

Do not finalize LOD generation yet. Only install the resources and frameworks here.

## Step 10. Build Bodies Before Armor Proliferates

Run `BodySlide` after the body stack is installed and before broad armor expansion.

1. Build the chosen `CBBE 3BA` preset.
2. Send the output to `BodySlide Output`.
3. Enable `BodySlide Output`.
4. Rebuild later any time the body, skin, or outfit stack changes.

## Step 11. Install Animations And Movement

Create or use separator `03 Animations and Movement`.

### Install Now

- `Pandora Behaviour Engine Plus`
- `XP32 Maximum Skeleton Special Extended - XPMSSE`
- `CBPC - Physics with Collisions for SSE and VR`
- `Open Animation Replacer`
- `SkyParkour v3 - Procedural Parkour and Climbing Framework (SPPF)`
- `Beam Walking Assist`
- `Comprehensive First Person Animation Overhaul - CFPAO`
- `Conditional Armor Type Animations`
- `EVG Conditional Idles`
- `EVG Animated Traversal`
- `Immersive Interactions - Animated Actions`
- `Precision - Accurate Melee Collisions`
- `SCAR - Skyrim Combos AI Revolution`
- `IFrame Generator RE (AE Support)`

### Choice Required

- Locomotion set:
    - preferred current male route: `Leviathan Animations II - Male Idle Walk And Run`
    - preferred current female route: `Leviathan Animations II - Female Idle Walk And Run`
    - alternative route: `Vanargand Animations II - Male Idle Walk And Run`
- Female idle flavor:
    - `Goetia Animations - Female Idle Walk And Run`
    - `Goetia Animations - Conditional Shuffled Idle for Pretty Female idles`
- Optional traversal / flavor add-ons:
    - `RaySense - Jumping over obstacles` + `Open Animation Replacer - RaySense`
    - `Go to bed`
- Creature animation add-ons:
    - `New Creature Animation - Giant`
    - `New Creature Animation - Falmer`
    - `New Creature Animation - Werewolf`
- Off-baseline combat branch:
    - `MCO ADXP - Modern Movement Combat Overhaul`
    - `Animation Motion Revolution`
    - `Payload Interpreter`
    - do not install this branch casually; it changes the combat framework direction

After any real animation stack change, run `Pandora` and send the output to `Pandora Output`.

## Step 12. Install Third-Person Gameplay And Camera

Create or use separator `04 Third-Person Gameplay`.

### Install Now

- `SmoothCam`
- `True Directional Movement - Modernized Third Person Gameplay`
- `Better Third Person Selection - BTPS`
- `Improved Camera SE`

### Choice Required

- Camera support:
    - baseline path: `SmoothCam`
    - optional companion: `Customizable Camera`
- Dodge path:
    - preferred current route: `TK Dodge RE - Script Free` plus `TK Dodge SE` meshes
    - alternative: no dedicated dodge mod yet
- Horse path:
    - `Convenient Horses`
    - or `Immersive Horses`
- Ranged physics / newer experiments:
    - `Ricochet - Arrow Physics Framework`
    - `Dodge for all`
    - treat both as deliberate extras, not assumed baseline locks

## Step 13. Install Expanded Systems And Item Ecosystem

Create or use separator `05 Expanded Systems`.

### Install Now

- `Aetherius - A Race Overhaul`
- `Evenstar - Minimalistic Standing Stones of Skyrim`
- `Adamant - A Perk Overhaul`
- `Mysticism - A Magic Overhaul`
- `Apothecary - An Alchemy Overhaul`
- `Starfrost - A Survival Overhaul`
- `Gourmet - A Cooking Overhaul`
- `Ars Metallica - Smithing Enhancement`
- `Trade and Barter - Skyrim Special Edition`
- `Pilgrim - A Religion Overhaul`
- `Skyrim Reputation`
- `Nether's Follower Framework`
- `Realistic AI Detection (RAID)`
- `Relationship Dialogue Overhaul - RDO SE`
- `Amorous Adventures` (clean variant)
- `Marriage Mod - To Have And To Hold`
- `Serana Dialogue Add-On`

For the item / artifact / wardrobe side, install the current preferred baseline:

- `Reliquary of Myth - Artifacts of Skyrim`
- `ArteFakes - Unique Artifacts Replacer`
- `Konahrik's Accoutrements`
- `Unique Items Tweaks - Improved Miscellaneous Artifacts`
- `Armor and Clothing Extension`
- `Common Clothes and Armors`
- `Cloaks of Skyrim`
- `Knapsack Backpacks SE`
- `NordwarUA Total Armor and Weapon Compilation`
- `Immersive Weapons`
- `Immersive Armors`

### Choice Required

- Alternate start path:
    - `Alternate Perspective - Alternate Start`
    - `Alternate Start - Live Another Life`
    - `Skyrim Unbound Reborn (Alternate Start)`
    - `Realm of Lorkhan - Freeform Alternate Start`
- Roleplay extras:
    - `Dealing with Backstories`
    - `Take Notes - Journal of the Dragonborn SSE`
- Race / standing stone alternatives:
    - `Aetherius` vs `Morningstar` vs `Imperious`
    - `Evenstar` vs `Andromeda`
- Perk / magic alternatives:
    - `Adamant` vs `Vokrii` vs `Ordinator`
    - `Mysticism` vs `Odin` vs `Apocalypse`
- Alchemy / crafting alternatives:
    - `Apothecary` vs `Complete Alchemy and Cooking Overhaul`
    - `Ars Metallica` vs `Complete Crafting Overhaul Remastered`
    - `Honed Metal` as optional service layer
- Economy path:
    - current lean: `Trade and Barter`
    - alternative progression route: `Open World Loot` or `MorrowLoot Ultimate`
- Religion path:
    - `Pilgrim` vs `Trua` vs `Wintersun`
- Follower framework path:
    - current preference: `Nether's Follower Framework`
    - alternatives: `EFF - Extensible Follower Framework` or `Amazing Follower Tweaks SE`

## Step 14. Install Survival, Combat Balance, And Targeted Bugfixes

Create or use separators `11 Survival, Difficulty, and Balance` and `12 Targeted Bugfix Mods`.

### Install Now

Under `11 Survival, Difficulty, and Balance`:

- `Arena - An Encounter Zone Overhaul`
- `Simply Balanced`
- `Stress and Fear - A Dynamic Sanity System`

Under `12 Targeted Bugfix Mods`, install the strongest current baseline bugfixes:

- `Actor Limit Fix`
- `Equip Enchantment Fix`
- `NPC AI Process Position Fix - NG`
- `Simple Offence Suppression`
- `Fuz Ro D-oh - Silent Voice`

### Choice Required

- Combat balance branch:
    - current restrained route: `Simply Balanced`
    - alternative overhaul route: `Blade and Blunt - A Combat Overhaul`
- Enemy overhaul branch:
    - current restrained default: no full enemy-overhaul lock yet
    - heavier option: `Skyrim Revamped - Complete Enemy Overhaul`
- Death / defeat branch:
    - `Shadow of Skyrim - Nemesis and Alternative Death System`
    - or skip defeat mechanics for the first stable pass
- Additional bugfixes to evaluate case by case:
    - `Barter Limit Fix`
    - `Better Jumping SE`
    - `I'm Walkin' Here NG with Pets`
    - `LeveledList Crash Fix`
    - `Mum's the Word NG`
    - `Regional Save Names`
    - `Bard Instrumentals Mostly - Sing Rarely`

## Step 15. Install World Feel, Cities, Content, NPCs, And Audio

This is the least locked part of the current plan. Use separators `07`, `08`, `09`, and `10`, but do not treat every listed candidate as cumulative.

### 15.1 Separator `07 Immersive Scale and World Feel`

Current strongest first-pass picks:

- `Time Flies SE`
- `Carriage and Ferry Travel Overhaul (Formerly Complete Fast Travel Overhaul)`
- `Extended Encounters`
- `Sounds of Skyrim Complete SE`
- `Ancient Land`
- `Animallica SE - Skyrim Wildlife Overhaul`
- `Simply Darker Nights (SSE)`

### Choice Required

- Time system:
    - `Time Flies SE`
    - or `Dynamic Timescale - Remade`
- City atmosphere layer:
    - `Spaghetti's Cities - AIO`
    - or `Dawn of Skyrim (Director's Cut) SE`
    - or `JK's Skyrim`
    - do not install all three as if they were a single stack
- Encounter path:
    - `Extended Encounters`
    - or `Radiance Encounters`
    - `Immersive Patrols SE AE` can accompany one encounter mod, not replace that choice
- Wildlife pressure path:
    - `Animallica`
    - `One With Nature`
    - `Savage Skyrim`
    - choose deliberately and patch overlaps

### 15.2 Separator `08 World Content`

Current strongest first-pass candidates:

- `The Great Cities - Minor Cities and Towns SSE Edition`
- full `Cities of the North` series
- `Settlements Expanded`
- `JK's Whiterun Outskirts`
- `The Great City of Solitude SSE`
- `The Great Village of Old Hroldan SSE`
- `Forgotten Dungeons (SSE)`
- `Hidden Hideouts of Skyrim SE`
- `Sidequests of Skyrim`
- `Missives`
- `Leaf Rest`
- `Simple Fishing Overhaul - Animations and Improved Quest Dialogue`
- `Hunterborn SE`

Optional `Missives` support if that route wins over `Sidequests of Skyrim` or sits alongside it cleanly:

- `Missives - Worldspace Additions` if the final list includes supported new lands / worldspaces and you want boards to respect that wider footprint
- `Missives - Notes Retexture` if you want the note-handout visuals cleaned up

### Choice Required

- Major city / town overhaul policy:
    - `The Great Cities` family
    - `Cities of the North` family
    - `JK's` city expansion pieces
    - `Capital Whiterun Expansion`
    - these can be combined in places, but only with explicit patch planning
- Dungeon expansion level:
    - lighter: `Forgotten Dungeons`
    - broader: `Hammet's Dungeon Pack`, `Skyrim Underground SSE`, `Dungeons - Revisited`
- Quest/worldspace content depth:
    - pick only the new-content mods that fit the final tone and maintenance budget
    - do not install every large quest/worldspace mod by default
    - candidates include `Moon and Star`, `Wyrmstooth`, `The Forgotten City`, `Sirenroot`, `VIGILANT SE`, `Beyond Skyrim - Bruma SE`, `Beyond Reach`, `The Wheels of Lull - Unwound Edition`, `Falskaar`
- Player-home/buildable settlement policy:
    - keep this narrow; 1 to 2 picks is enough
    - candidates include `Leaf Rest`, `Heljarchen Farm`, `LC_Build Your Noble House`, `Windstad Mine`, `Blackthorn`
- Fishing / hunting path:
    - `Simple Fishing Overhaul` + `Hunterborn SE`
    - or lighter `Streamlined Fishing`

### 15.3 Separator `09 NPCs and Creatures`

Current strongest first-pass baseline:

- `Northbourne NPCs of Whiterun Hold`
- `The Men of Winter SSE`
- `AI Overhaul SSE`
- `Lawless - A Bandit Overhaul`
- `Fluffworks`
- `Dragons Use Thu'um - Dragon AI Enhancements and New Fully Voiced Shouts`
- `Crowded Streets`
- `True Hunter - fewer animals per square meter`

### Choice Required

- NPC face route:
    - `Northbourne` family
    - `Pandorable's NPCs`
    - `High Poly True to Vanilla NPC Overhaul`
    - `DIbella's Blessing`
    - use one coherent appearance strategy and patch against `AI Overhaul`
- Dragon route:
    - `Dragons Use Thu'um`
    - optionally with `Dragon War - A Dragon Overhaul`
    - do not keep `Splendor - Dragon Variants` if `Dragon War` is chosen; they conflict
- Draugr route:
    - `Haugbui`
    - `The Restless Dead`
    - `Draugr Upgrades and Improvements`
    - pick a lane instead of stacking every draugr overhaul
- Wildlife route:
    - `Pelagius's Wildlife AI - Skypatcher`
    - or `True Hunter`
    - avoid using both as if they were complementary defaults
- Population route:
    - `Crowded Streets`
    - `Travellers of Skyrim`
    - `Populated Skyrim Reborn SSE`
    - `MINPCs (More Immersive NPCs)`
    - select cautiously for performance and city patching reasons

### 15.4 Separator `10 Audio and Feedback`

Current strongest baseline direction:

- `Chapter II - Jeremy Soule Inspired Music (by Dreyma Music)`
- `Audio Overhaul for Skyrim SE`

### Choice Required

- Music stack:
    - baseline lean: `Chapter II`
    - alternatives: `Yggdrasil Music and SoundFX Overhaul SE`, `Nyghtfall - Dark Fantasy Music`, `Nordenhamr - Viking Music`
    - do not install multiple full music overhauls casually
- Broad sound stack:
    - `Audio Overhaul for Skyrim SE`
    - optional comparison: `Immersive Sounds - Compendium`
- Scoped sound add-ons:
    - `Regional Sounds Expansion`
    - `Airgetlam -Modern Magic Sounds Rework-`
    - `Airgetlam - Shouts SFX -`
    - `A Bow's Whisper - Bow sound overhaul`
    - `Cataphract - Armored Footsteps Rework`
    - `Sanguine Symphony Realistic Heavy Armor Sounds`
    - keep these curated, not maximalist

## Step 16. Install Legacy Of The Dragonborn Late

Create or use separator `13 Legacy of the Dragonborn`.

Install:

- `Legacy of the Dragonborn SSE`
- `Legacy of the Dragonborn - The Curator's Companion`
- `Legacy of the Dragonborn Patches (Official)`

Optional visual/display add-ons:

- `Paintings Replacer for Legacy of the Dragonborn SSE`
- `Legacy of the Dragonborn - Fate Cards Re-texture - Skyrim Concept Art`
- `Placeable Display Cases`

Rule:

- Only enable the official LoTD patches for mods you actually installed.
- Do not pre-enable the entire patch hub.

## Step 17. Install Performance And Technical Helpers

Create or use separator `15 Performance and Technical Workflow`.

Install:

- `BethINI Pie (Performance INI Editor)` as the external INI tool baseline
- `Lightened Skyrim` as the current lighter performance branch

### Choice Required

- `eFPS - Exterior FPS boost`
    - install only if the chosen city/worldspace stack supports it cleanly
    - treat it as a new-game decision
    - defer to the official patch hub where needed

## Step 18. Generate Patches While Installing, Not Only At The End

As the load order grows:

1. Keep all hand-made compatibility plugins under `Patches`.
2. Name pair patches explicitly, for example `ModA_x_ModB.esp`.
3. Use ESL-flagged template patches by default.
4. Keep `ModGroups` small and local.
5. Re-run `xEdit` after each major install block, especially after:
   - city overhauls
   - NPC overhauls
   - water / landscape changes
   - leveled-list heavy content mods
   - LoTD integration choices

## Step 19. Run The Secondary Generators In The Correct Order

Do this only after the load order, patches, and chosen branches are stable enough to justify generated output.

### Phase 1. Prepare The Final Sorted Load Order

1. Run `LOOT` and apply the sorted load order before any late generators that read plugin state.
2. If `LOOT` flags anything for cleaning, finish that first and re-sort.
3. Confirm the branch choices, conflict patches, and worldspace edits are actually finalized enough to justify generated output.

### Phase 2. Generate Outputs In Dependency Order

1. `Pandora` after the animation stack stabilizes.
2. `BodySlide` after body and armor changes stabilize.
3. grass cache generation after final grass/tree/worldspace choices stabilize.
4. `xLODGen`.
5. `TexGen`.
6. `DynDOLOD`.
7. `Occlusion` if needed on the first real DynDOLOD run.
8. `Synthesis` patchers that the final stack actually uses.
9. `Wrye Bash` only if a `Bashed Patch` is still warranted for the chosen leveled-list strategy.

### Phase 3. Verify Final Plugin Placement

1. Apply the sorted order, then verify the expected end-state manually:
   - `DynDOLOD.esm` should sit at the end of the ESM block.
   - `DynDOLOD.esp` should be near the end of the load order.
   - `Occlusion.esp`, if generated, should load after `DynDOLOD.esp`.
   - `Synthesis.esp` and any `Bashed Patch` should remain where their own tool guidance and conflict review say they belong, not wherever a vague rule of thumb would put them.

## Step 20. Grass Cache Workflow

If the final list keeps grass LOD ambitions:

1. Install `No Grass In Objects`.
2. Install `Worldspaces with Grass SSEEdit Script for No Grass In Objects`.
3. Install `Grass Cache Fixes`.
4. Generate the grass cache only after grass, tree, landscape, and worldspace edits are mostly settled.
5. Send the result to `Grass Cache Output`.

If the grass stack changes later, rebuild the cache instead of trying to salvage the old one.

## Step 21. xLODGen 4K STEP Baseline

Use separator `Output` for the generated mod and keep the exact tool outside the game folder.

Run `xLODGen` for terrain LOD only.

Use this baseline:

- select all worldspaces
- tick only `Terrain LOD`
- leave `Brightness`, `Contrast`, and `Gamma` at defaults unless you are deliberately following the STEP / `Cathedral Landscapes` terrain pipeline; otherwise use `Gamma 1.00`
- for true `2160p / 4K`, double the diffuse and normal sizes from the standard presets for `LOD4`, `LOD8`, `LOD16`, and `LOD32`
- for initial `LOD4` terrain generation, keep `Optimize Unseen` off
- if map / `LOD32` coastline quality needs a later pass, use a higher `Quality` setting in the documented `0-10` range and raise `Optimize Unseen` to roughly `550`
- after generation, run `ACMOS Road Generator` with `Roads = Path Only`, point `Path to LOD` at the `xLODGen_Output` folder, choose `Yes` to overwrite LOD textures, and choose `No` when asked to zip
- move the output into `Terrain LOD Output`

## Step 22. TexGen 4K STEP Baseline

Run `TexGen` after `xLODGen` and before `DynDOLOD`.

Use this baseline:

- use the preset matching rendered resolution: `2160p = 4K`
- if grass LOD is not being generated, do not tick grass billboard options
- tick `Grass` if the list does not use complex grass
- tick `HD grass` if the list is following the complex-grass branch
- set `GrassModelHeightMultiplier=1.15` in `TexGen_SSE.ini`
- set `TreeMSAlphaThreshold=144` in `TexGen_SSE.ini`
- set `ObjectMSAlphaThreshold=96` in `TexGen_SSE.ini`
- set `ForceComplexGrass=0` for the non-complex-grass branch
- set `ForceComplexGrass=1` only for the STEP 2.3 complex-grass branch
- move the output into `TexGen Output`

## Step 23. DynDOLOD 4K STEP Baseline

Run `DynDOLOD` only after the load order and patches are stable.

Use this baseline:

- set `Expert=1` in `DynDOLOD_SSE.ini`
- set `Level32=1 AllHDLOD32=1`
- set grass brightness top and bottom RGB values to `0.500`
- set `DoubleSidedTextureMask=mountain,mtn`
- set `DoubleSidedMeshMask=mountain,mtn`
- if the list follows the STEP 2.3 complex-grass branch, also set:
    - `ComplexGrassBillboard=5`
    - all complex-grass brightness top and bottom RGB values to `0.500`
    - `ComplexGrassBacklightMask=25`
- select all worldspaces
- tick `Candles`
- tick `FXGlow`
- click `High` to load the expected STEP / `A Clear Map of Skyrim` mesh rules
- treat the intended end state as the `4K` profile with `Optimal` tree and catch-all rules plus the recommended `LOD32` rules
- generate `Occlusion` only on the first real run
- tick `Grass LOD` only if the list is intentionally generating grass LOD
- move the output into `DynDOLOD Output`
- enable `DynDOLOD.esm` and `DynDOLOD.esp`
- sort with `LOOT`

## Step 24. Final Patchers

Use these only where they genuinely help:

- `Synthesis`
    - use for whole-load-order rules such as leveled-list cleanup, AI forwarding, music merge, item-stat normalization, sound patching, or `Apothecary` / `CACO` support
    - do not use it as a substitute for deliberate conflict resolution
- `Wrye Bash`
    - use for leveled-list merging and Bash-tag-driven imports if the chosen mod stack still benefits from it
    - do not treat it as a junk drawer for unrelated overrides

## Step 25. Final Verification And Test Pass

Before calling the build stable, complete these tests from `modlist-14.md`:

1. fresh game startup checklist
2. character creation test
3. third-person combat test
4. city performance test
5. forest traversal test
6. dungeon lighting test
7. UI and controller test
8. long-session stability test

Specific performance checks to keep:

- benchmark before and after LOD generation from a clean Whiterun save
- temporarily disable `A Clear Map of Skyrim and Other Worlds` during benchmarking
- check the STEP benchmark view outside Whiterun looking west
- sanity-check the Rift with `cow tamriel 40 -24`

## Final Notes

- The cleanest parts of the build are sections `01`, `03`, `04`, `05`, `06`, `13`, and the MO2/tooling workflow.
- The least locked parts are sections `07`, `08`, `09`, `10`, and parts of `11`; keep those explicitly branch-based.
- The biggest trap in the current repo state is treating open research candidates as if they were already cumulative baseline installs.
- If a branch choice changes, rebuild the affected generated outputs instead of trusting stale output.

## Appendix A. Download Reference

This appendix covers every named tool and mod referenced in this guide. Repeated URLs are intentional where the same entry is referenced in more than one step.

### A.1 External Tools And LOD Support

| Name                                     | URL                                                          |
|------------------------------------------|--------------------------------------------------------------|
| `Mod Organizer 2`                        | <https://github.com/ModOrganizer2/modorganizer/releases>     |
| `BethINI Pie`                            | <https://www.nexusmods.com/site/mods/631>                    |
| `LOOT`                                   | <https://github.com/loot/loot/releases>                      |
| `xEdit`                                  | <https://github.com/TES5Edit/TES5Edit/releases>              |
| `xLODGen`                                | <https://dyndolod.info/Downloads>                            |
| `TexGen`                                 | <https://dyndolod.info/Downloads>                            |
| `DynDOLOD`                               | <https://www.nexusmods.com/skyrimspecialedition/mods/68518>  |
| `DynDOLOD Resources SE 3`                | <https://www.nexusmods.com/skyrimspecialedition/mods/52897>  |
| `Wrye Bash`                              | <https://github.com/wrye-bash/wrye-bash/releases>            |
| `Synthesis`                              | <https://github.com/Mutagen-Modding/Synthesis/releases>      |
| `BodySlide and Outfit Studio`            | <https://www.nexusmods.com/skyrimspecialedition/mods/201>    |
| `Pandora Behaviour Engine Plus`          | <https://www.nexusmods.com/skyrimspecialedition/mods/133232> |
| `Cathedral Assets Optimizer`             | <https://www.nexusmods.com/skyrimspecialedition/mods/23316>  |
| `A Clear Map of Skyrim and Other Worlds` | <https://www.nexusmods.com/skyrimspecialedition/mods/56367>  |
| `ACMOS Road Generator`                   | <https://www.nexusmods.com/skyrimspecialedition/mods/79205>  |

### A.2 Foundations And UI

| Name                                                    | URL                                                          |
|---------------------------------------------------------|--------------------------------------------------------------|
| `SKSE64`                                                | <https://www.nexusmods.com/skyrimspecialedition/mods/30379>  |
| `Address Library for SKSE Plugins`                      | <https://www.nexusmods.com/skyrimspecialedition/mods/32444>  |
| `SSE Engine Fixes`                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/17230>  |
| `Scrambled Bugs`                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/43532>  |
| `powerofthree's Tweaks`                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/51073>  |
| `powerofthree's Papyrus Extender`                       | <https://www.nexusmods.com/skyrimspecialedition/mods/22854>  |
| `PapyrusUtil`                                           | <https://www.nexusmods.com/skyrimspecialedition/mods/13048>  |
| `MCM Helper`                                            | <https://www.nexusmods.com/skyrimspecialedition/mods/53000>  |
| `JContainers`                                           | <https://www.nexusmods.com/skyrimspecialedition/mods/16495>  |
| `Keyword Item Distributor (KID)`                        | <https://www.nexusmods.com/skyrimspecialedition/mods/55728>  |
| `Spell Perk Item Distributor (SPID)`                    | <https://www.nexusmods.com/skyrimspecialedition/mods/36869>  |
| `Base Object Swapper (BOS)`                             | <https://www.nexusmods.com/skyrimspecialedition/mods/60805>  |
| `Crash Logger SSE AE VR`                                | <https://www.nexusmods.com/skyrimspecialedition/mods/59818>  |
| `RaceMenu SE`                                           | <https://www.nexusmods.com/skyrimspecialedition/mods/29624>  |
| `Dual Casting Fix`                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/92454>  |
| `Andrealphus' Papyrus Functions`                        | <https://www.nexusmods.com/skyrimspecialedition/mods/85252>  |
| `ConsoleUtilSSE NG`                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/76649>  |
| `SkyPatcher`                                            | <https://www.nexusmods.com/skyrimspecialedition/mods/106659> |
| `Unofficial Skyrim Special Edition Patch - USSEP`       | <https://www.nexusmods.com/skyrimspecialedition/mods/266>    |
| `Backported Extended ESL Support`                       | <https://www.nexusmods.com/skyrimspecialedition/mods/106441> |
| `SSE Display Tweaks`                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/34705>  |
| `SkyUI`                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/12604>  |
| `UIExtensions`                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/17561>  |
| `Oathvein UI`                                           | <https://www.nexusmods.com/skyrimspecialedition/mods/160916> |
| `Norden UI`                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/166086> |
| `SkyHUD`                                                | <https://www.nexusmods.com/skyrimspecialedition/mods/463>    |
| `TrueHUD`                                               | <https://www.nexusmods.com/skyrimspecialedition/mods/62775>  |
| `Flat World Map Framework (FWMF)`                       | <https://www.nexusmods.com/skyrimspecialedition/mods/29932>  |
| `Skyrim and Solstheim Paper Maps by Mirhayasu for FWMF` | <https://www.nexusmods.com/skyrimspecialedition/mods/53788>  |
| `Compass Navigation Overhaul`                           | <https://www.nexusmods.com/skyrimspecialedition/mods/74484>  |
| `Constructible Object Custom Keyword System`            | <https://www.nexusmods.com/skyrimspecialedition/mods/81409>  |
| `Sovngarde - Mist's Font Replacer`                      | <https://www.nexusmods.com/skyrimspecialedition/mods/386>    |
| `Better Dialogue Controls`                              | <https://www.nexusmods.com/skyrimspecialedition/mods/1429>   |
| `Better MessageBox Controls`                            | <https://www.nexusmods.com/skyrimspecialedition/mods/1428>   |
| `Convenient Reading UI - SE`                            | <https://www.nexusmods.com/skyrimspecialedition/mods/50202>  |
| `moreHUD Inventory Edition`                             | <https://www.nexusmods.com/skyrimspecialedition/mods/18619>  |
| `moreHUD SE`                                            | <https://www.nexusmods.com/skyrimspecialedition/mods/12688>  |
| `SkyUI Item Card Fixes`                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/29116>  |
| `Aura's Inventory Tweaks`                               | <https://www.nexusmods.com/skyrimspecialedition/mods/68557>  |
| `Dialogue Interface ReShaped`                           | <https://www.nexusmods.com/skyrimspecialedition/mods/46546>  |
| `Convenient Dialogue UI - SE`                           | <https://www.nexusmods.com/skyrimspecialedition/mods/57943>  |
| `Skyrim SE Controller Interface Fix`                    | <https://www.nexusmods.com/skyrimspecialedition/mods/1147>   |
| `Gamepad Plus Plus`                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/27007>  |
| `Wheeler - Quick Action Wheel Of Skyrim`                | <https://www.nexusmods.com/skyrimspecialedition/mods/97345>  |
| `Complete Widescreen Fix for Vanilla and SkyUI`         | <https://www.nexusmods.com/skyrimspecialedition/mods/1778>   |

### A.3 Graphics, Bodies, And LOD Resources

| Name                                                                                 | URL                                                          |
|--------------------------------------------------------------------------------------|--------------------------------------------------------------|
| `Community Shaders`                                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/86492>  |
| `Screen Space Shadows - Community Shaders`                                           | <https://www.nexusmods.com/skyrimspecialedition/mods/93209>  |
| `Grass Lighting - Community Shaders`                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/86502>  |
| `Water Effects - Community Shaders`                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/112762> |
| `Wetness Effects - Community Shaders`                                                | <https://www.nexusmods.com/skyrimspecialedition/mods/112739> |
| `Terrain Shadows - Community Shaders`                                                | <https://www.nexusmods.com/skyrimspecialedition/mods/135817> |
| `Subsurface Scattering - Community Shaders`                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/114114> |
| `Skylighting - Community Shaders`                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/139352> |
| `Screen Space Global Illumination (SSGI)`                                            | <https://www.nexusmods.com/skyrimspecialedition/mods/130375> |
| `Skyland AIO`                                                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/34179>  |
| `RUSTIC CLUTTER COLLECTION - Special Edition`                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/5795>   |
| `RUSTIC CLOTHING - Special Edition`                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/4703>   |
| `Static Mesh Improvement Mod - SMIM`                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/659>    |
| `Enhanced Rocks and Mountains - Complex Material and PBR`                            | <https://www.nexusmods.com/skyrimspecialedition/mods/121336> |
| `Enhanced Rocks and Mountains - Fix and Addon`                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/142493> |
| `Nordic Snow`                                                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/670>    |
| `Simplicity of Snow`                                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/56235>  |
| `FYX - Water Mesh Optimization`                                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/97713>  |
| `Natural Waterfalls`                                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/87261>  |
| `Rally's Water Foam`                                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/28922>  |
| `CBBE NSFW - Caliente's Beautiful Bodies Enhancer`                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/74257>  |
| `CBBE 3BA (3BBB)`                                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/30174>  |
| `Highly Improved Male Body Overhaul - HIMBO`                                         | <https://www.nexusmods.com/skyrimspecialedition/mods/74174>  |
| `BnP - Female Skin`                                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/65274>  |
| `BnP - Male Skin`                                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/65402>  |
| `FitnessGoal CBBE 3BA 3BBB Bodyslide Preset for Modest Players`                      | <https://www.nexusmods.com/skyrimspecialedition/mods/69681>  |
| `KS Hairdos SSE`                                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/6817>   |
| `Eyes Nouveaux`                                                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/131210> |
| `AURORA S.E.`                                                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/6021>   |
| `Bellyaches Animal and Creature Pack SSE`                                            | <https://www.nexusmods.com/skyrimspecialedition/mods/6839>   |
| `CC's HD Dwemer Automatons - Remastered`                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/32267>  |
| `Skeleton Replacer HD - SE`                                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/52845>  |
| `DynDOLOD DLL NG`                                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/97720>  |
| `HD LODs Textures SE`                                                                | <https://www.nexusmods.com/skyrimspecialedition/mods/3333>   |
| `xLODGen Resource - SSE Terrain Tamriel`                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/54680>  |
| `Lux`                                                                                | <https://www.nexusmods.com/skyrimspecialedition/mods/43158>  |
| `Lux Orbis`                                                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/56095>  |
| `Lux Via`                                                                            | <https://www.nexusmods.com/skyrimspecialedition/mods/63588>  |
| `Lux CS`                                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/153919> |
| `Relighting Skyrim SE`                                                               | <https://www.nexusmods.com/skyrimspecialedition/mods/8586>   |
| `Luminosity Lighting Overhaul - The Cathedral Concept`                               | <https://www.nexusmods.com/skyrimspecialedition/mods/16830>  |
| `Enhanced Lights and FX`                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/2424>   |
| `ELFX Shadows`                                                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/63790>  |
| `CS Light`                                                                           | <https://www.nexusmods.com/skyrimspecialedition/mods/138443> |
| `NAT.CS III`                                                                         | <https://www.nexusmods.com/skyrimspecialedition/mods/139567> |
| `Azurite Weathers III - Enhanced`                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/150269> |
| `Azurite III CS`                                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/162153> |
| `RAID Weathers`                                                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/63116>  |
| `Raid Weathers CS`                                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/171041> |
| `A Water Made For CS in mind`                                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/172959> |
| `Simplicity of Sea - Water Color and Transparency Tweaks`                            | <https://www.nexusmods.com/skyrimspecialedition/mods/148761> |
| `Simplicity of Sea - Water Mod with ENB and Community Shaders Displacement Textures` | <https://www.nexusmods.com/skyrimspecialedition/mods/56520>  |
| `Blended Roads - Light Plugin (ESL)`                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/171554> |
| `Northern Roads`                                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/77530>  |
| `Happy Little Trees`                                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/50961>  |
| `Traverse the Ulvenwald - 3.3 - Trees and Forests of Skyrim`                         | <https://www.nexusmods.com/skyrimspecialedition/mods/57874>  |
| `Skoglendi - A Grass Mod`                                                            | <https://www.nexusmods.com/skyrimspecialedition/mods/93944>  |
| `Flora Orientalis`                                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/64041>  |
| `Folkvangr - Grass and Landscape Overhaul`                                           | <https://www.nexusmods.com/skyrimspecialedition/mods/44899>  |
| `Waterplants`                                                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/6092>   |
| `Vinland Grass Patch - Skoglendi - Flora Orientalis - Folkvangr`                     | <https://www.nexusmods.com/skyrimspecialedition/mods/95273>  |
| `PBR Hub`                                                                            | <https://www.nexusmods.com/skyrimspecialedition/mods/139889> |
| `Complex Parallax Materials`                                                         | <https://www.nexusmods.com/skyrimspecialedition/mods/95134>  |
| `PGPatcher`                                                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/120946> |
| `Auto Parallax`                                                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/79473>  |
| `Skyrim Upscaler - DLSS FSR2 XeSS`                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/80343>  |
| `High Poly Project`                                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/12029>  |
| `No Grass In Objects`                                                                | <https://www.nexusmods.com/skyrimspecialedition/mods/42161>  |
| `Worldspaces with Grass SSEEdit Script for No Grass In Objects`                      | <https://www.nexusmods.com/skyrimspecialedition/mods/55152>  |
| `Grass Cache Fixes`                                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/60891>  |

### A.4 Animation, Camera, And Gameplay Frameworks

| Name                                                                    | URL                                                          |
|-------------------------------------------------------------------------|--------------------------------------------------------------|
| `XP32 Maximum Skeleton Special Extended - XPMSSE`                       | <https://www.nexusmods.com/skyrimspecialedition/mods/44252>  |
| `CBPC - Physics with Collisions for SSE and VR`                         | <https://www.nexusmods.com/skyrimspecialedition/mods/21224>  |
| `Open Animation Replacer`                                               | <https://www.nexusmods.com/skyrimspecialedition/mods/92109>  |
| `SkyParkour v3 - Procedural Parkour and Climbing Framework (SPPF)`      | <https://www.nexusmods.com/skyrimspecialedition/mods/132292> |
| `Beam Walking Assist`                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/175511> |
| `Comprehensive First Person Animation Overhaul - CFPAO`                 | <https://www.nexusmods.com/skyrimspecialedition/mods/87169>  |
| `Conditional Armor Type Animations`                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/51507>  |
| `EVG Conditional Idles`                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/34006>  |
| `EVG Animated Traversal`                                                | <https://www.nexusmods.com/skyrimspecialedition/mods/63232>  |
| `Immersive Interactions - Animated Actions`                             | <https://www.nexusmods.com/skyrimspecialedition/mods/47670>  |
| `Precision - Accurate Melee Collisions`                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/72347>  |
| `SCAR - Skyrim Combos AI Revolution`                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/72014>  |
| `IFrame Generator RE (AE Support)`                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/82737>  |
| `Leviathan Animations II - Male Idle Walk And Run`                      | <https://www.nexusmods.com/skyrimspecialedition/mods/81463>  |
| `Leviathan Animations II - Female Idle Walk And Run`                    | <https://www.nexusmods.com/skyrimspecialedition/mods/80760>  |
| `Vanargand Animations II - Male Idle Walk And Run`                      | <https://www.nexusmods.com/skyrimspecialedition/mods/99999>  |
| `Goetia Animations - Female Idle Walk And Run`                          | <https://www.nexusmods.com/skyrimspecialedition/mods/68625>  |
| `Goetia Animations - Conditional Shuffled Idle for Pretty Female idles` | <https://www.nexusmods.com/skyrimspecialedition/mods/68005>  |
| `RaySense - Jumping over obstacles`                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/175506> |
| `Open Animation Replacer - RaySense`                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/175498> |
| `Go to bed`                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/4224>   |
| `New Creature Animation - Giant`                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/83317>  |
| `New Creature Animation - Falmer`                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/83572>  |
| `New Creature Animation - Werewolf`                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/83806>  |
| `MCO ADXP - Modern Movement Combat Overhaul`                            | <https://www.nexusmods.com/skyrimspecialedition/mods/117115> |
| `Animation Motion Revolution`                                           | <https://www.nexusmods.com/skyrimspecialedition/mods/50258>  |
| `Payload Interpreter`                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/65089>  |
| `SmoothCam`                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/41252>  |
| `True Directional Movement - Modernized Third Person Gameplay`          | <https://www.nexusmods.com/skyrimspecialedition/mods/51614>  |
| `Better Third Person Selection - BTPS`                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/64339>  |
| `Improved Camera SE`                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/93962>  |
| `Customizable Camera`                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/12201>  |
| `TK Dodge RE - Script Free`                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/56956>  |
| `TK Dodge SE`                                                           | <https://www.nexusmods.com/skyrimspecialedition/mods/15309>  |
| `Convenient Horses`                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/9519>   |
| `Immersive Horses`                                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/13402>  |
| `Ricochet - Arrow Physics Framework`                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/160603> |
| `Dodge for all`                                                         | <https://www.nexusmods.com/skyrimspecialedition/mods/174544> |

### A.5 Systems, Survival, And Bugfixes

| Name                                                      | URL                                                          |
|-----------------------------------------------------------|--------------------------------------------------------------|
| `Aetherius - A Race Overhaul`                             | <https://www.nexusmods.com/skyrimspecialedition/mods/26686>  |
| `Evenstar - Minimalistic Standing Stones of Skyrim`       | <https://www.nexusmods.com/skyrimspecialedition/mods/41256>  |
| `Adamant - A Perk Overhaul`                               | <https://www.nexusmods.com/skyrimspecialedition/mods/30191>  |
| `Mysticism - A Magic Overhaul`                            | <https://www.nexusmods.com/skyrimspecialedition/mods/27839>  |
| `Apothecary - An Alchemy Overhaul`                        | <https://www.nexusmods.com/skyrimspecialedition/mods/52130>  |
| `Starfrost - A Survival Overhaul`                         | <https://www.nexusmods.com/skyrimspecialedition/mods/97536>  |
| `Gourmet - A Cooking Overhaul`                            | <https://www.nexusmods.com/skyrimspecialedition/mods/96876>  |
| `Ars Metallica - Smithing Enhancement`                    | <https://www.nexusmods.com/skyrimspecialedition/mods/321>    |
| `Trade and Barter - Skyrim Special Edition`               | <https://www.nexusmods.com/skyrimspecialedition/mods/23081>  |
| `Pilgrim - A Religion Overhaul`                           | <https://www.nexusmods.com/skyrimspecialedition/mods/54099>  |
| `Skyrim Reputation`                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/22374>  |
| `Nether's Follower Framework`                             | <https://www.nexusmods.com/skyrimspecialedition/mods/55653>  |
| `Realistic AI Detection (RAID)`                           | <https://www.nexusmods.com/skyrimspecialedition/mods/2345>   |
| `Relationship Dialogue Overhaul - RDO SE`                 | <https://www.nexusmods.com/skyrimspecialedition/mods/1187>   |
| `Amorous Adventures`                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/7305>   |
| `Marriage Mod - To Have And To Hold`                      | <https://www.nexusmods.com/skyrimspecialedition/mods/8589>   |
| `Serana Dialogue Add-On`                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/32161>  |
| `Reliquary of Myth - Artifacts of Skyrim`                 | <https://www.nexusmods.com/skyrimspecialedition/mods/31612>  |
| `ArteFakes - Unique Artifacts Replacer`                   | <https://www.nexusmods.com/skyrimspecialedition/mods/41254>  |
| `Konahrik's Accoutrements`                                | <https://www.nexusmods.com/skyrimspecialedition/mods/22206>  |
| `Unique Items Tweaks - Improved Miscellaneous Artifacts`  | <https://www.nexusmods.com/skyrimspecialedition/mods/33723>  |
| `Armor and Clothing Extension`                            | <https://www.nexusmods.com/skyrimspecialedition/mods/19002>  |
| `Common Clothes and Armors`                               | <https://www.nexusmods.com/skyrimspecialedition/mods/21305>  |
| `Cloaks of Skyrim`                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/6369>   |
| `Knapsack Backpacks SE`                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/3440>   |
| `NordwarUA Total Armor and Weapon Compilation`            | <https://www.nexusmods.com/skyrimspecialedition/mods/61423>  |
| `Immersive Weapons`                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/16788>  |
| `Immersive Armors`                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/3479>   |
| `Alternate Perspective - Alternate Start`                 | <https://www.nexusmods.com/skyrimspecialedition/mods/50307>  |
| `Alternate Start - Live Another Life`                     | <https://www.nexusmods.com/skyrimspecialedition/mods/272>    |
| `Skyrim Unbound Reborn (Alternate Start)`                 | <https://www.nexusmods.com/skyrimspecialedition/mods/27962>  |
| `Realm of Lorkhan - Freeform Alternate Start`             | <https://www.nexusmods.com/skyrimspecialedition/mods/18223>  |
| `Dealing with Backstories`                                | <https://www.nexusmods.com/skyrimspecialedition/mods/61106>  |
| `Take Notes - Journal of the Dragonborn SSE`              | <https://www.nexusmods.com/skyrimspecialedition/mods/13570>  |
| `Morningstar - Minimalistic Races of Skyrim`              | <https://www.nexusmods.com/skyrimspecialedition/mods/22298>  |
| `Imperious - Races of Skyrim`                             | <https://www.nexusmods.com/skyrimspecialedition/mods/1315>   |
| `Andromeda - Unique Standing Stones of Skyrim`            | <https://www.nexusmods.com/skyrimspecialedition/mods/14910>  |
| `Vokrii - Minimalistic Perks of Skyrim`                   | <https://www.nexusmods.com/skyrimspecialedition/mods/26176>  |
| `Ordinator - Perks of Skyrim`                             | <https://www.nexusmods.com/skyrimspecialedition/mods/1137>   |
| `Odin - Skyrim Magic Overhaul`                            | <https://www.nexusmods.com/skyrimspecialedition/mods/46000>  |
| `Apocalypse - Magic of Skyrim`                            | <https://www.nexusmods.com/skyrimspecialedition/mods/1090>   |
| `Complete Alchemy and Cooking Overhaul`                   | <https://www.nexusmods.com/skyrimspecialedition/mods/19924>  |
| `Complete Crafting Overhaul Remastered`                   | <https://www.nexusmods.com/skyrimspecialedition/mods/28608>  |
| `Honed Metal`                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/61015>  |
| `Open World Loot`                                         | <https://www.nexusmods.com/skyrimspecialedition/mods/49681>  |
| `MorrowLoot Ultimate`                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/3058>   |
| `Trua`                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/32549>  |
| `Wintersun`                                               | <https://www.nexusmods.com/skyrimspecialedition/mods/22506>  |
| `EFF - Extensible Follower Framework`                     | <https://www.nexusmods.com/skyrimspecialedition/mods/7003>   |
| `Amazing Follower Tweaks SE`                              | <https://www.nexusmods.com/skyrimspecialedition/mods/6656>   |
| `Arena - An Encounter Zone Overhaul`                      | <https://www.nexusmods.com/skyrimspecialedition/mods/33487>  |
| `Simply Balanced`                                         | <https://www.nexusmods.com/skyrimspecialedition/mods/15541>  |
| `Stress and Fear - A Dynamic Sanity System`               | <https://www.nexusmods.com/skyrimspecialedition/mods/116522> |
| `Blade and Blunt - A Combat Overhaul`                     | <https://www.nexusmods.com/skyrimspecialedition/mods/34549>  |
| `Skyrim Revamped - Complete Enemy Overhaul`               | <https://www.nexusmods.com/skyrimspecialedition/mods/14598>  |
| `Shadow of Skyrim - Nemesis and Alternative Death System` | <https://www.nexusmods.com/skyrimspecialedition/mods/65136>  |
| `Actor Limit Fix`                                         | <https://www.nexusmods.com/skyrimspecialedition/mods/32349>  |
| `Equip Enchantment Fix`                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/42839>  |
| `NPC AI Process Position Fix - NG`                        | <https://www.nexusmods.com/skyrimspecialedition/mods/69326>  |
| `Simple Offence Suppression`                              | <https://www.nexusmods.com/skyrimspecialedition/mods/41764>  |
| `Fuz Ro D-oh - Silent Voice`                              | <https://www.nexusmods.com/skyrimspecialedition/mods/15109>  |
| `Barter Limit Fix`                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/77173>  |
| `Better Jumping SE`                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/18967>  |
| `I'm Walkin' Here NG with Pets`                           | <https://www.nexusmods.com/skyrimspecialedition/mods/122516> |
| `LeveledList Crash Fix`                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/129136> |
| `Mum's the Word NG`                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/77409>  |
| `Regional Save Names`                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/49698>  |
| `Bard Instrumentals Mostly - Sing Rarely`                 | <https://www.nexusmods.com/skyrimspecialedition/mods/10927>  |

### A.6 World Content, NPCs, And Audio

| Name                                                                          | URL                                                          |
|-------------------------------------------------------------------------------|--------------------------------------------------------------|
| `Time Flies SE`                                                               | <https://www.nexusmods.com/skyrimspecialedition/mods/39426>  |
| `Dynamic Timescale - Remade`                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/141531> |
| `Carriage and Ferry Travel Overhaul (Formerly Complete Fast Travel Overhaul)` | <https://www.nexusmods.com/skyrimspecialedition/mods/8379>   |
| `Extended Encounters`                                                         | <https://www.nexusmods.com/skyrimspecialedition/mods/44810>  |
| `Radiance Encounters`                                                         | <https://www.nexusmods.com/skyrimspecialedition/mods/19720>  |
| `Immersive Patrols SE AE`                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/718>    |
| `Sounds of Skyrim Complete SE`                                                | <https://www.nexusmods.com/skyrimspecialedition/mods/8286>   |
| `Ancient Land`                                                                | <https://www.nexusmods.com/skyrimspecialedition/mods/22900>  |
| `Animallica SE - Skyrim Wildlife Overhaul`                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/20456>  |
| `Simply Darker Nights (SSE)`                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/14269>  |
| `Spaghetti's Cities - AIO`                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/84735>  |
| `Dawn of Skyrim (Director's Cut) SE`                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/9074>   |
| `JK's Skyrim`                                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/6289>   |
| `One With Nature`                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/13343>  |
| `Savage Skyrim`                                                               | <https://www.nexusmods.com/skyrimspecialedition/mods/37768>  |
| `The Great Cities`                                                            | <https://www.nexusmods.com/skyrimspecialedition/mods/320>    |
| `The Great Cities - Minor Cities and Towns SSE Edition`                       | <https://www.nexusmods.com/skyrimspecialedition/mods/20272>  |
| `Cities of the North - Dawnstar`                                              | <https://www.nexusmods.com/skyrimspecialedition/mods/28952>  |
| `Cities of the North - Morthal`                                               | <https://www.nexusmods.com/skyrimspecialedition/mods/34168>  |
| `Cities of the North - Falkreath`                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/56731>  |
| `Cities of the North - Winterhold`                                            | <https://www.nexusmods.com/skyrimspecialedition/mods/40088>  |
| `Settlements Expanded`                                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/7777>   |
| `JK's Whiterun Outskirts`                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/78351>  |
| `The Great City of Solitude SSE`                                              | <https://www.nexusmods.com/skyrimspecialedition/mods/22243>  |
| `The Great Village of Old Hroldan SSE`                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/33189>  |
| `Forgotten Dungeons (SSE)`                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/449>    |
| `Hidden Hideouts of Skyrim SE`                                                | <https://www.nexusmods.com/skyrimspecialedition/mods/2625>   |
| `Sidequests of Skyrim`                                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/54245>  |
| `Missives`                                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/17576>  |
| `Missives - Worldspace Additions`                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/26788>  |
| `Missives - Notes Retexture`                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/46201>  |
| `Leaf Rest`                                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/15191>  |
| `Simple Fishing Overhaul - Animations and Improved Quest Dialogue`            | <https://www.nexusmods.com/skyrimspecialedition/mods/103440> |
| `Hunterborn SE`                                                               | <https://www.nexusmods.com/skyrimspecialedition/mods/7900>   |
| `Capital Whiterun Expansion`                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/37982>  |
| `Hammet's Dungeon Pack 1 SE`                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/12186>  |
| `Skyrim Underground SSE`                                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/131>    |
| `Dungeons - Revisited`                                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/51798>  |
| `Moon and Star`                                                               | <https://www.nexusmods.com/skyrimspecialedition/mods/4301>   |
| `Wyrmstooth`                                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/45565>  |
| `The Forgotten City`                                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/1179>   |
| `Sirenroot - Deluge of Deceit`                                                | <https://www.nexusmods.com/skyrimspecialedition/mods/70917>  |
| `VIGILANT SE`                                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/11849>  |
| `Beyond Skyrim - Bruma SE`                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/10917>  |
| `Beyond Reach`                                                                | <https://www.nexusmods.com/skyrimspecialedition/mods/3008>   |
| `The Wheels of Lull - Unwound Edition`                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/748>    |
| `Falskaar`                                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/2057>   |
| `Heljarchen Farm`                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/4108>   |
| `LC_Build Your Noble House`                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/18308>  |
| `Windstad Mine`                                                               | <https://www.nexusmods.com/skyrimspecialedition/mods/4160>   |
| `Blackthorn - A Buildable Town in The Rift (SE)`                              | <https://www.nexusmods.com/skyrimspecialedition/mods/2242>   |
| `Streamlined Fishing`                                                         | <https://www.nexusmods.com/skyrimspecialedition/mods/80683>  |
| `Northbourne NPCs of Whiterun Hold`                                           | <https://www.nexusmods.com/skyrimspecialedition/mods/35404>  |
| `The Men of Winter SSE`                                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/10902>  |
| `AI Overhaul SSE`                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/21654>  |
| `Lawless - A Bandit Overhaul`                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/88080>  |
| `Fluffworks`                                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/56361>  |
| `Dragons Use Thu'um - Dragon AI Enhancements and New Fully Voiced Shouts`     | <https://www.nexusmods.com/skyrimspecialedition/mods/87085>  |
| `Crowded Streets`                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/127723> |
| `True Hunter - fewer animals per square meter`                                | <https://www.nexusmods.com/skyrimspecialedition/mods/25628>  |
| `Pandorable's NPCs`                                                           | <https://www.nexusmods.com/skyrimspecialedition/mods/78524>  |
| `High Poly True to Vanilla NPC Overhaul`                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/74226>  |
| `DIbella's Blessing`                                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/82606>  |
| `Dragon War - A Dragon Overhaul`                                              | <https://www.nexusmods.com/skyrimspecialedition/mods/51310>  |
| `Splendor - Dragon Variants`                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/9670>   |
| `Haugbui`                                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/26188>  |
| `The Restless Dead`                                                           | <https://www.nexusmods.com/skyrimspecialedition/mods/94100>  |
| `Draugr Upgrades and Improvements`                                            | <https://www.nexusmods.com/skyrimspecialedition/mods/21775>  |
| `Pelagius's Wildlife AI - Skypatcher`                                         | <https://www.nexusmods.com/skyrimspecialedition/mods/144909> |
| `Travellers of Skyrim`                                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/1973>   |
| `Populated Skyrim Reborn SSE`                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/32190>  |
| `MINPCs (More Immersive NPCs)`                                                | <https://www.nexusmods.com/skyrimspecialedition/mods/29483>  |
| `Chapter II - Jeremy Soule Inspired Music (by Dreyma Music)`                  | <https://www.nexusmods.com/skyrimspecialedition/mods/37792>  |
| `Audio Overhaul for Skyrim SE`                                                | <https://www.nexusmods.com/skyrimspecialedition/mods/12466>  |
| `Yggdrasil Music and SoundFX Overhaul SE`                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/21578>  |
| `Nyghtfall - Dark Fantasy Music`                                              | <https://www.nexusmods.com/skyrimspecialedition/mods/39011>  |
| `Nordenhamr - Viking Music`                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/58080>  |
| `Immersive Sounds - Compendium`                                               | <https://www.nexusmods.com/skyrimspecialedition/mods/523>    |
| `Regional Sounds Expansion`                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/77829>  |
| `Airgetlam -Modern Magic Sounds Rework-`                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/51541>  |
| `Airgetlam - Shouts SFX -`                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/90696>  |
| `A Bow's Whisper - Bow sound overhaul`                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/47437>  |
| `Cataphract - Armored Footsteps Rework`                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/102213> |
| `Sanguine Symphony Realistic Heavy Armor Sounds`                              | <https://www.nexusmods.com/skyrimspecialedition/mods/162883> |

### A.7 Legacy Of The Dragonborn And Technical Helpers

| Name                                                                    | URL                                                          |
|-------------------------------------------------------------------------|--------------------------------------------------------------|
| `Legacy of the Dragonborn SSE`                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/11802>  |
| `Legacy of the Dragonborn - The Curator's Companion`                    | <https://www.nexusmods.com/skyrimspecialedition/mods/38529>  |
| `Legacy of the Dragonborn Patches (Official)`                           | <https://www.nexusmods.com/skyrimspecialedition/mods/30980>  |
| `Paintings Replacer for Legacy of the Dragonborn SSE`                   | <https://www.nexusmods.com/skyrimspecialedition/mods/13279>  |
| `Legacy of the Dragonborn - Fate Cards Re-texture - Skyrim Concept Art` | <https://www.nexusmods.com/skyrimspecialedition/mods/16080>  |
| `Placeable Display Cases`                                               | <https://www.nexusmods.com/skyrimspecialedition/mods/131107> |
| `Lightened Skyrim`                                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/50755>  |
| `eFPS - Exterior FPS boost`                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/54907>  |
