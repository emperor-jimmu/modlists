# Mod resolution and decisions

## Resolutions

- **Auto Parallax (79473) + Complex Parallax Materials (95134)** — **DO NOT INSTALL (hard exclusion).** PGPatcher (120946) statically patches meshes/plugins for parallax, Complex Material, and PBR; its author explicitly states it replaces Auto Parallax ("You no longer should install prepatched meshes nor auto parallax"). CPM is not on the CS v1.8+ supported-feature list ("Do not install legacy features outside this list; they will cause issues") — its complex-material/parallax rendering is now CS core Extended Materials — and it hard-depends on the obsolete Auto Parallax. Both unmaintained (Nov 2022 / Mar 2024). Any candidate or dependency chain referencing either is rejected on sight. See `modlist-graphics-shaders.md` → Parallax Framework Dependencies.
- **Dragon Bard Ultimate (151231)** — REJECTED. Skyrim's Got Talent is locked as the bard gameplay baseline. Dragon Bard Ultimate adds playable instruments + singing with custom animations but conflicts with the locked baseline. Heavy Pandora maintenance cost for niche value. Revisit only if Bard College expansion becomes a priority.
- **Blended ERM (optional file of 121336)** — NOT baseline (file-selection verdict, 2026-08-09). ERM's only listed requirement is PGPatcher; Blended ERM is an alternative mesh set ("a different type of blending" — author), non-parallax, designed to be patched by PG. Baseline stays: main meshes v1.1.2 + Textures (FOMOD → PBR) + PGPatcher output. Documented in `modlist-graphics-terrain.md` as the seam-artifact fallback: try the Rugged texture variant first, then swap meshes and re-run PG; if adopted, select matching Blended options in ERM Fix and Addon FOMOD (v6.2+).
- **Simplicity of Snow (56235) — REJECTED (2026-08-11).** Double-pass snow is explicitly incompatible with PBR landscapes — Faultier's PBR Skyrim (125308): "Do not use double pass snow or ash mods like Simplicity of Snow, BDS2, or Better Dynamic Ash together with my landscape. They look wrong with PBR." The locked TomatoRim PBR Landscapes (177621) independently lists "Better Dynamic Snow SE – Version 3.6" as a required mod. **Snow baseline change: Better Dynamic Snow 3 (9121, install the v3.6.0 main file)** — single-pass projected snow, CS/PBR-native, "brightest materials" is now the default option. Remove SoS from `modlist-graphics-terrain.md` (Snow And Support) and `modlist-graphics-textures.md` (install list); update the BDS rows to v3.6.0/BDS3 wording. **`BDSPatcher` REMOVED from `modlist-performance-patches.md` Stage 6 (2026-08-11)** — source-verified as snow-only (requires `Better Dynamic Snow.esp`, maps only `SnowMaterial*`, no keyword/ash options); the Northpoint variant requires `Northpoint.esp` (not in list); Better Dynamic Ash (54754) is standalone with no patcher requirement. Better Dynamic Ash stays for Solstheim worldspace edits only — keep its ESP **before** the PBR landscape ESP.
- **Faultier's PBR Windows (optional file of 125308) — ADOPTED (2026-08-11).** Standalone optional file, NOT part of the Skyrim AIO ("no requirements except for running PG") — safe alongside VPBR (174091). PBR multilayer parallax windows incl. farmhouse/Whiterun/Riften windows the AIO misses, **plus shadow masks for Window Shadows Ultimate (150494, locked lighting baseline)**. `modlist-graphics-textures.md` → PBR Support baseline. Install after VPBR, before PGPatcher.
- **Faultier's PBR Road Signs (optional file of 125308) — ADOPTED (2026-08-11).** Standalone optional file, NOT part of the Skyrim AIO ("requirements: none"; supports Cutting Room Floor). PBR road-sign textures; applies to Point The Way signposts (vanilla meshes). `modlist-graphics-textures.md` → PBR Support baseline.
- **Faultier's PBR Dwemer Pipework Reworked Patch (optional file of 125308) — REJECTED (2026-08-11).** Author: "Use this in addition to an AIO **or the dwemer ruins file**" — the patch's textures are built on Faultier's own dwemer texture base, which the list deliberately excludes (VPBR owns dwemer interiors; `Faultier's Skyrim AIO` is forbidden alongside VPBR — same texture paths). The list's dwemer stack (Dwemer Pipework Reworked 46507 + Xavbio + Dwemer Metals Retexture 181444) has its own coherent base.
- **Faultier's PBR Blue Palace Terrace (optional file of 125308) — REJECTED (2026-08-11).** Requires "Drengin's Blue Palace Terrace, SMIM, and my clutter or an AIO" — depends on Faultier's clutter/AIO texture base (excluded) plus a new mod (Drengin's). Solitude is already owned by Tomato's Solitude Remastered (181707) + Grand Solitude + WSU. Marginal gain, wrong base.
- **Faultier's PBR Landscapes (separate files of 125308) — NOT adopted (2026-08-11); referenced as terrain-gap filler in textures.md, but TomatoRim PBR Landscapes (177621) is the locked landscape baseline.** Faultier's landscape files are the source of the double-pass-snow ban that drove the SoS → BDS3 change; if the landscape baseline ever switches to Faultier's, the BDS3 requirement and the BDA-ESP-order caveat carry over unchanged.

- Test Beards of Power under CS lighting for neck clipping.
- Evaluate finding-derkeethus/Bethesda FormID fix with xEdit for unresolved conflicts.
- Verify New Beast Feet meshes don't clip with beast-race footwear from Immersive Armors or other armor packs.
- Test HDT-SMP Vanilla Armors performance overhead in combat with multiple NPCs wearing physics-enabled armor.
- **The Ancient Falmer** — Locked as Snow Elf race baseline. Proceed with: HPH patch verification, dialogue framework compatibility check, alternate start support (Skyrim Unbound Reborn), and RaceCompatibility integration into the Foundations section.
- **Frozen in Time** — Now unblocked (Ancient Falmer locked). Verify no DynDOLOD or navmesh conflicts with Ancient Falmer Ruins. Check LoTD display patch availability.
- **Occiglacies** — Now unblocked (Ancient Falmer locked). Verify LoTD display patch (mod 64117) compatibility with current LoTD version.
- **Elven Chainmail** (mod 14978) — Verify 1.6.1170 compatibility. LE-era port last updated Jan 2018. May need mesh/texture porting work. Alternatives: Archaic Elven Armaments (152679).
- **Vampire follower evaluation** — Now unblocked (NPC baseline confirmed: comprehensive + targeted add-ons). Evaluate 4 vampire followers: Silas (Bosmer vampire, ESL, uses player body/skins), Koemia (custom-voiced, DBVO patch, mod 101405), Voira (Pandorable's, 1088 end., mod 42708), Dumitra (Altmer custom-voiced 600+ lines, mod 147787). Evaluate against comprehensive NPC baseline for visual consistency.
- **DF Edit NPC face replacers (11 mods)** — Now unblocked (NPC baseline confirmed). Individual Distinct Faces edits for Camilla (177048), Rayya (179325), Angi (178488), Sapphire (161017), Saadia (169287), Jenassa (164775), Aranea (176413), Brelyna (166402), Eola (161817), Fura Bloodmouth (171382), Ysolda (169910). Some are SkyPatched, some ESP-based. Will selectively override the comprehensive NPC baseline.
- **Vampire Clans and Bloodlines (37517)** — DEFERRED. Evaluate after combat stack and perk overhaul are stable. CS compat, LoTD patches, third-person/gamepad. Conflicts possible with Sacrosanct and Open World Loot.
- **Natural Learning (148990)** — Now unblocked (Adamant locked as perk baseline). Passive skill tree/perk system by Zzyxzz. Requires SkyPatcher + SkyPatcher Keyword Framework. Evaluate: does the passive tree augment or conflict with the XP/leveling dial (Experience + Static Skill Leveling + Static with Hard Threat)? AP patch available (162537). Does NOT replace Adamant — augments it.
- **Singalongs of Skyrim (129812)** — DEFERRED to verification. ESL-flagged, ~1,000 end, AI-Generated tag. Bard singalong dialogue + original songs + 12 instrumental tunes. Verify dialogue overlap with locked `Skyrim's Got Talent` (106106) + `BA Bard Songs` (audio.md:18) before adopting.
- **Headshots Kill SKSE (181461)** — REJECTED (for now). Ranged headshot/OHKO mod. Precision + SKSE Menu Framework reqs already in stack, but ranged lethality fights the difficulty dial (Arena / Simply Balanced / KYE2). 112 end, AI-Generated tag, crash-fix history (1.11/1.41). Revisit only if ranged combat needs headshot depth.
- **College of Winterhold Bridge Lights (182546)** — REJECTED. Built for the author's own "Ultimate College of Winterhold"; list locks the Obscure's + JK's College sub-stack, so bridge geometry differs. 32 end. Misalignment risk not worth it.
- New Tavern Music - <https://www.nexusmods.com/skyrimspecialedition/mods/113349> — **Redundant/optional.** Tavern band music overlaps `Melodies of Civilization` tavern tracks (audio.md:15); add only via Synthesis music merge.
- **Dwemer Metals Retexture SE (181444)** — Chain-adopted as prerequisite for Dwemer Pipework Reworked (46507). Not previously in modlist. Textures & Meshes section.

## Mods for review — VERDICTS (2026-08-05)

### Adopted — with special instructions

- **#5 DrJacopo's 3D Landscapes and Grass Library (80687)** — **GRASS BASELINE CHANGE.** Adopt both main files: Library (resource textures) + 3D Grass Overhaul (standalone grass mod). **Drops Skoglendi + Merethic Grasslands** from the grass baseline. Keep Origins of Forest as forest-floor density layer (compatible with any grass mod). CS-native complex grass textures built-in. Start with `iMinGrassSize=60`. Terrain & Flora section.
- **#11 Northern Vanilla Farmhouses (91311)** — Adopted alongside **No Snow Under the Roof (518)** as a new prerequisite. NSUTR adds 3D snow geometry (complementary to BDS3's single-pass projected snow, the snow baseline since 2026-08-11). Northern Vanilla Farmhouses ports COTN roof assets to vanilla farmhouses — aesthetic coherence with COTN Dawnstar/Morthal/Falkreath/Winterhold baselines. World Feel → Architecture section. Verify right file from 10 options.
- **#17 Animated Coffins (63564)** — Adopted with **layered skeleton approach:** `Skeleton Replacer HD (52845)` → `Animated Coffins (63564)` → `Skeletons SE (124394, locked)` → `Skeletons SE - Expanded (154872, locked)`. SRHD provides static bone props (skulls, ribcages, bandit poles — NOT covered by Skeletons SE). Animated Coffins uses SRHD's skeleton texture paths for coffin props. Skeletons SE overwrites creature skeletons only (SRHD's "single-model" creature rejection still valid). Textures & Meshes section.

### Adopted (2026-08-05 batch)

