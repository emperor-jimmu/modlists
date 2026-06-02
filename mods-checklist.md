# Elder Wilds - Mods Checklist

Download checklist for every mod referenced in the plan, grouped by section. Each section is a table with columns: `Mod`, `Dependencies` (required mods; modlist entries shown in code, external runtime requirements in italics), and `URL`. Section is implicit from the section header. Base picks only as written in the section files; verify load order and patches per section.

## Foundations and Compatibility

| Mod                                  | Dependencies                                              | URL                                                         |
|--------------------------------------|-----------------------------------------------------------|-------------------------------------------------------------|
| `SKSE64`                             | _None_                                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/30379> |
| `Address Library for SKSE Plugins`   | `SKSE64`                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/32444> |
| `SSE Engine Fixes`                   | `SKSE64`, `Address Library for SKSE Plugins`              | <https://www.nexusmods.com/skyrimspecialedition/mods/17230> |
| `Scrambled Bugs`                     | `SKSE64`, `Address Library for SKSE Plugins`              | <https://www.nexusmods.com/skyrimspecialedition/mods/43532> |
| `powerofthree's Tweaks`              | `SKSE64`, `Address Library for SKSE Plugins`              | <https://www.nexusmods.com/skyrimspecialedition/mods/51073> |
| `powerofthree's Papyrus Extender`    | `SKSE64`, `Address Library for SKSE Plugins`              | <https://www.nexusmods.com/skyrimspecialedition/mods/22854> |
| `PapyrusUtil`                        | `SKSE64`                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/13048> |
| `MCM Helper`                         | `SKSE64`                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/53000> |
| `JContainers`                        | `SKSE64`                                                  | <https://www.nexusmods.com/skyrimspecialedition/mods/16495> |
| `Keyword Item Distributor (KID)`     | `SKSE64`, `powerofthree's Papyrus Extender`, `MCM Helper` | <https://www.nexusmods.com/skyrimspecialedition/mods/55728> |
| `Spell Perk Item Distributor (SPID)` | `SKSE64`, `powerofthree's Papyrus Extender`, `MCM Helper` | <https://www.nexusmods.com/skyrimspecialedition/mods/36869> |
| `Base Object Swapper (BOS)`          | `SKSE64`, `MCM Helper`                                    | <https://www.nexusmods.com/skyrimspecialedition/mods/60805> |
| `Crash Logger SSE AE VR` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/59818>

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

| Mod                                                                                  | Dependencies                                                                                        | URL                                                          |
|--------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
| `FYX - Water Mesh Optimization`                                                      | _None_                                                                                              | <https://www.nexusmods.com/skyrimspecialedition/mods/97713>  |
| `A Water Made For CS in mind`                                                        | `Community Shaders`                                                                                 | <https://www.nexusmods.com/skyrimspecialedition/mods/172959> |
| `Simplicity of Sea - Water Mod with ENB and Community Shaders Displacement Textures` | `Simplicity of Sea - Water Color and Transparency Tweaks` | <https://www.nexusmods.com/skyrimspecialedition/mods/56520> |
| `Simplicity of Sea - Water Color and Transparency Tweaks` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/148761> |
| `Natural Waterfalls` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/87261> |
| `Rally's Water Foam` | _None_ | <https://www.nexusmods.com/skyrimspecialedition/mods/28922> |

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

