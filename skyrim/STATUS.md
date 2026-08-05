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
