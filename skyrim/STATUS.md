# Mod resolution and decisions

## Resolutions

- **Dragon Bard Ultimate (151231)** — REJECTED. Skyrim's Got Talent is locked as the bard gameplay baseline. Dragon Bard Ultimate adds playable instruments + singing with custom animations but conflicts with the locked baseline. Heavy Pandora maintenance cost for niche value. Revisit only if Bard College expansion becomes a priority.

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
- **#11 Northern Vanilla Farmhouses (91311)** — Adopted alongside **No Snow Under the Roof (518)** as a new prerequisite. NSUTR adds 3D snow geometry (complementary to Simplicity of Snow's shader snow). Northern Vanilla Farmhouses ports COTN roof assets to vanilla farmhouses — aesthetic coherence with COTN Dawnstar/Morthal/Falkreath/Winterhold baselines. World Feel → Architecture section. Verify right file from 10 options.
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
- **#15 Numinous Nord Ruins (146766)** — Complex Parallax Nordic dungeon retexture. Requires Parallax Gen (120946). Evaluate CS Complex Material compatibility. **Choose 4K** if adopted.
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
- **Extended Guard Dialogue (106523)** — Rejected. Tortoise/RVC AI-generated guard lines. The guard-flavor niche is already owned by Guard Dialogue Overhaul (baseline) + Echoes of Oblivion; on top of that this fails the AI-content gate. No gap worth the voice-quality risk.
- **New Female Guard Voices (125124)** — Rejected as a pair with 106523. ElevenLabs AI voice; same AI-gate failure and the same already-covered guard niche. Green-lighting any guard AI voice would open a precedent the list does not want.
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

- **Simple Inn Bath (49014)** — Already listed as the inn-bathhouse option in `modlist-expanded-survival.md` (Roleplay Upkeep And Hygiene). Also confirms the duplicate entry in this batch (listed twice) — no re-entry.
- **Eating Animations and Sounds (42602)** — Added as Alternative (see below), not a baseline change.

### Adopted (entry added to owning section file)