| Mod | Dependencies | URL |
| --- | --- | --- |
| [ ] `Pandora Behaviour Engine Plus` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/133232> |
| [ ] `XP32 Maximum Skeleton Special Extended - XPMSSE` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/44252> |
| [ ] `CBPC - Physics with Collisions for SSE and VR` | `SKSE64`, `Address Library for SKSE Plugins`, `CBBE 3BA (3BBB)` | <https://www.nexusmods.com/skyrimspecialedition/mods/21224> |
| [ ] `Open Animation Replacer` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/92109> |
| [ ] `Unique Jarl Throne Sitting Animation (OAR)` | `Open Animation Replacer` | <https://www.nexusmods.com/skyrimspecialedition/mods/174752> |
| [ ] `SkyParkour v3 - Procedural Parkour and Climbing Framework (SPPF)` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/132292> |
| [ ] `Beam Walking Assist` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/175511> |
| [ ] `RaySense - Jumping over obstacles` | `Open Animation Replacer`, `Open Animation Replacer - RaySense` | <https://www.nexusmods.com/skyrimspecialedition/mods/175506> |
| [ ] `Open Animation Replacer - RaySense` | `Open Animation Replacer` | <https://www.nexusmods.com/skyrimspecialedition/mods/175498> |
| [ ] `Comprehensive First Person Animation Overhaul - CFPAO` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/87169> |
| [ ] `ConsoleUtilSSE NG` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/76649> |
| [ ] `Leviathan Animations II - Male Idle Walk And Run` | `XPMSSE`, `Pandora Behaviour Engine Plus` | <https://www.nexusmods.com/skyrimspecialedition/mods/81463> |
| [ ] `Leviathan Animations II - Female Idle Walk And Run` | `XPMSSE`, `Pandora Behaviour Engine Plus` | <https://www.nexusmods.com/skyrimspecialedition/mods/80760> |
| [ ] `Conditional Armor Type Animations` | `Open Animation Replacer` | <https://www.nexusmods.com/skyrimspecialedition/mods/51507> |
| [ ] `EVG Conditional Idles` | `Open Animation Replacer` | <https://www.nexusmods.com/skyrimspecialedition/mods/34006> |
| [ ] `EVG Animated Traversal` | `Open Animation Replacer` | <https://www.nexusmods.com/skyrimspecialedition/mods/63232> |
| [ ] `Immersive Interactions - Animated Actions` | `XPMSSE`, `Pandora Behaviour Engine Plus` | <https://www.nexusmods.com/skyrimspecialedition/mods/47670> |
| [ ] `Go to bed` | `XPMSSE` | <https://www.nexusmods.com/skyrimspecialedition/mods/4224> |
| [ ] `New Creature Animation - Giant` | `XPMSSE`, `Pandora Behaviour Engine Plus` | <https://www.nexusmods.com/skyrimspecialedition/mods/83317> |
| [ ] `New Creature Animation - Falmer` | `XPMSSE`, `Pandora Behaviour Engine Plus` | <https://www.nexusmods.com/skyrimspecialedition/mods/83572> |
| [ ] `New Creature Animation - Werewolf` | `XPMSSE`, `Pandora Behaviour Engine Plus` | <https://www.nexusmods.com/skyrimspecialedition/mods/83806> |
| [ ] `Goetia Animations - Conditional Shuffled Idle for Pretty Female idles` | `Open Animation Replacer` | <https://www.nexusmods.com/skyrimspecialedition/mods/68005> |
| [ ] `Goetia Animations - Female Idle Walk And Run` | `XPMSSE`, `Pandora Behaviour Engine Plus` | <https://www.nexusmods.com/skyrimspecialedition/mods/68625> |
| [ ] `Precision - Accurate Melee Collisions` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/72347> |
| [ ] `SCAR - Skyrim Combos AI Revolution` | `SKSE64`, `Address Library for SKSE Plugins`, `Pandora Behaviour Engine Plus` | <https://www.nexusmods.com/skyrimspecialedition/mods/72014> |
| [ ] `IFrame Generator RE (AE Support)` | `Address Library for SKSE Plugins`, `SKSE64` | <https://www.nexusmods.com/skyrimspecialedition/mods/82737> |
| [ ] `MCO ADXP - Modern Movement Combat Overhaul` | `SKSE64`, `Address Library for SKSE Plugins` | <https://www.nexusmods.com/skyrimspecialedition/mods/117115> |
| [ ] `Animation Motion Revolution` | `SKSE64`, `Address Library for SKSE Plugins`, `MCO ADXP` | <https://www.nexusmods.com/skyrimspecialedition/mods/50258> |
| [ ] `Payload Interpreter` | `SKSE64`, `Address Library for SKSE Plugins`, `MCO ADXP` | <https://www.nexusmods.com/skyrimspecialedition/mods/65089> |

### Notes

- `CBPC` was added with deps `SKSE64`, `Address Library for SKSE Plugins`, `CBBE 3BA (3BBB)` as the default first-pass physics layer called out in `modlist-03.md` (Skeleton and Behavior Prerequisites).
- `Valhalla Combat` was removed from this section; it is planned for re-entry under section 11 (Survival, Difficulty, and Balance) when that section is converted, alongside the other combat-system overhauls there.
- `IFrame Generator RE` was added as `IFrame Generator RE (AE Support)` (mod 82737) so the entry matches the AE 1.6.629+ runtime fork needed for the target build. Deps: `Address Library for SKSE Plugins`, `SKSE64`.
## Third-Person Gameplay

