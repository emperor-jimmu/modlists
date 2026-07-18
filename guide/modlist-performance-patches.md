# Bashed Patch & Synthesis Configuration

**MO2 Separators:** `Performance` → `Performance - Bashed Patch & Synthesis`

All items in this section belong to the `Performance` MO2 separator.

Part of the [`Performance and Technical Workflow`](modlist-performance.md) section.

---

## Patcher Discipline
The generic category maps only become useful when tied to the actual mods `Elder Wilds` ships with. This section is that binding: exact `Wrye Bash` tweaks, `Bash Tags` per plugin, and `Synthesis` patcher pipeline in exact order. Default is "do not touch" — add a `Synthesis` patcher or `Bash Tag` only when a specific mod in the list makes it necessary.

---

## Wrye Bash (Bashed Patch) Configuration
### Tweak Settings

Enable in *Wrye Bash* → *Bashed Patch* → *Tweakers* only the items below.

**Tweak Actors:**

- **Opposite Gender Anims: Female** and **Male** — needed for CBBE 3BA, HIMBO, KS Hairdos, EVG Conditional Idles, Goetia, Leviathan II packs.

**Tweak Assorted:**

- **All Armor Playable** — required by Immersive Armors (60+ sets with non-playable flag).
- **No Light Fade Value Fix** — CS Light, True Light, ELFX, Relighting Skyrim, Luminosity all interact with fade values.
- **No Light Flicker** — RAID Weathers, Cathedral, Obsidian, Azurite III CS weather variants.
- **Remove Load Screen Models** — SkyParkour v3, RaySense, Ricochet add 3D geometry that can leak into load screens.
- **Save Sorting Fix** — real issue with this much plugin weight.
- **Set Light Radii** — use 100% multiplier to leave lighting radii alone.
- **Set Sound Attenuation Levels: Nirnroots Only** — leave default.
- **Uniform Groundcover** — Skoglendi, Origins of Forest, Mari's flora need matching density variance.

**Tweak Names:**

- **Body Part Codes** — drive Sort: Armor/Clothes correctly with CBBE 3BA.
- **Sort: Armor/Clothes** — with Immersive Armors, Bruma, Spaghetti's Cities, unsorted inventory is unreadable.
- **Sort: Scrolls**, **Sort: Spells**, **Sort: Weapons/Ammunition** — Apocalypse, Mysticism, Odin, Adamant, Vokrii, Ordinator, Ars Metallica all add to these lists.
- **Lore Friendly Text: Dwarven -> Dwemer** — PBR textures use Dwemer terminology.

**Tweak Races:**

- **Races Have All Head Parts** — KS Hairdos adds hundreds; set types code to ~45.
- **Playable Head Parts**
- Leave **Force Behavior Graph Gender** off — Elder Wilds does not standardize that flag.

**Tweak Settings:**

- **AI: Bump Reaction Delay** — raise to Adult Content to mute spammy follower reactions.
- **AI: Conversation Chance** — leave default.
- **AI: Max Active Actors** — raise to 80.
- **AI: Max Dead Actors** — raise to 120.
- **Arrow: Max Arrows Attached to NPC** — raise to 20.
- **Combat: Max Actors** — raise to 60.
- **Combat: Stealth Damage Bonus** — leave default (RAID is canonical authority).
- **Msg: Cannot Equip Item Fix** — **must** be enabled (Campfire, Frostfall, SunHelm/Starfrost/Last Seed rely on it).
- **Msg: No Fast Travel** — leave default.
- **Player: Max Draggable Weight** — set to 1000.
- **Player: Underwater Breath Control** — leave default.
- **Soul Trap: Common/Grand/Greater/Lesser Soul Level** — set to vanilla values.
- **Visuals: Masser/Secunda Size/Speed** — set to 1.0.
- **Warning: Exterior/Interior Distance To Hostiles** — leave default.
- **World: Cell Respawn Time** / **Respawn Time (Cleared)** — leave default.
- **World: Timescale** — set to 20 and never change. **Save-baking warning:** this setting bakes into SSE saves.

### Bash Tags

