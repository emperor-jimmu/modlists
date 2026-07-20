# Foundations

Prerequisite mods that other mods depend on. These must be installed first and load at the top of your mod list.

| Mod | Purpose | Download | Required By |
|-----|---------|----------|-------------|
| SMAPI | Mod loader for Stardew Valley | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/2400) | Everything |
| Content Patcher | Content framework for asset replacements | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/1915) | Most content mods |
| Content Patcher Animations | Animation support for CP | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/3853) | Animated content |
| Expanded Preconditions Utility | Advanced condition checking | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/6529) | Some content mods |
| SpaceCore | Core framework for many mods | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/1348) | Multiple mods |
| Json Assets | Custom item, fruit, and object framework | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/1720) | Many item mods |
| Farm Type Manager | Custom farm type / spawning framework | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/3231) | Custom farm maps |
| Extra Map Layers | Custom map layer framework | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/9633) | Map-expanding mods |
| Custom Music | Custom music playback | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/3043) | Music mods |
| SAAT | Audio API and toolkit | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/10747) | Audio mods |
| Alternative Textures | Texture replacement framework | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/9246) | Some graphics mods |
| Fashion Sense | Framework for larger accessories, hairstyles, hats, shirts, sleeves, pants, and shoes with animation support | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/9969) — SMAPI-based, v7.5.0+, 69k+ endorsements. Requires SMAPI. | FS clothing/hair packs |
| Positional Audio | Framework for positional audio — sounds that play from specific in-world locations | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/37134) — SMAPI-based, v1.0.3, 379 endorsements. Required by Now You Hear It. | Audio mods that use positional sound |
| Button's Extra Trigger Action Stuff (BETAS) | Trigger action framework used by custom NPCs and events | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/27100) — SMAPI-based, 1.6 Compatible. Framework mod. Requires SMAPI. | NPC mods that use BETAS |
| Midnight's Misc Tilesheets | Custom tilesheets used as a modder's resource by NPC and map mods | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/32021) — CP-based, 1.6 Compatible. Assets only. | Maps/NPCs that reference these tilesheets |
| Furniture Framework | Framework that adds new furniture items to the game via Content Patcher | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/23458) — CP-based. Needed by some furniture packs. | Furniture mods that use FF |
| Calcifer | Furniture catalogue framework for Content Patcher | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/20628) — CP-based. Needed by some furniture packs. | Furniture mods that use Calcifer |
| Em's Cows | Alternative Textures content pack adding 40+ cow skin variants | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/34291) — CP + AT-based, 1.6 Compatible. Requires Alternative Textures + CP + SMAPI. Parent mod for Em and Harry's Exotic Cattle. | Animal cosmetic mods that reference Em's cow variants |
| Central Station | Warp network framework — adds fast-travel between custom locations. Required by several map-expanding mods. | [NexusMods](https://www.nexusmods.com/stardewvalley/mods/8000) — CP-based, 1.6 Compatible. 10k+ endorsements. Requires SMAPI + CP. | Map expansion mods that add custom travel locations |
| Console Commands | In-game console for debugging | Bundled with SMAPI | SMAPI utility |
| Error Handler | Friendly SMAPI error messages | Bundled with SMAPI | SMAPI utility |

## Load Order

These mods should always be enabled and loaded before any other mod. In Stardrop, use **Folder** grouping to keep foundations at the top of your mod list.

## Notes

- Always install the latest SMAPI version compatible with SDV 1.6.15.
- When in doubt about a dependency, check the mod's Nexus description — most list their requirements clearly.
- Keep foundations up to date first before updating dependent mods.
