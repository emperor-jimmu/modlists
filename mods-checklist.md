# Elder Wilds - Mods Checklist

Download checklist for every mod referenced in the plan, grouped by section. Each section is a table with columns: `Mod`, `Dependencies` (required mods; modlist entries shown in code, external runtime requirements in italics), and `URL`. Section is implicit from the section header. Base picks only as written in the section files; verify load order and patches per section.

## Foundations and Compatibility

| Mod                                  | Dependencies                                              | URL                                                         |
|--------------------------------------|-----------------------------------------------------------|-------------------------------------------------------------|
| `SKSE64`                             | _None_                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/30379> |
| `Address Library for SKSE Plugins`   | `SKSE64`                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/32444> |
| `SSE Engine Fixes`                   | `SKSE64`, `Address Library for SKSE Plugins`              | <https://www.nexusmods.com/skyrimspecialedition/mods/17230> |
| `SSE Display Tweaks`                 | `SKSE64`, `Address Library for SKSE Plugins`              | <https://www.nexusmods.com/skyrimspecialedition/mods/34705> |
| `Scrambled Bugs`                     | `SKSE64`, `Address Library for SKSE Plugins`              | <https://www.nexusmods.com/skyrimspecialedition/mods/43532> |
| `powerofthree's Tweaks`              | `SKSE64`, `Address Library for SKSE Plugins`              | <https://www.nexusmods.com/skyrimspecialedition/mods/51073> |
| `powerofthree's Papyrus Extender`    | `SKSE64`, `Address Library for SKSE Plugins`              | <https://www.nexusmods.com/skyrimspecialedition/mods/22854> |
| `PapyrusUtil`                        | `SKSE64`                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/13048> |
| `MCM Helper`                         | `SKSE64`                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/53000> |
| `JContainers`                        | `SKSE64`                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/16495> |
| `Keyword Item Distributor (KID)`     | `SKSE64`, `powerofthree's Papyrus Extender`, `MCM Helper` | <https://www.nexusmods.com/skyrimspecialedition/mods/55728> |
| `Spell Perk Item Distributor (SPID)` | `SKSE64`, `powerofthree's Papyrus Extender`, `MCM Helper` | <https://www.nexusmods.com/skyrimspecialedition/mods/36869> |
| `Base Object Swapper (BOS)`          | `SKSE64`, `MCM Helper`                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/60805> |
| `Crash Logger SSE AE VR`             | `SKSE64`, `Address Library for SKSE Plugins`              | <https://www.nexusmods.com/skyrimspecialedition/mods/59818> |
| `RaceMenu SE` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/29624> |
| `Dual Casting Fix` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/92454> |
| `Andrealphus' Papyrus Functions` | `SKSE64` | <https://www.nexusmods.com/skyrimspecialedition/mods/85252> |
| `ConsoleUtilSSE NG` | `SKSE64` | <https://www.nexusmods.com/skyrimspecialedition/mods/76649> |
| `SkyPatcher` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/106659> |
| `Particle Patch` | _None_ (supports vanilla and `Community Shaders`) | <https://www.nexusmods.com/skyrimspecialedition/mods/65720> |
| `Assorted Mesh Fixes` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/32117> |
| `Unofficial Material Fix` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/21027> |
| `Flickering Meshes Fix` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/53957> |


## Modern Graphics

### Framework and Effect Plugins

| Mod                                         | Dependencies                                 | URL                                                          |
|---------------------------------------------|----------------------------------------------|--------------------------------------------------------------|
| `Community Shaders`                         | _None_                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/86492>  |
| `Screen Space Shadows - Community Shaders`  | `Community Shaders`                          | <https://www.nexusmods.com/skyrimspecialedition/mods/93209>  |
| `Grass Lighting - Community Shaders`        | `Community Shaders`                          | <https://www.nexusmods.com/skyrimspecialedition/mods/86502>  |
| `Water Effects - Community Shaders`         | `Community Shaders`                          | <https://www.nexusmods.com/skyrimspecialedition/mods/112762> |
| `Wetness Effects - Community Shaders`       | `Community Shaders`                          | <https://www.nexusmods.com/skyrimspecialedition/mods/112739> |
| `Terrain Shadows - Community Shaders`       | `Community Shaders`                          | <https://www.nexusmods.com/skyrimspecialedition/mods/135817> |
| `Subsurface Scattering - Community Shaders` | `Community Shaders`                          | <https://www.nexusmods.com/skyrimspecialedition/mods/114114> |
| `Skylighting - Community Shaders`           | `Community Shaders`                          | <https://www.nexusmods.com/skyrimspecialedition/mods/139352> |
| `Screen Space Global Illumination (SSGI)`   | `Community Shaders`                          | <https://www.nexusmods.com/skyrimspecialedition/mods/130375> |
| `Skyrim Upscaler - DLSS FSR2 XeSS`          | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/80343>  |
| `PBR Hub`                                   | _None_                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/139889> |
| `Complex Parallax Materials`                | _None_                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/95134>  |
| `PGPatcher`                                 | `PBR Hub`, `Complex Parallax Materials`      | <https://www.nexusmods.com/skyrimspecialedition/mods/120946> |
| `Auto Parallax`                             | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/79473>  |

### PBR Textures (Cities and Landscapes)

| Mod                                                      | Dependencies                                                              | URL                                                          |
|----------------------------------------------------------|---------------------------------------------------------------------------|--------------------------------------------------------------|
| `Faultier's PBR Skyrim`                                  | `PBR Hub`                                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/125308> |
| `Tomato's PBR Whiterun`                                  | `PBR Hub`                                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/135771> |
| `Tomato's PBR Farmhouses 2.0`                            | `PBR Hub`                                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/135774> |
| `PBaRkarth - PBR texture mod for Markarth and Dwemer`    | `PBR Hub`                                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/144535> |
| `laogu's PBR Solitude`                                   | `PBR Hub`                                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/173698> |
| `Exist's Nordic Ruins PBR and Complex Parallax Material` | `PBR Hub`, `Complex Parallax Materials`                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/118014> |
| `A Cathedralist's PBR Landscape`                         | `PBR Hub`                                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/137333> |
| `TomatoRim PBR Landscapes AIO`                           | `PBR Hub`                                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/177621> |
| `Happy Little Trees PBR`                                 | `PBR Hub`, `Happy Little Trees`                                           | <https://www.nexusmods.com/skyrimspecialedition/mods/159171> |
| `PBR textures for The Great Cities Collection`           | `Community Shaders`, _The Great Cities (base) - not currently in modlist_ | <https://www.nexusmods.com/skyrimspecialedition/mods/133493> |

### Landscapes, Clutter, Clothing, and Meshes

| Mod                                                         | Dependencies                                                                       | URL                                                          |
|-------------------------------------------------------------|------------------------------------------------------------------------------------|--------------------------------------------------------------|
| `Skyland AIO`                                               | _None_                                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/34179>  |
| `Skurkbro's Retexture Project AIO`                          | _None_                                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/63148>  |
| `Skyking Fantasia Landscapes`                               | _None_                                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/107256> |
| `Rally's Solstheim Landscapes`                              | _None_                                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/35590>  |
| `Enhanced Rocks and Mountains - Complex Material and PBR`   | `PBR Hub`, `Complex Parallax Materials`                                            | <https://www.nexusmods.com/skyrimspecialedition/mods/121336> |
| `Enhanced Rocks and Mountains - Fix and Addon`              | `Enhanced Rocks and Mountains - Complex Material and PBR`                          | <https://www.nexusmods.com/skyrimspecialedition/mods/142493> |
| `Riton Whiterun`                                            | _None_                                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/103408> |
| `Atlantean Landscape - Majestic Edition`                    | _None_                                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/102170> |
| `Atlantean Landscape - Complete - Complex Terrain Parallax` | `Complex Parallax Materials`                                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/89542>  |
| `Blended Roads - Light Plugin (ESL)`                        | _None_                                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/171554> |
| `Nordic Snow`                                               | _None_                                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/670>    |
| `Nordic Snow - Complex Material`                            | `Complex Parallax Materials`                                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/133034> |
| `Simplicity of Snow`                                        | _None_                                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/56235>  |
| `RUSTIC CLUTTER COLLECTION - Special Edition`               | _None_                                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/5795>   |
| `Snazzy Furniture and Clutter Overhaul (SFCO)`              | _None_                                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/2414>   |
| `RUSTIC CLOTHING - Special Edition`                         | _None_                                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/4703>   |
| `Static Mesh Improvement Mod - SMIM`                        | _None_                                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/659>    |
| `High Poly Project`                                         | _None_                                                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/12029>  |
| ~~`Majestic Mountains`~~                                    | _(removed; replaced by `Enhanced Rocks and Mountains - Complex Material and PBR`)_ | <https://www.nexusmods.com/skyrimspecialedition/mods/11052>  |

