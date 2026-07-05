# Bashed Patch & Synthesis Configuration

**MO2 Separator:** `14 Performance`

Part of the [`Performance and Technical Workflow`](modlist-14.md) section. See also: `14a` (Performance Strategy), `14b` (Optimization & Configuration), `14c` (Tool Pipeline), `14e` (Testing & Maintenance).

## Core Idea

- The generic category maps only become useful when they are tied to the actual mods `Elder Wilds` ships with. This subsection is that binding: the exact `Wrye Bash` tweaks enabled, the `Bash Tags` set on the plugins that need them, and the `Synthesis` patcher pipeline run in this exact order. → `14`
- Anything not in the tables below is intentionally left to per-mod `xEdit` patches or to the generation stage. The default is "do not touch" — adding a `Synthesis` patcher or a `Bash Tag` only when a specific mod in the list makes it necessary. → `14`

## Wrye Bash (Bashed Patch) Configuration

### Tweak Settings

Enable in `Wrye Bash` → `Bashed Patch` → `Tweakers` only the items below. Everything else stays at the default and is patched by hand if needed.

- **Tweak Actors**: `Opposite Gender Anims: Female` and `Opposite Gender Anims: Male` — needed because `Elder Wilds` runs `CBBE 3BA`, `HIMBO`, and `KS Hairdos` which already change the per-gender behavior set, and the global flip keeps NPCs consistent across `EVG Conditional Idles`, `Goetia`, and `Leviathan II` packs. → `14`
- **Tweak Assorted**:
  - `All Armor Playable` — required by `Immersive Armors` (60+ sets, several ship with the non-playable flag in the base plugin).
  - `No Light Fade Value Fix` — required because `Lux`, `Lux CS`, `Lux Orbis`, `Lux Via`, `ELFX`, `Relighting Skyrim`, and `Luminosity` all interact with fade values and the bare-`1.0` value is the stable starting point.
  - `No Light Flicker` — required because `RAID Weathers`, `Cathedral Weathers`, `Obsidian Weathers`, and `Azurite III CS` weather variants ship flickering templates that look bad in third-person exploration.
  - `Remove Load Screen Models` — required because `SkyParkour v3`, `RaySense`, and `Ricochet` add 3D geometry that can leak into load screens.
  - `Save Sorting Fix` — required: the SSE save-sorting bug is a real issue with this much plugin weight.
  - `Set Light Radii` — use a `100%` multiplier to leave `Lux` radii alone; do not raise above 100 without re-doing lighting scenes.
  - `Set Sound Attenuation Levels: Nirnroots Only` — leave default. `Sounds of Skyrim Complete` and `AOS` need their own attenuation and a global multiplier fights them.
  - `Uniform Groundcover` — enable, because `Skoglendi`, `Origins of Forest`, and `Mari's flora` are the grass stack and matching density variance is what makes the world feel coherent.
- **Tweak Names**:
  - `Body Part Codes` — required to drive `Sort: Armor/Clothes` correctly given `CBBE 3BA` body parts.
  - `Sort: Armor/Clothes` — required; with `Immersive Armors`, `Beyond Skyrim - Bruma`, and `Spaghetti's Cities` adding armors, unsorted inventory is unreadable.
  - `Sort: Scrolls`, `Sort: Spells`, `Sort: Weapons/Ammunition` — required, because `Apocalypse`, `Mysticism`, `Odin`, `Adamant`, `Vokrii`, `Ordinator`, and `Ars Metallica` all add to scroll/spell/weapon lists.
  - `Lore Friendly Text: Dwarven -> Dwemer` — enable: the `PBR textures for The Great Cities Collection` and `PBaRkarth` use Dwemer terminology and the rename is the only thing that keeps the UI consistent.
- **Tweak Races**:
  - `Races Have All Head Parts` — required because `KS Hairdos SSE` adds hundreds of head parts and races need to know about them; set the types code to a reasonable preset like `45` (eyes/hair/beards).
  - `Playable Head Parts` — enable: ensures all of `KS Hairdos`'s hairs are selectable in racemenu.
  - Leave `Force Behavior Graph Gender: Female` and `Force Behavior Graph Gender: Male` off — `Elder Wilds` does not standardize that flag, and forcing it breaks per-NPC behavior from `Pandora` conditions.