- [ ] `SmoothCam` - <https://www.nexusmods.com/skyrimspecialedition/mods/41252>
- [ ] `Customizable Camera` - <https://www.nexusmods.com/skyrimspecialedition/mods/12201>
- [ ] `True Directional Movement - Modernized Third Person Gameplay` - <https://www.nexusmods.com/skyrimspecialedition/mods/51614>
- [ ] `TrueHUD` - <https://www.nexusmods.com/skyrimspecialedition/mods/62775>
- [ ] `Better Third Person Selection - BTPS` - <https://www.nexusmods.com/skyrimspecialedition/mods/64339>
- [ ] `Ricochet - Arrow Physics Framework` - <https://www.nexusmods.com/skyrimspecialedition/mods/160603>
- [ ] `Improved Camera SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/93962>
- [ ] `TK Dodge RE - Script Free` - <https://www.nexusmods.com/skyrimspecialedition/mods/56956>
- [ ] `TK Dodge SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/15309>
- [ ] `Convenient Horses` - <https://www.nexusmods.com/skyrimspecialedition/mods/9519>
- [ ] `Immersive Horses` - <https://www.nexusmods.com/skyrimspecialedition/mods/13402>
- [ ] `Dodge for all` - <https://www.nexusmods.com/skyrimspecialedition/mods/174544>

## Expanded Systems

- [ ] `Alternate Perspective - Alternate Start` - <https://www.nexusmods.com/skyrimspecialedition/mods/50307>
- [ ] `Alternate Start - Live Another Life` - <https://www.nexusmods.com/skyrimspecialedition/mods/272>
- [ ] `Skyrim Unbound Reborn (Alternate Start)` - <https://www.nexusmods.com/skyrimspecialedition/mods/27962>
- [ ] `Realm of Lorkhan - Freeform Alternate Start` - <https://www.nexusmods.com/skyrimspecialedition/mods/18223>
- [ ] `Aetherius - A Race Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/26686>
- [ ] `Morningstar - Minimalistic Races of Skyrim` - <https://www.nexusmods.com/skyrimspecialedition/mods/22298>
- [ ] `Imperious - Races of Skyrim` - <https://www.nexusmods.com/skyrimspecialedition/mods/1315>
- [ ] `Evenstar - Minimalistic Standing Stones of Skyrim` - <https://www.nexusmods.com/skyrimspecialedition/mods/41256>
- [ ] `Andromeda - Unique Standing Stones of Skyrim` - <https://www.nexusmods.com/skyrimspecialedition/mods/14910>
- [ ] `Adamant - A Perk Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/30191>
- [ ] `Vokrii - Minimalistic Perks of Skyrim` - <https://www.nexusmods.com/skyrimspecialedition/mods/26176>
- [ ] `Ordinator - Perks of Skyrim` - <https://www.nexusmods.com/skyrimspecialedition/mods/1137>
- [ ] `Mysticism - A Magic Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/27839>
- [ ] `Odin - Skyrim Magic Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/46000>
- [ ] `Apocalypse - Magic of Skyrim` - <https://www.nexusmods.com/skyrimspecialedition/mods/1090>
- [ ] `Apothecary - An Alchemy Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/52130>
- [ ] `Complete Alchemy and Cooking Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/19924>
- [ ] `Alchemy Potions and Food Adjustments` - <https://www.nexusmods.com/skyrimspecialedition/mods/5877>
- [ ] `Starfrost - A Survival Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/97536>
- [ ] `SunHelm Survival and needs` - <https://www.nexusmods.com/skyrimspecialedition/mods/39414>
- [ ] `Last Seed - Survival Needs and Diseases` - <https://www.nexusmods.com/skyrimspecialedition/mods/56393>
- [ ] `Frostfall - Hypothermia Camping Survival` - <https://www.nexusmods.com/skyrimspecialedition/mods/671>
- [ ] `Campfire - Complete Camping System (Supports Skyrim VR)` - <https://www.nexusmods.com/skyrimspecialedition/mods/667>
- [ ] `Gourmet - A Cooking Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/96876>
- [ ] `Ars Metallica - Smithing Enhancement` - <https://www.nexusmods.com/skyrimspecialedition/mods/321>
- [ ] `Complete Crafting Overhaul Remastered` - <https://www.nexusmods.com/skyrimspecialedition/mods/28608>
- [ ] `Honed Metal -NPC Crafting and Enchanting Services` - <https://www.nexusmods.com/skyrimspecialedition/mods/61015>
- [ ] `Trade and Barter - Skyrim Special Edition` - <https://www.nexusmods.com/skyrimspecialedition/mods/23081>
- [ ] `Open World Loot - Encounter Zone and Loot Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/49681>
- [ ] `MorrowLoot Ultimate - Skyrim Special Edition` - <https://www.nexusmods.com/skyrimspecialedition/mods/3058>
- [ ] `Pilgrim - A Religion Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/54099>
- [ ] `Trua - Minimalistic Faiths of Skyrim` - <https://www.nexusmods.com/skyrimspecialedition/mods/32549>
- [ ] `Wintersun - Faiths of Skyrim` - <https://www.nexusmods.com/skyrimspecialedition/mods/22506>
- [ ] `Skyrim Reputation` - <https://www.nexusmods.com/skyrimspecialedition/mods/22374>
- [ ] `Book Of Shadows - Behaviour Based Stealth Additions` - <https://www.nexusmods.com/skyrimspecialedition/mods/76086>
- [ ] `Suspicious City Guards` - <https://www.nexusmods.com/skyrimspecialedition/mods/38762>
- [ ] `Nether's Follower Framework` - <https://www.nexusmods.com/skyrimspecialedition/mods/55653>
- [ ] `EFF - Extensible Follower Framework` - <https://www.nexusmods.com/skyrimspecialedition/mods/7003>
- [ ] `Amazing Follower Tweaks SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/6656>
- [ ] `Realistic AI Detection (RAID)` - <https://www.nexusmods.com/skyrimspecialedition/mods/2345>
- [ ] `Relationship Dialogue Overhaul - RDO SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/1187>
- [ ] `Amorous Adventures` (clean variant) - <https://www.nexusmods.com/skyrimspecialedition/mods/7305>
- [ ] `Marriage Mod - To Have And To Hold` - <https://www.nexusmods.com/skyrimspecialedition/mods/8589>
- [ ] `Serana Dialogue Add-On` - <https://www.nexusmods.com/skyrimspecialedition/mods/32161>