### Lighting Overhauls

| Mod                                                    | Dependencies                                 | URL                                                          |
|--------------------------------------------------------|----------------------------------------------|--------------------------------------------------------------|
| `Lux`                                                  | _None_                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/43158>  |
| `Lux CS`                                               | `Lux`, `Community Shaders`                   | <https://www.nexusmods.com/skyrimspecialedition/mods/153919> |
| `Lux Orbis`                                            | `Lux`                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/56095>  |
| `Lux Via`                                              | `Lux`                                        | <https://www.nexusmods.com/skyrimspecialedition/mods/63588>  |
| `Enhanced Lights and FX`                               | _None_                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/2424>   |
| `ELFX Shadows`                                         | `Enhanced Lights and FX`                     | <https://www.nexusmods.com/skyrimspecialedition/mods/63790>  |
| `Relighting Skyrim SE`                                 | _None_                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/8586>   |
| `Luminosity Lighting Overhaul - The Cathedral Concept` | _None_                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/16830>  |
| `CS Light`                                             | `Community Shaders`                          | <https://www.nexusmods.com/skyrimspecialedition/mods/138443> |
| `True Light`                                           | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/135488> |
| `Window Shadows Ultimate`                              | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/150494> |
| `iLluminous Elementals`                                | _None_                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/138128> |

### Weather and Atmosphere

| Mod                                                                      | Dependencies                                           | URL                                                          |
|--------------------------------------------------------------------------|--------------------------------------------------------|--------------------------------------------------------------|
| `NAT.CS III`                                                             | `Community Shaders`                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/139567> |
| `Azurite Weathers III - Enhanced`                                        | _None_                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/150269> |
| `Azurite III CS`                                                         | `Azurite Weathers III - Enhanced`, `Community Shaders` | <https://www.nexusmods.com/skyrimspecialedition/mods/162153> |
| `RAID Weathers`                                                          | _None_                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/63116>  |
| `Raid Weathers CS`                                                       | `RAID Weathers`, `Community Shaders`                   | <https://www.nexusmods.com/skyrimspecialedition/mods/171041> |
| `Cathedral Weathers and Seasons`                                         | _None_                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/24791>  |
| `Obsidian Weathers and Seasons`                                          | _None_                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/12125>  |
| `Obsidian CS`                                                            | `Obsidian Weathers and Seasons`, `Community Shaders`   | <https://www.nexusmods.com/skyrimspecialedition/mods/162627> |
| `Skydreamus Community Shaders Presets for NAT.CS III and Azurite III CS` | `Community Shaders`, `NAT.CS III` or `Azurite III CS`  | <https://www.nexusmods.com/skyrimspecialedition/mods/171145> |

### Water

| Mod                                                                                  | Dependencies                                              | URL                                                          |
|--------------------------------------------------------------------------------------|-----------------------------------------------------------|--------------------------------------------------------------|
| `FYX - Water Mesh Optimization`                                                      | _None_                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/97713>  |
| `A Water Made For CS in mind`                                                        | `Community Shaders`                                       | <https://www.nexusmods.com/skyrimspecialedition/mods/172959> |
| `Simplicity of Sea - Water Mod with ENB and Community Shaders Displacement Textures` | `Simplicity of Sea - Water Color and Transparency Tweaks` | <https://www.nexusmods.com/skyrimspecialedition/mods/56520>  |
| `Simplicity of Sea - Water Color and Transparency Tweaks`                            | _None_                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/148761> |
| `Natural Waterfalls`                                                                 | _None_                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/87261>  |
| `Rally's Water Foam`                                                                 | _None_                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/28922>  |

### Grass and Flora

| Mod                                                              | Dependencies                                                                                             | URL                                                         |
|------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------|-------------------------------------------------------------|
| `Skoglendi - A Grass Mod`                                        | _None_                                                                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/93944> |
| `Flora Orientalis`                                               | _None_                                                                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/64041> |
| `Folkvangr - Grass and Landscape Overhaul`                       | _None_                                                                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/44899> |
| `Waterplants`                                                    | _None_                                                                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/6092>  |
| `Vinland Grass Patch - Skoglendi - Flora Orientalis - Folkvangr` | `Skoglendi - A Grass Mod`, `Flora Orientalis`, `Folkvangr - Grass and Landscape Overhaul`, `Waterplants` | <https://www.nexusmods.com/skyrimspecialedition/mods/95273> |
| `Origins Of Forest - 3D Forest Grass`                            | _None_                                                                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/45719> |
| `Mari's flora`                                                   | _None_                                                                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/45952> |
| `No Grass In Objects`                                            | _None_                                                                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/42161> |
| `Worldspaces with Grass SSEEdit Script for No Grass In Objects`  | `No Grass In Objects`                                                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/55152> |
| `Grass Cache Fixes`                                              | _None_                                                                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/60891> |

### Trees and Forests

| Mod                                                           | Dependencies                                                                                                | URL                                                          |
|---------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
| `Traverse the Ulvenwald - 3.3 - Trees and Forests of Skyrim`  | _None_                                                                                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/57874>  |
| `Happy Little Trees`                                          | _None_                                                                                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/50961>  |
| `Fabled Forests`                                              | _None_                                                                                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/94462>  |
| `Nature of the Wild Lands - forest and trees improvement mod` | _None_                                                                                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/63604>  |
| `Fabled Forests - Ulvenwald - Compatibility Patch (BOS)`      | `Fabled Forests`, `Traverse the Ulvenwald - 3.3 - Trees and Forests of Skyrim`, `Base Object Swapper (BOS)` | <https://www.nexusmods.com/skyrimspecialedition/mods/134501> |

### LOD and Distant Detail

| Mod                                         | Dependencies                                    | URL                                                          |
|---------------------------------------------|-------------------------------------------------|--------------------------------------------------------------|
| `DynDOLOD Resources SE 3`                   | _None_                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/52897>  |
| `DynDOLOD DLL NG`                           | `DynDOLOD Resources SE 3`                       | <https://www.nexusmods.com/skyrimspecialedition/mods/97720>  |
| `HD LODs Textures SE`                       | _None_                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/3333>   |
| `Happy Little Trees DynDOLOD Optimizations` | `Happy Little Trees`, `DynDOLOD Resources SE 3` | <https://www.nexusmods.com/skyrimspecialedition/mods/158587> |
| `xLODGen Resource - SSE Terrain Tamriel`    | _None_                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/54680>  |

### Bodies, Skin, Hair, Eyes, Creatures

| Mod                                                             | Dependencies                                       | URL                                                          |
|-----------------------------------------------------------------|----------------------------------------------------|--------------------------------------------------------------|
| `CBBE NSFW - Caliente's Beautiful Bodies Enhancer`              | _None_                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/74257>  |
| `CBBE 3BA (3BBB)`                                               | `CBBE NSFW - Caliente's Beautiful Bodies Enhancer` | <https://www.nexusmods.com/skyrimspecialedition/mods/30174>  |
| `Highly Improved Male Body Overhaul - HIMBO`                    | _None_                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/74174>  |
| `BnP - Female Skin`                                             | `CBBE NSFW - Caliente's Beautiful Bodies Enhancer` | <https://www.nexusmods.com/skyrimspecialedition/mods/65274>  |
| `BnP - Male Skin`                                               | `Highly Improved Male Body Overhaul - HIMBO`       | <https://www.nexusmods.com/skyrimspecialedition/mods/65402>  |
| `FitnessGoal CBBE 3BA 3BBB Bodyslide Preset for Modest Players` | `CBBE 3BA (3BBB)`, `BodySlide and Outfit Studio`   | <https://www.nexusmods.com/skyrimspecialedition/mods/69681>  |
| `BodySlide and Outfit Studio`                                   | _None_                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/201>    |
| `KS Hairdos SSE`                                                | _None_                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/6817>   |
| `Eyes Nouveaux`                                                 | _None_                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/131210> |
| `AURORA S.E.`                                                   | _None_                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/6021>   |
| `Bellyaches Animal and Creature Pack SSE`                       | _None_                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/6839>   |
| `Skeleton Replacer HD - SE`                                     | _None_                                             | <https://www.nexusmods.com/skyrimspecialedition/mods/52845>  |