Set the following `Bash Tags` on the listed plugins (one file per plugin under `Data\Bash Patches\`):

**Leveled List / Economy:**

- `Immersive Weapons.esp` — `Relev`
- `Immersive Armors.esp` — `Relev`
- `Immersive Armors Retexture.esp` — `Graphics` (retexture, not content add)
- `Hunterborn.esp` — `Invent.Add`, `Delev`, `Relev`
- `Simple Fishing Overhaul.esp` — `Invent.Add`, `C.MiscFlags`
- `Streamlined Fishing.esp` — `Invent.Add`
- `Open World Loot.esp` — `Delev`, `Relev`, `C.Encounter`
- `MorrowLoot Ultimate.esp` — `Delev`, `Relev`
- `Trade and Barter.esp` — `Stats`, `Invent.Change`
- `Ars Metallica.esp` — `Stats`, `Invent.Change`
- `Complete Crafting Overhaul Remastered.esp` — `Stats`, `Invent.Change`
- `Honed Metal.esp` — `Invent.Change`
- `Apothecary.esp` — `Invent.Add`, `Stats`, `Keywords`
- `CACO.esp` — `Invent.Add`, `Stats`, `Keywords`
- `Alchemy Potions and Food Adjustments.esp` — `Stats`, `Keywords`

**Race / Perk / Magic:**

- `Aetherius.esp` / `Morningstar.esp` / `Imperious.esp` — `R.AddSpells` (whichever wins)
- `Adamant.esp` / `Vokrii.esp` / `Ordinator.esp` — `NPC.Perks.Change`, `NPC.Perks.Add`
- `Mysticism.esp` / `Odin.esp` / `Apocalypse.esp` — `SpellStats`, `EffectStats`

**Lighting / Weather / Water:**

- `CS Light.esp` / `True Light.esp` — `C.Light`, `C.ImageSpace`
- `ELFX.esp` / `ELFX - Shadows.esp` — `C.Light`, `C.Fog`
- `Relighting Skyrim.esp` / `Luminosity.esp` — `C.Light`
- `RAID Weathers.esp` / `Raid Weathers CS.esp` — `C.Climate`, `C.Music` (if pack changes music)
- `Cathedral Weathers.esp` / `Obsidian Weathers.esp` / `Obsidian - CS.esp` — `C.Climate`
- `Realistic Water Two.esp` — `C.Water`
- `A Water Made For CS in mind.esp` — `C.Water`
- `Simplicity of Sea.esp` — `C.Water`
- `Enhanced Rocks and Mountains.esp` / `Fix and Addon.esp` — `Graphics`, `ObjectBounds`

**City / Worldspace:**

- `Beyond Skyrim - Bruma SE.esp` — `C.Climate`, `C.Music`, `C.Light`, `C.Water`, `C.ImageSpace`, `C.Location`, `C.Regions`
- `Spaghetti's Cities - AIO.esp` — `C.Light`, `C.MiscFlags`
- `The Great Cities - Minor Cities and Towns SSE.esp` / `Dawn of Skyrim (Director's Cut) SE.esp` / `JK's Skyrim.esp` — `C.Light`, `C.MiscFlags`

**NPC / Dialogue / Audio:**

- `RUSTIC CLUTTER COLLECTION.esp` / `RUSTIC CLOTHING.esp` — `Names`, `Stats`
- `High Poly Project.esp` — `Graphics`, `ObjectBounds`
- `KS Hairdos SSE.esp` — `Graphics`, `Names`
- `High Poly True to Vanilla NPC Overhaul.esp` — `Graphics`, `Names`, `Actors.Stats`
- `RDO.esp` — `Actors.AIPackages`, `Actors.Spells`
- `Amorous Adventures.esp` (clean) — `Actors.AIPackagesForceAdd`, `Actors.SpellsForceAdd`, `Invent.Add`
- `Marriage Mod - To Have And To Hold.esp` — `Actors.AIPackagesForceAdd`, `Actors.Factions`
- `Serana Dialogue Add-On.esp` — `Actors.AIPackages`, `Actors.Spells`
- `Pilgrim.esp` / `Trua.esp` / `Wintersun.esp` — `Actors.Spells` (whichever wins)
- `Book of Shadows.esp` — `Actors.Spells`
- `Skyrim Reputation.esp` — `Actors.Factions`, `Relations.Add`
- `Suspicious City Guards.esp` — `Actors.AIPackages`
- `Audio Overhaul for Skyrim SE.esp` — `Sound`
- `Immersive Sounds - Compendium.esp` — `Sound`
- `Sounds of Skyrim Complete SE.esp` — `Sound`, `C.Acoustic`

**Survival / Follower:**

- `Campfire.esp` — `C.MiscFlags`, `Invent.Add`
- `Frostfall.esp` — `C.Climate`, `C.ImageSpace`
- `Starfrost.esp` / `SunHelm.esp` / `Last Seed.esp` — `Stats`, `Keywords`, `Invent.Add` (whichever wins)
- `Nether's Follower Framework.esp` / `EFF.esp` / `Amazing Follower Tweaks SE.esp` — `Actors.Factions`, `Invent.Add`

**No Tags:** `TrueHUD.esp`, `Sovngarde - Mist's Font Replacer.esp`

---

## Synthesis Configuration
The `Synthesis` patcher pipeline runs as a single batch via **Run Mutagen** in MO2, output to `Patches\Synthesis Patch.esp`. Patchers listed in run order — do not reorder.

### Stage 1 — NPC, AI, And Facegen

- `KS Hairs Bald Helmets Fixer`
- `High Poly Head Vampire Fix`
- `HP_NPC_WIGS_TO_HEADPART`
- `FacegenBaseline` — after all NPC overhauls installed; fallback to zEdit FaceGen patcher if needed. See `### FacegenBaseline Configuration` below.
- **`SynthEBD`** — NPC equipment/outfit distribution via rule-based config. Use as a SPID alternative for armor/clothing distribution when SPID can't cover the target (e.g., complex outfit rules, multi-condition NPC filtering). Requires SynthEBD config files per armor/outfit mod. See `### SynthEBD Configuration` below.
- `NPCStatRescaler`

### FacegenBaseline Configuration

Generates missing or corrected facegen data (face morphology `.nif` files and tint layers `.dds`) for NPCs added or changed by appearance mods. Prevents the black-face bug, mismatched facial features, and incorrect tint layers.

**When to run:**
- After every change to the NPC appearance stack — adding, removing, or reordering appearance overhauls
- After installing any mod that adds new NPCs (quest mods, world content, new lands)
- After running any Synthesis patcher that changes NPC head parts or face morphs
- Every time the load order of NPC-related plugins changes

**Setup in Synthesis:**

1. Add `FacegenBaseline` to your Synthesis pipeline (already listed in Stage 1 above).
2. Configure the **Source Mods** list — select every NPC appearance overhaul and any mod that adds NPCs with custom facegen. The patcher reads facegen from these source mods and copies it into the output.
3. Set **Output Mod** to a dedicated mod folder (e.g., `FacegenBaseline Output` in the `Output` MO2 separator). Do not output into an existing NPC overhaul mod.
4. Run Synthesis with the full pipeline — FacegenBaseline runs after KS Hairs Bald Helmets Fixer and HP_NPC_WIGS_TO_HEADPART.

**Configuration options:**

| Option | Recommendation | Notes |
|--------|----------------|-------|
| Source Mods | Select all NPC appearance overhauls + any mod listed in the NPCs section that ships facegen | Missed source mods are the #1 cause of black-face |
| Output Mod | Dedicated mod in `Output` separator | Do not output into an existing NPC overhaul mod |
| Overwrite Mode | Replace (default) | Keeps output clean on each rebuild |
| Include Tint Layers | Yes | Required for correct NPC skin/makeup in dialogue |

**Troubleshooting:**

| Symptom | Likely Cause | Fix |
|---------|-------------|-----|
| Black face (dark head, light body) | NPC's facegen `.nif` missing from output, or a later mod overwrites it | Add the NPC's source mod to Source Mods; verify load order places FacegenBaseline output after all NPC overhauls |
| Face doesn't match appearance mod (wrong morph, wrong hair) | A different mod's facegen is winning the conflict | Reorder mods so the intended appearance mod loads after conflicting overhauls, then re-run FacegenBaseline |
| Grey face (no tint layers) | Tint layers not generated or not found | Verify "Include Tint Layers" is enabled; check that `Textures\actors\character\FacegenTints` exists in output |
| CTD when approaching an NPC | Corrupted facegen data — mismatched head part count or missing assets | Delete FacegenBaseline output, re-verify all source mods are selected, re-run Synthesis from scratch |
| FacegenBaseline fails with "no facegen found" | Source mods list is empty or the patcher can't find compatible face NIFs | Check that at least one source mod is selected and contains `meshes\actors\character\facegendata\facegeom\` |

### SynthEBD Configuration

Port of zEBD to Synthesis/Mutagen. Distributes equipment (armor/clothing/weapons), body shapes, textures, and heights to NPCs via rule-based config files. Treat as the primary SPID alternative when an armor/outfit mod has no SPID config or needs multi-condition NPC filtering.

**Download:** [GitHub Releases](https://github.com/Synthesis-Collective/SynthEBD/releases) or [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/138909). Extract the `SynthEBD` folder to your mod utilities directory. Launch `SynthEBD.exe` through MO2.

**Setup in Synthesis:**

1. Add `SynthEBD` to your Synthesis pipeline (already listed in Stage 1 above, after FacegenBaseline).
2. Run **SynthEBD.exe** (standalone GUI) before Synthesis to configure settings and install config files. The Synthesis patcher reads the configuration produced by the standalone tool.
3. Set the **Output Data Folder** to a dedicated MO2 mod (e.g., `C:\MO2\mods\SynthEBD Output`) via the `General Settings` tab.
4. Install config files via the `Textures and Meshes` tab using the **Install Config From Archive** button — select each config file you want active.
5. Run SynthEBD standalone to build the configuration database, then run Synthesis with the full pipeline.

**General Settings:**

| Option | Recommendation | Notes |
|--------|----------------|-------|
| Output Name | `SynthEBD.esp` | Generated plugin name |
| Output Data Folder | Dedicated MO2 mod folder | All generated files (ESP + assets) land here |
| Apply Textures and Meshes | Yes | Enables asset distribution from config files |
| Apply Body Shape Using | None (OFF) | Elder Wilds uses OBody NG for body distribution — let OBody handle it |
| Apply Height Changes | OFF | Leave height control to other patchers in Stage 1 (`RacialHeights` / `HarmonizedRaceHeights-Patcher`) |
| Enable Consistency | Yes | Keeps the same body shape on NPCs across save loads |
| Verbose Mode for Conflict NPCs | ON (debugging) | Logs decision-making for NPCs with assignment conflicts; disable once configs are stable |

**Textures and Meshes settings:**

| Option | Recommendation | Notes |
|--------|----------------|-------|
| Allow config files to change NPC textures | Yes | Core distribution function |
| Allow config files to change NPC meshes | Yes | Core distribution function |
| Patch NPCs with custom bodies | ON | Ensures NPCs from mods with custom WNAM get textures |
| Patch NPCs with custom faces | ON | Ensures NPCs from appearance overhauls get assigned face textures |
| Force Vanilla Body Mesh Paths | OFF | Elder Wilds uses OBody NG — body mesh paths managed separately |
| Generate combination assignment log | ON (debugging) | Disable once configs are stable |

**Config File Types:**

| Config Type | Purpose | Elder Wilds Usage |
|-------------|---------|-------------------|
| Asset Config | Distributes armor/clothing/weapon textures and meshes to NPCs | Primary use case — install when an armor mod lacks SPID config |
| BodyGen Config | Distributes BodyGen morphs | OFF — OBody NG handles body distribution |
| BodySlide Settings | Distributes BodySlide presets via OBody/AutoBody | OFF — OBody NG handles body distribution |
| Height Config | Distributes NPC heights | OFF — use Stage 1 height patchers instead |

**Attribute Groups:** The core controller of SynthEBD's distribution system. Config files reference Attribute Groups to control which NPCs get which assets. Attribute Groups define filters by race, gender, faction, class, voice type, unique NPC, etc. Check **Supercede Plugin Group Definitions with Main** in General Settings to control distribution from all config files from a single centralized menu — recommended for Elder Wilds.

**When to run:** After adding or updating any armor/clothing mod that uses a SynthEBD config for NPC distribution (typically as a SPID fallback). Run the SynthEBD standalone GUI first to re-process configs, then run the full Synthesis pipeline.

**Troubleshooting:**

| Symptom | Likely Cause | Fix |
|---------|-------------|-----|
| NPCs not getting assigned equipment | Config file not installed or Attribute Group doesn't match | Verify config installed via `Textures and Meshes` tab; check Attribute Group filters match the target NPC |
| Body shapes won't assign | Body shape distribution enabled but no BodySlide/BodyGen config installed | Set `Apply Body Shape Using` to None — OBody NG handles this separately |
| Duplicate NPC entries | Config file has redundant Attribute Group rules | Enable Verbose Mode, check SynthEBD\\Logs for conflicting assignments |
- `AIOverhaulPatcher` / `ICAIO AI for Mods`
- `AI Stealth Overhaul` — with RAID.
- `Followers-are-Sneaky`
- `FollowerFavorCarryLimitPatcher`
- `NpcProtector` — flags essential quest NPCs.
- `RaceCompatibilityDialogue`
- `RacialHeights` / `HarmonizedRaceHeights-Patcher`
- `SynBanditWarForwarder`
- `SynOppositeGenderAnimsTweak` — **do not enable** (Bashed Patch handles this).

### Stage 2 — Encounter Zones

- `EZLeveler` — configure to unleveled-band target for OWL/MLU.
- `EnemyReleveler` — delevel Bruma/Falskaar/Wyrmstooth enemies within new band.
- `No More Easy Enemies`
- `EncounterZoneNames` / `CellEncounterLevelsInName`
- `MissingEncounterZonesPatcher`
- `TrueUnleveledSkyrim` — only if dropping OWL and MLU.

### Stage 3 — Leveled Lists And Loot

- `OWLLeveledListAddition` — adds IA/IW to OWL lists.
- `OWLPatcher`
- `Skyrim-LeveledLoot`
- `HalgarisConsistentRPGLoot`
- `Container and Loot Patcher`
- `LootableCrates`, `MakeFirewoodPilesIntoContainers`, `Lootable Things & Training Dummies Patcher`
- `GeneralStoresIngredientsPatcher`
- `ImmersiveMusicPatcher` / `MusicTypePatcher-Revised-2024`
- `leveledlistresolver` — after OWL and MLU.
- `Feminized Leveled Lists` / `Masculinized Leveled Lists`

### Stage 4 — Items, Crafting, Alchemy

- `ApothecaryAutoPatcher` — pair with `CACO Patcher` if CACO in stack.
- `BreakdownRecipeGenerator` / `CreateTemper`
- `HonedMetalAdditionalIngredients`
- `Heim Recipe Patcher`
- `ReProccer Evolved`
- **`Weapon Stat Synthesis Patcher`** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/149027)) — Elder Wilds config: Damage Floor 4, Ceiling 22, Weight/Value Scale 1.0, Speed/Reach Normalization ON. Ignore List: Reliquary of Myth, ArteFakes, Unique Items Tweaks, Konahrik's Accoutrements. Run after OWLLeveledListAddition, SpeedandReachFixes, AmmoTweaks.
- `SpeedandReachFixes`
- `WeaponSpeedEffectsFix`
- `SynFixShieldData` / `SynFixWeaponAttackSpeed`
- `SynGlovesAddFirstsPerk`
- `ItemWeightCustomizer` / `SynPotionWeight`
- `SlotsSlotsSlots`
- `AmmoTweaks`
- `SynCGOStaves` — only if CGO staves in stack.