## Modernized UI

- [ ] `SkyUI` - <https://www.nexusmods.com/skyrimspecialedition/mods/12604>
- [ ] `UIExtensions` - <https://www.nexusmods.com/skyrimspecialedition/mods/17561>
- [ ] `Oathvein UI` - <https://www.nexusmods.com/skyrimspecialedition/mods/160916>
- [ ] `Norden UI` - <https://www.nexusmods.com/skyrimspecialedition/mods/166086>
- [ ] `SkyHUD` - <https://www.nexusmods.com/skyrimspecialedition/mods/463>
- [ ] `moreHUD SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/12688>
- [ ] `moreHUD Inventory Edition` - <https://www.nexusmods.com/skyrimspecialedition/mods/18619>
- [ ] `SkyUI Item Card Fixes` - <https://www.nexusmods.com/skyrimspecialedition/mods/29116>
- [ ] `Aura's Inventory Tweaks (More SkyUI Icons Sorting Options and More)` - <https://www.nexusmods.com/skyrimspecialedition/mods/68557>
- [ ] `Weapon Stat Viewer V2` - <https://www.nexusmods.com/skyrimspecialedition/mods/127249>
- [ ] `Flat World Map Framework (FWMF)` - <https://www.nexusmods.com/skyrimspecialedition/mods/29932>
- [ ] `Skyrim and Solstheim Paper Maps by Mirhayasu for FWMF` - <https://www.nexusmods.com/skyrimspecialedition/mods/53788>
- [ ] `Immersive Paper Map (3rd Edition)` - <https://www.nexusmods.com/skyrimspecialedition/mods/54710>
- [ ] `Skyrim Paper Map by FreelanceCartography for FWMF` - <https://www.nexusmods.com/skyrimspecialedition/mods/78995>
- [ ] `Convenient Reading UI - SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/50202>
- [ ] `Wider MCM Menu for SkyUI` - <https://www.nexusmods.com/skyrimspecialedition/mods/22825>
- [ ] `Better Dialogue Controls` - <https://www.nexusmods.com/skyrimspecialedition/mods/1429>
- [ ] `Better MessageBox Controls` - <https://www.nexusmods.com/skyrimspecialedition/mods/1428>
- [ ] `Dialogue Interface ReShaped` - <https://www.nexusmods.com/skyrimspecialedition/mods/46546>
- [ ] `Convenient Dialogue UI - SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/57943>
- [ ] `Skyrim SE Controller Interface Fix` - <https://www.nexusmods.com/skyrimspecialedition/mods/1147>
- [ ] `Gamepad Plus Plus` - <https://www.nexusmods.com/skyrimspecialedition/mods/27007>
- [ ] `Wheeler - Quick Action Wheel Of Skyrim` - <https://www.nexusmods.com/skyrimspecialedition/mods/97345>
- [ ] `Sovngarde - Mist's Font Replacer` - <https://www.nexusmods.com/skyrimspecialedition/mods/386>
- [ ] `Prisma UI` - <https://www.nexusmods.com/skyrimspecialedition/mods/148718>
- [ ] `Stats Tracker Menu - STM` - <https://www.nexusmods.com/skyrimspecialedition/mods/180653>
- [ ] `Complete Widescreen Fix for Vanilla and SkyUI` - <https://www.nexusmods.com/skyrimspecialedition/mods/1778>
- [ ] `Compass Navigation Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/74484>
- [ ] `CoMAP - Common Marker Addon Project` - <https://www.nexusmods.com/skyrimspecialedition/mods/56123>
- [ ] `Immersive HUD - iHUD Special Edition` - <https://www.nexusmods.com/skyrimspecialedition/mods/12440>
- [ ] `Constructible Object Custom Keyword System` - <https://www.nexusmods.com/skyrimspecialedition/mods/81409>
- [ ] `SkyUI - Vanilla Crafting menu` - <https://www.nexusmods.com/skyrimspecialedition/mods/18717>

## Immersive Scale and World Feel

- [ ] `Time Flies SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/39426>
- [ ] `Dynamic Timescale - Remade` - <https://www.nexusmods.com/skyrimspecialedition/mods/141531>
- [ ] `Seasonal Calendar (for seasonal mods)` - <https://www.nexusmods.com/skyrimspecialedition/mods/18164>
- [ ] `Carriage and Ferry Travel Overhaul (Formerly Complete Fast Travel Overhaul)` - <https://www.nexusmods.com/skyrimspecialedition/mods/8379>
- [ ] `Carriage Stops of Skyrim` - <https://www.nexusmods.com/skyrimspecialedition/mods/10434>
- [ ] `Fast Travel Cost` - <https://www.nexusmods.com/skyrimspecialedition/mods/20200>
- [ ] `Extended Encounters` - <https://www.nexusmods.com/skyrimspecialedition/mods/44810>
- [ ] `Radiance Encounters` - <https://www.nexusmods.com/skyrimspecialedition/mods/19720>
- [ ] `Immersive Patrols SE AE` - <https://www.nexusmods.com/skyrimspecialedition/mods/718>
- [ ] `Sounds of Skyrim Complete SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/8286>
- [ ] `Acoustic Space Improvement Fixes (Corrected Reverb - Ambience - Interiors - SkyPatcher)` - <https://www.nexusmods.com/skyrimspecialedition/mods/78992>
- [ ] `Spaghetti's Cities - AIO` - <https://www.nexusmods.com/skyrimspecialedition/mods/84735>
- [ ] `Dawn of Skyrim (Director's Cut) SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/9074>
- [ ] `JK's Skyrim` - <https://www.nexusmods.com/skyrimspecialedition/mods/6289>
- [ ] `Ancient Land` - <https://www.nexusmods.com/skyrimspecialedition/mods/22900>
- [ ] `Interesting Roads` - <https://www.nexusmods.com/skyrimspecialedition/mods/42749>
- [ ] `Point The Way` - <https://www.nexusmods.com/skyrimspecialedition/mods/352>
- [ ] `Animallica SE - Skyrim Wildlife Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/20456>
- [ ] `One With Nature - Dynamic Animals and Creatures SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/13343>
- [ ] `Savage Skyrim` - <https://www.nexusmods.com/skyrimspecialedition/mods/37768>
- [ ] `Simply Darker Nights (SSE)` - <https://www.nexusmods.com/skyrimspecialedition/mods/14269>
- [ ] `Lanterns of Skyrim SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/2429>
- [ ] `Wearable Lanterns` - <https://www.nexusmods.com/skyrimspecialedition/mods/7560>

## World Content

- [ ] `Whiterun Forest Borealis` - <https://www.nexusmods.com/skyrimspecialedition/mods/11343>
- [ ] `The Marshlands` - <https://www.nexusmods.com/skyrimspecialedition/mods/23062>
- [ ] `Aspens Ablaze` - <https://www.nexusmods.com/skyrimspecialedition/mods/39998>
- [ ] `The Great Cities` - <https://www.nexusmods.com/skyrimspecialedition/mods/320>
- [ ] `The Great Cities - Minor Cities and Towns SSE Edition` - <https://www.nexusmods.com/skyrimspecialedition/mods/20272>
- [ ] `Cities of the North - Dawnstar` - <https://www.nexusmods.com/skyrimspecialedition/mods/28952>
- [ ] `The Great Town of Ivarstead SSE` - <https://www.nexusmods.com/skyrimspecialedition/mods/34505>
- [ ] `The Great Village of Kynesgrove` - <https://www.nexusmods.com/skyrimspecialedition/mods/42639>
- [ ] `The Great Village of Mixwater Mill SSE` - <https://www.nexusmods.com/skyrimspecialedition/mods/36350>
- [ ] `Granite Hill` - <https://www.nexusmods.com/skyrimspecialedition/mods/14658>
- [ ] `The Great Village of Old Hroldan SSE` - <https://www.nexusmods.com/skyrimspecialedition/mods/33189>
- [ ] `Lund's Hamlet - An Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/169830>
- [ ] `Candlehearth - An Inn Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/97542>
- [ ] `The Great Town of Karthwasten SSE` - <https://www.nexusmods.com/skyrimspecialedition/mods/33032>
- [ ] `Oakwood` - <https://www.nexusmods.com/skyrimspecialedition/mods/61007>
- [ ] `Forgotten Dungeons (SSE)` - <https://www.nexusmods.com/skyrimspecialedition/mods/449>
- [ ] `Hammet's Dungeon Pack 1 SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/12186>
- [ ] `Skyrim Underground SSE` - <https://www.nexusmods.com/skyrimspecialedition/mods/131>
- [ ] `Dungeons - Revisited` - <https://www.nexusmods.com/skyrimspecialedition/mods/51798>
- [ ] `Children of the North Wind - Ruins of the Ancient Nords` - <https://www.nexusmods.com/skyrimspecialedition/mods/147701>
- [ ] `Hidden Hideouts of Skyrim SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/2625>
- [ ] `Hold Border Guards - Definitive Edition` - <https://www.nexusmods.com/skyrimspecialedition/mods/61170>
- [ ] `Nordic Ruins of Skyrim SSE` - <https://www.nexusmods.com/skyrimspecialedition/mods/20382>
- [ ] `Hidden Hideouts of Skyrim City Edition SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/2626>
- [ ] `Sidequests of Skyrim` - <https://www.nexusmods.com/skyrimspecialedition/mods/54245>
- [ ] `Missives` - <https://www.nexusmods.com/skyrimspecialedition/mods/17576>
- [ ] `Moon and Star` - <https://www.nexusmods.com/skyrimspecialedition/mods/4301>
- [ ] `Wyrmstooth` - <https://www.nexusmods.com/skyrimspecialedition/mods/45565>
- [ ] `The Forgotten City` - <https://www.nexusmods.com/skyrimspecialedition/mods/1179>
- [ ] `Falskaar` - <https://www.nexusmods.com/skyrimspecialedition/mods/2057>
- [ ] `Sirenroot - Deluge of Deceit` - <https://www.nexusmods.com/skyrimspecialedition/mods/70917>
- [ ] `VIGILANT SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/11849>
- [ ] `Beyond Skyrim - Bruma SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/10917>
- [ ] `Beyond Reach` - <https://www.nexusmods.com/skyrimspecialedition/mods/3008>
- [ ] `The Wheels of Lull - Unwound Edition` - <https://www.nexusmods.com/skyrimspecialedition/mods/748>
- [ ] `Leaf Rest` - <https://www.nexusmods.com/skyrimspecialedition/mods/15191>
- [ ] `Heljarchen Farm` - <https://www.nexusmods.com/skyrimspecialedition/mods/4108>
- [ ] `LC_Build Your Noble House` - <https://www.nexusmods.com/skyrimspecialedition/mods/18308>
- [ ] `Windstad Mine` - <https://www.nexusmods.com/skyrimspecialedition/mods/4160>
- [ ] `Blackthorn - A Buildable Town in The Rift (SE)` - <https://www.nexusmods.com/skyrimspecialedition/mods/2242>
- [ ] `Simple Fishing Overhaul - Animations and Improved Quest Dialogue` - <https://www.nexusmods.com/skyrimspecialedition/mods/103440>
- [ ] `Hunterborn SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/7900>
- [ ] `Streamlined Fishing` - <https://www.nexusmods.com/skyrimspecialedition/mods/80683>
- [ ] `Immersive Weapons` - <https://www.nexusmods.com/skyrimspecialedition/mods/16788>
- [ ] `Immersive Armors` - <https://www.nexusmods.com/skyrimspecialedition/mods/3479>
- [ ] `Immersive Armors Retexture and Mesh Fixes SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/75891>

