# Survival & Needs

**MO2 Separator:** `Expanded Systems` → `Expanded Systems - Survival & Needs`

All mods in this section belong to the `Expanded Systems - Survival & Needs` MO2 separator unless noted.

Part of the [`Expanded Systems`](modlist-expanded-systems.md) section.

---

## Survival Systems → separator: `Expanded Systems - Survival & Needs`

How much day-to-day bodily upkeep the list wants: enough hunger, fatigue, cold, weather, disease, and wilderness friction for roleplay and travel texture, or a heavier survival framework as a central system. This section owns the baseline survival direction; → `Survival & Combat` owns later balance and difficulty interactions.

| Mod                                                                                                                                        | Type        | Dial       | Notes                                                                                                                       |
|--------------------------------------------------------------------------------------------------------------------------------------------|-------------|------------|-----------------------------------------------------------------------------------------------------------------------------|
| [Starfrost — A Survival Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/97536)                                               | Baseline    | #1, #2, #4 | Fits Simonrim-aligned progression family.                                                                                   |
| [SunHelm Survival](https://www.nexusmods.com/skyrimspecialedition/mods/39414)                                                              | Alternative | #1, #2, #4 | Practical if Starfrost proves too tightly tuned.                                                                            |
| [Last Seed — Survival Needs](https://www.nexusmods.com/skyrimspecialedition/mods/56393)                                                    | Alternative | #1, #2, #4 | Heavier classic route.                                                                                                      |
| [Frostfall](https://www.nexusmods.com/skyrimspecialedition/mods/671) + [Campfire](https://www.nexusmods.com/skyrimspecialedition/mods/667) | Alternative | #1         | Harsh wilderness route.                                                                                                     |
| [Skills of the Wild](https://www.nexusmods.com/skyrimspecialedition/mods/37693) v2.0+                                                      | Optional    | #1         | 4 new skill trees (Hunting, Foraging, Tracking, Camping). Requires Campfire. Full compatibility with any survival baseline. |

### Risks & Compatibility

- A heavy survival system can dominate pacing and crowd out other expanded systems.
- A very light setup can undershoot the immersive-travel pillar if later downtime decisions expect more texture.
- Cold, disease, food, sleep, and camping can blur together between survival, cooking, roleplay, and religion ownership.
- Judge survival primarily on travel texture, downtime rhythm, and world feel rather than maximum hardship.

---

## Roleplay Upkeep And Hygiene → separator: `Expanded Systems - Survival & Needs`

Lighter day-to-day body-maintenance layer between full survival needs and pure visual flavor. Adds believable downtime rituals without turning hygiene into a second dominant survival framework.

| Mod                                                                                       | Type        | Dial           | Notes                                                                                                                                                                      |
|-------------------------------------------------------------------------------------------|-------------|----------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Bathing in Skyrim — Renewed](https://www.nexusmods.com/skyrimspecialedition/mods/135288) | Baseline    | #1, #2, #3, #4 | SKSE + KPE + PO3 Papyrus Extender. Auto freecam, custom bathing animations, washable blood decal removal, bundled dirt overlays, unique soap with SkyPatcher distribution. |
| Minimalist route                                                                          | Alternative | all            | Leave hygiene implied through inns, rivers, roleplay.                                                                                                                      |

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
- Equipment handling, overlays, and optional integrations need stricter discipline than a simple immersion add-on.
- Only hard runtime requirements should be treated as mandatory.
- For Steam runtime `1.6.1170`, Backported Extended ESL Support requirement does not apply.

---

## Death Alternative System → separator: `Expanded Systems - Survival & Needs`

What happens when the player falls in combat. Goal: add consequence and narrative texture to defeat without making every lost fight permanent.

| Mod                                                                           | Type        | Dial   | Notes                                                                                                        |
|-------------------------------------------------------------------------------|-------------|--------|--------------------------------------------------------------------------------------------------------------|
| [Shadow of Skyrim](https://www.nexusmods.com/skyrimspecialedition/mods/72924) | Baseline    | #1, #4 | Nemesis system — respawn with debuffs, enemies gain name/buffs/presence, defeat nemesis to restore progress. |
| Discipline-first route                                                        | Alternative | all    | Vanilla death-and-reload loop.                                                                               |

### Risks & Compatibility

- Death-alternative systems interact with every combat mod. Verify compatibility with `Valhalla Combat`, `Precision`, `TK Dodge`, and combat-animation mods from → `Animations`.
- The nemesis system adds persistent NPCs and effects; verify save file size remains reasonable over long playthroughs.
- Death-alternative mods can create edge cases with scripted-death sequences in quests. Check compatibility with `Alternate Perspective`, `Wyrmstooth`, `The Forgotten City`, and major quest mods from → `World Content`.
- Confirm compatibility with Steam `1.6.1170` and the SKSE plugin stack from → `Foundations`.