### Stage 5 — Magic, Spells, Enchanting

- `Engarde_Synthesis`
- `DisenchantEverything` / `SmartDisenchantEverything`
- `Passive Enchanting Experience`
- `Spell Research Synthesizer` — only if Spell Research added.
- `StaffGenerator` / `StaffDuplicator`
- `SorcererPatcher`
- `ReadingIsGoodLegacy`
- `AllBooksHavePerks`
- `SpellTomePriceFixPatcher` / `SynSpellTomeNameExtender` / `DisplaySpellTomeLevelPatcher-local` / `spelltome_yeeter` — pick one.
- `SynESLify` — **must be last** in this stage.

### Stage 6 — Snow, Weather, Region

- **`BDSPatcher`** — **required.** Use `BDSPatcher` entry (not Northpoint variant). Run with both BetterDynamicSnow and BetterDynamicAsh keywords active.
- `SSBGPatcher`
- `Nights Adjuster` / `Darker Weather Nights` — pick one.
- `SkyVRaan Weather Patcher` — only if installed.
- `Unique Region Names` / `Unique Region Names Patcher`
- `RealisticWaterTwoPatcher`
- `Synthesis-BlendedShorelinesUniversal`
- `LandscapePatcher` — only enable if landscape texture stack replaced.
- `DestructibleSkyrimPatcher`

