# Survival & Needs

---

## Survival Systems
How much day-to-day bodily upkeep the list wants: enough hunger, fatigue, cold, weather, disease, and wilderness friction for roleplay and travel texture, or a heavier survival framework as a central system. This section owns the baseline survival direction; → `Survival & Combat` owns later balance and difficulty interactions.

| Mod                                                                                                                                        | Type        | Dial       | Notes                                                                                                                       |
|--------------------------------------------------------------------------------------------------------------------------------------------|-------------|------------|-----------------------------------------------------------------------------------------------------------------------------|
| [Starfrost — A Survival Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/97536)                                               | Baseline    | #1, #2, #4 | **Locked.** Simonrim progression family. |
| [Immersive Diseases 2.0](https://www.nexusmods.com/skyrimspecialedition/mods/158221)                                                       | Add-on      | #1, #4     | Disease overhaul: OAR animations, RaceMenu overlays, blood/dirt compat. Reqs OAR/RaceMenu/SkyUI/SPID (all in stack). Fills the disease axis Starfrost doesn't own. Test. |

### Risks & Compatibility

- Confirm Starfrost (Simonrim) ships no same-named disease system so Immersive Diseases owns the affliction axis cleanly (its scope is cold/hunger/fatigue). Versions 1.1+ feature per-disease OAR animations and RaceMenu overlays.
- 9 open bug reports on Nexus — load-test disease acquisition/progression before locking.

---

## Roleplay Upkeep And Hygiene
Lighter day-to-day body-maintenance layer between full survival needs and pure visual flavor.

| Mod                                                                                       | Type        | Dial           | Notes                                                                                                                                                                      |
|-------------------------------------------------------------------------------------------|-------------|----------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Bathing in Skyrim — Renewed](https://www.nexusmods.com/skyrimspecialedition/mods/135288) | Baseline    | #1, #2, #3, #4 | SKSE + KPE + PO3 Papyrus Extender. Auto freecam, custom bathing animations, washable blood decal removal, bundled dirt overlays, unique soap with SkyPatcher distribution. |
| [Saunas of Skyrim - The Bathing Mare (External)](https://www.nexusmods.com/skyrimspecialedition/mods/169240) | Add-on      | #1, #2, #3, #4 | Bathhouse outside Whiterun with custom NPCs, vendor, sauna buffs, brandy kegs, rentable bed. Compatible with JK's Whiterun and BiSR. |
| [Real Water in Buckets and Barrels](https://www.nexusmods.com/skyrimspecialedition/mods/122422)             | Add-on      | all            | Visible water in containers (buckets, barrels, pots, pans). iNeed supported. BOS-based. Enhances survival-immersion visual detail.       |
| [Dynamic Dialogue Replacer — DDR](https://www.nexusmods.com/skyrimspecialedition/mods/135618)                | Framework   | all            | SKSE runtime dialogue-replacement framework. Required by the Simple Inn Bath dialogue expansion below. |
| [Simple Inn Bath](https://www.nexusmods.com/skyrimspecialedition/mods/49014)                                | Add-on      | all            | Bathhouse access at inns via innkeeper dialogue — minimal cell edits, high compatibility. **Works with the locked `Candlehearth` inn baseline (→ `modlist-world-content.md`, Inns) — no patches needed** (acts via dialogue/faction, not cell edits). |
| [Simple Inn Bath - Dialogue Expansion - DDR](https://www.nexusmods.com/skyrimspecialedition/mods/158544)    | Add-on      | all            | DDR-based voiced dialogue lines for Simple Inn Bath (~80 lines: spliced innkeeper + bathing dialogue). **Requires DDR (135618) + Simple Inn Bath**. Carries an **AI-Generated Content** tag — quality-eval per policy. |
| [Simple Inn Bath for New Lands — SPID](https://www.nexusmods.com/skyrimspecialedition/mods/104314) | Add-on      | all            | SPID patches granting Simple Inn Bath dialogue to Bruma, Falskaar, Skyrim - Obscure's College of Winterhold, Beyond Reach, Wyrmstooth, and Midwood Isle innkeepers. Requires SPID (baseline). |
| Minimalist route                                                                                          | Alternative | all            | Leave hygiene implied through inns, rivers, roleplay.                                                                                      |

### Eating & Drinking Animations
Visible eating and drinking as a downtime ritual — animated consumption with sound effects, NPC autonomous eating, MCM-configurable. Complements survival needs without adding hunger mechanics.

| Mod                                                                                   | Type     | Dial | Notes                                                                                                     |
|---------------------------------------------------------------------------------------|----------|------|-----------------------------------------------------------------------------------------------------------|
| [Animated Eating Redux SE](https://www.nexusmods.com/skyrimspecialedition/mods/4652)  | Baseline | all  | Third-person eating/drinking animations with sound. NPCs eat autonomously based on time of day. FOMOD with optional animated potions, coffee/tea. Requires SKSE + SkyUI + Pandora (behavior engine). |
| [Animated Eating Redux - Settings Loader](https://www.nexusmods.com/skyrimspecialedition/mods/63841) | Companion | all | MCM settings loader/preset. Install after Animated Eating Redux.                           |
| [Eating Animations and Sounds](https://www.nexusmods.com/skyrimspecialedition/mods/42602)             | Alternative | all | Lighter eating/drinking animation replacement. **Competes with the locked `Animated Eating Redux` baseline on the same animation events — choose one.** |

### Key Features

- **Washable Blood** — Uses a KPE function (not Dirt & Blood's overlay-based system) to remove blood decals directly. Compatible with Enhanced Blood Textures, Just Blood, Sanguine Symphony.
- **Dirtiful Dirt** — Bundles Zaki's 2K dirt overlays. Optional: Zaki's higher-res variants or MoonMods alternative textures.
- **Custom Animations** — Packaged male animations (Tweens) and female animations (BakaFactory, Krzp). Auto-detects JVraven's Malignis Bathing animations. Falls back to vanilla bathing idles — no FNIS/Pandora requirement for basic use.
- **Unique Soap** — Craftable at cooking pots from vanilla materials, or buy from general merchants (SkyPatcher). Multiple soap types with different benefits. Linen wash rag as a soap-free fallback.
- **Automatic Freecam** — Switches to third-person freecam during bathing, matching the pattern of other animation frameworks.
- **Follower Support** — Tracks and manages follower hygiene alongside the player.

### Hard Dependencies

Already in the → `Foundations` baseline: Kris's Papyrus Extender, PapyrusUtil, PO3's Papyrus Extender, RaceMenu. No additional dependency installs needed.

### JSON Configuration

BiSR supports auto-start via JSON in `ModOrganizer.ini`:

```
[CustomConverter]
$path/data/mods/Bathing in Skyrim Renewed/SKSE/plugins/BathingInSkyrimRenewed.json
```

Use `"!!doautoload" : 1` and `"!!doautostart" : 1` to skip MCM setup on new games.

### Configuration Discipline

- Hygiene busywork risk. Configure overlay intervals and NPC tracking counts to taste.
- For Steam runtime `1.6.1170`, Backported Extended ESL Support requirement does not apply.

---

## Death Alternative System
What happens when the player falls in combat.

| Mod                                                                           | Type        | Dial   | Notes                                                                                                        |
|-------------------------------------------------------------------------------|-------------|--------|--------------------------------------------------------------------------------------------------------------|
| Discipline-first route                                                        | Baseline    | all    | Vanilla death-and-reload loop. Zero compatibility risk.                      |
| [Shadow of Skyrim](https://www.nexusmods.com/skyrimspecialedition/mods/72924) | Alternative | #1, #4 | Nemesis system — respawn with debuffs, enemies gain name/buffs/presence. High script load at this list's complexity. |

### Risks & Compatibility

- Death-alternative systems interact with every combat mod. Verify compatibility with `Valhalla Combat`, `Precision`, `TK Dodge`, and combat-animation mods from → `Animations`.
- The nemesis system adds persistent NPCs and effects; verify save file size remains reasonable over long playthroughs.
- Death-alternative mods can create edge cases with scripted-death sequences in quests. Check compatibility with `Skyrim Unbound Reborn`, `Wyrmstooth`, `The Forgotten City`, and major quest mods from → `World Content`.
- Confirm compatibility with Steam `1.6.1170` and the SKSE plugin stack from → `Foundations`.