### Misc Visuals and FX

| Mod                           | Dependencies                                 | URL                                                          |
|-------------------------------|----------------------------------------------|--------------------------------------------------------------|
| `Dynamic Bloodpool Framework` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/172080> |

### Notes

- Three mods were added to this section to satisfy external dependencies surfaced during conversion: `Flora Orientalis` (64041), `Folkvangr - Grass and Landscape Overhaul` (44899), and `Waterplants` (6092). They are all required by `Vinland Grass Patch`.

## Animations and Movement

| Mod                                                                         | Dependencies                                                                  | URL                                                          |
|-----------------------------------------------------------------------------|-------------------------------------------------------------------------------|--------------------------------------------------------------|
| [ ] `Pandora Behaviour Engine Plus`                                         | `SKSE64`, `Address Library for SKSE Plugins`                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/133232> |
| [ ] `XP32 Maximum Skeleton Special Extended - XPMSSE`                       | `SKSE64`, `Address Library for SKSE Plugins`                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/44252>  |
| [ ] `CBPC - Physics with Collisions for SSE and VR`                         | `SKSE64`, `Address Library for SKSE Plugins`, `CBBE 3BA (3BBB)`               | <https://www.nexusmods.com/skyrimspecialedition/mods/21224>  |
| [ ] `Open Animation Replacer`                                               | `SKSE64`, `Address Library for SKSE Plugins`                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/92109>  |
| [ ] `Unique Jarl Throne Sitting Animation (OAR)`                            | `Open Animation Replacer`                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/174752> |
| [ ] `SkyParkour v3 - Procedural Parkour and Climbing Framework (SPPF)`      | `SKSE64`, `Address Library for SKSE Plugins`                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/132292> |
| [ ] `Beam Walking Assist`                                                   | `SKSE64`, `Address Library for SKSE Plugins`                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/175511> |
| [ ] `RaySense - Jumping over obstacles`                                     | `Open Animation Replacer`, `Open Animation Replacer - RaySense`               | <https://www.nexusmods.com/skyrimspecialedition/mods/175506> |
| [ ] `Open Animation Replacer - RaySense`                                    | `Open Animation Replacer`                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/175498> |
| [ ] `Comprehensive First Person Animation Overhaul - CFPAO`                 | `SKSE64`, `Address Library for SKSE Plugins`                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/87169>  |
| [ ] `ConsoleUtilSSE NG`                                                     | `SKSE64`, `Address Library for SKSE Plugins`                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/76649>  |
| [ ] `Leviathan Animations II - Male Idle Walk And Run`                      | `XPMSSE`, `Pandora Behaviour Engine Plus`                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/81463>  |
| [ ] `Leviathan Animations II - Female Idle Walk And Run`                    | `XPMSSE`, `Pandora Behaviour Engine Plus`                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/80760>  |
| [ ] `Vanargand Animations II - Male Idle Walk And Run`                      | `XPMSSE`, `Pandora Behaviour Engine Plus`                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/99999>  |
| [ ] `Conditional Armor Type Animations`                                     | `Open Animation Replacer`                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/51507>  |
| [ ] `EVG Conditional Idles`                                                 | `Open Animation Replacer`                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/34006>  |
| [ ] `EVG Animated Traversal`                                                | `Open Animation Replacer`                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/63232>  |
| [ ] `Immersive Interactions - Animated Actions`                             | `XPMSSE`, `Pandora Behaviour Engine Plus`                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/47670>  |
| [ ] `Go to bed`                                                             | `XPMSSE`                                                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/4224>   |
| [ ] `New Creature Animation - Giant`                                        | `XPMSSE`, `Pandora Behaviour Engine Plus`                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/83317>  |
| [ ] `New Creature Animation - Falmer`                                       | `XPMSSE`, `Pandora Behaviour Engine Plus`                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/83572>  |
| [ ] `New Creature Animation - Werewolf`                                     | `XPMSSE`, `Pandora Behaviour Engine Plus`                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/83806>  |
| [ ] `Goetia Animations - Conditional Shuffled Idle for Pretty Female idles` | `Open Animation Replacer`                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/68005>  |
| [ ] `Goetia Animations - Female Idle Walk And Run`                          | `XPMSSE`, `Pandora Behaviour Engine Plus`                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/68625>  |
| [ ] `Precision - Accurate Melee Collisions`                                 | `SKSE64`, `Address Library for SKSE Plugins`                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/72347>  |
| [ ] `SCAR - Skyrim Combos AI Revolution`                                    | `SKSE64`, `Address Library for SKSE Plugins`, `Pandora Behaviour Engine Plus` | <https://www.nexusmods.com/skyrimspecialedition/mods/72014>  |
| [ ] `IFrame Generator RE (AE Support)`                                      | `Address Library for SKSE Plugins`, `SKSE64`                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/82737>  |
| [ ] `MCO ADXP - Modern Movement Combat Overhaul`                            | `SKSE64`, `Address Library for SKSE Plugins`                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/117115> |
| [ ] `Animation Motion Revolution`                                           | `SKSE64`, `Address Library for SKSE Plugins`, `MCO ADXP`                      | <https://www.nexusmods.com/skyrimspecialedition/mods/50258>  |
| [ ] `Payload Interpreter`                                                   | `SKSE64`, `Address Library for SKSE Plugins`, `MCO ADXP`                      | <https://www.nexusmods.com/skyrimspecialedition/mods/65089>  |

### Notes

- `CBPC` was added with deps `SKSE64`, `Address Library for SKSE Plugins`, `CBBE 3BA (3BBB)` as the default first-pass physics layer called out in `modlist-03.md` (Skeleton and Behavior Prerequisites).
- `Valhalla Combat` was removed from this section; it is planned for re-entry under section 11 (Survival, Difficulty, and Balance) when that section is converted, alongside the other combat-system overhauls there.
- `IFrame Generator RE` was added as `IFrame Generator RE (AE Support)` (mod 82737) so the entry matches the AE 1.6.629+ runtime fork needed for the target build. Deps: `Address Library for SKSE Plugins`, `SKSE64`.

## Third-Person Gameplay

| Mod                                                                | Dependencies                                                | URL                                                          |
|--------------------------------------------------------------------|-------------------------------------------------------------|--------------------------------------------------------------|
| [ ] `SmoothCam`                                                    | `SKSE64`, `Address Library for SKSE Plugins`                | <https://www.nexusmods.com/skyrimspecialedition/mods/41252>  |
| [ ] `Customizable Camera`                                          | `SKSE64`, `Address Library for SKSE Plugins`                | <https://www.nexusmods.com/skyrimspecialedition/mods/12201>  |
| [ ] `True Directional Movement - Modernized Third Person Gameplay` | `SKSE64`, `Address Library for SKSE Plugins`                | <https://www.nexusmods.com/skyrimspecialedition/mods/51614>  |
| [ ] `TrueHUD`                                                      | `SKSE64`, `Address Library for SKSE Plugins`                | <https://www.nexusmods.com/skyrimspecialedition/mods/62775>  |
| [ ] `Better Third Person Selection - BTPS`                         | `SKSE64`, `Address Library for SKSE Plugins`                | <https://www.nexusmods.com/skyrimspecialedition/mods/64339>  |
| [ ] `Ricochet - Arrow Physics Framework`                           | _None_                                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/160603> |
| [ ] `Improved Camera SE`                                           | `SKSE64`, `Address Library for SKSE Plugins`                | <https://www.nexusmods.com/skyrimspecialedition/mods/93962>  |
| [ ] `TK Dodge RE - Script Free`                                    | `SKSE64`, `Address Library for SKSE Plugins`, `TK Dodge SE` | <https://www.nexusmods.com/skyrimspecialedition/mods/56956>  |
| [ ] `TK Dodge SE`                                                  | `SKSE64`, `Address Library for SKSE Plugins`                | <https://www.nexusmods.com/skyrimspecialedition/mods/15309>  |
| [ ] `Convenient Horses`                                            | `SKSE64`, `Address Library for SKSE Plugins`                | <https://www.nexusmods.com/skyrimspecialedition/mods/9519>   |
| [ ] `Immersive Horses`                                             | `SKSE64`, `Address Library for SKSE Plugins`                | <https://www.nexusmods.com/skyrimspecialedition/mods/13402>  |
| [ ] `Dodge for all`                                                | _None_                                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/174544> |

### Notes