## NPCs and Creatures

- [ ] `Northbourne NPCs of Whiterun Hold` - <https://www.nexusmods.com/skyrimspecialedition/mods/35404>
- [ ] `Pandorable's NPCs` - <https://www.nexusmods.com/skyrimspecialedition/mods/78524>
- [ ] `The Wolven Widow - SerketHetyt's Elisif Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/62209>
- [ ] `High Poly True to Vanilla NPC Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/74226>
- [ ] `Lawless - A Bandit Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/88080>
- [ ] `OBIS SE - Organized Bandits In Skyrim Special Edition` - <https://www.nexusmods.com/skyrimspecialedition/mods/4145>
- [ ] `Haugbui - A Draugr Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/26188>
- [ ] `The Restless Dead (A Draugr and Skeleton Overhaul)` - <https://www.nexusmods.com/skyrimspecialedition/mods/94100>
- [ ] `Fluffworks` - <https://www.nexusmods.com/skyrimspecialedition/mods/56361>
- [ ] `Bears of the North` - <https://www.nexusmods.com/skyrimspecialedition/mods/47541>
- [ ] `Iconic's Dragon Retexture` - <https://www.nexusmods.com/skyrimspecialedition/mods/101712>
- [ ] `Cannibal Draugr on Solstheim` - <https://www.nexusmods.com/skyrimspecialedition/mods/21238>
- [ ] `Splendor - Dragon Variants` - <https://www.nexusmods.com/skyrimspecialedition/mods/9670>
- [ ] `Diverse True Wolves and Dogs` - <https://www.nexusmods.com/skyrimspecialedition/mods/38058>
- [ ] `Real Rabbits HD` - <https://www.nexusmods.com/skyrimspecialedition/mods/29223>
- [ ] `Rally's Shaggy Cows of Skyrim` - <https://www.nexusmods.com/skyrimspecialedition/mods/47742>
- [ ] `Realistic Horse Breeds by KrittaKitty` - <https://www.nexusmods.com/skyrimspecialedition/mods/7685>
- [ ] `Fusa Fusa Project - Fluffy Animals` - <https://www.nexusmods.com/skyrimspecialedition/mods/5514>
- [ ] `Dragons Use Thu'um - Dragon AI Enhancements and New Fully Voiced Shouts` - <https://www.nexusmods.com/skyrimspecialedition/mods/87085>
- [ ] `Dragon War - A Dragon Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/51310>
- [ ] `Draugr Upgrades and Improvements (Draugr and Skeleton Overhaul)` - <https://www.nexusmods.com/skyrimspecialedition/mods/21775>
- [ ] `Animal Tweaks` - <https://www.nexusmods.com/skyrimspecialedition/mods/1532>
- [ ] `Pelagius's Wildlife AI - Skypatcher` - <https://www.nexusmods.com/skyrimspecialedition/mods/144909>
- [ ] `Crowded Streets` - <https://www.nexusmods.com/skyrimspecialedition/mods/127723>
- [ ] `Travellers of Skyrim` - <https://www.nexusmods.com/skyrimspecialedition/mods/1973>
- [ ] `Populated Skyrim Reborn SSE` - <https://www.nexusmods.com/skyrimspecialedition/mods/32190>
- [ ] `MINPCs (More Immersive NPCs)` - <https://www.nexusmods.com/skyrimspecialedition/mods/29483>
- [ ] `True Hunter - fewer animals per square meter` - <https://www.nexusmods.com/skyrimspecialedition/mods/25628>
- [ ] `No Predators on roads` - <https://www.nexusmods.com/skyrimspecialedition/mods/11901>
- [ ] `Real Wildlife Skyrim SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/17466>

## Audio and Feedback

- [ ] `Chapter II - Jeremy Soule Inspired Music (by Dreyma Music)` - <https://www.nexusmods.com/skyrimspecialedition/mods/37792>
- [ ] `Yggdrasil Music and SoundFX Overhaul SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/21578>
- [ ] `Nyghtfall - Dark Fantasy Music` - <https://www.nexusmods.com/skyrimspecialedition/mods/39011>
- [ ] `Nordenhamr - Viking Music` - <https://www.nexusmods.com/skyrimspecialedition/mods/58080>
- [ ] `Silent Combat Music` - <https://www.nexusmods.com/skyrimspecialedition/mods/5148>
- [ ] `Audio Overhaul for Skyrim SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/12466>
- [ ] `Immersive Sounds - Compendium` - <https://www.nexusmods.com/skyrimspecialedition/mods/523>
- [ ] `Regional Sounds Expansion (SRD - Wilds Dungeons Towns Ambience Birds - Fixes)` - <https://www.nexusmods.com/skyrimspecialedition/mods/77829>
- [ ] `Airgetlam -Modern Magic Sounds Rework-` - <https://www.nexusmods.com/skyrimspecialedition/mods/51541>
- [ ] `Airgetlam - Shouts SFX -` - <https://www.nexusmods.com/skyrimspecialedition/mods/90696>
- [ ] `Phoenix Compendium` - <https://www.nexusmods.com/skyrimspecialedition/mods/55221>
- [ ] `A Bow's Whisper - Bow sound overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/47437>
- [ ] `Cataphract - Armored Footsteps Rework -` - <https://www.nexusmods.com/skyrimspecialedition/mods/102213>
- [ ] `Sanguine Symphony Realistic Heavy Armor Sounds` - <https://www.nexusmods.com/skyrimspecialedition/mods/162883>
- [ ] `Heart of the Beast - Werewolf Sound - Remastered - SSE PORT` - <https://www.nexusmods.com/skyrimspecialedition/mods/49263>
- [ ] `BA Bard Songs` - <https://www.nexusmods.com/skyrimspecialedition/mods/47202>
- [ ] `New UI Sounds Dungeon Music Ambient Sounds` - <https://www.nexusmods.com/skyrimspecialedition/mods/86372>
- [ ] `NO MORE CLICK SOUND (ui_activatefail.wav Remover) (E Click Sound Remover)` - <https://www.nexusmods.com/skyrimspecialedition/mods/115367>
- [ ] `quieter levelup and skill increase sound` - <https://www.nexusmods.com/skyrimspecialedition/mods/90278>
- [ ] `Improved Level Up Sound FX - Sound Replacer` - <https://www.nexusmods.com/skyrimspecialedition/mods/136290>
- [ ] `Dragon Soul Acquired Sound` - <https://www.nexusmods.com/skyrimspecialedition/mods/161732>
- [ ] `Colossus -Giants SFX Voice Rework` - <https://www.nexusmods.com/skyrimspecialedition/mods/52041>
- [ ] `Phantasmagoria -Ghosts SFX Voice Rework-` - <https://www.nexusmods.com/skyrimspecialedition/mods/50060>
- [ ] `Daedric Enigma -Daedric Princes Voice Rework- SSE (Old Version)` - <https://www.nexusmods.com/skyrimspecialedition/mods/35529>