- **Tweak Settings**:
  - `AI: Bump Reaction Delay` — raise to `15` to mute spammy `Nether's Follower Framework` / `EFF` reactions.
  - `AI: Conversation Chance` — leave default; `Immersive Patrols`, `Extended Encounters`, and `Radiance Encounters` already increase ambient chatter.
  - `AI: Max Active Actors` — raise to `80` because `Extended Encounters`, `Immersive Patrols`, and `Bruma` patrols overlap.
  - `AI: Max Dead Actors` — raise to `120` to handle combat aftermath in dungeons.
  - `Arrow: Max Arrows Attached to NPC` — raise to `20` so `Ricochet` and `SkyParkour v3` multi-arrow scenes stay readable.
  - `Combat: Max Actors` — raise to `60` to match the new `AI: Max Active Actors` ceiling.
  - `Combat: Stealth Damage Bonus` — leave default; `RAID` is the canonical authority for stealth scaling and overriding here creates conflicts.
  - `Msg: Cannot Equip Item Fix` — **must** be enabled: `Campfire`, `Frostfall`, and `SunHelm`/`Starfrost`/`Last Seed` all rely on it.
  - `Msg: No Fast Travel` — leave default; `Campfire` and `Frostfall` already gate fast travel through their own logic.
  - `Player: Max Draggable Weight` — set to `1000` to keep physics objects interactable given that the list has heavy clutter via `Spaghetti's Cities` and `RUSTIC CLUTTER COLLECTION`.
  - `Player: Underwater Breath Control` — leave default; `Realistic Water Two` and `A Water Made For CS in mind` already tune this in their own records.
  - `Soul Trap: Common/Grand/Greater/Lesser Soul Level` — set to vanilla values; `Mysticism`, `Odin`, and `Apocalypse` redefine the soul economy and changing these overrides their work.
  - `Visuals: Masser Size`, `Visuals: Masser Speed`, `Visuals: Secunda Size`, `Visuals: Secunda Speed` — set to `1.0` and `1.0` so `AURORA S.E.` and `Skylighting` keep their sky behavior.
  - `Warning: Exterior Distance to Hostiles` and `Warning: Interior Distance To Hostiles` — leave default; `Book of Shadows` and `RAID` already adjust detection.
  - `World: Cell Respawn Time` and `World: Cell Respawn Time (Cleared)` — leave default; `Open World Loot` and `MorrowLoot Ultimate` rewrite the loot pipeline.
  - `World: Timescale` — set to `20` and never change. **Save-baking warning**: this setting bakes into SSE saves, so any change to a long-running test save will make that save behave inconsistently with the rest of the list.

### Bash Tags