- `Ricochet - Arrow Physics Framework` is documented by the author as requiring "no scripts or plugin ESP" and operating at engine level, so no `SKSE64` or `Address Library` dep is needed for it to load. If testing later exposes an indirect SKSE requirement, update this row.
- `Dodge for all` has no listed requirements on its Nexus page as of the May 2026 release. It is brand new and built on behaviour work, so a behaviour engine (`Pandora Behaviour Engine Plus` from section 03) is a reasonable runtime expectation even though it is not a hard install-time dep. Marked `_None_` based on the published requirements; revisit when more community signal exists.
- `TK Dodge RE - Script Free` requires the `Meshes` folder from `TK Dodge SE` (mod 15309), which is why `TK Dodge SE` is listed as a dep here even though the section still carries `TK Dodge SE` as a legacy-fallback entry on its own row. The "Script Free" naming refers to the absence of a Papyrus script, not the absence of SKSE — the mod is a SKSE plugin.
- `Valhalla Combat` is referenced in `modlist-04.md` (Hit Reactions, Third-Person Combat Systems) but its primary home is section 11 (Survival, Difficulty, and Balance) alongside the other combat-system overhauls. It was removed from section 03 with that destination in mind and will be re-added when section 11 is converted.

## Expanded Systems

| Mod                                                       | Dependencies                                               | URL                                                         |
|-----------------------------------------------------------|------------------------------------------------------------|-------------------------------------------------------------|
| `Alternate Perspective - Alternate Start`                 | `Fuz Ro D-oh - Silent Voice`, `JContainers SE`             | <https://www.nexusmods.com/skyrimspecialedition/mods/50307> |
| `Alternate Start - Live Another Life`                     | _None_                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/272>   |
| `Skyrim Unbound Reborn (Alternate Start)`                 | `SKSE64`, `PapyrusUtil`, `SkyUI`                           | <https://www.nexusmods.com/skyrimspecialedition/mods/27962> |
| `Realm of Lorkhan - Freeform Alternate Start`             | _None_                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/18223> |
| `Dealing with Backstories`                                | _None_                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/61106> |
| `Take Notes - Journal of the Dragonborn SSE`              | _None_                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/13570> |
| `Aetherius - A Race Overhaul`                             | _None_                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/26686> |
| `Morningstar - Minimalistic Races of Skyrim`              | _None_                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/22298> |
| `Imperious - Races of Skyrim`                             | _None_                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/1315>  |
| `Evenstar - Minimalistic Standing Stones of Skyrim`       | _None_                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/41256> |
| `Andromeda - Unique Standing Stones of Skyrim`            | _None_                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/14910> |
| `Adamant - A Perk Overhaul`                               | `SKSE64`, `Address Library for SKSE Plugins`, `MCM Helper` | <https://www.nexusmods.com/skyrimspecialedition/mods/30191> |
| `Vokrii - Minimalistic Perks of Skyrim`                   | `SKSE64`, `Address Library for SKSE Plugins`, `MCM Helper` | <https://www.nexusmods.com/skyrimspecialedition/mods/26176> |
| `Ordinator - Perks of Skyrim`                             | `SKSE64`, `Address Library for SKSE Plugins`, `SkyUI`      | <https://www.nexusmods.com/skyrimspecialedition/mods/1137>  |
| `Mysticism - A Magic Overhaul`                            | `SKSE64`, `Address Library for SKSE Plugins`, `MCM Helper` | <https://www.nexusmods.com/skyrimspecialedition/mods/27839> |
| `Odin - Skyrim Magic Overhaul`                            | `SKSE64`, `Address Library for SKSE Plugins`, `MCM Helper` | <https://www.nexusmods.com/skyrimspecialedition/mods/46000> |
| `Apocalypse - Magic of Skyrim`                            | `SKSE64`, `Address Library for SKSE Plugins`, `MCM Helper` | <https://www.nexusmods.com/skyrimspecialedition/mods/1090>  |
| `Apothecary - An Alchemy Overhaul`                        | `SKSE64`, `Address Library for SKSE Plugins`, `MCM Helper` | <https://www.nexusmods.com/skyrimspecialedition/mods/52130> |
| `Complete Alchemy and Cooking Overhaul`                   | `SKSE64`, `Address Library for SKSE Plugins`, `SkyUI`      | <https://www.nexusmods.com/skyrimspecialedition/mods/19924> |
| `Alchemy Potions and Food Adjustments`                    | _None_                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/5877>  |
| `Starfrost - A Survival Overhaul`                         | `SKSE64`, `Address Library for SKSE Plugins`, `SkyUI`      | <https://www.nexusmods.com/skyrimspecialedition/mods/97536> |
| `SunHelm Survival and needs`                              | `SKSE64`, `SkyUI`                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/39414> |
| `Last Seed - Survival Needs and Diseases`                 | `SKSE64`, `SkyUI`                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/56393> |
| `Frostfall - Hypothermia Camping Survival`                | `Campfire - Complete Camping System`                       | <https://www.nexusmods.com/skyrimspecialedition/mods/671>   |
| `Campfire - Complete Camping System (Supports Skyrim VR)` | `SKSE64`, `SkyUI`                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/667>   |
| `Gourmet - A Cooking Overhaul`                            | `SKSE64`, `Address Library for SKSE Plugins`, `SkyUI`      | <https://www.nexusmods.com/skyrimspecialedition/mods/96876> |
| `Ars Metallica - Smithing Enhancement`                    | `SKSE64`, `SkyUI`                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/321>   |
| `Complete Crafting Overhaul Remastered`                   | `SKSE64`, `SkyUI`                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/28608> |
| `Honed Metal - NPC Crafting and Enchanting Services`      | `SKSE64`, `SkyUI`                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/61015> |
| `Trade and Barter - Skyrim Special Edition`               | _None_                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/23081> |
| `Open World Loot - Encounter Zone and Loot Overhaul`      | _None_                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/49681> |
| `MorrowLoot Ultimate - Skyrim Special Edition`            | _None_                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/3058>  |
| `Pilgrim - A Religion Overhaul`                           | `SKSE64`, `Address Library for SKSE Plugins`, `SkyUI`      | <https://www.nexusmods.com/skyrimspecialedition/mods/54099> |
| `Trua - Minimalistic Faiths of Skyrim`                    | _None_                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/32549> |
| `Wintersun - Faiths of Skyrim`                            | `SKSE64`, `Address Library for SKSE Plugins`, `SkyUI`      | <https://www.nexusmods.com/skyrimspecialedition/mods/22506> |
| `Skyrim Reputation`                                       | `SKSE64`, `Address Library for SKSE Plugins`, `SkyUI`      | <https://www.nexusmods.com/skyrimspecialedition/mods/22374> |
| `Book Of Shadows - Behaviour Based Stealth Additions`     | `SKSE64`, `Address Library for SKSE Plugins`, `SkyUI`      | <https://www.nexusmods.com/skyrimspecialedition/mods/76086> |
| `Suspicious City Guards`                                  | _None_                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/38762> |
| `Nether's Follower Framework`                             | `SKSE64`, `Address Library for SKSE Plugins`, `SkyUI`      | <https://www.nexusmods.com/skyrimspecialedition/mods/55653> |
| `EFF - Extensible Follower Framework`                     | `SKSE64`, `UIExtensions`, `RaceMenu SE`                    | <https://www.nexusmods.com/skyrimspecialedition/mods/7003>  |
| `Amazing Follower Tweaks SE`                              | `SKSE64`, `SkyUI`                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/6656>  |
| `Realistic AI Detection (RAID)`                           | _None_                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/2345>  |
| `Relationship Dialogue Overhaul - RDO SE`                 | _None_                                                     | <https://www.nexusmods.com/skyrimspecialedition/mods/1187>  |
| `Amorous Adventures` (clean variant)                      | `SKSE64`, `SkyUI`                                          | <https://www.nexusmods.com/skyrimspecialedition/mods/7305>  |
| `Marriage Mod - To Have And To Hold`                      | `SKSE64`                                                   | <https://www.nexusmods.com/skyrimspecialedition/mods/8589>  |
| `Serana Dialogue Add-On`                                  | `SKSE64`, `Address Library for SKSE Plugins`               | <https://www.nexusmods.com/skyrimspecialedition/mods/32161> |

### Lore-Friendly Items, Artifacts, and Wardrobe

