# Foundations

Prerequisite mods that other mods depend on. These must be installed first and load at the top of your mod list.

| Mod                            | Purpose                                  | Required By        |
|--------------------------------|------------------------------------------|--------------------|
| SMAPI                          | Mod loader for Stardew Valley            | Everything         |
| Content Patcher                | Content framework for asset replacements | Most content mods  |
| Content Patcher Animations     | Animation support for CP                 | Animated content   |
| Farm Type Manager              | Custom farm type support                 | Custom farm maps   |
| SpaceCore                      | Core framework for many mods             | Multiple mods      |
| Json Assets                    | Custom item, fruit, and object framework | Many item mods     |
| Expanded Preconditions Utility | Advanced condition checking              | Some content mods  |
| Extra Map Layers               | Custom map layer framework               | Map-expanding mods |
| SAAT                           | Audio API                                | Audio mods         |
| Custom Music                   | Custom music playback                    | Music mods         |
| AT (Alternative Textures)      | Texture replacement framework            | Some graphics mods |
| Console Commands               | In-game console for debugging            | SMAPI utility      |
| Error Handler                  | Friendly SMAPI error messages            | SMAPI utility      |

## Load Order

Place the **== Foundations ==** separator at the very top of MO2's left pane. These mods should always load before any other mod.

## Notes

- Always install the latest SMAPI version compatible with SDV 1.6.15.
- When in doubt about a dependency, check the mod's Nexus description — most list their requirements clearly.
- Keep foundations up to date first before updating dependent mods.