- **Sleeping Expanded (59250)** — `modlist-world-feel.md` → Sleep And Bedtime Life (new). JaySerpa, 15,444 endorsements, v1.23 (Aug 2023). NPC sleeping/breathing animations, ~100 woken-up reactions (fully voiced via spliced vanilla lines), context-aware get-in/get-out-of-bed speeds (combat = fast exit). ESL, no vanilla edits, no conflict risk. DAR-based but satisfies the OAR baseline (OAR loads DAR animation folders). Fits "Living the world" + combat bed-exit QoL. **Choose main file** (DAR-less file only if OAR absent — it is baseline).
- **I'm Glad You're Here (41856)** — `modlist-expanded-followers.md` → Romance, Marriage, And Companionship (Add-on). Fully-voiced follower/spouse/adopted-kids appreciation via dialogue + hug animation (Embrace by Novum-Semita). v3.6.0 (Apr 2026, actively maintained), 10,046 endorsements. Requires FLM, KID, SPID, OAR, MCM Helper, SKSE — all baseline. Verify dialogue-topic overlap with the locked `RDO` baseline in testing (spouse/follower lines) — different topics, expected to coexist.
- **Choose Your Starting Skills and Stats (25630) + Choose Your Starting Skills - Oathvein UI (170671)** — `modlist-expanded-character.md` → Character Creation And Starting Choices (Add-on). lilebonymace, v5.2, 647 endorsements. New-game dialogue to pick starting skills/perks — complements the locked Skyrim Unbound Reborn + Why I Came to Skyrim start. Does not fight the locked Experience/Static Skill Leveling progression (sets starting state only). **Install both**: 25630 main + the Oathvein UI patch (170671) since Oathvein UI is the locked UI baseline.
- **Autumngate (60951)** — `modlist-world-content.md` → Player Homes (new). Small believable player home southeast of Ivarstead (Rift), ESL, 1,170 endorsements, v1.1 (Jan 2022). Four FOMOD versions (Standard / Forge / Reduced Clutter / RC Forge) + add-ons. **User instruction: select the Purchasable House add-on** (house purchasable from Wilhem at Vilemyr Inn for 12,000 gold; dialogue appears after 24 in-game hours or a quicksave/reload). Optional Enchanting Table add-on acceptable. Note: Purchasable add-on voice lines use xVASynth (AI-voiced, single NPC) — quality eval per policy; user-approved. Verify navmesh against Ivarstead-area mods (author tested JK's Skyrim + Great Town of Ivarstead; Northern Roads patch exists).
- **Today's Menu (55187)** — `modlist-world-content.md` → Inns (Tavern Life). Buy the inn's daily menu from innkeepers (20 gold): randomized main dish + drink + side/dessert, once per day per inn, locality-aware. v1.1 (Oct 2021), 521 endorsements. No hard incompatibilities; food distributed via custom leveled lists (editable). Complements the Candlehearth inn baseline.
- **Coherent Inns Prices (55207)** — `modlist-world-content.md` → Inns (Tavern Life). Location-based inn prices (cheap 40 / normal 70 / expensive 100; main-city inns and Old Hroldan expensive). v1.2 (June 2026, actively maintained), 802 endorsements. Contained per-inn economy dial — does not touch the locked OWL / Trade and Barter stack. **Use the provided Candlehearth patch** (locked inn baseline); skip the "More Expensive" add-on (141377 — values configurable via globals). Also compatible with Extended Stay / Inns Can Be Closed.
- **Tavern Games (1668)** — `modlist-world-content.md` → Inns (Tavern Life). Card ("Battle of Heroes"), dice, and lottery mini-games at any tavern (patron or innkeeper), plus tavern vouchers (3 free nights). v1.2.1, 3,653 endorsements, SKSE-free SE version. Top-down camera like Witcher/Fable; Xbox One port exists (gamepad-native evidence). **Verify controller inputs in testing** — 2016-era SkyUILib UI and forced top-down camera need a gamepad pass before locking.
- **Tavern Games - Ink-art Card Retexture (172419)** — Chain-adopted as companion to 1668 (card visuals). v1.0, 13 endorsements. Only with Tavern Games.
- **Steaming Hot Soups and Stews (63580)** — `modlist-expanded-crafting.md` → Cooking Visual Companions. Animated mesh/texture replacer for soup/stew bowls with subtle steam effect (NOT a recipe mod). v1.0 (Feb 2022), 1,655 endorsements. No ESP; compatible with soup/stew retextures. **Choose the SMIM bowl version** (SMIM baseline).

### Alternative (choose-one, no baseline change)

- **Eating Animations and Sounds (42602)** — `modlist-expanded-survival.md` → Eating & Drinking Animations (Alternative). v1.9.4, 11,210 endorsements. Competes with the **locked `Animated Eating Redux` baseline** (4652) on the same eating/drinking animation events — choose one; no baseline change.

### Rejected

- **JK's inn interiors — 8 mods (33783 Drunken Huntsman, 33845 Bannered Mare, 35806 Sleeping Giant Inn, 53554 Silver-Blood Inn, 43991 Winking Skeever, 45617 Candlehearth Hall, 48293 New Gnisis Cornerclub, 49516 Bee and Barb)** — REJECTED (as a cluster). All eight rebuild the same inn cells owned by the **locked `Candlehearth — An Inn Overhaul` inn baseline** (`modlist-world-content.md` → Inns, "every inn in Skyrim"). Each JK's interior is a bottom-slot, patch-heavy rebuild (JK's interiors historically need a patch for every mod touching that inn); adopting eight would fight the locked baseline cell-by-cell. Revisit only if the inn baseline is ever demoted.
- **Distinct Interiors (6130)** — REJECTED. Broad interior architecture/clutter retexture (v1.82, 554K views) that overlaps the locked **`SFCO` + `Snazzy Interiors` interior stack** (`graphics-textures.md`). Huge conflict surface vs the established Snazzy/Rally's cell-record baseline for marginal gain.
- **Distinct JK's Interiors (166734)** — REJECTED (chain). Patch collection bridging JK's inn interiors to Distinct Interiors; both prerequisites rejected above. Moot.
- **Lively Inns and Taverns — LIAT (17036)** — REJECTED. 2012 LE-era port (SSE v1.1, May 2018), permissions locked (no fixes allowed). Author explicitly notes incompatibility with any mod changing The Bannered Mare interior (Candlehearth baseline covers it). Tavern-sound plugin conflicts with the locked `Sounds of Skyrim Complete` baseline; its coarse NPC additions fight the curated NPC/population stack.
- **Goodnight Skyrim (95835)** — REJECTED. NPC comments when the player gets into bed; niche already owned by adopted **Sleeping Expanded** (59250), which covers NPC reactions around sleeping. Overlapping sleep-interaction flavor; no gap worth a separate listing.
- **Simple Inn Bath - Dialogue Expansion - DDR (158544)** — REJECTED. 80+ dialogue lines via DDR, but **AI-Generated Content tag** — fails the AI-content gate (same precedent as Extended Guard Dialogue / New Female Guard Voices). Also requires DDR (not in stack) + Simple Inn Bath (alternative only).
- **Coherent Inn Prices - More Expensive (141377)** — REJECTED. Trivial add-on that scales the base mod's price globals (11 endorsements). Base 55207 already stores prices in configurable globals the author explicitly documents editing; no separate listing needed.

### Deferred

- **Dynamic Dialogue Replacer — DDR (135618)** — DEFERRED. SKSE runtime dialogue-replacement framework (v1.4.1). No non-AI in-list consumer yet (its only submitted consumer, 158544, was rejected on the AI gate). Revisit as a dialogue-side OAR when a non-AI dialogue mod requires it.
- **Simple Inn Bath for New Lands — SPID (104314)** — DEFERRED. SPID patches granting Simple Inn Bath dialogue to Bruma/Falskaar/Obscure's COW/Beyond Reach/Wyrmstooth/Midwood Isle innkeepers. Only meaningful if Simple Inn Bath is promoted from alternative; the relevant new lands are already in the list, so it is a two-click add-on when that happens.