| Mod                                                       | Dependencies                                | URL                                                          |
|-----------------------------------------------------------|---------------------------------------------|--------------------------------------------------------------|
| `Reliquary of Myth - Artifacts of Skyrim`                 | _None_                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/31612>  |
| `ArteFakes - Unique Artifacts Replacer`                   | _None_                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/41254>  |
| `Konahrik's Accoutrements`                                | _None_                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/22206>  |
| `Unique Items Tweaks - Improved Miscellaneous Artifacts` | _None_                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/33723>  |
| `Armor and Clothing Extension`                            | `RUSTIC CLOTHING - SE`, `SkyUI`             | <https://www.nexusmods.com/skyrimspecialedition/mods/19002>  |
| `Common Clothes and Armors`                               | _None_                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/21305>  |
| `Sforzinda Imitations`                                    | _None_                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/54346>  |
| `Cloaks of Skyrim`                                        | _None_                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/6369>   |
| `Colovian Noble Clothes`                                  | _None_                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/4464>   |
| `Knapsack Backpacks SE`                                   | _None_                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/3440>   |
| `NordwarUA Total Armor and Weapon Compilation`           | _None_                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/61423>  |
| `Bandolier - Bags and Pouches Classic`                    | _None_                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/2417>   |
| `LeanWolf's Better-Shaped Weapons SE`                     | _None_                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/2017>   |
| `Legendary Skyrim Crossbows and Bows SSE`                 | _None_                                      | <https://www.nexusmods.com/skyrimspecialedition/mods/8273>   |

### Notes

