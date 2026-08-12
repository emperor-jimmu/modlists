# SkyPatcher — Usage & Authoring Guide

**SkyPatcher** (by Zzyxzz) is a runtime patcher built on SKSE and CommonLibSSE that modifies game data — NPCs, weapons, armors, leveled lists, formlists, containers, and more — from INI-style configuration files instead of traditional ESP plugins. It is the Skyrim port of *RobCo Patcher* for Fallout 4.

In Elder Wilds, SkyPatcher is a **hard requirement** for several adopted mods, and "SkyPatched" variants ship their record changes as SkyPatcher configs instead of an ESP (see → [Foundations and Compatibility](modlist-foundations.md)). This guide covers installing and using it, and authoring your own patches with the same syntax.

> [!NOTE]
> The SkyPatcher mod itself is inert by default. It does nothing unless a mod in your load order requires it or you add your own configs. (It ships one optional toggle that unlocks enemies in all Encounter Zones, disabled by default.)

## Installation And Requirements

Requirements (both already in the Elder Wilds core baseline):

- [Address Library for SKSE Plugins](https://www.nexusmods.com/skyrimspecialedition/mods/32444) — required
- [powerofthree's Tweaks](https://www.nexusmods.com/skyrimspecialedition/mods/51073) — soft requirement; enables EditorID lookups
- VR Address Library — VR only; not needed for this list (1.6.1170 Steam)

Install the main file through MO2 as a regular mod. There is no plugin slot to manage. The `SkyPatcher.ini` sits next to the DLL inside the mod folder and toggles patcher options (see the *In-Game And Save Behavior* section below). On game launch, SkyPatcher writes a log that prints every loaded config file separately — that log is the first stop when verifying or troubleshooting a patch.

> [!TIP]
> If you experience crashes, make sure the latest Microsoft Visual C++ Redistributable is installed (a documented cause of SkyPatcher crashes).

## How Config Files Work

Configs live under `Data/SKSE/Plugins/SkyPatcher/`. The **SkyPatcher — Starter Setup** file on the Files tab ships the exact folder structure to copy into a new mod.

- `myChanges.ini` — always applied.
- `SomeMod.esp.ini` — applied **only when the user has `SomeMod.esp`** in their load order. Naming configs after plugins this way is recommended: SkyPatcher skips irrelevant files instead of checking every line, which cuts load time.

Each line has the shape `filterByX=<forms>:<change>=<value>`: the `filterBy*` keys select which records to patch, the `:` starts the changes, and change keys set values.

- FormIDs use `Plugin.esp|FormID` with leading zeros optional (e.g. `Skyrim.esm|37C1B`). EditorIDs are also accepted where a form is expected (requires po3 Tweaks).
- Multi-value arguments are separated with `~` (e.g. `addToLLs=MyMod.esp|55123~1~1` = form, level, count).
- `null` removes a value (e.g. `equipSound=null`).
- `;` starts a comment.

A minimal example — set damage to 30 on every bow made of imperial material in the entire load order:

```ini
; WeapTypeBow [KYWD:0001E715] WeapMaterialImperial [KYWD:000C5C00]
filterByKeywords=Skyrim.esm|1E715, Skyrim.esm|C5C00:attackDamage=30
```

Comma-separated values inside one filter are ANDed (the weapon must have both keywords). `Or` and `Excluded` variants exist for looser or negative matching. Because filters match against your whole load order, a single line patches every current and future mod that matches — no per-mod patches, no FOMOD options.

## Filtering Reference

| Filter | Selects records by | Notes |
| --- | --- | --- |
| `filterByModNames` | the plugin that owns the record | Available on most patchers; ideal for per-mod configs |
| `filterByKeywords` / `...Or` / `...Excluded` | keywords on the record | AND within the comma list |
| `filterByEditorIdContains` / `...Or` / `...Excluded` | EditorID substring | Requires po3 Tweaks |
| `filterByRefs` | specific placed references | Used by the Reference Patcher; NPCs cannot be disabled |
| `filterByLLs` | leveled lists | Leveled List Patcher |
| `filterByCobjs` / `filterByIngredients` | crafting recipes / ingredients | Constructible Object Patcher |
| `filterByCells` / `filterByLocations` | cells / locations | Cell and Location Patchers |
| `filterByFactions` | NPC faction membership | NPC Patcher |
| `filterByMgefs` | magic effects | Spell/Scroll/Ingestible/Magic Effect patchers |

Most patchers also support `filterBy*Excluded` and `filterByModNames`-style negative variants; the per-patcher articles on the Nexus page list the exact set.

## Authoring Recipes

### Leveled List Injection

Add custom items to leveled lists with no plugin and no patch debt:

```ini
; LItemBanditWeapon1H [LVLI:00037C1B]
filterByLLs=Skyrim.esm|37C1B:addToLLs=MyNewSwordMod.esp|55123~1~1, MyNewSwordMod.esp|55345~1~1
```

- Add the same items to multiple lists in one line by comma-separating the lists.
- `addOnceToLLs` adds without duplication; `addToContainers` / `addOnceToContainers` do the same for container inventories (count defaults to 1 when omitted).
- When the config is removed, the injected items are gone — nothing is left behind in your save file.

### Container Replacement

Swap one object for another in every container without touching counts:

```ini
filterByContainers=Skyrim.esm|123456:replaceInContainers=Object1.esp|ABC~Object2.esp|DEF
```

### NPC Changes

The NPC Patcher covers stats, spells, perks, factions, voice, combat style, and appearance:

```ini
filterByFactions=Skyrim.esm|1BCC0:healthMult=1.5, healthBonus=50
filterByEditorIdContains=Bandit:setAggression=veryaggressive, setConfidence=foolhardy
```

- Stat changes (`healthMult`, `magickaBonus`, `staminaMult`, `setPcLevelMult`, `changeSkills`, and more) apply to **new games by default**; `iRefreshNPCStats` (enabled by default) extends them to existing saves.
- Visual styles can be copied or randomized: `copyVisualStyle=<source NPC>` and `setRandomVisualStyle=<FormList>~<chance>~<adjustVoice>` — see the author's setRandomVisualStyle article for the full example.

### Mass Keyword Editing

Add or remove keywords across a whole category of records (weapons, armors, books, magic effects, locations, ...):

```ini
filterByKeywords=Skyrim.esm|1E714:keywordsToAdd=MyMod.esp|A1B2
```

### Record Mirroring

Copy an existing record's appearance and data onto another:

```ini
filterByWeapons=Skyrim.esm|12EB4:mirrorWeapon=Skyrim.esm|1396B
```

`mirrorWeapon` and `mirrorArmor` copy models, icons, sounds, equipment slots, impact data, and weapon/armor stats from the source record.

### Reference (REFR) Patching

Disable placed objects — statics, clutter, containers — without an ESP:

```ini
; Disables two flowers in front of Breezehome and the gauntlets and dagger on Warmaiden's shelf
filterByRefs=JKs Skyrim.esp|D61, JKs Skyrim.esp|D6D, Update.esm|109B, Update.esm|13D8:disable=true
```

NPC references cannot be disabled.

### Crafting (COBJ) Changes

Edit or build crafting recipes at runtime:

```ini
; Replace one ingredient with another in every recipe
filterByCobjs=MyMod.esp|800:replaceInCobjs=Object1.esp|ABC~Object2.esp|DEF
; Zero out a specific ingredient across all recipes
changeCobjsCount=null~0
```

## In-Game And Save Behavior

| Setting | Default | Effect |
| --- | --- | --- |
| `iRefreshNPCStats` | enabled | Required for NPC stat changes to apply on existing saves; without it, stats only apply to new games |
| `iUpdateNPC` | — | Refreshes NPCs when a save loads so stat changes always match the current load order |
| `iUpdateNPCExclude` / `iUpdateNPCExcludeList` | — | Disables the dynamic NPC update, or excludes specific NPCs. The follower Lucien is pre-excluded because his stats are player-manipulable |
| `iUpdateNPCVisualsOnLoad` | 1 | NPC visual reset behavior (0 = none, 1 = reset by function, 2 = disable/enable actor) |
| `iAllowLeveledListsAddedToContainers` | disabled | Allow leveled lists inside containers (off by default) |

## Patcher Coverage

SkyPatcher's changelog-verified patcher set — each reads its own config section or file and exposes its own change keys:

| Patcher | What it patches | Example change keys |
| --- | --- | --- |
| NPC | Stats, spells, perks, factions, outfits, combat style, aggression/confidence/mood/morality, visual style, inventory | `healthMult`, `spellsToAdd`, `factionsToAdd`, `setRandomVisualStyle`, `objectsToReplace`, `clearInventory` |
| Race / RaceHook | Race stats, movement, spells, attack data, heights/weights | `startingHealth`, `heightMale`, `attackDataToChange`, `shoutsToAdd` |
| Weapon | Damage, speed, reach, sounds, keywords, flags, enchant, mirror | `attackDamage`, `critDamageMult`, `equipSound`, `setFlags`, `templateWeapon`, `mirrorWeapon` |
| Armor | Rating, weight, value, slots, armor addons, keywords, mirror | `damageResistMatch`, `bipedSlotsToAdd`, `armorAddonsToAdd`, `mirrorArmor` |
| Ammo / Projectile | Ammo stats, projectile physics | `speed`, `range`, `gravity`, `setFlags` |
| Magic Effect / Spell / Scroll / Enchantment / Ingestible / Ingredient | Effects, costs, casting type, value/weight, keywords | `baseCost`, `mgefsToAdd`, `keywordsToAdd`, `setFlags`, `clear` |
| Book / Misc / Soul Gem | Value, weight, keywords, teaches | `valueMult`, `teachSpell`, `soulCapacity` |
| Container | Contents, additions, replacement | `addToContainers`, `replaceInContainers`, `clear` |
| Leveled List | Entries, chances, replacement | `addToLLs`, `addOnceToLLs`, `formsToReplace`, `chanceNone` |
| FormList | List contents | `clear`, add/remove forms |
| Outfit | Outfit contents | `formsToAdd`, `formsToRemove`, `formsToReplace` |
| Faction | Faction flags, relationships | `setFlags`, `relationshipToAdd` |
| Constructible Object (COBJ) | Crafting recipes | `addToCobjs`, `replaceInCobjs`, `changeCobjsCount`, `clear` |
| Cell | Lighting, fog, water, flags, acoustics | `fogNear`, `ambientRed`, `setCellFlags`, `musicType` |
| Location | Name, keywords, music, crime faction, parent | `fullName`, `keywordsToAdd`, `musicType` |
| Encounter Zone | Min/max level scaling | `minLevel`, `maxLevelMult`, `location` |
| Reference (REFR) | Placed references | `disable` |
| MovementType | Walk/run speeds and rotation | `walkForward`, `runBack`, `rotateInPlaceRun` |

## Authoring Workflow For Elder Wilds

1. **Decide plugin vs. SkyPatcher first.** The rules live in → [Foundations and Compatibility](modlist-foundations.md): SkyPatcher fits vanilla-record edits and plugin-slot relief; new records (CELL, QUST, facegen NPCs) and explicit load-order priority still need real plugins.
2. **Create the mod folder** in MO2 under the relevant separator, with the `SKSE/Plugins/SkyPatcher/` structure from the Starter Setup archive.
3. **Name configs after plugins** for per-mod patches (`SomeMod.esp.ini`); keep list-wide changes in `myChanges.ini`.
4. **Launch through MO2** and check the SkyPatcher log — it lists every loaded config file, and since 6.5.0, invalid or incomplete entries are safely skipped and logged rather than crashing.
5. **Verify in game.** NPC stat changes on an existing save need `iRefreshNPCStats` on. Confirm leveled-list injections by looting the target container or list.
6. **Automate with Patchifier** where appropriate: the Synthesis patcher generates SkyPatcher patches (see → [Bashed Patch & Synthesis Configuration](modlist-performance-patches.md)).
7. **Record the decision.** Adopted configs and their owners belong in the relevant section file and `STATUS.md`, like any other mod decision.

## Troubleshooting

| Symptom | Likely cause | Fix |
| --- | --- | --- |
| Crash on launch | Missing Visual C++ Redistributable | Install the latest VC++ redistributable |
| Config not applied | Wrong folder (outside `SKSE/Plugins/SkyPatcher/`), wrong filename, or missing requirement | Check the log; confirm the ESP exists if using a per-mod file |
| EditorID lookups fail | po3 Tweaks missing | Install [powerofthree's Tweaks](https://www.nexusmods.com/skyrimspecialedition/mods/51073) |
| NPC stats unchanged on existing save | `iRefreshNPCStats` off or not updated | Enable `iRefreshNPCStats` in `SkyPatcher.ini` |
| Bad entries breaking startup | Older SkyPatcher version | Update; 6.5.0+ skips and logs invalid entries |
| Long load times with many configs | Checking every line of configs for mods you don't have | Split per-mod configs into `PluginName.esp.ini` files |

## Resources And Further Reading

- [SkyPatcher](https://www.nexusmods.com/skyrimspecialedition/mods/106659) on Nexus Mods — Files tab has the **SkyPatcher — Starter Setup** folder structure
- Articles: [Read first — General Information](https://www.nexusmods.com/skyrimspecialedition/articles/6085), [How to use Filters](https://www.nexusmods.com/skyrimspecialedition/articles/6084), [setRandomVisualStyle](https://www.nexusmods.com/skyrimspecialedition/articles/6092), [Race Hook Patcher](https://www.nexusmods.com/skyrimspecialedition/articles/6215) — the full article section documents every patcher
- [RobCo Patcher](https://www.nexusmods.com/fallout4/mods/69798) (Fallout 4) — the equivalent patcher; its articles and community examples carry over
- [SkyPatcher source](https://github.com/Zzyxz/SkyPatcher) and the author's [Discord server](https://discord.gg/bBMDQUfuMu) for unreleased features and direct help