- **Dwemer visual overhaul stack adopted:** Dwemer Pipework Reworked (46507, 4K) + Dwemer Metals Retexture SE (181444) + Xavbio Dwemer Armors/Weapons Retexture (93088, 2K + LoTD addon) + Dwemer Armor Glowmapped (48227) + Dwemer Automatons Glowmapped (48724) + Dwemer Tech Glowmapped (47802) + Dwemer Weapons Glowmapped (48232) + Dwemer Elevator Lights (55478). Requires SSE Engine Fixes (baseline) for glowmap mods.
- **Dwemer Researcher Armor SE by Xtudo (58180)** — Adopted. CBBE 3BA + 2K. Pairs with Remiel follower. Chain-adopt Dwemer Researcher Armor Glowmapped (114709).
- **DrJacopo's 3D Tundra Cotton (68068) + 3D Dragons Tongue (85694)** — Adopted. Same author as the newly adopted 3D Landscapes grass baseline. Terrain & Flora section.
- **ELECTRIFY S.E. (5253)** — Adopted. Shock spell VFX replacer, no ESP, framework-agnostic. Main S.E. file.
- **Kalilies Brows (40595)** — Adopted as Alternative. 17 additional female brows alongside Brows baseline (not a replacer). Regular (non-SMP) file.
- **Brows by Hvergelmir for HPH (63777)** — Adopted. HPH-compatible version of baseline Brows (1062). HPH-only file (skip COTR/UBE variants).
- **Cathedral - Mushrooms (26103)** — Adopted. HD mushroom textures, 2K. Cathedral series. AI-Generated tag — quality eval per curation policy.
- **Cathedral Snowberries — Inventory/Wreath/Planter (69933)** — Adopted. Inventory model for Cathedral 3D Snow Berries (already in terrain.md:96).
- **Diseases — I4 icon (94076)** — Adopted. Disease effect icons, ESP-FE. Requires Inventory Interface Information Injector (85702). UI section.
- **Dynamic Animal Variants SPID (72978)** — Adopted. SPID-based animal texture variants. All-in-one main file. Complements Fluffworks baseline.
- **CleverCharff's Sovngarde (34906)** — Adopted. 4K, dark option.
- **Detailed Rugs (9030)** — Adopted. Main file (with meshes).
- **DB Tenets Redone (6782)** — Adopted. 4K.
- **Dusty Vampire Dust (62907)** — Adopted. 2K.
- **Remaining clutter/texture upgrades adopted:** Clams HD (69655), Comfy Dwemer Beds (4798), Charcoal Stick and Coal (69038, 2K).

### Tentative — evaluate before committing

- **#13 Blubbos Shrub Replacer (95606)** — Evaluate vs Mari's flora baseline. Visual overlap with existing flora stack — test for coherence.
- **#13b PBR textures for Blubbo mods (136086)** — Only adoptable if Blubbo ecosystem (Aspen Replacer, Pinetree Replacer, Markarth 2022, Riverwood 2023, Whiterun 2022) is adopted. Those compete with locked NotWL (trees) and TomatoRim (Whiterun). **Skip unless Blubbo becomes baseline.**
- **#14 CD's True Forest of Riverwood (55801)** — Last updated Nov 2021. Evaluate vs JK's Whiterun Outskirts + Fleiwas Riverwood Addition + Riverwood Edge + Spaghetti's Riverwood. Multiple Riverwood-area mods in the pipeline.
- **#15 Numinous Nord Ruins (146766)** — REJECTED (2026-08-11). Superseded by Skyking Nordic Ruins Complex Parallax (183021, adopted below). Numinous is ENB-oriented (Complex Parallax, enbseries.ini instructions), includes Lux split meshes (Lux family rejected), and the author explicitly forbids CS PBR porting: "I will not give permission for any automated process or patcher, or permission to port to CS PBR." Incompatible with the PBR-native graphics pipeline. Skyking (Skyland AIO author) offers CS + PGPatcher native support, custom individual-plank stair/platform meshes, ivy/root coverage, and active development.
- **#2 Classic HD Remastered Farmhouses (87978)** — Complex Parallax farmhouse retexture. Northern Vanilla Farmhouses (adopted) changes farmhouse MESHES (COTN roof assets); this changes TEXTURES. Must verify CS Complex Material compatibility and that textures map correctly onto NVF's COTN-roof meshes before adopting. **Choose 4K if adopted.**

### Rejected

- **#22 Alluring Eyes (50184)** — REJECTED. Eyes Nouveaux (131210, baseline in graphics-characters.md:164) is Khisartin-style and grim-dark toned. Alluring Eyes' vibrant direction fights the grim-dark pillar.
- **#39 Beards (1067)** — REJECTED. Hvergelmir's classic, 45K endo but last updated Mar 2019. Beards of Power (42635, already Alternative in graphics-characters.md:170) is actively maintained (Dec 2025), higher-fidelity meshes, and already under evaluation in Review Next (#7 above). The TODO neck-clipping test for Beards of Power is the right next step.
- **#4 Colorful Bound Weapons SE ENB Light (51911)** — REJECTED. Hard ENB dependency (requires ENB Light 22574 which requires ENB series binaries). Modlist is CS-exclusive — "No ENB, no LUX family."
- **#9 CLOUDS (67436)** — REJECTED. 2D cloud texture replacer superseded by adopted Real Clouds SE (90566, 3D volumetric clouds). Incompatible approaches.
- **#24 Dwemer Glowyfication (60346)** — REJECTED. Extends glowmaps to mods not in the list (Bikini Armors, Judgment Wenches, Believable Weapons, SIC). Core CALEB2 glowmap mods (48227, 48724, 47802, 48232) already cover all vanilla+DLC Dwemer content.
- **Dark Brotherhood Armor SE (57539) + CBBE 3BA conversion (57553)** — REJECTED. 4thUnknown's custom DB armor model conflicts with Xavbio's Faction Armors and Weapons Retexture AIO (169281, weapons-armor.md:138). Xavbio's AIO establishes faction-wide visual coherence across Dawnguard, Vampire, Thieves Guild, Nightingale, DB, Forsworn, and Wolf armors. Swapping one faction to a different author's model would break consistency. User confirmed.

## Mods for review — VERDICTS (2026-08-05, Batch 2)

### Already in modlist

- **ElSopa - HD Iron Tools Redone SE (60495)** — Already in `modlist-graphics-textures.md:148`. Remove from TODO.
- **HFs - Diverse Inkwell and Quill (132023)** — Already in `modlist-graphics-textures.md:150`. Remove from TODO.

### Rejected

- **Elegant Magelight with ENB Light (65679)** — REJECTED. Hard ENB Light dependency ("with ENB Light" in title and description). ENB Light requires ENB series binaries. Modlist is CS-exclusive. Also redundant: Light Magic VFX Edit (151787, textures.md:221) already covers Candlelight/Magelight VFX glow as mesh-only CS-compatible replacer.
- **GOAT HD by Pfuscher (22802)** — REJECTED. Goat model/texture replacer overlaps with Fluffworks baseline (creatures.md:23, "broad furred-animal presentation layer"). Fluffworks covers goats as furred animals. Adopting a separate goat-specific replacer would fight the Fluffworks visual consistency.
- **Halffaces - Diverse (BOS) noble chair (113863)** — REJECTED. Directly overlaps with Rally's Noble Furniture - BOS (113326, textures.md:133) which already covers noble furniture including chairs via BOS distribution. Rally's is the established baseline.
- **Female Hands Replacer CBBE (67522)** — REJECTED. Redundant with Female Hands Redone (90713, reviewed below) which is a more comprehensive overhaul with BodySlide sliders. 90713 supersedes this basic CBBE hand replacer.
- **ElSopa - Tankard HD (43764)** — REJECTED. Conflicts with three existing tankard mods: Arc's Tankard Redux (112567, textures.md:147, baseline), JFresh's Mead Stein (26685, textures.md:275), and HFs - Flagons BOS (145495, textures.md:332). Arc's Tankard Redux is the established baseline; adding a fourth tankard replacer creates texture conflict with no benefit.
- **ElSopa HD - Meadbarrel and Spigot SE (23714)** — REJECTED. Conflicts with the Arc's MeadBarrel stack: Arc's MeadBarrel Redux (111195, textures.md:144) + Bloody MeadBarrel Redux (116447, textures.md:145) + Distributed (119006, textures.md:146). Arc's stack is the established baseline with comprehensive coverage.

### Adopted