### Stage 7 — Trees, Flora, Mesh

- `Pine Tree Rescaler`
- `Tree Scaler`, `Tree 3D Editor`, `TreeWindEditor`
- `FloraFixer`
- `ImmersiveEquipmentMeshGen` / `AllGUDMeshGen`
- `Harvest Those Mammoth Tusks`

### Stage 8 — Visuals And Lighting

- `ELE Patcher` — skip (CS-only stack).
- `NoShadowsPatch`
- `Radial Blur Remover`
- **Remove Edge Glow**
- `RemoveInteriorFogPatcher` — disable if AOS/Sounds of Skyrim present.
- `RemoveLandscapeVertexColor`

### Stage 9 — Audio

- **`AOSISCSoundPatcher`** — **required.** AOS and ISC both must be active when run.
- `TUDMFootstepPatcher`
- `Sounds of Seasons`
- `SFCOPaintingRemover`

### Stage 10 — Performance And Cleanup

- `Grass FPS`
- `Configurable Grass Remover` — enable only if dense forest-floor route adopted.
- `NavmeshCollector-Updated` — **do not** enable if Bruma or Falskaar in stack.
- `Generic Synthesis Patcher` — keep ruleset empty until specific conflict identified.

### Stage 11 — Utility, Compatibility, ESLification