- Added `RaceMenu SE` to section 01 (Foundations and Compatibility) to satisfy the `EFF - Extensible Follower Framework` requirement (EFF lists `SKEE`, which is bundled with `RaceMenu SE`).
- The Simonrim family entries (`Adamant`, `Vokrii`, `Mysticism`, `Odin`, `Apocalypse`, `Apothecary`) were given `MCM Helper` as a dep because they ship MCM configuration menus; if MCM is unused or replaced, this is soft. `Aetherius` and the rest of the family (no SKSE plugins themselves) were given `_None_` and do use `SPID` only for optional NPC distribution per the Aetherius description, not as a hard dep.
- `Frostfall` hard-requires `Campfire` per its Nexus requirements page; `Campfire` is in the same section.
- `Skyrim Unbound Reborn` lists `PapyrusUtil` as a soft dep (only needed for some features) and `SkyUI` for the MCM.
- `Ordinator` is the only EnaiRim perk overhaul in the list that uses `SkyUI` for its MCM (not `MCM Helper`) - the others use `MCM Helper`.
- `Alternate Start - Live Another Life` and `Relationship Dialogue Overhaul` have no Nexus-listed hard requirements (RDO's hard requirements are the stock DLC ESMs that come with the game).
- `Imperious` MCM is optional per the description ("if SkyUI is installed (SkyUI not required to use Imperious)") - kept as `_None_` per the published requirements.

## Modernized UI

| Mod | Dependencies | URL |
| --- | --- | --- |
| `SkyUI` | `SKSE64` | <https://www.nexusmods.com/skyrimspecialedition/mods/12604> |
| `UIExtensions` | `SKSE64` | <https://www.nexusmods.com/skyrimspecialedition/mods/17561> |
| `Oathvein UI` | `SkyUI`, `SKSE64` | <https://www.nexusmods.com/skyrimspecialedition/mods/160916> |
| `Norden UI` | `SkyUI`, `SKSE64` | <https://www.nexusmods.com/skyrimspecialedition/mods/166086> |
| `SkyHUD` | `SkyUI`, `SKSE64` | <https://www.nexusmods.com/skyrimspecialedition/mods/463> |
| `moreHUD SE` | `SkyUI`, `SKSE64` | <https://www.nexusmods.com/skyrimspecialedition/mods/12688> |
| `moreHUD Inventory Edition` | `moreHUD SE`, `SkyUI`, `SKSE64` | <https://www.nexusmods.com/skyrimspecialedition/mods/18619> |
| `SkyUI Item Card Fixes` | `SkyUI` | <https://www.nexusmods.com/skyrimspecialedition/mods/29116> |
| `Aura's Inventory Tweaks (More SkyUI Icons Sorting Options and More)` | `SkyUI` | <https://www.nexusmods.com/skyrimspecialedition/mods/68557> |
| `Weapon Stat Viewer V2` | `SkyUI` | <https://www.nexusmods.com/skyrimspecialedition/mods/127249> |
| `Flat World Map Framework (FWMF)` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/29932> |
| `Skyrim and Solstheim Paper Maps by Mirhayasu for FWMF` | `Flat World Map Framework (FWMF)` | <https://www.nexusmods.com/skyrimspecialedition/mods/53788> |
| `Immersive Paper Map (3rd Edition)` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/54710> |
| `Skyrim Paper Map by FreelanceCartography for FWMF` | `Flat World Map Framework (FWMF)` | <https://www.nexusmods.com/skyrimspecialedition/mods/78995> |
| `Convenient Reading UI - SE` | `SkyUI` | <https://www.nexusmods.com/skyrimspecialedition/mods/50202> |
| `Wider MCM Menu for SkyUI` | `SkyUI` | <https://www.nexusmods.com/skyrimspecialedition/mods/22825> |
| `Better Dialogue Controls` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/1429> |
| `Better MessageBox Controls` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/1428> |
| `Dialogue Interface ReShaped` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/46546> |
| `Convenient Dialogue UI - SE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/57943> |
| `Skyrim SE Controller Interface Fix` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/1147> |
| `Gamepad Plus Plus` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/27007> |
| `Wheeler - Quick Action Wheel Of Skyrim` | `SkyUI`, `SKSE64` | <https://www.nexusmods.com/skyrimspecialedition/mods/97345> |
| `Sovngarde - Mist's Font Replacer` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/386> |
| `Prisma UI` | `SKSE64` | <https://www.nexusmods.com/skyrimspecialedition/mods/148718> |
| `Stats Tracker Menu - STM` | `SkyUI`, `SKSE64` | <https://www.nexusmods.com/skyrimspecialedition/mods/180653> |
| `Complete Widescreen Fix for Vanilla and SkyUI` | `SkyUI` | <https://www.nexusmods.com/skyrimspecialedition/mods/1778> |
| `Compass Navigation Overhaul` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/74484> |
| `CoMAP - Common Marker Addon Project` | `Compass Navigation Overhaul` | <https://www.nexusmods.com/skyrimspecialedition/mods/56123> |
| `Immersive HUD - iHUD Special Edition` | `SKSE64` | <https://www.nexusmods.com/skyrimspecialedition/mods/12440> |
| `Constructible Object Custom Keyword System` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/81409> |
| `SkyUI - Vanilla Crafting menu` | `SkyUI` | <https://www.nexusmods.com/skyrimspecialedition/mods/18717> |
| `More Informative Console` | `SKSE64` | <https://www.nexusmods.com/skyrimspecialedition/mods/19250> |
| `Quest Journal Fix for SkyUI` | `SkyUI` | <https://www.nexusmods.com/skyrimspecialedition/mods/108618> |
| `SkyUI Ghost Item Bug Fix` | `SkyUI` | <https://www.nexusmods.com/skyrimspecialedition/mods/49106> |
| `Yes Im Sure NG` | `SkyUI`, `SKSE64` | <https://www.nexusmods.com/skyrimspecialedition/mods/76892> |

### Notes

- Per AGENTS.md, the locked baseline is `SkyUI` + `Oathvein UI` (grim-dark, preferred over `Norden UI` due to tone fit and dependency chain). Both are kept here so `Norden UI` is available as a documented alternative; verify which one is installed in MO2.
- Three paper-map mods are listed: `FWMF` (the framework, locked), `Mirhayasu` (locked), and two non-locked extras (`Immersive Paper Map (3rd Edition)` is standalone; `FreelanceCartography` is a FWMF alternative). The Mirhayasu map is the locked pick per AGENTS.md. The other two are candidates to drop in a future pass unless intentional; flagging for review.
- `iHUD`, `Wheeler`, `Prisma UI`, and `Stats Tracker Menu` are SKSE plugins and were given `SKSE64`. `Wheeler` and `Stats Tracker Menu` also need `SkyUI` for the MCM/faction-config integration.
- `UIExtensions` was already implicitly required by `EFF - Extensible Follower Framework` in section 05; placing it here as a UI utility is the more natural home and the dep is now explicit.
- `Oathvein UI` / `Norden UI` ship SKSE plugins that hook into SkyUI's `UIExtensions` framework; both are shown as needing `SkyUI` + `SKSE64`.
- Four new interface entries (`More Informative Console`, `Quest Journal Fix for SkyUI`, `SkyUI Ghost Item Bug Fix`, `Yes Im Sure NG`) were added from the STEP 2.3 16-Interface section (verified June 2026). They are complementary QoL/fix mods that do not overlap with the existing UI picks. `More Informative Console` requires `SKSE64` (41k endorsements); the other three are SkyUI-specific UI fixes.

## Immersive Scale and World Feel

| Mod | Dependencies | URL |
| --- | --- | --- |
| `Time Flies SE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/39426> |
| `Dynamic Timescale - Remade` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/141531> |
| `Seasonal Calendar (for seasonal mods)` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/18164> |
| `Carriage and Ferry Travel Overhaul (Formerly Complete Fast Travel Overhaul)` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/8379> |
| `Carriage Stops of Skyrim` | `Carriage and Ferry Travel Overhaul (Formerly Complete Fast Travel Overhaul)` | <https://www.nexusmods.com/skyrimspecialedition/mods/10434> |
| `Fast Travel Cost` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/20200> |
| `Extended Encounters` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/44810> |
| `Radiance Encounters` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/19720> |
| `Immersive Patrols SE AE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/718> |
| `Sounds of Skyrim Complete SE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/8286> |
| `Acoustic Space Improvement Fixes (Corrected Reverb - Ambience - Interiors - SkyPatcher)` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/78992> |
| `Spaghetti's Cities - AIO` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/84735> |
| `Dawn of Skyrim (Director's Cut) SE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/9074> |
| `JK's Skyrim` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/6289> |
| `Ancient Land` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/22900> |
| `Interesting Roads` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/42749> |
| `Point The Way` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/352> |
| `Animallica SE - Skyrim Wildlife Overhaul` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/20456> |
| `One With Nature - Dynamic Animals and Creatures SE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/13343> |
| `Savage Skyrim` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/37768> |
| `Simply Darker Nights (SSE)` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/14269> |
| `Lanterns of Skyrim SE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/2429> |
| `Wearable Lanterns` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/7560> |

### Notes

- `Sounds of Skyrim Complete SE` and `Acoustic Space Improvement Fixes` are audio mods and arguably belong in section 10 (Audio and Feedback) rather than here. Kept in section 07 to match the existing checklist organization; flagging for possible future move.
- `Carriage Stops of Skyrim` adds stops to the `Carriage and Ferry Travel Overhaul` framework; that framework is in the same section.
- `Spaghetti's Cities - AIO`, `Dawn of Skyrim (Director's Cut) SE`, and `JK's Skyrim` are city overhauls that overlap in scope and may conflict. The lock is to choose one (typically `JK's Skyrim` or `Dawn of Skyrim`) and run a patch, or use `Spaghetti's Cities AIO` as the consolidated option. Flagging for user confirmation; current checklist has all three.
- `Time Flies SE` and `Dynamic Timescale - Remade` both scale time and are mutually exclusive; only one should be installed.
- `Extended Encounters`, `Radiance Encounters`, and `Immersive Patrols SE AE` are encounter/population mods that may overlap. Run only one of the encounter mods (`Extended Encounters` or `Radiance Encounters`) plus `Immersive Patrols` to avoid NPC/event overlap.

## World Content

| Mod | Dependencies | URL |
| --- | --- | --- |
| `Whiterun Forest Borealis` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/11343> |
| `The Marshlands` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/23062> |
| `Aspens Ablaze` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/39998> |
| `The Great Cities` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/320> |
| `The Great Cities - Minor Cities and Towns SSE Edition` | `The Great Cities` | <https://www.nexusmods.com/skyrimspecialedition/mods/20272> |
| `Cities of the North - Dawnstar` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/28952> |
| `Cities of the North - Morthal` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/34168> |
| `Cities of the North - Falkreath` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/56731> |
| `Cities of the North - Winterhold` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/40088> |
| `Settlements Expanded` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/7777> |
| `The Great City of Solitude SSE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/22243> |
| `JK's Whiterun Outskirts` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/78351> |
| `Capital Whiterun Expansion` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/37982> |
| `The Great Town of Shor's Stone SSE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/35977> |
| `The Great Town of Ivarstead SSE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/34505> |
| `The Great Village of Kynesgrove` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/42639> |
| `The Great Village of Mixwater Mill SSE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/36350> |
| `Granite Hill` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/14658> |
| `The Great Village of Old Hroldan SSE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/33189> |
| `Lund's Hamlet - An Overhaul` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/169830> |
| `Candlehearth - An Inn Overhaul` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/97542> |
| `The Great Town of Karthwasten SSE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/33032> |
| `Oakwood` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/61007> |
| `Forgotten Dungeons (SSE)` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/449> |
| `Hammet's Dungeon Pack 1 SE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/12186> |
| `Skyrim Underground SSE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/131> |
| `Dungeons - Revisited` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/51798> |
| `Children of the North Wind - Ruins of the Ancient Nords` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/147701> |
| `Hidden Hideouts of Skyrim SE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/2625> |
| `Hold Border Guards - Definitive Edition` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/61170> |
| `Nordic Ruins of Skyrim SSE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/20382> |
| `Hidden Hideouts of Skyrim City Edition SE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/2626> |
| `Sidequests of Skyrim` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/54245> |
| `Missives` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/17576> |
| `Moon and Star` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/4301> |
| `Wyrmstooth` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/45565> |
| `The Forgotten City` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/1179> |
| `Falskaar` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/2057> |
| `Sirenroot - Deluge of Deceit` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/70917> |
| `VIGILANT SE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/11849> |
| `Beyond Skyrim - Bruma SE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/10917> |
| `Beyond Reach` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/3008> |
| `The Wheels of Lull - Unwound Edition` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/748> |
| `Leaf Rest` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/15191> |
| `Heljarchen Farm` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/4108> |
| `LC_Build Your Noble House` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/18308> |
| `Windstad Mine` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/4160> |
| `Blackthorn - A Buildable Town in The Rift (SE)` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/2242> |
| `Simple Fishing Overhaul - Animations and Improved Quest Dialogue` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/103440> |
| `Hunterborn SE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/7900> |
| `Streamlined Fishing` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/80683> |
| `Immersive Weapons` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/16788> |
| `Immersive Armors` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/3479> |
| `Immersive Armors Retexture and Mesh Fixes SE` | `Immersive Armors` | <https://www.nexusmods.com/skyrimspecialedition/mods/75891> |

### Notes

- `The Great Cities` is a deliberate second-step decision per AGENTS.md (tone-fit tradeoff flagged earlier in section 02 Notes). Listed here as a candidate; final pick happens in MO2 install.
- `The Great Cities - Minor Cities and Towns SSE Edition` is an add-on for `The Great Cities`; hard-requires the parent mod.
- The standalone worldspace quest mods (`VIGILANT SE`, `Wyrmstooth`, `Falskaar`, `Moon and Star`, `Beyond Skyrim - Bruma`, `Beyond Reach`, `The Wheels of Lull`, `Sirenroot`, `The Forgotten City`) are all heavy new-worldspace content. Most modlists do not install all of these; they overlap in scope and the list should be trimmed per the elder-wilds content strategy. Flagging for review in modlist-08.md `Expanded Worldspaces` subsection.
- `Heljarchen Farm`, `Windstad Mine`, `Leaf Rest`, `Blackthorn`, and `LC_Build Your Noble House` are all player-built settlements; overlapping scope. A 1-2 pick is usually enough. Flagging.
- `Simple Fishing Overhaul` and `Hunterborn SE` are mid-weight gameplay loops; `Streamlined Fishing` is a lighter alternative. Pick one of the fishing overhauls.
- `Immersive Weapons` and `Immersive Armors` are large content-add packs with potential lore/leveled-list overlap. Often load near the bottom of the load order; verify with section 14 testing plan.

## NPCs and Creatures

| Mod | Dependencies | URL |
| --- | --- | --- |
| `Northbourne NPCs of Whiterun Hold` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/35404> |
| `Pandorable's NPCs` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/78524> |
| `The Wolven Widow - SerketHetyt's Elisif Overhaul` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/62209> |
| `High Poly True to Vanilla NPC Overhaul` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/74226> |
| `The Men of Winter SSE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/10902> |
| `DIbella's Blessing` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/82606> |
| `AI Overhaul SSE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/21654> |
| `Lawless - A Bandit Overhaul` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/88080> |
| `OBIS SE - Organized Bandits In Skyrim Special Edition` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/4145> |
| `Haugbui - A Draugr Overhaul` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/26188> |
| `The Restless Dead (A Draugr and Skeleton Overhaul)` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/94100> |
| `Fluffworks` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/56361> |
| `Bears of the North` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/47541> |
| `Iconic's Dragon Retexture` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/101712> |
| `Cannibal Draugr on Solstheim` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/21238> |
| `Splendor - Dragon Variants` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/9670> |
| `Diverse True Wolves and Dogs` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/38058> |
| `Real Rabbits HD` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/29223> |
| `Rally's Shaggy Cows of Skyrim` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/47742> |
| `Realistic Horse Breeds by KrittaKitty` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/7685> |
| `Fusa Fusa Project - Fluffy Animals` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/5514> |
| `Dragons Use Thu'um - Dragon AI Enhancements and New Fully Voiced Shouts` | `MCM Helper`, `JContainers` | <https://www.nexusmods.com/skyrimspecialedition/mods/87085> |
| `Dragon War - A Dragon Overhaul` | `SKSE64`, `Address Library for SKSE Plugins`, `Andrealphus' Papyrus Functions`, `ConsoleUtilSSE NG` | <https://www.nexusmods.com/skyrimspecialedition/mods/51310> |
| `Draugr Upgrades and Improvements (Draugr and Skeleton Overhaul)` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/21775> |
| `Animal Tweaks` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/1532> |
| `Pelagius's Wildlife AI - Skypatcher` | `SkyPatcher` | <https://www.nexusmods.com/skyrimspecialedition/mods/144909> |
| `Crowded Streets` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/127723> |
| `Travellers of Skyrim` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/1973> |
| `Populated Skyrim Reborn SSE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/32190> |
| `MINPCs (More Immersive NPCs)` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/29483> |
| `True Hunter - fewer animals per square meter` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/25628> |
| `No Predators on roads` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/11901> |
| `Real Wildlife Skyrim SE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/17466> |

### Notes

- Added three SKSE-plugin framework mods to section 01 (Foundations and Compatibility) to satisfy section 09 requirements:
  - `SkyPatcher` (106659) - hard requirement of `Pelagius's Wildlife AI - Skypatcher`. Also has a soft requirement on `powerofthree's Tweaks` for EditorID lookups (already in modlist, not listed since it's a soft dep).
  - `Andrealphus' Papyrus Functions` (85252) - hard requirement of `Dragon War`. Pure SKSE plugin, no Address Library usage per the requirements page.
  - `ConsoleUtilSSE NG` (76649) - hard requirement of `Dragon War`. SKSE plugin.
- `Dragon War - A Dragon Overhaul` explicitly states it is **incompatible with `Splendor - Dragon Variants`** (use `Infinite Dragon Variants` instead). Both are currently in the list. Flagged for review in modlist-09.md.
- `Dragons Use Thu'um` is compatible with `Dragon War` and even ships a Dragon War patch in its FOMOD. They can coexist if `Splendor` is dropped.
- `Pelagius's Wildlife AI - Skypatcher` and `True Hunter - fewer animals per square meter` overlap in scope (both reduce wildlife population/aggression). The Pelagius description lists `True Hunter` as "semi or not compatible" with "a lot of overlap." Flagged for review.
- `Animal Tweaks` is 100% script-free per its own description; it edits only NPC/race records and needs no SKSE plugin. `Animal Tweaks` must be placed last in the load order among animal-editing mods per its own guidance.
- `Dragons Use Thu'um` lists `Open Animation Replacer`, `Spell Perk Item Distributor (SPID)`, and `Backported Extended ESL Support` on its page as optional/conditional requirements. For the target Steam runtime `1.6.1170`, `Backported Extended ESL Support` is redundant and should not be installed; only the two hard requirements (`MCM Helper`, `JContainers`) are listed as deps here, and OAR/SPID are already in the modlist for section 03 work.
- `Diverse True Wolves and Dogs`, `Rally's Shaggy Cows`, `Realistic Horse Breeds`, `Real Rabbits HD`, `Fusa Fusa Project`, `Bears of the North`, `Fluffworks` are all ESP-only mesh/texture/visual mods; `_None_` is correct.
- `Real Wildlife Skyrim SE` and the various Mihail-style wildlife spawn mods overlap in creature-spawn scope. Modlist-09.md `Wildlife Variety` subsection should resolve which spawn expansion to use.
- `AI Overhaul SSE` is the behavior-and-schedule layer already referenced in `modlist-09.md`; verify facegen load order and patches when combining it with `Northbourne`, `The Men of Winter`, `DIbella's Blessing`, or other NPC appearance overhauls.

## Audio and Feedback

| Mod | Dependencies | URL |
| --- | --- | --- |
| `Chapter II - Jeremy Soule Inspired Music (by Dreyma Music)` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/37792> |
| `Yggdrasil Music and SoundFX Overhaul SE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/21578> |
| `Nyghtfall - Dark Fantasy Music` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/39011> |
| `Nordenhamr - Viking Music` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/58080> |
| `Silent Combat Music` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/5148> |
| `Audio Overload for Skyrim SE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/12466> |
| `Immersive Sounds - Compendium` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/523> |
| `Regional Sounds Expansion (SRD - Wilds Dungeons Towns Ambience Birds - Fixes)` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/77829> |
| `Airgetlam -Modern Magic Sounds Rework-` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/51541> |
| `Airgetlam - Shouts SFX -` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/90696> |
| `Phoenix Compendium` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/55221> |
| `A Bow's Whisper - Bow sound overhaul` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/47437> |
| `Cataphract - Armored Footsteps Rework` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/102213> |
| `Sanguine Symphony Realistic Heavy Armor Sounds` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/162883> |
| `Heart of the Beast - Werewolf Sound - Remastered - SSE PORT` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/49263> |
| `BA Bard Songs` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/47202> |
| `New UI Sounds Dungeon Music Ambient Sounds` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/86372> |
| `NO MORE CLICK SOUND (ui_activatefail.wav Remover) (E Click Sound Remover)` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/115367> |
| `quieter levelup and skill increase sound` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/90278> |
| `Improved Level Up Sound FX - Sound Replacer` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/136290> |
| `Dragon Soul Acquired Sound` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/161732> |
| `Colossus -Giants SFX Voice Rework` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/52041> |
| `Phantasmagoria -Ghosts SFX Voice Rework-` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/50060> |
| `Daedric Enigma -Daedric Princes Voice Rework- SSE (Old Version)` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/35529> |

### Notes

- Every mod in this section is an ESP/ESL-only audio or sound replacer, so every Dependencies column is `_None_`. None of them require SKSE or any of the modlist framework mods in section 01.
- The modlist originally parked some sound mods (Sounds of Skyrim, Acoustic Space Fixes) inside section 07; this is a soft rebalance note for the modlist-10.md `Audio Basin` subsection, not a checklist correction.
- Music overhaul overlap: `Chapter II`, `Yggdrasil`, `Nygdrasil`, `Nordenhamr` are all broad music replacers. Modlist-10.md should resolve which one or two to keep; this checklist lists all candidates.
- The `Sanguine Symphony Realistic Heavy Armor Sounds` mod (162883) is the current top entry for heavy armor footstep SFX; if the modlist swaps to a different `Cataphract` preset, adjust accordingly.
- The `Daedric Enigma` entry points to the listed "Old Version" because that is the URL the checklist carries. If the modlist wants the current "SSE" version, the URL needs to be re-verified separately.

## Survival, Difficulty, and Balance

| Mod | Dependencies | URL |
| --- | --- | --- |
| `Arena - An Encounter Zone Overhaul` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/33487> |
| `Simply Balanced` | `SKSE64`, `SkyUI` | <https://www.nexusmods.com/skyrimspecialedition/mods/15541> |
| `Blade and Blunt - A Combat Overhaul` | `SKSE64`, `Address Library for SKSE Plugins`, `Dual Casting Fix`, `Scrambled Bugs`, `Spell Perk Item Distributor (SPID)` | <https://www.nexusmods.com/skyrimspecialedition/mods/34549> |
| `Skyrim Revamped - Complete Enemy Overhaul` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/14598> |
| `Stress and Fear - A Dynamic Sanity System` | `Keyword Item Distributor (KID)`, `powerofthree's Papyrus Extender`, `SkyUI` | <https://www.nexusmods.com/skyrimspecialedition/mods/116522> |
| `Shadow of Skyrim - Nemesis and Alternative Death System` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/65136> |

### Notes

- Added `Dual Casting Fix` (92454) to section 01 (Foundations and Compatibility) to satisfy `Blade and Blunt - A Combat Overhaul`'s hard requirement. `Dual Casting Fix` is a powerofthree SKSE plugin; same author/loader pattern as `powerofthree's Tweaks` and `powerofthree's Papyrus Extender`, and is widely recommended for modern load orders.
- `Blade and Blunt` is part of the Simonrim family (Simon Magus + Colinswrath). Its Nexus-listed requirements are `Address Library for SKSE Plugins`, `Dual Casting Fix`, `Scrambled Bugs`, and `Spell Perk Item Distributor (SPID)` - all four are now in the modlist.
- `Stress and Fear` is non-SKSE (Papyrus scripts + SKSE-independent KID integration). It does ship an MCM and has native SKYUI alias per the changelog (1.01), so `SkyUI` is listed as a dep; `KID` and `powerofthree's Papyrus Extender` are the actual hard Nexus requirements.
- `Arena - An Encounter Zone Overhaul` and `Skyrim Revamped - Complete Enemy Overhaul` are ESP-only zone/enemy edits; `_None_` is correct.
- `Simply Balanced` ships an MCM via SkyUI; no `MCM Helper` requirement per its description, so `SKSE64` + `SkyUI` is the correct dep set.
- `Shadow of Skyrim - Nemesis and Alternative Death System` is a script-driven ESP/ESL; it is not the popular "Shadow of Skyrim" worldspace overhaul (which is a different mod) - the modlist entry matches the encounter/death system variant.

## Modlist Curation Rules

_No specific mods recorded yet in this section._

## Testing Plan

_No specific mods recorded yet in this section._

## Targeted Bugfix Mods

| Mod | Dependencies | URL |
| --- | --- | --- |
| `Actor Limit Fix` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/32349> |
| `Barter Limit Fix` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/77173> |
| `Bard Instrumentals Mostly - Sing Rarely` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/10927> |
| `Better Jumping SE` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/18967> |
| `Equip Enchantment Fix` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/42839> |
| `Fuz Ro D-oh - Silent Voice` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/15109> |
| `I'm Walkin' Here NG with Pets` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/122516> |
| `LeveledList Crash Fix` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/129136> |
| `Mum's the Word NG` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/77409> |
| `NPC AI Process Position Fix - NG` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/69326> |
| `Regional Save Names` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/49698> |
| `Simple Offence Suppression` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/41764> |
| `Bug Fixes SSE` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/33261> |
| `Navigator - Navmesh Fixes` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/52641> |

### Notes

- Most entries in this section are SKSE plugin bugfixes authored by `meh321` (the "NG" / Next-Gen pattern: `SKSE64`, `Address Library for SKSE Plugins`). The SKSE plugin bugfix family is now centralized in section 01 — verify ordering per the testing plan in section 14.
- `Bard Instrumentals Mostly - Sing Rarely` is a script/ESP-only mod (Papyrus attached to the Bard NPCs); no SKSE plugin involved.
- `Fuz Ro D-oh - Silent Voice` is script-only; it hooks into dialogue subtitles and has no SKSE plugin. Already used as a dep for `Alternate Perspective` in section 05.
- `Regional Save Names` is an ESP-only utility; no SKSE or framework deps.
- `Bug Fixes SSE` (33261, meh321 SKSE plugin, 56k endorsements) and `Navigator - Navmesh Fixes` (52641, ESP-only navmesh fix, 9k endorsements) were added from the STEP 2.3 09-Fixes review (verified June 2026). Bug Fixes SSE addresses low-level engine bugs (crafting, perk, water) not covered by `SSE Engine Fixes`; Navigator is a heavier navmesh fix that should be validated per the testing plan before committing to the final build.

## Legacy of the Dragonborn

| Mod | Dependencies | URL |
| --- | --- | --- |
| `Legacy of the Dragonborn SSE` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/11802> |
| `Legacy of the Dragonborn - The Curator's Companion` | `Legacy of the Dragonborn SSE` | <https://www.nexusmods.com/skyrimspecialedition/mods/38529> |
| `Legacy of the Dragonborn Patches (Official)` | `Legacy of the Dragonborn SSE` | <https://www.nexusmods.com/skyrimspecialedition/mods/30980> |
| `Paintings Replacer for Legacy of the Dragonborn SSE` | `Legacy of the Dragonborn SSE` | <https://www.nexusmods.com/skyrimspecialedition/mods/13279> |
| `Legacy of the Dragonborn - Fate Cards Re-texture - Skyrim Concept Art` | `Legacy of the Dragonborn SSE` | <https://www.nexusmods.com/skyrimspecialedition/mods/16080> |
| `Placeable Display Cases` | `SKSE64` | <https://www.nexusmods.com/skyrimspecialedition/mods/131107> |

### Notes

- Verified canonical URL for `Legacy of the Dragonborn SSE` is `mods/11802` (author `icecreamassassin`, current version 6.10.1 as of 2026-05-22). The page lists `LoTD Patches (Official)`, `SKSE64`, and `SkyUI` as **OPTIONAL** requirements (notes say "Required for SKSE enabled functions v3.0+" and "Required for MCM Menus v3.0+") so they are not listed as hard deps in the table. In practice, `SKSE64` and `SkyUI` are installed as part of the elder-wilds foundations stack and `LoTD Patches (Official)` is installed in the same section.
- `Legacy of the Dragonborn - The Curator's Companion` is a HUD/tracker add-on for the museum; originally by `Ic0nIc0de`, now maintained by `icecreamassassin` (per the 2021-11-12 sticky on the mod page). The page does not list `Legacy of the Dragonborn SSE` as a Nexus requirement, but it is functionally a hard dep; included in the table.
- `Legacy of the Dragonborn Patches (Official)` is the curated patch hub for LoTD integration with other popular mods. Authored by the LoTD team.
- The three "LoTD-related mod (Nexus ID …)" placeholders in the original checklist have been resolved: `13279` = `Paintings Replacer for Legacy of the Dragonborn SSE` (by `b7ll`), `16080` = `Legacy of the Dragonborn - Fate Cards Re-texture - Skyrim Concept Art` (by `jpvilela32`), `131107` = `Placeable Display Cases` (by `icecreamassassin`).
- `Placeable Display Cases` is a separate mod by the same author as LoTD; it is `Endorsed for use with Legacy of the Dragonborn (but not required)` and uses SKSE key input detection per its requirements page, hence the `SKSE64` dep.
- This section is the LoTD museum-and-display pillar anchor. Per `modlist-13.md`, additional LoTD-supported display patches for `Immersive Weapons`, `Immersive Armors`, `Royal Armory`, `Helgen Reborn`, `Konahrik's Accoutrements`, etc. are pulled in via the `LoTD Patches (Official)` hub rather than listed individually here.

## Performance and Technical Workflow

| Mod | Dependencies | URL |
| --- | --- | --- |
| `BethINI Pie (Performance INI Editor)` | _None_ | <https://www.nexusmods.com/site/mods/631> |
| `Lightened Skyrim` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/50755> |
| `eFPS - Exterior FPS boost` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/54907> |

### Notes

- All three entries in this section have `_None_` Dependencies:
  - `BethINI Pie` is a standalone INI editor utility hosted on the `nexusmods.com/site` domain (not a Skyrim plugin). It runs outside the game and only writes `Skyrim.ini` / `SkyrimPrefs.ini`.
  - `Lightened Skyrim` is a graphics configuration preset (ENB + INI settings) shipped as an ESP-flagged archive; no SKSE plugin and no framework requirements.
  - `eFPS - Exterior FPS boost` is an ESM-flagged occlusion-pane mod; verified via Nexus page that it has no hard requirements (no SKSE plugin, no modlist framework needed). The author explicitly states it is compatible with `XLODgen`, `DynDOLOD`, and `BethINI Pie` (different concerns).
- `eFPS` is recommended for **new games** per the author; existing saves may not benefit fully. Flagging for testing plan in modlist-14.md.
- `eFPS` is incompatible with mods that delete/move exterior architecture; the author maintains an "Official Patch HUB" (mod 54998) for the most common conflicts. If any section-08 world-space mods (e.g. `JK's Skyrim`, `Spaghetti's Cities`, `Dawn of Skyrim`) conflict, defer to the patch hub rather than manual patching.
- This is the final section in `mods-checklist.md`. Section 14 (Modlist Curation Rules and Testing Plan) is a meta-section that lives only in `modlist-14.md` and contains no concrete mod picks, so it has no checklist entry.

---

Total unique mods listed: 371