## Survival, Difficulty, and Balance

- [ ] `Arena - An Encounter Zone Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/33487>
- [ ] `Simply Balanced` - <https://www.nexusmods.com/skyrimspecialedition/mods/15541>
- [ ] `Blade and Blunt - A Combat Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/34549>
- [ ] `Skyrim Revamped - Complete Enemy Overhaul` - <https://www.nexusmods.com/skyrimspecialedition/mods/14598>
- [ ] `Stress and Fear - A Dynamic Sanity System` - <https://www.nexusmods.com/skyrimspecialedition/mods/116522>
- [ ] `Shadow of Skyrim - Nemesis and Alternative Death System` - <https://www.nexusmods.com/skyrimspecialedition/mods/65136>

## Modlist Curation Rules

_No specific mods recorded yet in this section._

## Testing Plan

_No specific mods recorded yet in this section._

## Targeted Bugfix Mods

- [ ] `Actor Limit Fix` - <https://www.nexusmods.com/skyrimspecialedition/mods/32349>
- [ ] `Barter Limit Fix` - <https://www.nexusmods.com/skyrimspecialedition/mods/77173>
- [ ] `Bard Instrumentals Mostly - Sing Rarely` - <https://www.nexusmods.com/skyrimspecialedition/mods/10927>
- [ ] `Better Jumping SE` - <https://www.nexusmods.com/skyrimspecialedition/mods/18967>
- [ ] `Equip Enchantment Fix` - <https://www.nexusmods.com/skyrimspecialedition/mods/42839>
- [ ] `Fuz Ro D-oh - Silent Voice` - <https://www.nexusmods.com/skyrimspecialedition/mods/15109>
- [ ] `I'm Walkin' Here NG with Pets` - <https://www.nexusmods.com/skyrimspecialedition/mods/122516>
- [ ] `LeveledList Crash Fix` - <https://www.nexusmods.com/skyrimspecialedition/mods/129136>
- [ ] `Mum's the Word NG` - <https://www.nexusmods.com/skyrimspecialedition/mods/77409>
- [ ] `NPC AI Process Position Fix - NG` - <https://www.nexusmods.com/skyrimspecialedition/mods/69326>
- [ ] `Regional Save Names` - <https://www.nexusmods.com/skyrimspecialedition/mods/49698>
- [ ] `Simple Offence Suppression` - <https://www.nexusmods.com/skyrimspecialedition/mods/41764>

## Legacy of the Dragonborn

- [ ] `Legacy of the Dragonborn` - _verify canonical Nexus URL in a browser session before finalizing this checklist entry_
- [ ] `The Curators Companion` - _verify canonical Nexus URL in a browser session before finalizing this checklist entry_
- [ ] `Legacy of the Dragonborn Patches (Official)` - _verify canonical Nexus URL in a browser session before finalizing this checklist entry_
- [ ] `LoTD-related mod (Nexus ID 13279)` - <https://www.nexusmods.com/skyrimspecialedition/mods/13279>
- [ ] `LoTD-related mod (Nexus ID 16080)` - <https://www.nexusmods.com/skyrimspecialedition/mods/16080>
- [ ] `LoTD-related mod (Nexus ID 131107)` - <https://www.nexusmods.com/skyrimspecialedition/mods/131107>

## Performance and Technical Workflow

- [ ] `BethINI Pie (Performance INI Editor)` - <https://www.nexusmods.com/site/mods/631>
- [ ] `Lightened Skyrim` - <https://www.nexusmods.com/skyrimspecialedition/mods/50755>
- [ ] `eFPS - Exterior FPS boost` - <https://www.nexusmods.com/skyrimspecialedition/mods/54907>

---

Total unique mods listed: 331