Set the following `Bash Tags` (one file per plugin under `Data\Bash Patches\`) on the listed plugins. Tags not listed here are deliberately absent.

- `Immersive Weapons.esp` — `Relev` (entries from this mod should be re-leveled into the winning list). → `14`
- `Immersive Armors.esp` — `Relev`. → `14`
- `Immersive Armors Retexture.esp` — `Graphics` (do not let the Bashed Patch treat texture records as records to merge; it is a retexture, not a content add). → `14`
- `Hunterborn.esp` — `Invent.Add`, `Delev`, `Relev` (the mod adds pelts, reagents, and harvested items to containers, removes several generic drops, and re-levels spawns). → `14`
- `Simple Fishing Overhaul.esp` — `Invent.Add`, `C.MiscFlags`. → `14`
- `Streamlined Fishing.esp` — `Invent.Add` only. → `14`
- `Open World Loot.esp` — `Delev`, `Relev`, `C.Encounter` (the mod's whole job is encounter zone and leveled list rewriting). → `14`
- `MorrowLoot Ultimate.esp` — `Delev`, `Relev`. → `14`
- `Trade and Barter.esp` — `Stats`, `Invent.Change` (changes item values and merchant inventories). → `14`
- `Aetherius.esp` / `Morningstar.esp` / `Imperious.esp` — `R.AddSpells` (one of these three is the race overhaul; whichever wins gets the tag, not all three). → `14`
- `Adamant.esp` / `Vokrii.esp` / `Ordinator.esp` — `NPC.Perks.Change` and `NPC.Perks.Add`. → `14`
- `Mysticism.esp` / `Odin.esp` / `Apocalypse.esp` — `SpellStats`, `EffectStats`. → `14`
- `Lux.esp` / `Lux - Lux CS.esp` / `Lux - Orbis.esp` / `Lux - Via.esp` — `C.Light`, `C.Fog`, `C.ImageSpace` (light and atmosphere overrides are what these mods do). → `14`
- `ELFX.esp` and `ELFX - Shadows.esp` — `C.Light`, `C.Fog` (no fog conflict, but light is the same set of records). → `14`
- `Relighting Skyrim.esp` and `Luminosity.esp` — `C.Light` only. → `14`
- `RAID Weathers.esp` and `Raid Weathers CS.esp` — `C.Climate`, `C.Music` only if the weather pack changes music. → `14`
- `Cathedral Weathers.esp` and `Obsidian Weathers.esp` and `Obsidian - CS.esp` — `C.Climate`. → `14`
- `Realistic Water Two.esp` — `C.Water`. → `14`
- `A Water Made For CS in mind.esp` — `C.Water`. → `14`
- `Simplicity of Sea.esp` — `C.Water`. → `14`
- `Enhanced Rocks and Mountains.esp` and `Enhanced Rocks and Mountains - Fix and Addon.esp` — `Graphics`, `ObjectBounds` (mesh changes; no content records). → `14`
- `Beyond Skyrim - Bruma SE.esp` — `C.Climate`, `C.Music`, `C.Light`, `C.Water`, `C.ImageSpace`, `C.Location`, `C.Regions` (Bruma touches almost every cell record type, this is the safe merge set). → `14`
- `Spaghetti's Cities - AIO.esp` — `C.Light`, `C.MiscFlags` (light changes plus cell flag edits). → `14`
- `The Great Cities - Minor Cities and Towns SSE.esp`, `Dawn of Skyrim (Director's Cut) SE.esp`, `JK's Skyrim.esp` — `C.Light`, `C.MiscFlags`. → `14`
- `RUSTIC CLUTTER COLLECTION.esp` and `RUSTIC CLOTHING.esp` — `Names`, `Stats` (only merge the names/stats, not the meshes). → `14`
- `High Poly Project.esp` — `Graphics`, `ObjectBounds` (mesh upgrade, not content). → `14`
- `KS Hairdos SSE.esp` — `Graphics`, `Names` (hair mesh and record rename; do not merge headpart bodies). → `14`
- `High Poly True to Vanilla NPC Overhaul.esp` — `Graphics`, `Names`, `Actors.Stats` (it modifies NPC textures and stat snippets). → `14`
- `RDO.esp` — `Actors.AIPackages`, `Actors.Spells`. → `14`
- `Amorous Adventures.esp` (clean variant) — `Actors.AIPackagesForceAdd`, `Actors.SpellsForceAdd`, `Invent.Add`. → `14`
- `Marriage Mod - To Have And To Hold.esp` — `Actors.AIPackagesForceAdd`, `Actors.Factions`. → `14`
- `Serana Dialogue Add-On.esp` — `Actors.AIPackages`, `Actors.Spells`. → `14`
- `Pilgrim.esp` / `Trua.esp` / `Wintersun.esp` — `Actors.Spells` (one of the three wins; tag the chosen one only). → `14`
- `Book of Shadows.esp` — `Actors.Spells`. → `14`
- `Skyrim Reputation.esp` — `Actors.Factions`, `Relations.Add`. → `14`
- `Suspicious City Guards.esp` — `Actors.AIPackages`. → `14`
- `Audio Overhaul for Skyrim SE.esp` — `Sound`. → `14`
- `Immersive Sounds - Compendium.esp` — `Sound`. → `14`
- `Sounds of Skyrim Complete SE.esp` — `Sound`, `C.Acoustic`. → `14`
- `Campfire.esp` — `C.MiscFlags`, `Invent.Add` (it adds firewood and food to cell inventories). → `14`
- `Ars Metallica.esp` — `Stats`, `Invent.Change`. → `14`
- `Complete Crafting Overhaul Remastered.esp` — `Stats`, `Invent.Change`. → `14`
- `Honed Metal.esp` — `Invent.Change` (it modifies merchant inventories for crafting services). → `14`
- `Apothecary.esp` — `Invent.Add`, `Stats`, `Keywords`. → `14`
- `Complete Alchemy and Cooking Overhaul.esp` — `Invent.Add`, `Stats`, `Keywords`. → `14`
- `Alchemy Potions and Food Adjustments.esp` — `Stats`, `Keywords`. → `14`
- `Frostfall.esp` — `C.Climate`, `C.ImageSpace` (it edits worldspace exposure for cold regions). → `14`
- `Starfrost.esp` / `SunHelm.esp` / `Last Seed.esp` — `Stats`, `Keywords`, `Invent.Add` (one of the three wins). → `14`
- `AOS - Couriers and Imperial Census.esp` and other `AOS` add-ons — `Sound`. → `14`
- `Nether's Follower Framework.esp` / `EFF.esp` / `Amazing Follower Tweaks SE.esp` — `Actors.Factions`, `Invent.Add` (they add items to follower inventories). → `14`
- `TrueHUD.esp` — no tags (do not merge HUD records, leave them as overrides). → `14`
- `Sovngarde - Mist's Font Replacer.esp` — no tags (font plugin, do not merge). → `14`

Plugins that should be tagged `Deactivate` because they only exist to feed the Bashed Patch (none expected in `Elder Wilds`; if a mod is later added purely for its `Bash Tags` source, tag it `Deactivate`).

Plugins that should be tagged `NoMerge` if a future install ever needs to override the merge (none expected; tag on a per-mod basis if a record from a specific plugin should never enter the Bashed Patch).

## Synthesis Configuration

The `Synthesis` patcher pipeline runs as a single batch via the `Run Mutagen` tool registered in `Mod Organizer 2`, with output written to the `Patches\Synthesis Patch.esp` separator. Patchers below are listed in the order they must run; do not reorder.

### Stage 1 — NPC, AI, And Facegen

- `KS Hairs Bald Helmets Fixer` — because `Elder Wilds` ships `KS Hairdos SSE` and the bald-head-under-helmet bug is universal. → `14`
- `High Poly Head Vampire Fix` — keep this in the patcher shortlist whenever the `High Poly Head 1.4` branch is active, because vampire headpart edge cases are still one of the known maintenance costs of that route. → `14`
- `HP_NPC_WIGS_TO_HEADPART` — converts any wig distribution to headparts so `Elder Wilds` headpart inventory stays consistent. → `14`
- `FacegenBaseline` — applies the canonical facegen override from `High Poly True to Vanilla NPC Overhaul` to every named NPC, so facegen does not silently break when the NPC overhaul is updated. Run this after all NPC overhauls are installed and the load order is finalised for the NPC section to prevent the dark-face bug. If Synthesis's FacegenBaseline patcher does not resolve all dark-face cases, use zEdit's FaceGen patcher as a fallback. → `14`
- `NPCStatRescaler` — rescales NPC stats to keep `Elder Wilds` combat pacing after `MCO ADXP` and `Valhalla Combat` install. → `14`
- `AIOverhaulPatcher` (or `ICAIO AI for Mods` if `ICAIO` is in the stack) — forwards the AI package list from the chosen AI overhaul so it wins over the default package set. → `14`
- `AI Stealth Overhaul` — used in combination with `Realistic AI Detection (RAID)`. The patcher customizes the difficulty curve and `RAID` provides the underlying detection. → `14`
- `Followers-are-Sneaky` — adds the "Doesn't Affect Stealth" flag to all followers from `Nether's Follower Framework`, `EFF`, and `Amazing Follower Tweaks SE`. → `14`
- `FollowerFavorCarryLimitPatcher` — applies follower carry limits from `Nether's Follower Framework` to mod-added followers. → `14`
- `NpcProtector` — flags essential NPCs from quest mods (`Wyrmstooth`, `Falskaar`, `The Forgotten City`, `VIGILANT`, `Sirenroot`, `Moon and Star`, `Beyond Reach`, `Bruma`, `The Wheels of Lull`) as protected. → `14`
- `RaceCompatibilityDialogue` — adds dialog conditions so the chosen race overhaul (`Aetherius` / `Morningstar` / `Imperious`) plays correctly with all custom races. → `14`
- `RacialHeights` and `HarmonizedRaceHeights-Patcher` — applies the chosen height scaling across all races including `Bruma` and `Beyond Reach` races. → `14`
- `SynBanditWarForwarder` — forwards `Lawless` bandit-war changes (keep enabled; lightweight and prevents NPC record regressions). → `14`
- `SynOppositeGenderAnimsTweak` — already handled by the Bashed Patch; do not enable here to avoid double-application. → `14`

### Stage 2 — Encounter Zones And Encounter Logic

- `EZLeveler` — scales encounter zones; configure to the unleveled-band target that `Open World Loot` and `MorrowLoot Ultimate` assume. → `14`
- `EnemyReleveler` — delevels NPCs by type; configure to keep `Bruma`, `Falskaar`, and `Wyrmstooth` enemies within the new band. → `14`
- `No More Easy Enemies` — fixes low-level enemy spawns in high-level dungeons; required because of the `Extended Encounters` and `Radiance Encounters` ambient spawn load. → `14`
- `EncounterZoneNames` and `CellEncounterLevelsInName` — appends encounter zone level to the cell name; helps debug which zone the player is in. → `14`
- `MissingEncounterZonesPatcher` — forwards changes from `Missing Encounter Zones Fixed` (if added) so they do not get overwritten by `Bruma`/`JK's Skyrim`/`Spaghetti's Cities`. → `14`
- `TrueUnleveledSkyrim` — only enable if `Elder Wilds` ever drops `Open World Loot` and `MorrowLoot Ultimate`; the patcher is comprehensive but it overlaps badly with `OWL` so do not run both. → `14`

### Stage 3 — Leveled Lists And Loot

- `OWLLeveledListAddition` — adds `Immersive Weapons` and `Immersive Armors` to the `Open World Loot` leveled lists by keyword. → `14`
- `OWLPatcher` — keeps `OWL` leveled lists consistent across the rest of the stack. → `14`
- `Skyrim-LeveledLoot` — adjusts the loot system with progression focus; configure to match the chosen difficulty in `modlist-11.md`. → `14`
- `HalgarisConsistentRPGLoot` — distributes enchantments from `Mysticism`/`Odin`/`Apocalypse` to all mod-added weapons/armors. → `14`
- `Container and Loot Patcher` — base loot table tuning; configure to match the `MorrowLoot Ultimate` values. → `14`
- `LootableCrates`, `MakeFirewoodPilesIntoContainers`, `Lootable Things & Training Dummies Patcher` — these three enable the immersive-clutter loot chain that `RUSTIC CLUTTER COLLECTION` benefits from. → `14`
- `GeneralStoresIngredientsPatcher` — pushes the alchemy ingredient stock from `Apothecary` into general stores. → `14`
- `ImmersiveMusicPatcher` and `MusicTypePatcher-Revised-2024` — merge additions to `MUSTT` records so `AOS` ambient music does not double up. Required: `AOS` and `Sounds of Skyrim Complete` both add music to the same cells. → `14`
- `leveledlistresolver` — clean up remaining leveled list conflicts that did not get a `Bash Tag` for resolution. Run after `OWL` and `MorrowLoot` so the resolver sees the merged view. → `14`
- `Feminized Leveled Lists` and `Masculinized Leveled Lists` — keep enabled with default settings to fix gendered leveled list entries from mod-added NPCs. → `14`

### Stage 4 — Items, Crafting, Smithing, Alchemy, Cooking

- `ApothecaryAutoPatcher` — required: the mod adds ingredients that need to inherit `Apothecary`'s values. Pair with `Complete Alchemy and Cooking Overhaul Patcher` if `CACO` is in the stack. → `14`
- `BreakdownRecipeGenerator` — generates breakdown recipes for every craftable from `Immersive Weapons` and `Immersive Armors`, so `Ars Metallica` and `Complete Crafting Overhaul Remastered` get full coverage. → `14`
- `CreateTemper` — generates tempering recipes for the same weapon pool. → `14`
- `HonedMetalAdditionalIngredients` — adds additional ingredients to `Honed Metal` from `Apothecary`/`CACO`. → `14`
- `Heim Recipe Patcher` — updates weapon/armor recipes with the correct `Heim` book conditions (only enable if `Heim` is added). → `14`
- `ReProccer Evolved` — keeps mod-added items compatible with `Skyrim Redone`-style systems; not currently in the stack but the patcher is cheap insurance. → `14`
- `Weapon Stat Synthesis Patcher` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/149027>) — analyzes and rebalances weapon stats to keep the tier ladder meaningful across `Immersive Weapons`, `Animated Armoury`, and other mod-added weapons.

  **How to add**: In Synthesis, click `Add` / `+`, search the registry for `Weapon Stat Synthesis Patcher`, select it, then click the gear icon to configure. **Run after** `OWLLeveledListAddition`, `SpeedandReachFixes`, and `AmmoTweaks` in the patcher pipeline; **run whenever** weapons are added, removed, or reordered in the load order. Wait until the full weapon stack is finalised before running.

  **Elder Wilds config values**:
  - `Damage Floor` — `4` (keeps iron/early weapons viable)
  - `Damage Ceiling` — `22` (tighter than default 30 — Adamant's perk curve does not need the wide spread; a tighter ceiling keeps mid-tier loot relevant longer, supporting the survival/scarcity tone)
  - `Weight Scale` — `1.0` (default)
  - `Value Scale` — `1.0` (default; economy is handled by `Trade and Barter`, not the stat patcher)
  - `Speed Normalization` — tick ON (consistency matters more with Animated Armoury's varied movesets)
  - `Reach Normalization` — tick ON (prevents spear/halberd from having wildly different reach than intended)
  - `Ignore List` — add `Reliquary of Myth.esp`, `ArteFakes.esp`, `Unique Items Tweaks.esp`, `Konahrik's Accoutrements.esp` (preserves hand-authored artifact and unique-item stats)

  **Output**: generates `zWeaponStatSynthesis.esp` (or merges into the main Synthesis output if configured as a group patcher). Ensure it loads after all weapon mods.

  **Tuning**: Raise or lower `Damage Ceiling` if combat pacing feels too fast or too slow during survival-difficulty playthroughs. Add new plugins to `Ignore List` when hand-authored artifacts from a new quest mod should not be normalized. → `14`
- `SpeedandReachFixes` — applies `Speed and Reach Fixes` corrections to all mod-added weapons. → `14`
- `WeaponSpeedEffectsFix` — applies `Weapon Speed Effects Fix` / `Attack Speed Framework Plus` corrections to all mod-added weapons. → `14`
- `SynFixShieldData` and `SynFixWeaponAttackSpeed` — repair shield material/impact sets and attack-speed bugs on mod-added items. → `14`
- `SynGlovesAddFirstsPerk` — adds the missing fists perk to gloves by material so unarmed combat in `Valhalla Combat` works. → `14`
- `ItemWeightCustomizer` and `SynPotionWeight` — reweights potions and items to match the carry-weight design. → `14`
- `SlotsSlotsSlots` — converts weight into equipment slots (armor layering) so `CBBE 3BA` and `Immersive Armors` coexist. → `14`
- `AmmoTweaks` — `WACCF`-friendly alternative to `ABT` for ammunition tuning. → `14`
- `SynCGOStaves` — only if `Complete Graphics Overhaul` staves are in the stack; otherwise skip. → `14`

### Stage 5 — Magic, Spells, Enchanting

- `Engarde_Synthesis` — applies `Engarde` combat fixes to all spell tomes. → `14`
- `DisenchantEverything` (or `SmartDisenchantEverything`) — drops the disenchant restriction so `Mysticism`/`Odin`/`Apocalypse` enchantments can be learned from any item that carries them. → `14`
- `Passive Enchanting Experience` — adds XP to enchantments worn in combat. → `14`
- `Spell Research Synthesizer` — only if `Spell Research` is added. → `14`
- `StaffGenerator`, `StaffDuplicator` — only if `Mysticism`/`Odin`/`Apocalypse` is the chosen magic overhaul; otherwise skip. → `14`
- `SorcererPatcher` — only if `Sorcerer - A Staff and Scroll Overhaul` is added. → `14`
- `ReadingIsGoodLegacy` — enables skill XP from book reading. → `14`
- `AllBooksHavePerks` — random perk per book; configure per `modlist-08.md` world-content decision. → `14`
- `SpellTomePriceFixPatcher`, `SynSpellTomeNameExtender`, `DisplaySpellTomeLevelPatcher-local`, `spelltome_yeeter` — spell-tome presentation; pick the one whose price/format matches the rest of the list. → `14`
- `SynESLify` — **must** be the last patcher in the chain; ESLifies the output so the Synthesis output does not eat a hard load-order slot. → `14`

### Stage 6 — Snow, Weather, And Region

- `BDSPatcher` — **required**. `Better Dynamic Snow SE` and `Better Dynamic Ash SE` are both locked in [`modlist-02b.md`](modlist-02b.md). This patcher forwards BDS multistage snow and ash accumulation records to all mod-added objects (worldspace edits from `JK's Skyrim`, `Spaghetti's Cities`, `Cities of the North`, quest mods, and dungeon packs). Without it, mod-placed objects lack snow/ash coverage. Use the `BDSPatcher` entry (not `Northpoint BDSPatcher`). Configure to run with both `BetterDynamicSnow` and `BetterDynamicAsh` keywords active. → `14`
- `SSBGPatcher` — `Stretched Snow Begone` synthesis patch; enable if the snow mesh ever stretches under doors or walls. → `14`
- `Nights Adjuster` and `Darker Weather Nights` — pick one (not both) and configure to match the night darkness target in [`modlist-02b.md`](modlist-02b.md). → `14`
- `SkyVRaan Weather Patcher` — only if `SkyVRaan` is added. → `14`
- `Unique Region Names` and `Unique Region Names Patcher` — pick one and use it to relabel exterior region names from `Skyrim` to the actual region (`Whiterun`, `The Rift`, etc.). Required because `Bruma`, `Falskaar`, and `Wyrmstooth` all need consistent region naming. → `14`
- `RealisticWaterTwoPatcher` — forwards `Realistic Water Two` records so they do not get overwritten by other worldspace mods. → `14`
- `Synthesis-BlendedShorelinesUniversal` — adjusts water values to blend with shores; required because `Spaghetti's Cities`, `Bruma`, and `JK's Skyrim` change shoreline geometry. → `14`
- `LandscapePatcher` — only enable if the existing landscape texture stack is replaced; current stack (`Skyland AIO` + `Skurkbro's` + `Skyking Fantasia` + `Rally's Solstheim` + `Enhanced Rocks and Mountains`) is the lock-in. → `14`
- `DestructibleSkyrimPatcher` — only enable if `Destructible Skyrim` is added; not in the current list. → `14`

### Stage 7 — Trees, Flora, And Mesh Generators

- `Pine Tree Rescaler` — rescales `Traverse the Ulvenwald` and `Happy Little Trees` pines to consistent scale. → `14`
- `Tree Scaler`, `Tree 3D Editor`, `TreeWindEditor` — keep all three; configure each to its own subtree (a single rescaling pass hides per-tree problems). → `14`
- `FloraFixer` — fixes flora respawning for the chosen grass stack (`Skoglendi`, `Origins of Forest`, `Mari's flora`). → `14`
- `ImmersiveEquipmentMeshGen` and `AllGUDMeshGen` — only if the corresponding mods are added. → `14`
- `Harvest Those Mammoth Tusks` — only if `Harvest Those Mammoth Tusks` is added. → `14`
- `Meridiano/Synthesis-BlendedShorelinesUniversal` — already in Stage 6. → `14`

### Stage 8 — Visuals And Lighting

- `ELE Patcher` — `Enhanced Lighting for ENB`; the current stack uses `Community Shaders`, so skip. → `14`
- `ENB Light Patcher` — only if an `ENB` preset is layered on top of `Community Shaders`; current list is CS-only. → `14`
- `NoShadowsPatch` — only if a specific mod has a known shadow regression. → `14`
- `Radial Blur Remover` — removes radial blur effects; enable because the current list has no `ENB` to give it character. → `14`
- `Remove Edge Glow` — removes the active-effect edge glow from actors; pair with the `Apocalypse`/`Odin`/etc. decision in `modlist-06.md`. → `14`
- `RemoveInteriorFogPatcher` — removes near/far fog from interior cells; conflicts with `AOS` and `Sounds of Skyrim Complete` reverb, so disable if those mods are present. → `14`
- `RemoveLandscapeVertexColor` — removes vertex coloring from landscapes; enable only if the chosen landscape texture stack has been replaced. → `14`

### Stage 9 — Audio

- `AOSISCSoundPatcher` — required: applies the changes from `AOS` and `Immersive Sounds - Compendium` to every mod in the list, so weapon/armor/object sound swaps propagate. → `14`
- `TUDMFootstepPatcher` — only if `True Unleveled Dark Maul` or `Ultimate Dungeon Masters` is added; skip otherwise. → `14`
- `Sounds of Seasons` — mutes crickets in winter; enable because the `Cathedral Weathers`/`Obsidian Weathers` chain already drives seasonal ambience. → `14`
- `SFCOPaintingRemover` — only if `Snazzy's Furniture and Clutter Overhaul` is added; skip otherwise. → `14`

### Stage 10 — Performance And Cleanup

- `Grass FPS` — keep enabled; it patches grass records directly to the more efficient form. → `14`
- `Configurable Grass Remover` — enable if `Elder Wilds` adopts the dense forest-floor route later. → `14`
- `NavmeshCollector-Updated` — collects the winning navmesh records into one ESP; do **not** enable if `Bruma` or `Falskaar` is in the stack, because the navmeshes from those worldspace mods need to remain on their own plugins. → `14`
- `Generic Synthesis Patcher` — rule-based forwarding patcher; configure with rules for the specific mods in the list that the other patchers do not cover. → `14`

### Stage 11 — Utility, Compatibility, And ESLification

- `Patchifier` — generates `Skypatcher`/`INI` patches for SKSE-flag-driven tweaks. → `14`
- `SynEDIDFixer` — fixes `SPID`-type mods that distribute objects by `EditorID`. → `14`
- `SynStringMerger` — merges translation strings; do not enable unless the list is going to ship a translation layer. → `14`
- `CellEditorIDFixer` — removes underscores from cell `EditorID`s; required because `Bruma`, `Falskaar`, `Wyrmstooth`, and `Beyond Reach` all introduce new cell names. → `14`
- `SynPEXPatcher` — patches Papyrus scripts in mods based on configured files; enable per specific mod in the stack. → `14`
- `SynPerkCOBJPatcher` (which is the actual `SynESLify`) — keep **at the end** of the chain, ESLify the output. → `14`

### Build Order And Rebuild Triggers

The full rebuild order in `Mod Organizer 2` is:

1. `SSEEdit` fast mode cleanup pass after every new plugin install.
2. `Bashed Patch` rebuild — triggers: any change to a plugin with a `Bash Tag`, any tweak setting change, any new plugin with one of the listed tags.
3. `Synthesis` pipeline run — triggers: any change to the patcher list, any change to a mod that feeds one of the enabled patchers, any `Bashed Patch` tag change.
4. `xLODGen` and `TexGen` — triggers: any landscape, terrain, or object mesh change; do not run after just an `ESL` flag change.
5. `DynDOLOD` — triggers: any worldspace, tree, object, or `Bashed Patch`/`Synthesis` change. Run twice in a clean session: once with `Medium` settings to verify outputs, once with the final preset.
6. `Pandora` — triggers: any behavior, animation, or skeleton change.
7. `BodySlide` — triggers: any body, skin, or armor mesh change; especially after `Immersive Armors` and `Spaghetti's Cities` updates.
8. `Grass Cache` rebuild — triggers: any grass mod or `Worldspaces with Grass SSEEdit Script` change.
9. `SSE Display Tweaks` and `BethINI Pie` settings review — triggers: any lighting, weather, or graphics stack change.

Rebuilding one stage does not replace the stages after it. A `Bashed Patch` rebuild after adding a single weapon must still be followed by a `Synthesis` run if the new weapon needs the `Weapon Stat Synthesis Patcher` or `WeaponSpeedEffectsFix` pass, and a `DynDOLOD` run if the weapon has worldspace placement.

### Risks & Compatibility

- `Bashed Patch` and `Synthesis` both write into the same load-order range. Place the `Bashed Patch` above the `Synthesis` patch only if a known conflict needs the Bashed Patch to win; otherwise the `Synthesis` patch should be the last patch in the load order to let its overrides stand. → `14`
- `SynESLify` (Stage 5 / Stage 11) **must** be last. If it is not, the patchers after it will re-materialize a hard slot and the merge order breaks. → `14`
- The `Tweak Settings` list in the `Bashed Patch` is sensitive to load order: if a mod that already provides a setting (for example `RAID` setting `AI: Conversation Chance` to zero) is loaded **above** the `Bashed Patch`, the `Bashed Patch` tweak will silently lose. Check the load order with `LOOT` and re-run `xEdit` to verify which record is winning for each tweaked setting. → `14`
- `Tweak Settings: World: Timescale = 20` bakes into saves. Do not change this setting on a long-running test save. → `14`
- `Skyrim-LeveledLoot` and `OWL` overlap on leveled list contents. Run `OWLLeveledListAddition` first (Stage 3) so `Skyrim-LeveledLoot` reads the merged view; running in the wrong order produces a list that does not include `Immersive Weapons`/`Immersive Armors` entries. → `14`
- `AOSISCSoundPatcher` requires that `AOS` and `ISC` are both active when the patcher runs. If only one is active, the patcher will write half the rules and the other mod's effects will not propagate. → `14`
- `HP_NPC_WIGS_TO_HEADPART` and `KS Hairs Bald Helmets Fixer` both touch headpart records. Run `HP_NPC_WIGS_TO_HEADPART` first; otherwise the bald-helmet fix may not find the converted headparts to attach to. → `14`
- `Generic Synthesis Patcher` is a footgun in this list because the rule engine will apply to records already covered by the named patchers. Keep its ruleset empty until a specific conflict is identified. → `14`
- `SynStringMerger` will produce a translation patch that other patchers do not see. Disable it unless the list ships a translation layer. → `14`
- `NavmeshCollector-Updated` is dangerous with `Bruma` and `Falskaar`. Do not enable it while those worldspace mods are active. → `14`

### Acceptance Criteria

- The `Bashed Patch` is built with the exact `Tweak Settings` and `Bash Tags` listed above. The patch CRC is recorded in the build log and re-checked after every rebuild. → `14`
- The `Synthesis` patcher list matches the stage ordering in this section, with patchers from stages that are not currently applicable explicitly disabled (and not removed) so they can be re-enabled without re-reading the config. → `14`
- A deliberate test that disables `Immersive Weapons`, `Immersive Armors`, `Hunterborn`, or `Open World Loot` causes the corresponding `Bash Tag` to lose its source plugin and the merged leveled list to shrink predictably. The Bashed Patch still builds, just smaller. → `14`
- A deliberate test that disables `RAID` causes `AI Stealth Overhaul` to log a warning and `Followers-are-Sneaky` to be the only detection-related patcher running. No silent failure. → `14`
- A deliberate test that reorders `SynESLify` out of the last position causes the `Synthesis` patch to take a hard load-order slot and `LOOT` to flag the new entry. Reordering back to last resolves the flag.
- Every `Tweak Settings` entry enabled in the `Bashed Patch` is verified by a deliberate save-load test: change a tweak value, reload, observe the gameplay effect, and revert. Settings that cannot be verified are not enabled. → `14`

## Key Principles

- The patch pipeline is the single source of truth for conflict resolution across the load order.
- A patcher or tag exists in this file because a specific mod in the list requires it — never pre-install speculative coverage.
- The rebuild order is designed so that a category change only triggers the affected stages, not the entire pipeline.