- `Patchifier` — generates SkyPatcher/INI patches.
- `SynEDIDFixer`
- `SynStringMerger` — disable unless shipping translation layer.
- `CellEditorIDFixer` — required (Bruma, Falskaar, Wyrmstooth, Beyond Reach).
- `SynPEXPatcher`
- `SynPerkCOBJPatcher` / `SynESLify` — **keep at end**, ESLify output.

---

### Build Order And Rebuild Triggers

The full rebuild order for the generated pipeline. Stages after `SSEEdit` can be skipped if their inputs have not changed — rebuild only the affected stages when their triggers fire.

1. **SSEEdit** — quick-conflict mode after every new plugin.
2. **Bashed Patch** — triggers: any plugin with Bash Tag change, any tweak setting change, any new tagged plugin. A Bash Tag change also triggers Synthesis (stage 3) — both must rebuild.
3. **Synthesis** — triggers: any patcher list change, any upstream mod change, any Bash Tag change.
4. **Pandora** — triggers: behavior/animation/skeleton change. Independent of patcher and LOD stages — can be run separately at any point.
5. **BodySlide** — triggers: body/skin/armor mesh change. Independent of patcher and LOD stages.
6. **xLODGen** — triggers: landscape/terrain/heightmap change (does not need TexGen).
7. **TexGen** — triggers: object/tree/building texture or mesh change producing LOD billboards. Requires xLODGen output when both are rebuilt together.
8. **Grass Cache** — triggers: grass mod change, worldspace change (Grass SSEEdit Script), or grass density INI tweak. Run after final worldspace load order is established.
9. **DynDOLOD** — triggers: worldspace/tree/object change, Bashed Patch or Synthesis change (form IDs affect reference records), or any xLODGen/TexGen output change. Includes Occlusion generation. Run twice: Medium to verify, final preset.
10. **SSE Display Tweaks + BethINI Pie** — final review after lighting/weather/graphics stack change.

**Dependency note:** DynDOLOD reads the final load order including Bashed Patch and Synthesis. If Synthesis changes form IDs or ESL flags, DynDOLOD must be rebuilt. Pandora and BodySlide do not affect LOD or patchers and can be run independently at any point without cascading into later stages.

### Patcher Load Order

- `Bashed Patch` and `Synthesis` both write into same load-order range. Place Synthesis patch last unless a known conflict needs Bashed Patch to win.
- `SynESLify` **must** be last in its stage.
- `World: Timescale = 20` bakes into saves — never change on a long-running test save.
- `Skyrim-LeveledLoot` and `OWL` overlap: run `OWLLeveledListAddition` first.
- `AOSISCSoundPatcher` requires both AOS and ISC active.
- `HP_NPC_WIGS_TO_HEADPART` before `KS Hairs Bald Helmets Fixer`.
- `NavmeshCollector-Updated` dangerous with Bruma and Falskaar.
- Record Bashed Patch CRC after every rebuild. Verify by disabling source mods and confirming patch shrinks.

### Key Principles

- The patch pipeline is the single source of truth for conflict resolution.
- A patcher or tag exists because a specific mod in the list requires it — never pre-install speculative coverage.
- The rebuild order is designed so a category change only triggers the affected stages.