- **Xavbio Ebony Armors and Weapons Retexture SE (83654)** — Adopted. 8,292 endorsements, v2.1.2 (Apr 2026). Retextures Ebony armor, Ebony Mail, weapons, and Ebony Blade. Covers vanilla Ebony material tier which is NOT covered by the same author's Faction Armors AIO (169281, weapons-armor.md:138 — factions only). Also includes aMidianborn content addon and Oblivion Artifacts compatibility. Fully open permissions. Weapons & Armor section. **Choose 2K main file.**
- **ElSopa - Glorious HD Amulets SE (38194)** — Adopted. 7,900 endorsements, v1.0 (Jul 2020). All divine/unique amulet retexture, 8x vanilla resolution, new environment maps. No existing amulet retexture in the list. Textures & Meshes → Clutter section. **Choose Quality 2K.**
- **ElSopa - HD Better Bloody Rags SE (44059)** — Adopted. 4,096 endorsements. New higher-poly mesh + textures for bloody rags clutter. No existing bloody rags replacer. Textures & Meshes section. **Choose 2K.**
- **ElSopa - HD Giant Mortars Redone SE (49384)** — Adopted. 3,221 endorsements. New mesh + textures for giant mortar clutter. No existing giant mortar replacer. Textures & Meshes section. **Choose 2K.**
- **ElSopa - HD Keys Redone SE (48209)** — Adopted. New high-quality models + textures for all keys. No existing key replacer in the list. Textures & Meshes section. **Choose 2K.**
- **ElSopa - Silver Mold Redone (70144)** — Adopted. Silver mold from Thieves Guild quest redone. Niche but no-conflict clutter upgrade. Textures & Meshes section. **Choose 2K.**
- **ElSopa - Skeleton Key Redone (85504)** — Adopted. Skeleton Key model/texture replacer, no ESP, safe mid-game. Textures & Meshes section. **Choose 2K.**
- **ElSopa - Unique Coin Bags HD SE (33910)** — Adopted. Each coin bag size has distinct appearance, 2K to vanilla resolutions. Textures & Meshes section. **Choose 2K.**
- **Various Immersive Coinbags (96476)** — Adopted as companion to 33910. BOS distribution of 60+ coin bag variations. Requires ElSopa Coin Bags HD (33910) for textures. Textures & Meshes section. **Choose BOS main file.**
- **ElSopa HD - Organic Burial Urns SE (26692)** — Adopted. Burial urn retexture, 4K to 512 resolutions. No existing burial urn replacer. Textures & Meshes section. **Choose 2K.**
- **ElSopa HD - Remade Better Dust Piles SE (22106)** — Adopted. Complete remake of dust pile texture, 4K-1K, optional no-skull variant. No existing dust pile replacer. Textures & Meshes section. **Choose 2K with skulls.**
- **FYX - Riften Canal and Round Posts (75431)** — Adopted. Replaces vanilla square posts with round posts, fixes seams/UVs/placement. No ESP, mesh-only. Complements existing FYX mods in the list (Nordic Doors, 3D Stockades, Eastern Empire Company, Riften Window Consistency). Textures & Meshes or World Content section. **Choose main file.**
- **FYX - Smooth Wells (66715)** — Adopted. Smooths water wells and magic wells, fixes UVs. "Water in Wells" compatible. No ESP. Textures & Meshes section. **Choose main file (CotN Falkreath optional if COTN Falkreath adopted).**
- **FYX - Windhelm Graveyard (98260)** — Adopted. Graveyard area mesh improvements, no ESP. Optional JK's/Spaghetti compatible meshes available. Textures & Meshes section. **Choose main file with JK's patch if JK's Windhelm is adopted.**
- **Various Immersive Farmtables (100469)** — Adopted. BOS-based farmtable variety. Fits the established BOS diversity pattern (Diverse BOS Kitchenware, Diverse Windmill Sails, etc.). No existing farmtable variety mod. Textures & Meshes section. **Choose BOS main file.**
- **Falmer Huts Animated (101539)** — Adopted. BOS-based animated Falmer hut mesh replacer. No existing Falmer hut replacer. Unique creature-architecture intersection. Textures & Meshes or Creatures section. **Choose BOS main file.**
- **Garlic - A Garlic Mod (78848)** — Adopted. Garlic clutter replacer. No existing garlic-specific replacer. Textures & Meshes section. **Choose main file.**
- **Scallions of Skyrim - High Polygon Leeks (53205)** — Adopted. Higher-poly leek mesh replacer. No existing leek replacer. Fits with Cabbage - A Cabbage Mod (textures.md:314) pattern of individual produce upgrades. Textures & Meshes section. **Choose main file.**
- **Grave Gargoyles (21907)** — Adopted. Custom gargoyle skeleton replacing vanilla impish model with nightmare design. No existing gargoyle replacer. Fits grim-dark pillar. Creatures section. **Choose main file.**
- **Gauldurbrand - Gauldur Weapons Replacer (54867)** — Adopted. Model replacers for all three Gauldur weapons (Blackblade, Blackbow, staff) with interchangeable staff variation. More comprehensive than Gauldur Blackblade (57361) which only covers one weapon. Weapons & Armor section. **Choose main file.**
- **Gauldur Blackblade by Ave (57361)** — REJECTED. Redundant — Gauldurbrand (54867, adopted above) covers all three Gauldur weapons including the Blackblade. Single-weapon replacer offers less coverage for the same niche.
- **Female Hands Redone (90713)** — Adopted. Complete female hand overhaul: 16 additional BodySlide sliders, compatible with any skin textures. Fits the 3BA/BodySlide pipeline (characters.md:14-16). Characters & Creatures section. **Choose CBBE 3BA main file.**
- **Bard's Nail Overlays (126211)** — Adopted as companion to 90713. 16 Racemenu hand overlays designed specifically for Female Hands Redone. Characters & Creatures section. **Choose main file.**
- **Halffaces - Common Chair (121182)** — Adopted. Mesh + texture replacer for commonchair02. No existing common chair replacer in the list (Rally's Noble Furniture covers noble-tier, not common). Textures & Meshes section. **Choose main file.**
- **Halffaces - Diverse (BOS) common table square (113369)** — Adopted. BOS-based diversification of common table squares, 5 variants. No existing common table variety mod (Basic Dining Set Replacer, textures.md:294, is a static replacer, not BOS diversity). Textures & Meshes section. **Choose BOS main file.**
- **Extravagant Interiors - Solitude (41621)** — Adopted as tentative. Retexture of Solitude's opulent interiors (Blue Palace, etc.) using modified Clockwork textures (assets included, no Clockwork dependency). Does NOT conflict with Riton Solitude (exterior architecture, world-content.md:78) or Bards College Rework (specific building, world-content.md:47). Textures & Meshes section. **Verify CS/PBR compatibility before locking. Choose main file.**

### Tentative — evaluate before committing

- **Feminine Argonian Textures (184)** — MONSTERaider's feminine Argonian retexture with hundreds of diffuse/specular/normal combinations. BnP Female Skin (65274, characters.md:16) is the all-race skin baseline. This would replace BnP's Argonian female textures specifically. Evaluate: does this complement or fight BnP's consistent skin direction? Better Argonian Horns (80568) and FabULook Eyes (15136) are already adopted — this would add the skin layer. **TENTATIVE — test visual coherence with BnP before adopting.**
- **Feminine Khajiit Textures (183)** — Same as above for Khajiit. MONSTERaider's feminine Khajiit retexture. Same BnP baseline conflict question. **TENTATIVE — test visual coherence with BnP before adopting.**
- **Object Categorization Framework - Some KID Patches (99726)** — KID patches for OCF icons in various mods. Only adoptable if Object Categorization Framework is baseline. OCF is NOT currently in the modlist. **DEFER until OCF adoption decision is made.**
- **HFs - Upper Nightstand - Diverse BOS (143254)** — BOS-based upper nightstand diversification. Rally's Upper Furniture (112256, textures.md:135) likely covers nightstands as part of "upper furniture." Verify whether Rally's already covers this specific item before adopting. **TENTATIVE — check overlap with Rally's Upper Furniture.**

### Adopted — Halffaces clutter batch

All Halffaces mods below are mesh/texture replacers (mostly no-ESP, some BOS-based) targeting items with no existing replacer in the list. Clutter/Textures & Meshes section.

- **Halffaces - Breton delicacy (118297)** — Adopted. Eidar cheese wheel/sliced/wedge replacer. No existing cheese replacer. **Choose 2K main file.**
- **HFs - Horker Meat (123874)** — Adopted. Raw + cooked horker meat mesh/texture replacer. No existing horker meat replacer. **Choose main file.**
- **HFs - Trophy Pedestals - remodel (142079)** — Adopted. Trophy pedestal new models. Distinct from Snazzy Wall Mounted Trophies (textures.md:155 — wall mounts, not pedestals). **Choose main file.**
- **HFs - Tusks (135738)** — Adopted. Mammoth + horker tusk replacers. No existing tusk replacer. Complements "Harvest Those Mammoth Tusks" in Synthesis patcher list. **Choose main file.**
- **Halffaces - Horse meat Update (113284)** — Adopted. Horse meat mesh/texture replacer, no ESP. No existing horse meat replacer. **Choose main file.**
- **HFs - Aretino Family Heirloom - remodel (140723)** — Adopted. Quest-specific mesh replacer for Aretino Family Heirloom. No conflict with Restoring the Aretino Residence (world-content.md:472 — quest mod, different scope). **Choose main file.**
- **Halffaces - Trapdoor ladders All-in-One (123329)** — Adopted. Trapdoor ladder mesh/texture rework. No existing trapdoor ladder replacer. **Choose main file.**

## Mods for review — VERDICTS (2026-08-07, 17-mod submission + anbeegod profile)

The 17 submitted mods were reviewed against Elder Wilds pillars (redundancy, conflicts/overrides, overpowered, AI-content gate, triviality). Also cross-checked anbeegod's profile; FDE and custom-follower additions landed in → [modlist-npcs.md](guide/modlist-npcs.md) (FDE table + Custom Followers).

### Already in modlist (no change)

- **Echoes of Oblivion (153979)** — Already at `modlist-world-content.md:427`. No re-entry.
- **Diverse Chicken Coops (152612)** — Already in `graphics-textures.md` (Baseline). No change.
- **360 Ward (156225)** — Already `modlist-expanded-magic.md:30` (Alternative). Do not double-list.

### Adopted (entry added to owning section file)

- **Jesters of Skyrim (151037)** — Jester NPCs added to select Jarl's residences with idle dialogue; ESL-flagged additions only, no vanilla overwrite. `modlist-npcs.md` → Civilian & Traveler Population Additions (Alternative). Verify placement against palace/court interior overhauls.
- **Regional Food Barrels - BOS (141954)** — BOS swaps food barrels by region; no leveled-list or script edits. `modlist-world-content.md` → Points of Interest & Roadside.
- **Interesting Locations (153298)** — Environmental-storytelling clutter on existing vanilla locations; no quests/scripts. `modlist-world-content.md` → POI & Roadside. Verify per-cell vs adopted city/tavern overhauls.
- **Classic Paintings Compilation for interiors (63325)** — Broad distribution of classic public-domain paintings across interiors + DLC; verify per-cell against adopted art/clutter replacers. `modlist-world-content.md` → POI & Roadside.
- **Guards Pose With Weapons — IED-OAR (110005)** — Guard/faction hold-weapon poses; requires IED + OAR (both baseline). `modlist-animations.md` → Equipment Display Framework.
- **Usable Campfires (140915)** — BOS swaps worldspace campfires into interactive furniture (cook, light, rest). `modlist-world-feel.md` → Fire & Camp Interaction.
- **Campfire Animations (112322)** — OAR-based campfire-action animations; fits the same Fire & Camp section. Chesko Campfire no longer hard-required — verify against Starfrost survival. `modlist-world-feel.md`.
- **NPCs React To Fire (148183)** — Script-free, 7.3K endorsements; fire-reaction ambient dialogue. Requires SKSE64 + Address Library (baseline). `modlist-world-feel.md` → NPC Dialogue Immersion.
- **Mephala Revoiced (157081)** — Raw voice-file replacer for Mephala, same pattern as Potema Revoiced. `modlist-audio.md`. Verify against Daedric-quest expansions.

### Rejected

- **Interactive Hanging Chains & Cages (141602)** — Rejected. FSMP physics on chains adds CPU/perf load to the CS-only, no-ENB baseline for a pure visual flourish (flavor-only, noticed a few times per dungeon). Grim-dark is already saturated; perf/benefit skews low. Not worth the physics-glitch risk.
- **Extended Guard Dialogue (106523)** — REJECTED (2026-08-07 reconfirmed). Tortoise/RVC AI-generated guard lines. Rejected on niche coverage, not the AI gate: the guard-flavor niche is already owned by Guard Dialogue Overhaul (baseline) + Echoes of Oblivion. No gap worth the voice-quality risk; no guard-voice precedent.
- **New Female Guard Voices (125124)** — REJECTED as a pair with 106523 (2026-08-07 reconfirmed). ElevenLabs AI voice; rejected on the same niche-coverage grounds, not the AI gate. Guard voice types are FormList-injected — patch surface against condition-gated mods for no gap worth the precedent.
- **NPCs Learn to Barter (120558)** — Rejected. The economy dial is already settled: locked Open World Loot (curated loot) + `Trade and Barter` baseline. A live dynamic-pricing rewrite over that stack produces overlapping/compounding price factors and deflation (author flags Parity formula), and the philosophy is already covered by the optional RiS-Evolving-Economy dial. Would require demoting Trade and Barter to fit — not worth it.
- **Thay's Palace of the Kings (153680)** — Rejected for now (deferred flagship). Grim-dark fit is excellent, but it is a bottom-slot, patch-heavy rebuild of a single Windhelm interior hosting quest-critical scenes; the long patch tail (USSEP, Spaghetti's Cities/Palaces AIO, Tomato's Windhelm, SFCO, Sons of Skyrim, Luminosity) only sustains tied to one cell, and Windhelm is already heavy with edits. Revisit only if Windhelm becomes a set-piece priority.

### anbeegod profile — FDE cross-check
Resident FDE already present: Aela, Brelyna, Lydia, Roggi, Aranea, Borgakh, Uthgerd, Ysolda, Jenassa, Olfina, Mjoll, Eola, Faralda. Added missing (FDE table in `modlist-npcs.md`): Ralof, Senna, Lisette, Marcurio, Saadia, Elisif, Fura Bloodmouth, Sapphire, Illia, Rayya, Faendal, Camilla, Jordis, Erik. Custom followers added: Caesia (13389) and Livia Salvian Revamped (33318).

## Mods for review — VERDICTS (2026-08-07, 13-mod batch)

Reviewed 13 submitted mods against Elder Wilds pillars (redundancy, conflicts/overrides, overpowered, triviality, CS-compat, third-person/gamepad).

### Already in modlist (no change)

- **Lively cart driver animation replacer or OAR (70595)** — Already `modlist-animations.md:419` (Alternative). No re-entry.
- **Carriages and Stables Dialogue Bundle (79297)** — Already `modlist-world-feel.md:26` (Travel Pacing baseline). No change.
- **HSF Male Furniture Idles (155228)** — Already `modlist-animations.md:407` (Alternative). No re-entry.

### Rejected

- **360 Ward - Other colors (156803)** — REJECTED. Add-on recolor of `360 Ward` (156225), which is only an Alternative at `modlist-expanded-magic.md:30` (not baseline). If 360 Ward is ever adopted, color becomes an install-time FOMOD choice — a separate listing is pointless. Trivial add-on of an already-Alternative mod.
- **Miscellaneous Quests Rewards Revamp (156418)** — REJECTED. Overpowered / dial-fight. Doubles skill increases from misc quests (fights the locked Static + Hard Threat progression / Experience + Static Skill Leveling dial) and inflates quest gold against the settled economy (locked Open World Loot + `Trade and Barter`). Author's own compat guidance ("let JaySerpa quest overhauls overwrite") creates a patch/priority tail against a stack dense with jayserpa. New author, 146 endorsements.

### Adopted (entry added to owning section file)

- **It Came from Akavir (155449)** — `modlist-world-content.md` → Standalone Quest Mods. Short fully-voiced quest (pro VO) on a Kamal washing ashore; new armor + weapon. ESL, level 15+, 606 endorsements, v1.0.6. **Choose v1.0.6** (facegen CTD fixed; 1.0.3 needed a face-discolor fix).
- **Take a Peek (66908)** — `modlist-expanded-magic.md` → Stealth And Detection (Add-on). JaySerpa keyhole-peek stealth mechanic; no detection-record edits (RAID interplay nil); third-person peek animation and gamepad-friendly hold-sneak activation. **Hard dependency: `Dynamic Activation Key`** — promote from Alternative (currently only in `World Content` for Simple Hunting Overhaul); OAR + SkyUI are baseline.
- **Nocturnal Moths (68288)** — `modlist-world-feel.md` → Environmental Atmosphere. Moths around exterior lanterns (Lanterns of Skyrim II + CS Lantern Lights layer); requires BOS (baseline). Grim-dark live-world night flavor.
- **Ships On The Horizon (79034)** — `modlist-world-feel.md` → Environmental Atmosphere. Offshore ships near Solitude / Raven Rock / Tel Mithryn, animated version. Fits the living-coast layer.
- **JK's Riften Outskirts (90864)** — `modlist-world-content.md` → Cities baseline. Same Jkrojmal series as locked Whiterun Outskirts. Requires JK's Riften Outskirts Patch Collection (91642) by Czasior. Verify vs The City of Crossed Daggers - Riften Expansion (168629).
- **JK's Windhelm Outskirts (86975)** — `modlist-world-content.md` → Cities baseline. Patch Collection 87964. Windhelm already heavy (Tomato's Windhelm, Spaghetti's Cities). Verify patch coverage before locking.
- **JK's Markarth Outskirts (93006)** — `modlist-world-content.md` → Cities baseline. ESLified v2.0, requires 1.6.1130+ (list is 1.6.1170). Patch Collection 95750.

### Alternative (choose-one, no baseline change)

- **Detailed Carriages 2.0 (89604)** — `modlist-world-feel.md` → Travel Pacing (Alternative). Unique carriage redesign w/ SMIM. **Conflicts with the `Snazzy Diverse Carriages - BOS` baseline** (`graphics-textures.md`) — choose one carriage identity. Compatible with the Carriages & Stables / Drivers baseline.

## Mods for review — VERDICTS (2026-08-07, 29-ID tavern-life/inn batch)

Second submission batch (29 IDs, 28 unique — 49014 listed twice). Reviewed against Elder Wilds pillars (redundancy, conflicts/overrides, overpowered, triviality, CS-compat, third-person/gamepad parity). The batch is strongly concentrated on inn/tavern life: JK's inn interiors, Distinct Interiors, sleeping/eating/sandbox, and starting-skill mods.

### Already in modlist (no change)

- **Eating Animations and Sounds (42602)** — Added as Alternative (see below), not a baseline change.

### Promoted to adopted (2026-08-07, user instruction)

- **Simple Inn Bath (49014)** — PROMOTED from alternative to adopted Add-on in `modlist-expanded-survival.md` → Roleplay Upkeep And Hygiene. Inn bathhouse access via innkeeper dialogue — minimal cell edits, high compatibility. **User-confirmed: works together with the locked `Candlehearth` inn baseline — no patches needed** (dialogue/faction-layer, not cell edits — why it survives where the JK's inn interiors cluster was rejected). Now the dependency anchor for 158544 and 104314 below. Duplicate in this batch (listed twice) — no re-entry.

### Adopted (entry added to owning section file)

- **Sleeping Expanded (59250)** — `modlist-world-feel.md` → Sleep And Bedtime Life (new). JaySerpa, 15,444 endorsements, v1.23 (Aug 2023). NPC sleeping/breathing animations, ~100 woken-up reactions (fully voiced via spliced vanilla lines), context-aware get-in/get-out-of-bed speeds (combat = fast exit). ESL, no vanilla edits, no conflict risk. DAR-based but satisfies the OAR baseline (OAR loads DAR animation folders). Fits "Living the world" + combat bed-exit QoL. **Choose main file** (DAR-less file only if OAR absent — it is baseline).
- **I'm Glad You're Here (41856)** — `modlist-expanded-followers.md` → Romance, Marriage, And Companionship (Add-on). Fully-voiced follower/spouse/adopted-kids appreciation via dialogue + hug animation (Embrace by Novum-Semita). v3.6.0 (Apr 2026, actively maintained), 10,046 endorsements. Requires FLM, KID, SPID, OAR, MCM Helper, SKSE — all baseline. Verify dialogue-topic overlap with the locked `RDO` baseline in testing (spouse/follower lines) — different topics, expected to coexist.
- **Choose Your Starting Skills and Stats (25630) + Choose Your Starting Skills - Oathvein UI (170671)** — `modlist-expanded-character.md` → Character Creation And Starting Choices (Add-on). lilebonymace, v5.2, 647 endorsements. New-game dialogue to pick starting skills/perks — complements the locked Skyrim Unbound Reborn + Why I Came to Skyrim start. Does not fight the locked Experience/Static Skill Leveling progression (sets starting state only). **Install both**: 25630 main + the Oathvein UI patch (170671) since Oathvein UI is the locked UI baseline.
- **Autumngate (60951)** — `modlist-world-content.md` → Player Homes (new). Small believable player home southeast of Ivarstead (Rift), ESL, 1,170 endorsements, v1.1 (Jan 2022). Four FOMOD versions (Standard / Forge / Reduced Clutter / RC Forge) + add-ons. **User instruction: select the Purchasable House add-on** (house purchasable from Wilhem at Vilemyr Inn for 12,000 gold; dialogue appears after 24 in-game hours or a quicksave/reload). Optional Enchanting Table add-on acceptable. Note: Purchasable add-on voice lines use xVASynth (AI-voiced, single NPC) — quality eval per policy; user-approved. Verify navmesh against Ivarstead-area mods (author tested JK's Skyrim + Great Town of Ivarstead; Northern Roads patch exists).
- **Today's Menu (55187)** — `modlist-world-content.md` → Inns (Tavern Life). Buy the inn's daily menu from innkeepers (20 gold): randomized main dish + drink + side/dessert, once per day per inn, locality-aware. v1.1 (Oct 2021), 521 endorsements. No hard incompatibilities; food distributed via custom leveled lists (editable). Complements the Candlehearth inn baseline.
- **Coherent Inns Prices (55207)** — `modlist-world-content.md` → Inns (Tavern Life). Location-based inn prices (cheap 40 / normal 70 / expensive 100; main-city inns and Old Hroldan expensive). v1.2 (June 2026, actively maintained), 802 endorsements. Contained per-inn economy dial — does not touch the locked OWL / Trade and Barter stack. **Use the provided Candlehearth patch** (locked inn baseline). The "More Expensive" add-on (141377) is adopted alongside (user instruction) — values remain configurable via globals. Also compatible with Extended Stay / Inns Can Be Closed.
- **Tavern Games (1668)** — `modlist-world-content.md` → Inns (Tavern Life). Card ("Battle of Heroes"), dice, and lottery mini-games at any tavern (patron or innkeeper), plus tavern vouchers (3 free nights). v1.2.1, 3,653 endorsements, SKSE-free SE version. Top-down camera like Witcher/Fable; Xbox One port exists (gamepad-native evidence). **Verify controller inputs in testing** — 2016-era SkyUILib UI and forced top-down camera need a gamepad pass before locking.
- **Tavern Games - Ink-art Card Retexture (172419)** — Chain-adopted as companion to 1668 (card visuals). v1.0, 13 endorsements. Only with Tavern Games.
- **Steaming Hot Soups and Stews (63580)** — `modlist-expanded-crafting.md` → Cooking Visual Companions. Animated mesh/texture replacer for soup/stew bowls with subtle steam effect (NOT a recipe mod). v1.0 (Feb 2022), 1,655 endorsements. No ESP; compatible with soup/stew retextures. **Choose the SMIM bowl version** (SMIM baseline).
- **Dynamic Dialogue Replacer — DDR (135618)** — ADOPTED (user instruction) as a framework in `modlist-expanded-survival.md` → Roleplay Upkeep And Hygiene (Framework row). SKSE runtime dialogue-replacement layer (v1.4.1); now required as the runtime for the Simple Inn Bath dialogue expansion below, and reusable for future non-AI dialogue mods.
- **Simple Inn Bath - Dialogue Expansion - DDR (158544)** — ADOPTED (user instruction) in `modlist-expanded-survival.md` → Roleplay Upkeep And Hygiene. DDR-based voiced innkeeper/bathing dialogue lines for Simple Inn Bath (~80 lines). **Requires DDR (135618) + Simple Inn Bath (49014)**, both present. Carries an **AI-Generated Content** tag — this is an explicit user override of the earlier AI-content rejection, consistent with the Autumngate xVASynth precedent (quality-eval approved by user).
- **Simple Inn Bath for New Lands — SPID (104314)** — ADOPTED (user instruction) in `modlist-expanded-survival.md` → Roleplay Upkeep And Hygiene. SPID patches granting Simple Inn Bath dialogue to Bruma, Falskaar, Obscure's College of Winterhold, Beyond Reach, Wyrmstooth, and Midwood Isle innkeepers. Requires SPID (baseline). Meaningful because 49014 is now an adopted Add-on.
- **Coherent Inns Prices - More Expensive (141377)** — ADOPTED (user instruction) in `modlist-world-content.md` → Inns (Tavern Life). Scales the base 55207 price globals upward for a harder-sticker-shock economy. Install alongside 55207; values remain configurable via globals.

### Alternative (choose-one, no baseline change)

- **Eating Animations and Sounds (42602)** — `modlist-expanded-survival.md` → Eating & Drinking Animations (Alternative). v1.9.4, 11,210 endorsements. Competes with the **locked `Animated Eating Redux` baseline** (4652) on the same eating/drinking animation events — choose one; no baseline change.

### Rejected

- **JK's inn interiors — 8 mods (33783 Drunken Huntsman, 33845 Bannered Mare, 35806 Sleeping Giant Inn, 53554 Silver-Blood Inn, 43991 Winking Skeever, 45617 Candlehearth Hall, 48293 New Gnisis Cornerclub, 49516 Bee and Barb)** — REJECTED (as a cluster). All eight rebuild the same inn cells owned by the **locked `Candlehearth — An Inn Overhaul` inn baseline** (`modlist-world-content.md` → Inns, "every inn in Skyrim"). Each JK's interior is a bottom-slot, patch-heavy rebuild (JK's interiors historically need a patch for every mod touching that inn); adopting eight would fight the locked baseline cell-by-cell. Revisit only if the inn baseline is ever demoted.
- **Distinct Interiors (6130)** — REJECTED. Broad interior architecture/clutter retexture (v1.82, 554K views) that overlaps the locked **`SFCO` + `Snazzy Interiors` interior stack** (`graphics-textures.md`). Huge conflict surface vs the established Snazzy/Rally's cell-record baseline for marginal gain.
- **Distinct JK's Interiors (166734)** — REJECTED (chain). Patch collection bridging JK's inn interiors to Distinct Interiors; both prerequisites rejected above. Moot.
- **Lively Inns and Taverns — LIAT (17036)** — REJECTED. 2012 LE-era port (SSE v1.1, May 2018), permissions locked (no fixes allowed). Author explicitly notes incompatibility with any mod changing The Bannered Mare interior (Candlehearth baseline covers it). Tavern-sound plugin conflicts with the locked `Sounds of Skyrim Complete` baseline; its coarse NPC additions fight the curated NPC/population stack.
- **Goodnight Skyrim (95835)** — REJECTED. NPC comments when the player gets into bed; niche already owned by adopted **Sleeping Expanded** (59250), which covers NPC reactions around sleeping. Overlapping sleep-interaction flavor; no gap worth a separate listing.

## Mods for review — VERDICTS (2026-08-07, 9-mod batch)

Reviewed 9 submitted mods against Elder Wilds pillars (redundancy, conflicts/overrides, modlist adherence, AI-content gate). **AI-content gate retired as a hard exclusion** — AI speech/audio is allowed, per curation rulebook and AGENTS.md AI Content Gate (2026-08-07, user instruction).

### Adopted (user instruction — AI gate cleared)

- **Dialogue Expansion - Indaryn-Ingun-Asgeir-Alessandra (92600)** — ADOPTED. AdamDunmer, 1,051 endorsements, v1.1. ~140 lines + 4 scenes for Riften NPCs (Indaryn at Elgrim's Elixirs, Ingun, Asgeir, Alessandra; scenes in Elgrim's, Black-Briar Meadery, Bee and Barb). ESP-FE, dialogue-only (no AI packages, no worldspace/navmesh/cell edits), author claims ~99% compatibility. **AI-voiced (ElevenLabs)** — accepted per AI gate decision. Verify vs Riften-area mods (The City of Crossed Daggers - Riften Expansion 168629, JK's Riften Outskirts). `modlist-npcs.md` → NPC Dialogue Expansions.
- **Dialogue Expansion - Shor's Stone (97337)** — ADOPTED. AdamDunmer, 1,294 endorsements, v1.2. ~250 lines + 9 scenes for Odfel, Sylgja, Grogmar, Filnjar. ESP-FE, dialogue-only, fully compatible per author (The Great Town of Shor's Stone 35977 in list is town geometry — no overlap expected). **AI-voiced (11labs)** — accepted per AI gate decision. `modlist-npcs.md` → NPC Dialogue Expansions.

### Rejected

- **Spelltome Studies (71565)** — REJECTED. Direct conflict with the locked **Immersive Spell Learning - DESTified (45514)** baseline (`modlist-expanded-magic.md:48`). Author's own compat note: incompatible with "ones that do similar things such as immersive spell learning." Same DEST framework, same job — no gap. Random study-event mini-game (meteor strikes, hostile summons) also fights grim-dark tone and the difficulty dial. 377 endorsements, last updated 2022.
- **Grief (97832)** — REJECTED. Redundant/superseded — author states it was reworked into **More to do in the Soul Cairn (115962)**, already adopted (`modlist-world-content.md:394`). The standalone is the older, smaller version of content already in the list; installing both would double Soul Cairn content.

### Tentative — evaluate before committing

- **Denizens of Morthal - Dialogue and Character Expander (33965)** — TENTATIVE. Spliced vanilla voice (not AI), Morthal NPC dialogue + schedules + conversations. v1.5. Verify against the Morthal stack: COTN Morthal (baseline), Skyfall's Fortified Morthal (Alternative), SpiderWIP (quest), Caesia follower (Morthal inn). Schedules = package edits — check no fight with COTN-touched cells.
- **The Raven of Raven Rock SE (15713)** — TENTATIVE. Undriel, 1,204 endorsements, v1.0 (2018). Raven-shaped rock formation over Raven Rock; vanilla assets, scales with rock retextures. NOT redundant (the "included in Quaint Raven Rock" note refers to the unadopted Quaint mod; list runs **JK's Raven Rock (141070)**). Verify ridge placement against JK's Raven Rock edits.
- **New Embershard Miners (35031)** — TENTATIVE (adoptable minor). Miners camp outside, visit Riverwood, work Embershard Mine after it's cleared. Vanilla-skeleton additive NPCs, no dial fights. Verify vs Riverwood-area mods (Fleiwas Riverwood Addition, Spaghetti's Riverwood, JK's Whiterun Outskirts).
- **The Clever Prisoner (84348)** — TENTATIVE (adoptable minor). Smartens prisoner behavior in WE09/WE32 faction-encounter quests. Requires USSEP (baseline). ESP-FE, tiny surface. No conflict found.

### Not adopted (optional/marginal)

- **Old People Sounds All In One (111436)** — NOT ADOPTED (optional/marginal). ESL, joke-tagged ambient voice (old folks complaining/coughing). No conflict, but the ambient-voice niche is already owned by **Chatty NPCs and Followers** baseline + Sounds of Skyrim Complete; reads light against the grim-dark charter. Revisit only if background levity is wanted.

## Mods for review — VERDICTS (2026-08-07, 6-mod batch: Kanjs books + seasonal + cold-region)

Reviewed 6 submitted mods. Four were Kanjs animated-article books, one the seasonal branch, one a cold-region NPC dress mod.

### Adopted — seasonal branch promoted

- **Seasons of Skyrim SKSE (62861) + Turn of the Seasons (63623)** — **PROMOTED to locked seasonal baseline** in `modlist-world-feel.md` → `Timescale And Calendar Adjustments` (user instruction). Was already tracked as a high-commitment alternative. v1.0.8 (Jun 2026, active). Requires Seasons of Skyrim SKSE; **Shrubs of Snow - Seasons of Skyrim SKSE (63463)** added as highly-recommended winter-asset companion; **Seasonal Calendar (18164)** promoted to companion. **Operational cost is owned by the seasonal LOD workflow** (4× DynDOLOD passes, 4× grass caches — see `modlist-graphics-lod.md`), and Azurite III (locked weather) is the season-driving layer. **Seasonal Landscapes (66903) stays rejected** (separate landscape-pack decision, unrelated to the SoS framework).

### Adopted — Kanjs animated tomes (user instruction)

- **Kanjs - Ancient Falmer Tomes Animated (106618)** — Adopted. `graphics-textures.md` → Animated Items.
- **Kanjs - The Boethiah's Proving Book Animated (104747)** — Adopted. `graphics-textures.md` → Animated Items.
- **Kanjs - Master Spell Tomes Animated (105990)** — Adopted. `graphics-textures.md` → Animated Items.
- **Kanjs - The Dreamstride Book Animated (104236)** — Adopted. `graphics-textures.md` → Animated Items.
- **Load-order note:** all four override `Book Covers Skyrim`'s texture on those same unique-tome records — install after the BCS stack (`Book Covers → Enhanced Textures → SkyPatched`) so the Kanjs animated look wins; drop a specific file if BCS's cover is preferred for that title. Distinct from Kanjs's existing `KanJS Spell Tomes Animated` (103057, regular spell-tome meshes — no overlap).

### Adopted

- **Skyrim is Cold (99813)** — Adopted as Add-on. SPID warm-outfit distribution for ~50 named Dunmer/Nord NPCs in Windhelm, Morthal, Dawnstar. Requires SPID (baseline). 100% SPID-compatible, no patches, no cell edits, no record conflicts → fits CS-only, third-person/gamepad charter. `modlist-npcs.md` → NPC Appearance Overhauls (Add-on). Carries Frostfall + survival-warm keywords — verify warmth-keyword hook with the locked **Starfrost** survival baseline (Frostfall itself not in list).

## Mods for review — VERDICTS (2026-08-07, 10-mod TODO batch)

Reviewed the 10 submitted mods from `TODO.md` against Elder Wilds pillars (redundancy, conflicts/overrides, dial-fights, CS-compat, third-person/gamepad).

### Already in modlist (no change)

- **Immersive Jewelry SSE (5336)** — Already `modlist-expanded-crafting.md:126` (Flavor & Content). Remove from TODO.
- **HDT-SMP Vanilla Armors (142450)** — Already `modlist-graphics-characters.md:135` (Alternative). Remove from TODO.

### Adopted (entry added to owning section file)

- **Inertia (Floating Gear Fix) (148746)** — Seb263, 9,245 endorsements, v1.1.0 (Jun 2025). SKSE plugin fixing dead-NPC equipment freezing mid-air by briefly disabling collision-capsule deactivation after death (configurable duration). Pure bugfix, zero records, compatible with all NPCs/creatures. `modlist-foundations.md` → Targeted Bugfix Mods.
- **High Poly Vanilla Hair (41863)** — Macxhiin, 20,407 endorsements, v3.0 (Feb 2021). Higher-poly vanilla hair meshes (smooth geometry, detailed 3D braids, UV/bone-weight tweaks) for human races. Replaces the **vanilla** hair meshes NPCs and the player use — complementary to the locked **KS Hairdos** baseline (which adds its own styles, not vanilla replacements). No ESP. `modlist-graphics-characters.md` → Hair, Eyes, And Beards. **Verify against NPC-overhaul stacks** (hair-distribution patches) and the CS lighting note (high-poly hair can read harsh under extreme shadows).
- **HFs - War horns - remodel (139520)** — Halffaces, 646 endorsements, v1.2.1 (Jan 2025). New Nord war horn model + hand-made HD textures; standalone ESL options for Torygg's war horn and Horn of Jurgen Windcaller. No existing war-horn replacer in the list; same Halffaces author line already adopted for the clutter batch. `modlist-graphics-textures.md` → Furniture/Clutter (HFs line). **Choose main file** (Nord war horn); the Torygg/Jurgen ESL add-ons are optional and fully independent.
- **HFs - Safe - remodel (165568)** — Halffaces, 355 endorsements, v1 (Nov 2025). New metal-safe model + textures (safeandlock01.nif). No ESP, no scripts, safe mid-game. Carries **AI-Generated Content** tag (author describes hand-made textures — quality-eval per curation policy; tag does not gate). No existing safe replacer in the list. `modlist-graphics-textures.md` → Furniture/Clutter (HFs line).

### Rejected

- **Interesting NPCs Visual Overhaul (40046)** — REJECTED (chain). Face/visual replacer for Interesting NPCs' female NPCs (mocia, v1.0, Sep 2020, 6,694 endorsements). **Interesting NPCs (3DNPC, 29194) is only an Alternative** at `modlist-npcs.md:65` — not adopted. A replacer for a non-adopted base is moot. Revisit only if 3DNPC is ever promoted to baseline; note it only covers female NPCs (males deferred pending Expressive Facegen Morphs).
- **Hedge Mage Armor SSE (5269)** — REJECTED. Elleh, v2.0, but **LE-era port last updated Nov 2016** — same porting-risk class as Elven Chainmail (14978, still under evaluation), without its 3BA path. Female-only (no HIMBO), and the v2.0 "fortification tokens" upgrade system (equip slot 48, per-piece enchants) is a custom progression layer that fights the locked perk/enchant dials (`Immersive Spell Learning`/Adamant/OWL stack). 7,742 endorsements but wrong era and wrong dials. Revisit only if a maintained 3BA+HIMBO refit with a stripped fortification system appears.

### Chain / conditional (not standalone)

- **HDT-SMP Master Thief Armor Patch (142095)** — Chain on the **FafnyB Master Thief Armor base (141700)** already listed as Alternative at `modlist-weapons-armor.md:148`. Adds FSMP cloth physics (3BA/HIMBO/Vanilla/BHUNP) to that set. If 141700 is ever promoted to adopted, install 142095 over it as the physics layer — same pattern as Fluted (106791). 5,884 endorsements, v1.0 (Feb 2025).

### Not adopted (optional/marginal)

- **Indecent Exposure - Immersive Naked Reactions (48739)** — NOT ADOPTED (optional/marginal). wSkeever, 1,418 endorsements, v0.5.1 (Dec 2023). Public-indecency crime (5g fine / 100g bounty near children) + NPC flee reactions when stripped. Requires PapyrusUtils + SPID (both baseline-adjacent). Fits the adult-content direction on paper, but it is a niche reaction layer with its own bounty/crime dial that interacts with the guard/justice stack — verify guard-dial interplay and PapyrusUtils compat before it earns a slot in `modlist-adult.md`.

## Mods for review — VERDICTS (2026-08-07, 32-mod batch: armor/physics/cloaks/audio/dogs)

Reviewed 32 submitted mods against Elder Wilds pillars (redundancy, modlist adherence, conflicts, CS-compat, third-person/gamepad).

### Already in modlist (no change)

- **Book Covers Skyrim (901) + Lost Library (902)** — Core lock, `graphics-textures.md:253-256`. The 155254 PBR entry (below) is the only new action.
- **Faction Armors and Weapons Retexture (169281)** — Baseline, `weapons-armor.md:138`. Locked; owns faction-wide armor visual direction.
- **EVG CLAMBER (114753)** — Baseline, `animations.md:238`. No re-entry.
- **FSMP (57339)** — Baseline, `animations.md:228`. SMP-NPC crash fix (below) is the companion action.
- **Dynamic Female Hand Warming (88506)** — Alternative, `animations.md:295`. No re-entry.
- **Gesture Animation Remix (64420)** — Alternative, `animations.md:417`. No re-entry.
- **HDT-SMP Vanilla Armors (142450)** — Alternative, `graphics-characters.md:135`. No re-entry.

### Adopted (entry added to owning section file)

- **Book Covers Skyrim - PBR (155254)** — `graphics-textures.md` → Books (Base + Enhancements). PBR conversion of the locked BCS stack (901 + Enhanced Textures 178820); CS-pipeline-native, aligned with the exclusive Community Shaders rule. Install after BCS + Enhanced Textures. Choose 2K.
- **Glass Armors and Weapons Retexture SE (87580)** — `weapons-armor.md` → Armor Set Additions. Xavbio's Glass material tier, same author/direction as the locked Faction AIO (169281) + Ebony (83654). Choose 2K.
- **Fluted Armor family — base (106381) + HDT-SMP patch (106791) + HIMBO V5 (125169) + SPID (122563)** — `weapons-armor.md` → Armor Set Additions. Coherent 4thUnknown heavy-armor kit, esp-fe, FSMP + HIMBO-native (both baseline). SPID row distributes to NPCs.
- **Ash Pilgrim's Garments (53683) + Revived ports (72783)** — `weapons-armor.md` → Armor Set Additions. Base is female Dunmer light set; Revived adds Vanilla/3BA/BHUNP/HIMBO/beast paths + plugin fixes — install over base. 3BA + HIMBO fit the locked body baseline.
- **SMP-NPC crash fix (91616)** — `foundations.md` → Targeted Bugfixes. Prevents the known FSMP crash loading SMP-hair NPCs; required companion to the locked FSMP baseline. SKSE plugin.
- **Dragon Stalking Fix (14060)** — `foundations.md` → Targeted Bugfixes. Dragon corpses no longer follow the player or fall from the sky. ESL, SPID-based cleanup, requires Po3 Tweaks (baseline). 8.3K endorsements.
- **Diverse Dog Textures - SPID (105669)** — `creatures.md` → Additional Species Follow-Ups. 9 dog breeds via SPID skin shells; compatible with any dog-adding mod. **Verify overlap with Diverse True Wolves and Dogs (38058) — pick one dog-variety layer before install.**

### Tentative — evaluate before committing

- **FIBBI - Outfit Recognition Framework patches (163581)** — Requires the Outfit Recognition Framework (163502), which is **not currently in the modlist** (grep confirms no hit). Only adoptable if ORF is added as a framework. 433 endorsements; patches 150+ armor mods including Fluted, 4thUnknown, Xavbio sets. **DEFER until ORF adoption decision is made.**
- **Cloaks and Capes (2019) + 4K Upscaled (71327) + Dynamic HDT (173943)** — A second, older cloak family vs the locked Artesian Cloaks (17416) + Dynamic Artisan (146438) baseline. Treat as an Alternative identity, not a new baseline — decide at the cloak identity review. (2019's modern counterpart stays Cloaks of Skyrim 6369 + RMB SPCH 116030.)
- **Dynamic HDT - Papyrus Script Extension (63017)** — Modder resource restoring FSMP runtime hooks. Only needed if a chosen armor explicitly requires it; no armor in the adopted stack does. Optional.
- **Airgetlam - Modern Magic Sounds Rework (51541)** — Magic casting/sfx rework distinct from the locked Airgetlam - Shouts SFX (33993, `audio.md:45`, shout replacer). Audio layer already dense (ISC + AOS + Airgetlam-shouts); adding a second raw-casting replacement risks sound-layer duplication. Lower priority.

### Rejected

- **Frankly HD Dawnguard Armor and Weapons (19663)** — REJECTED. Conflicts with the locked Xavbio Faction Armors AIO (169281, `weapons-armor.md:138`), which owns Dawnguard armor/weapons visual direction. Two different authors on the same faction = broken coherence. (Same reasoning as the Dark Brotherhood Armor SE rejection, STATUS.md.)
- **HIMBO Skyrim and CC refits patches (144427)** — REJECTED (chain). HIMBO refit patch set tied to the Frankly HD Dawnguard path (19663, rejected above). TangyTweaks' HIMBO Conversions (135362, already in `weapons-armor.md:152`) is the established HIMBO-refit layer.
- **GLAM Jenassa Irileth (112715)** — REJECTED for now. Adult-content-gated NPC appearance retouch; NPC-appearance niche already owned by the comprehensive NPC baseline. Revisit only if targeted NPC appearance becomes a priority.
- **Alduin's Wall - Descriptions (111573)** — REJECTED. ESPFE description text for one wall mural; trivial flavor with zero mechanical content. Not worth a slot.
- **Alchemy Station Variants (92768)** — REJECTED. BOS mesh variety for alchemy stations; flavor-only visual variety vs the settled crafting/workshop visuals. No gap worth adopting.

### Optional / marginal — not adopted

- **FK's Diverse Racial Skeletons (38563)** — NOT ADOPTED. Replaces XPMSSE skeleton meshes per race for height/scale differences. Modlist owns **XPMSSE as the single skeleton baseline** (`animations.md:226`); a skeleton-layer replacement adds physics/anim risk (FSMP, OAR stacks) for cosmetic scale variance. Revisit only if height realism becomes a priority.
- **Armors Have Description (117818)** — NOT ADOPTED standalone. Requires the Description Framework (105799), whose Patch Hub (139077) is in `foundations.md:257` but the base framework is not listed. Chain-adopt only if the base Description Framework is added.

## Mods for review — VERDICTS (2026-08-07, 24-mod TODO batch)

Reviewed the 24 submitted mods from `TODO.md` against Elder Wilds pillars (redundancy, conflicts/overrides, dial-fights, CS-compat, third-person/gamepad).

### Already in modlist (no change)

These were already adopted in the modlist; remove the TODO line only. No re-entry.

- **Master Thief Armor 3BA-BHUNP-UNP-CBBE-HIMBO-Vanilla (141700)** — Already listed as Alternative at `modlist-weapons-armor.md:149`. FafnyB, 8,110 endorsements, v1.3 (Feb 2025); requires CBBE 3BA / HIMBO / BEES (all baseline). HDT-SMP patch (142095) stays chained per prior verdict — no change.
- **LeanWolf's Better-Shaped Weapons SE (2017)** — Already Baseline at `modlist-graphics-textures.md:26` (mesh replacer, no ESP). No change.
- **Missives - Voice and Quest Expansion (166094)** — Already at `modlist-world-content.md:342`. No change.
- **Real Wheat Fields (151229)** — Already adopted at `modlist-graphics-terrain.md:84`. No change.

### Adopted (entry added to owning section file)

- **Naked Dead NPC Fix (99024)** — SKSE plugin (wSkeever) that auto-equips body/hands/feet/head slots on a dead NPC that loads naked (outfit-distribution glitch). Zero records, "compatible with everything, always safe to install/update/uninstall". `modlist-foundations.md` → Targeted Bugfix Mods.
- **Native EditorID Fix (85260)** — KitsuuneNivis, 6,818 endorsements, v1.2.2 (updated Apr 2024). Bug-fix utility (Bug Fixes/SKSE) correcting engine-side native EditorID handling for plugin/lookup strings. SKSE, requires Address Library (baseline). `modlist-foundations.md` → Targeted Bugfix Mods.
- **JS Solitude Sewer Cover SE (104980)** — johnskyrim, 3D remake of the Solitude sewer grate with opening-closing animation for activators; no ESP, straight-swap replacer. `modlist-graphics-textures.md` → Additional Texture And Mesh Replacements (JS clutter line).
- **JS Shout Apart Skeletons SE (72548)** — johnskyrim, Unrelenting Force instantly destroys weaker skeletons and pushes their bones apart (no vanilla record edits). Requires PapyrusUtil, Po3 Extender, Po3 Tweaks, SPID (all baseline). Complements the locked **Skeletons SE** (124394) direction. `modlist-creatures.md` → Creature Behavior Improvements.
- **JS Dwemer Puzzle Cube (68570) / JS Dwemer Artifacts (67631) / JS Dwemer Control Cube (70257)** — johnskyrim Dwemer clutter retextures; no records, complement the locked Dwemer visual stack. `modlist-graphics-textures.md` → Additional Texture And Mesh Replacements.
- **Modular SMP Hairstyles (93608)** — Everglaid, 100+ unisex standalone SMP hairstyles added to the hair slider (combo front/back option). Requires FSMP (baseline); self-facing weight; verify the SMP-NPC crash fix for any distribution. Additive, not replacer. `modlist-graphics-characters.md` → Hair, Eyes, And Beards.
- **RUSTIC RELIEFS (34684)** — Gamwich, 2K retexture of monuments & tombstones, standing stones, word walls, regional murals. **Verify mural overlap with Temples of the Ancients (38544)** and standing-stone coverage vs Ryn's Standing Stones (64256) before locking. `modlist-graphics-textures.md` → Additional Texture And Mesh Replacements.
- **Softly Obscuring Snowfall - No Dirty Ruins Snow (152163)** — ra2phoenix, 990 endorsements, v1.5 (Mar 2026). Mesh-level fix removing dirty brown vertex shading so snow reads fresh/clean; meshes built from vanilla/SMIM/AMF. FOMOD patches for Snozz' Resource Pack, Enhanced Rocks and Mountains, Wyrmstooth, Deadly Dragon Lairs (skip the Simplicity of Snow patch — SoS rejected, 2026-08-11). `modlist-graphics-terrain.md` → Snow And Support.
- **JaySuS Swords SE (29415)** — 50 craftable/looted weapons; classic old-school pack but v1.8 (Dec 2020) and strict permissions. Added as **Alternative** weapon pack (see note: modern packs — Billyro, Reforging - To the Masses — fill the same niche). LoTD patch available. `modlist-weapons-armor.md` → Weapon Pack Additions.

### Tentative (verify before adopting)

- **Skyrim Food Expansion (110935)** — AlaxoucheModding, 3.1.0 (Jul 2026, active). 250+ high-poly food items replacing & expanding the food set. **Use the BOS/Model Swapper version** to avoid global overrides; verify coexistence with **Realistic HD Food Remastered** (baseline) and Diverse Foods. Pairs with Gourmet. Reserve a slot in `modlist-expanded-crafting.md` (Food) once verified.
- **CoverKhajiits - Face Textures 4K SE (71067) with Terre's 4K Fur (76568)** — Khajiit face retexture (XilaMonstrr, v1.3 Jan 2023) + fur body layer. Carries the **AI-Generated Content** tag (ESRGAN/Cupscale upscale) — quality-eval per curation policy; verify against the **BnP beast-race skin coherence gate** (same as the Feminine Argonian/Khajiit tentatives); 76568 is adult-content-gated (page behind the NSFW wall) — mark **user to provide** the acceptance call on the gated page. Tentative.
- **Triple Triad Card Game (42522) with Replacement/Additional Cards (50983) and Improved AI (180922)** — card-game minigame with a third-person/gamepad card-UI parity gate (verify the card-table interaction works on gamepad, no mouse-only prompts). Base 42522 is the gate; 50983 (card skins) and 180922 (AI) chain only if the base is adopted. 180922 flags a new-game requirement. Tentative.

### Rejected

- **Missing Follower Dialogue Edit (56115)** — REJECTED. Modder's resource implementing missing follower dialogue + marriage lines, but the author **dropped Relationship Dialogue Overhaul (RDO) patch support in v2.5.2**, and RDO is a locked baseline. A follower-dialogue layer that breaks the RDO bridge is incoherent; the modlist already owns that niche via RDO.
- **Racial Body Morphs SE (20684)** — REJECTED. Per-race NIF body-shaping that is **incompatible with any mods that edit races**, and the modlist owns a single XPMSSE **skeleton baseline** (`animations.md`). Same rationale as the FK's Diverse Racial Skeletons rejection.
- **More Ovens - Skyrim (141252)** — REJECTED. 37 endorsements, adds Hearthfire ovens into Jarl palaces/taverns via **interior cell edits** — cell-edit conflict risk against locked interior stacks, trivial gameplay value, very low signal.

### Optional / marginal — not adopted

- **Terre's 4K Fur for CoverKhajiits (76568)** — folded under the CoverKhajiits face tentative above as the paired body layer.

### TODO cleanup

All 24 lines cleared from `TODO.md`: 4 already-in-modlist entries (no action), 11 adopted (section entries added), 3 tentative, 3 rejected, 1 marginal, 2 folded into chained pairs.

## Mods for review — VERDICTS (2026-08-07, 13-mod TODO batch)

Reviewed the 13 submitted mods from `TODO.md` against Elder Wilds pillars (redundancy, conflicts/overrides, dial-fights, CS-compat, third-person/gamepad, music-stack identity).

### Already in modlist (remove TODO line only)

- **Environs - Abandoned Abodes (82410)** — Already `modlist-world-content.md` (Points Of Interest And Roadside Content baseline). Remove from TODO.
- **Nyghtfall - Dark Fantasy Music (39011)** — Already `modlist-audio.md` (Music Overhaul Strategy baseline). Keep; the audio row says "Evaluate after baseline is in place" — now resolved, treat as the dark-fantasy music layer. Remove from TODO.
- **The Northerner Diaries - Immersive Edition (28108)** — Already `modlist-audio.md` (Music Overhaul Strategy baseline). **Link fix 2026-08-07:** the row pointed at `33903` (an unrelated Whiterun texture mod); corrected to `28108` (ak0d, v1.3, 8 curated Soule exploration tracks, Skyrim + Solstheim). No new entry. Remove from TODO.

### Adopted (entry added to owning section file)

- **Caves of Morrowind (13745)** — Speedygun1, 928 endorsements, V3.1 (Aug 2022). Hand-authored new-cave/dungeon pack in the Velothi Mountains (Dunmer smuggling operation). Self-contained cells, vanilla-asset-only (PS4-origin), no scripts/quests, navmesh + LOD generated. Level 15+ recommended. `modlist-world-content.md` → Dungeons And Ruins (baseline). New-content pillar fit.
- **Hun Lovaas - Skyrim Fan-Made Combat Music (16123)** — OrganicView, 5,560 endorsements, v1.0 (2018). Entirely new combat tracks written for Skyrim; **non-replacer** variant so it introduces music rather than overriding, merged via Synthesis. `modlist-audio.md` → Music Overhaul Strategy (baseline row). **Pre-2020 (v1.0, 2018) — verify native AE support before locking** (audio Risks note).
- **Darkend (10423)** — JKrojmal, 12,166 endorsements, v1.4 (2018). Dark-Souls-inspired island of Pharos — no quest, no hand-holding, level-15+ explorer content; new enemies + Ancient weapon set. LoTD patch available. `modlist-world-content.md` → New Lands (High-Commitment). Strong fit for the "big dark world" pillar; self-contained island, minimal Skyrim-cell conflict.
- **Morning Fogs SSE (21436)** — ported by Ionas177, 10,556 endorsements, v1.3.1 (2019). Rolling morning fog over lakes/rivers with MCM (time windows + spawn chance). Additive atmospheric fog only — compatible with everything except `Interior Floating Fog Remover`. `modlist-graphics-weather.md` → Weather And Atmosphere (Azurite III Addon). **Verify fog density/third-person readability vs Mists of Tamriel and Azurite III CS fog overhead before locking.**
- **Vampires Cast No Shadow 2 (46107)** — powerofthree, 4,307 endorsements, v1.2.2 (2024). SKSE plugin: vampires (humanoid + VL) cast no shadow when out in the sun. Zero records, compatible with every mesh/vampire mod; requires SKSE + Address Library (baseline). `modlist-expanded-character.md` → Vampire family add-on. Aligns sunlight behavior with vampire lore in a nocturnal world.

### Adopted (minor) — pending one gate

- **Racemenu - Thigh Position Sliders (59689)** — Team XPMSE + Acro, 1,992 endorsements, v1.0.0 (2021). 3 thigh sliders (Up/Down, Forward/Back, Spacing) in Body Scale. Requires RaceMenu + XPMSSE (both baseline). Overwrites `Scripts/RaceMenuPluginXPMSE.pex` — by the XPMSSE team itself, so low intrinsic conflict, but that file is the locked XPMSSE skeleton plugin. `modlist-graphics-characters.md` → Body Variety And Distribution row added **pending confirmation the overwritten plugin matches the locked XPMSSE version**.

### Tentative — evaluate before committing (no section entry yet)

- **ABT AE - Arrows and Bolts Tweaks (4683)** — kevkas, 9,477 endorsements, v2.1 (2021). Modular arrow/bolt tweaks. **Dial-fight:** `Weapon Stat Synthesis Patcher`, `Speed/Reach Normalization`, and `AmmoTweaks` already run in the locked Synthesis pipeline and own arrow/bolt stat, leveled-list, and vendor balance. Adopt only non-stat feel modules (arrow/bolt speed + gravity, unique-ammo re-textures); avoid `Progressive Damage` and `Rebalanced Crafting` (leveled-list/vendor edits fight the locked pipeline). Candidate home `modlist-weapons-armor.md` (ammo side) once the module split is confirmed.

### Rejected

- **Celtic Music in Skyrim SE (2980)** — 15,742 endorsements, v2.1 (**Nov 2016**). 79 Adrian von Ziegler tracks across explore/town/dungeon/combat, but the author explicitly warns against combining with other music mods editing the same music categories — the music stack deliberately merges several music mods via Synthesis. Pre-2020 era + tonal overlap with the adopted Nordic/viking line → incoherent for the music-merge composition. Revisit only if a standalone "Celtic/folk isolate" swap is wanted later.

### Not adopted (optional/marginal)

- **Lunar Weapon Replacers (43221)** — CasualKhajiit, 859 endorsements, v1.3.2 (2020). Remodels the vanilla "Lunar" weapon family (mace/war-axe/sword/iron variants) with ClipsyMoon models; ESL-flagged, standalone, LoTD patch. Tiny niche for a scarce vanilla set — no gap vs the curated weapon-pack stack. Optional/marginal.
- **Lush Dragonsreach Pools (138250)** — freshly uploaded v1.0.0 with **0 total views** (small foliage addition around Dragonsreach). Too new/small to adopt; re-evaluate once it establishes a signal. Optional.

### TODO cleanup

All 13 lines cleared from `TODO.md`. (3 already-in-modlist — incl. the Northerner audio link fix; 4 adopted; 1 adopted-minor pending the XPMSSE plugin check; 2 tentative; 1 rejected; 2 marginal/not adopted.)

## Crash triage — save-load INT_DIVIDE_BY_ZERO (2026-08-08) — RESOLVED

- **Save-load crash on the foundations test-skeleton (15 plugins, MO2)** — **RESOLVED (2026-08-08).** Root cause: the repo's own **`iAutoSaveCount=0`** instruction in the BethINI baseline (→ `modlist-performance-optimization.md`, mirrored in the SSSO3 install section of `modlist-foundations.md`). `EXCEPTION_INT_DIVIDE_BY_ZERO` at `SkyrimSE.exe+0x616FBB` (`div` on a zeroed engine `Save`-path global, RVA `0x2012140`): the engine divides by the autosave slot count while loading, so `0` crashes the instant a save loads from the main menu. **User-verified: reverting to `iAutoSaveCount=3` (default) fixes the same save with no other change.**
- **Action:** both guide baseline files now prescribe `iAutoSaveCount=3` and disable autosave *triggers* via BethINI ticks + SSSO3 only; PDF rebuilt. Verdict: **no mod involved** — the failing save itself is fine. Archive: `reports/skyrim-crash-triage-2026-08-08-save-load-div0.md`.
## Mods for review — VERDICTS (2026-08-11, 10-mod batch)

Reviewed 10 submitted mods against Elder Wilds pillars (CS-compatibility, third-person/gamepad parity, redundancy, conflicts, overpower). See full discussion above for Tomato's Solitude vs VPBR and Skyking vs Numinous comparisons.

### Adopted

- **Tomato's Solitude Remastered - PBR-CPM (181707)** — Adopted as city-specific PBR override. Tomatokillz (same author as 3 locked baselines: TomatoRim PBR Landscapes, PBR Farmhouses 2.0, Whiterun Remake). PBR-native, CS + PGPatcher. Compatible with Grand Solitude + WSU (both baseline). FOMOD → PBR branch, 2K. `modlist-graphics-textures.md` → PBR Baseline (alongside Whiterun Remake).
- **Solitude - Square of Akatosh (175460)** — Adopted. Akatosh statue in Castle Dour square (pedestal or fountain variant) + relocated seating. ESP-FE. Compatible with Grand Solitude (baseline). 206 endorsements, v2.5 (Jul 2026). Fits "Living the world" / Imperial-authority theme. **Choose fountain variant.** Verify seasonal-swap uses Turn of the Seasons (baseline) path. `modlist-world-content.md` → Cities baseline.
- **HDT-SMP College Mage Robes (183045)** — Adopted. FSMP cloth physics for vanilla College mage robes (Apprentice, Journeyman, Archmage, CC Vagrant). Compatible with CBBE, 3BA, HIMBO. Requires FSMP (baseline). 567 endorsements, v1.01 (Jun 2026). Fills uncovered niche (no mage-robe physics in list). `modlist-graphics-characters.md` → Clothing And Armor Texture Upgrades.
- **Mage Clothing Expansion (128173)** — Adopted. 25 new lore-friendly mage robes (9m/9f, darker variants + hood). Craftable at tanning rack (3 leather). SPID distribution to College NPCs. Prebuilt HIMBO + CBBE Curvy meshes. ESL-flagged. 7,093 endorsements, v2.0.1 (Sep 2024). `modlist-graphics-characters.md` → Clothing And Armor Texture Upgrades.
- **Mage Clothing Expansion - 3BA Uniboob (128838)** — Chain-adopted. CBBE 3BA conversion for MCE. Required for body-stack consistency (SlimFantasy 3BA preset). `modlist-graphics-characters.md` → Clothing And Armor Texture Upgrades.
- **Clutter-free HIMBO College Robes and MCE (133675)** — Chain-adopted. BodySlide zap projects for HIMBO college robes + HDT-SMP CMR + MCE (satchel/pouch, sleeve/pants cuffs, collar, fur trim). Fixes vertex scrunching on HIMBO's stock Archmage robes. FOMOD. 68 endorsements, v1.2.4 (Jun 2026). Requires 183045 + 128173. `modlist-graphics-characters.md` → Clothing And Armor Texture Upgrades.
- **Skyking Nordic Ruins Complex Parallax (183021)** — Adopted. By Skyking2020 (Skyland AIO author). Complete Nordic ruins retexture with CP textures + custom stair/platform meshes + ivy/root coverage. CS + PGPatcher native. 210 endorsements, v1 (Jun 2026). Supersedes Numinous Nord Ruins tentative (146766, now rejected — ENB-oriented, author forbids CS PBR porting). **Choose 2K.** `modlist-graphics-textures.md` → PBR Baseline (dungeon override).

### Tentative — evaluate before committing

- **Orc Sentries (174478)** — Tentative (adoptable minor). Female Orc sentries (guards, patrols, wall sentinels) at all Orc strongholds. ESP-FE, no vanilla edits. 77 endorsements, v1.0.2 (Apr 2026). Verify: sentry placement vs stronghold stealth approaches, CC pack availability for SkyPatcher weapon integration. `modlist-world-content.md` → Points of Interest baseline.

### Rejected

- **JK's Riften Outskirts - NPCs unofficial addon (183147)** — REJECTED. Shaky permissions (author couldn't reach jkrojmal), 22 endorsements, marginal value (2 hunters, 1 fisherman, generic refugee camp). JK's Riften Outskirts + Crossed Daggers already populate the Riften exterior.
- **Better Life For Traitors Post Bandits (183848)** — NOT ADOPTED (marginal). Single-location bandit camp polish (21 endorsements), Traitor's Post is a minor location visited once. Patches for mods not in baseline (IHB, Khajiit Will Follow). Revisit only if a broader bandit-camp series emerges.

## Mods for review — VERDICTS (2026-08-11, 66-mod TODO batch)

Reviewed all 66 mods from `TODO.md` against Elder Wilds pillars (CS-exclusive, third-person/gamepad parity, 1.6.1170, LotD anchor, modern mechanics, grim-dark aesthetic). Consolidated across 6 parallel scout subagents plus direct page reads.

### Already in modlist (remove from TODO — no new entries needed)

- **Shrubs of Snow (63463)** — Already adopted as Seasons of Skyrim companion (STATUS.md 2026-08-07).
- **Seasonal Landscapes (66903)** — Already rejected (STATUS.md 2026-08-07). Stays rejected.
- **JK's Tel Mithryn (151512)** — Already adopted in `modlist-world-content.md` → Cities. 2,358 endo, v1.0.2. Remove from TODO.
- **Dova Jump (125550)** — Already in `modlist-animations.md`. 2,572 endo, v0.9.1.3 (Jul 2026).
- **Next Gen Dragon VFX (168405)** — Already in `modlist-creatures.md`. 885 endo, v2.0 (Jul 2026).
- **Spider SE (182638)** — Already in `modlist-creatures.md` (Xtudo baselines). 880 endo, v3 (Jun 2026).
- **Dynamic Things Alternative (60741)** — Already in `modlist-graphics-textures.md`. 8,723 endo, v0.4.1 (Apr 2026).
- **Better Third Person Selection - BTPS (64339)** — Already in `modlist-third-person.md`. 27,200 endo, v0.8.9 (Jun 2025).
- **Atlas Map Markers SE (24104)** — Already in `modlist-ui.md`. 20,559 endo, v3.0.4 (Mar 2025).
- **CoMAP (56123)** — Already in `modlist-ui.md`. 11,355 endo, v4.4.0 (May 2026).
- **Sentinel - An Equipment Overhaul (100985)** — Already in `modlist-weapons-armor.md`. 5,637 endo, v3.1.0 (Mar 2025).
- **RSE - Shoulder Or Saddle (170232)** — Already in `modlist-world-feel.md`. 988 endo, v1.4 (May 2026).
- **Dynamic Bloodpool Framework (172080)** — Already in `modlist-graphics-textures.md`. 2,761 endo, v1.1.0 (Jul 2026).
- **Lund's Hamlet (169830)** — Already in `modlist-world-content.md`. 472 endo, v1.4.1 (Jun 2026).
- **Blackreach Paper Map for FWMF (53878)** — Already in `modlist-ui.md` (Alternative). Promoted to baseline per FWMF confirmation.
- **Beyond Reach Paper Map for FWMF (119215)** — Already in `modlist-ui.md` (Alternative). Promoted to baseline per FWMF confirmation.

### Adopted (needs new entry in owning section file)

- **Cliff Racers Fly So High (107758)** — ADOPTED. Mihail, 1,060 endorsements, v1 (Dec 2023). Ambient passive Cliff Racers in Solstheim skies + ingredient/food. Not enemies — ambient critters. Zero known incompatibilities. Fits "living the world" pillar. `modlist-creatures.md` → Ambient Wildlife. **Single main file.**

### Adopted — resolved from tentative (needs new entries)

- **KG Animations - Two-handers (101541)** — ADOPTED. 1,375 endo, v3.0 (Aug 2026). Two-handed weapon animation replacer using only OAR+AMR — zero behavior patching, no BDI/annotation fix. Unlike rejected One-handers sibling, this stays in pure animation territory. Unlikely to conflict with BFCO; if it does, revert. `modlist-animations.md` → Combat Animations. **Single file v3.0.**
- **Unbound Unbent Unbroken - Uthgerd Overhaul (137461)** — ADOPTED. SerketHetyt, 923 endo, v1.0 (Jan 2025). Brienne-of-Tarth single-NPC replacer. Fits DF Edit NPC pattern. Requires BEES (baseline) + Wind Ruler Armor SE (60842, chain-adopted below). Restrictive permissions — respect author's no-modification terms. `modlist-npcs.md` → NPC Appearance → Individual Overrides. **Main file v1.0.**
- **Wind Ruler Armor SE (60842)** — ADOPTED (chain). 4thUnknown, 8,660 endo, v1 (Dec 2021). Standalone heavy armor set + two-handed sword. Found via Kyne's Sacred Trials / underwater. New armor addition — no conflict with Xavbio retextures. Required by Uthgerd Overhaul. `modlist-weapons-armor.md` → Armor Set Additions. **Single main file.**
- **HS Riverwood - Sleeping Giant Inn (86092)** — ADOPTED. HyliosSykes, 1,133 endo, v1.0.0 (Apr 2023). Modular inn interior overhaul. Requires HS Resources (72307). Spaghetti's mods are exterior-only — zero conflict with Sleeping Giant interior. `modlist-world-content.md` → Interiors. **Main file v1.0.0.**
- **Medieval Markets (161479)** — ADOPTED. JJerem, 1,056 endo, v1.1 (Oct 2025). City market overhaul with custom Blender models. **Confirmed: patch collection 161664 explicitly includes JK's Skyrim and Spaghetti's Cities patches.** FOMOD covers 30+ city overhauls. `modlist-world-content.md` → City Overhauls. **Main file v1.1.**
- **Medieval Markets - Patches Collection (161664)** — ADOPTED (chain). 1,225 endo, v1.6.0 (May 2026). FOMOD patches for JK's Skyrim, Spaghetti's Cities, Dawn of Skyrim, 30+ mods. Required with base Medieval Markets. `modlist-patches.md`. **FOMOD + Fixes and Optimization.**
- **Flame Atronach SE - Ember XD Flames patch (115432)** — ADOPTED. Lysril, 303 endo, v1.1 (Feb 2026). Mesh patch applying Embers XD flame shaders to 4thUnknown's Flame Atronach. Embers XD is locked baseline (lighting.md:33). Minor visual artifact ("spooky" transparent skeleton) fits grim-dark. `modlist-graphics-effects.md` → Creature VFX. **Main file v1.1.**
- **OII - BTPS - MoreHUD Patch (157465)** — ADOPTED. EbonyWarriorIRL, 103 endo, v0.1 (Aug 2025). .ini tweak for OII + BTPS + MoreHUD coexistence. MoreHUD is mandatory baseline (ui.md:74). Zero risk. `modlist-ui.md` → Compatibility Patches. **Single file.**


### Rejected

- **KG Animations - One-handers and Dual Wield (129519)** — REJECTED. 732 endo, v1.3 (May 2025). Explicit "vanilla combat system" — hard incompatibility with locked BFCO baseline.
- **Ivy's Riverwood Overhaul (151441)** — REJECTED. 894 endo, v1.6.1 (Aug 2026). Full Riverwood cell rebuild conflicts with Spaghetti's Towns - Riverwood + Fleiwas Riverwood Addition.
- **4thUnknown's True PBR Patches (135793)** — REJECTED. 301 endo, v1 (Dec 2024). Depends on non-adopted 4thUnknown armor mods. Xavbio AIO handles that niche.
- **Temples of the Ancients (38544)** — REJECTED. 4,296 endo, v1.2 (Jul 2020). Redundant with Skyking Nordic Ruins Complex Parallax (183021, adopted 2026-08-11).
- **Tomato's 8K Assorted Mountain Textures (109986)** — REJECTED. TomatoRim PBR Landscapes includes mountains — redundant, same author.
- **Ivy's PBR Repo (177582)** — REJECTED. Chain-moot — requires base Ivy mods not adopted.
- **Ivy's Riverwood - HS Sleeping Giant patch (165841)** — REJECTED. Chain-moot — both parent mods rejected/unnecessary.
- **Dovah Rider Carriage - Reborn (159566)** — REJECTED (user instruction). 1GB, overlaps RSE, gamepad unverified.
- **True Flasks NG (170374)** — REJECTED. Apothecary (52130) is baseline alchemy overhaul — flask system fights established direction.

### Adopted — FWMF chain (promoted, needs new entries)

- **Community Shaders - FWMF Map Brightness Fix (171391)** — ADOPTED. Bridge patch for CS + FWMF. `modlist-ui.md` → Map Framework. **Single file v1.**
- **Duncan's Paper Maps for FWMF (55025)** — ADOPTED. Solstheim, Wyrmstooth, Falskaar, Alik'r maps. Skip Bruma (prefer Mirhayasu). `modlist-ui.md` → Map Framework. **FOMOD v1.8.2.**
- **Mirhayasu Bruma Paper Map for FWMF (64037)** — ADOPTED. ~8K, more detailed than Duncan's Bruma. `modlist-ui.md` → Map Framework. **Single file v1.8.1.**
- **EC:SS Paper Map for FWMF (88709)** — ADOPTED. Shivering Isles Fringe. `modlist-ui.md` → Map Framework. **Single file v1.1.1.**
- **Markarth Paper Map for FWMF (62386)** — ADOPTED. City map gap. `modlist-ui.md` → Map Framework. **Single file v1.8.1.**
- **Atlas Map Markers Overhaul (137793)** — ADOPTED. Lore-consistency names for Atlas. `modlist-ui.md` → Map & Navigation. **Single file.**
- **Atlas MCM Settings Loader (68573)** — ADOPTED. MCM Helper auto-save. `modlist-ui.md` → Map & Navigation. **Single v2.0.0.**

### Summary tally

| Verdict | Count |
|---------|-------|
| Already in modlist (no new entry) | 16 |
| Adopted (needs new entry) | 39 |
| Rejected | 11 |
| **Total reviewed** | **66** |

## Mods for review — VERDICTS (2026-08-12, Oathvein UI prerequisites)

User instruction: lock **STB Active Effects (140002)** and **Widescreen Scale Removed for 1.6.1130+ (136793)** as prerequisites of the locked Oathvein UI baseline (160916). Both appear on the Oathvein UI Nexus requirements list — STB Active Effects as soft requirement, Widescreen Scale Removed as hard requirement for 1.6.1130+ (list target 1.6.1170). Neither was previously in the modlist.

### Adopted — prerequisites of Oathvein UI

- **STB Active Effects (140002)** — ADOPTED as Oathvein UI prerequisite (user instruction). Replaces the standard SkyUI active-effects HUD icons with a configurable widget (position, scale, time/magnitude display, source grouping, custom icons). Requires Address Library (32444, baseline) + **SKSE Menu Framework (120352)** — promoted from Alternative to UI baseline, since STB hard-requires it and DBVO2 already assumed it in the UI stack (`modlist-voicing.md:30`). `modlist-ui.md` → UI Framework Prerequisites.
- **Widescreen Scale Removed for 1.6.1130 and higher (136793)** — ADOPTED as Oathvein UI prerequisite (user instruction). SKSE plugin removing Bethesda's native widescreen scaling (1.6.1130+) so Oathvein's Edge UI / Dear Diary–lineage SWFs render unsquished. Supersedes SWF unsquish fixes — the author explicitly warns against running unsquishing fixes alongside; **Complete Widescreen Fix (1778) must not be combined** (noted in `modlist-ui.md` → UI Scaling section). `modlist-ui.md` → UI Framework Prerequisites.
