=== Base Game Installation

Download SP Football Life 2026 from caocacao.net at #link("https://caocacao.net/download-football-life-2026-fl-26/")[caocacao.net]. The base game (v1.0) is an 11-part archive available via Mediafire and Sharemods mirrors. Extract all parts, then run `SPFL26_setup.exe` to install. The game ships as a standalone installer — no PES 2021 purchase or installation is required. 36 pre-installed stadiums are included in the base installation. English Commentary v8 (Peter Drury & Jim Beglin) is available as a separate download on the same page.

#figure(
  table(
    columns: (auto, auto, 3fr),
    table.header([Component], [Version], [Installation]),
    [SP Football Life 2026 (base)], [v1.0], [Download the 11-part archive from #link("https://caocacao.net/download-football-life-2026-fl-26/")[caocacao.net] (Mediafire + Sharemods mirrors). Extract all parts, then run `SPFL26_setup.exe`. Choose a clean, unprotected directory — never install over another game.],
    [Update v2.0], [v2.0], [Download from #link("https://caocacao.net/download-football-life-2026-fl-26/")[caocacao.net] (Modsfire + Sharemods). Major database update: 15 new promoted teams, winter transfers, refreshed player stats, and gameplay adjustments (slower, more tactical pacing, revised set-piece power). Extract and run the installer over your existing FL26 install. Compatible with all prior save games.],
    [Update v2.1], [v2.1], [Download from #link("https://caocacao.net/download-football-life-2026-fl-26/")[caocacao.net]. Database and kit update. Apply after v2.0.],
    [v2.20 Option File], [Jun 2026], [Download from #link("https://caocacao.net/download-football-life-2026-fl-26/")[caocacao.net]. World Cup 2026 rosters and confirmed summer transfers through June 25, 2026. Backup your `EDIT00000000` file first, then install over your existing FL26 installation and replace files when prompted. Compatible with FL26 v2.20.],
  ),
  caption: [Base Game Components]
)

#strong[Installation path:] Avoid `C:\Program Files` and `C:\Program Files (x86)`. Windows UAC virtualization interferes with Sider module loading, `livecpk` path resolution, and runtime asset injection. Use a short root path — for example, `D:\FL26` or `C:\Games\FL26`.

#strong[System Requirements:] Defaults to medium quality; adjustable in the game's video settings menu.

#figure(
  table(
    columns: (auto, auto, 2fr),
    table.header([Tier], [Spec], [Detail]),
    [Minimum], [OS], [Windows 7 SP1 / 8.1 / 10 (64-bit)],
    [], [CPU], [Intel Core i5-3470 / AMD FX 4350],
    [], [RAM], [10 GB],
    [], [GPU], [NVIDIA GTX 670 / AMD Radeon HD 7870],
    [], [VRAM], [2 GB],
    [], [DirectX], [11.0],
    [], [Storage], [40 GB free],
    [], [Resolution], [1280 x 720],
    [Recommended], [OS], [Windows 11 (64-bit)],
    [], [CPU], [Intel Core i7-9700 / AMD Ryzen 7 3700X],
    [], [RAM], [10 GB],
    [], [GPU], [NVIDIA GTX 980 / AMD Radeon R9 390X],
    [], [VRAM], [6 GB (10 GB for 4K)],
    [], [DirectX], [11.0],
    [], [Storage], [40 GB free],
    [], [Resolution], [1920 x 1080],
  ),
  caption: [System Requirements]
)

#strong[Verification:] After installation, launch `FL_2026 start.exe` once. Confirm the game boots to the main menu. This generates configuration files, initializes the save directory in `Documents\KONAMI\`, and confirms your system meets the runtime requirements. Exit before installing mods.

#strong[Directory Anatomy:]
The FL26 root contains these directories relevant to the mod stack:

- `Sider\` — Sider Lua modules. Copy each `.lua` module here and enable it in `sider.ini`.
- `livecpk\` — Live CPK root. Mods placed in subdirectories here are loaded at runtime via `cpk.root` entries.
- `content\` — Structured content root for stadiums, faces, and large asset packs.
- `SiderAddons\` — Some community mod bundles unpack content here; merge with existing directories when prompted.
- `sider.ini` — Core configuration file controlling module loading (`lua.module`), CPK roots (`cpk.root`), and startup behavior. Covered in detail in the Sider Configuration chapter.

#strong[Launch order:] Launch the game through `FL_2026 start.exe`. This is the launcher that initializes Sider and injects all mod content before handing off to the game engine. The desktop shortcut created during installation also points to this executable. Never launch the game executable directly.

=== Layer 2 — Audio Framework & Atmosphere

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [SoundServer], [Audio mixing framework by nesa24 (JUCE-based). Controls crowd volume, referee calls, announcer levels, and ambient stadium atmosphere independently. #strong[Bundled in the Essentials Mod Pack (Layer 3).] Standalone thread: EvoWeb — search: "SoundServer nesa24".], [Place the SoundServer Lua module in `Sider\`. Enable in `sider.ini` with `lua.module = "SoundServer.lua"`. Configure levels in-game via the Sider overlay. If you installed the Essentials Mod Pack first, skip this step — the module is already present.],
    [Predator002 Chant Pack V8], [Thousands of team-specific chants plus ChantsBase ambient crowd audio. Player-specific chants included. V8 / V8.1 confirmed active August 2026. EvoWeb — search: "Predator002 chants".], [Extract to `livecpk\preds-root\`. Add `cpk.root = ".\livecpk\preds-root"` to your `sider.ini`.],
    [Referee Whistle Mod], [High-fidelity whistle replacement samples. Unversioned; confirmed active August 2026. EvoWeb — search: "referee whistle".], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\referee-whistle\`). Add `cpk.root = ".\livecpk\referee-whistle"` to `sider.ini`.],
    [Atmosphere / Stadium Sound Overhaul], [Goal reactions, jeers, momentum crowd swells, and dynamic stadium ambiance. Unversioned; confirmed active August 2026. EvoWeb — search: "atmosphere sound overhaul".], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\atmosphere-overhaul\`). Add `cpk.root = ".\livecpk\atmosphere-overhaul"` to `sider.ini`.],
  ),
  caption: [Layer 2 — Audio Framework & Atmosphere]
)

#strong[Volume tuning:] In-game, set Commentary to 10–12 in the audio settings. Balance Stadium Sound against Commentary to preference — the Atmosphere Overhaul and Predator002 packs drive the stadium mix, so keep crowd channels high. Use SoundServer's Sider overlay for fine-grained per-channel adjustment.

=== Layer 3 — Visual Foundation

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Essentials Mod Pack (SPFL 26)], [Community-curated all-in-one bundle — the recommended visual and systems foundation for this mod stack. #strong[Bundles:] Ball Server (Ballpack v60 AIO by Hawke), SoundServer (nesa24/juce), Gameplay Loader with multiple gameplay options, scoreboards, adboards, updated kits/boots/gloves, referee kits by RezvFX, and entrance scenes. v1.4; confirmed active August 2026. Direct thread: #link("https://evoweb.uk/threads/sp-football-life-spfl26-1-4-essentials-mod-pack-unpacked-recommended-addons.103385/")[EvoWeb thread #103385].], [Extract the archive into your FL26 root directory. When prompted, merge `SiderAddons\` with the existing folder — this populates `livecpk` roots and Sider modules. The pack includes pre-configured `cpk.root` entries; verify they appear in your `sider.ini`. Several mods listed in Layers 2, 8, and 9 (SoundServer, Ball Server, Gameplay Loader) are included in this pack — install Layer 3 first, then skip the standalone downloads for bundled modules.],
  ),
  caption: [Layer 3 — Visual Foundation]
)

This pack is the recommended visual baseline. It installs several community standards (ball server, kit server, scoreboard selector) that later layers expect to be present. Do not skip this layer.

=== Layer 4 — Faces

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Mega Facepack V5 (Football4Life)], [#strong[Primary recommendation.] 17,555 faces across 5 parts. V5 is a complete standalone package — no previous versions required. Available at #link("https://www.pesoccerworld.com/descargar/mega-facepack-2026-v5-para-football-life-26-con-17-555-rostros-6103.html?lang=en")[pesoccerworld.com].], [Download all 5 parts, extract from the first archive with WinRAR, and copy the extracted `download` folder contents to `SP Football Life 26\download\`. Allocate 40+ GB free space for extraction.],
    [Managers Facepack V1], [#strong[Supplementary.] Manager faces for Master League. Available at #link("https://www.pesoccerworld.com/descargar/pes-2021-y-sp-football-life-2026-pack-de-caras-de-entrenadores-v1-6124.html?lang=en")[pesoccerworld.com].], [Install after the main facepack. Copy to `SP Football Life 26\download\`.],
    [Youngster Facepack], [#strong[Supplementary.] 122 young player faces. Available at #link("https://www.pesoccerworld.com/descargar/pes-2021-y-football-life-2026-youngster-facepack-122-con-nuevos-rostros-juveniles-5988.html?lang=en")[pesoccerworld.com].], [Install after the main facepack. Copy to `SP Football Life 26\download\`.],
    [Special Facepack (Halobaim)], [#strong[Supplementary.] Additional special faces curated by Halobaim. Available at #link("https://www.pesoccerworld.com/descargar/pes-2021-y-football-life-2026-facepack-especial-by-halobaim-5990.html?lang=en")[pesoccerworld.com].], [Install after the main facepack. Copy to `SP Football Life 26\download\`.],
  ),
  caption: [Layer 4 — Faces]
)

#strong[Recommendation:] Install Mega Facepack V5 (17,555 faces, 5 parts) — it is a complete standalone package requiring no prior version. Add the three supplementary packs (Managers, Youngster, Halobaim) for auxiliary coverage beyond the main database. All facepacks install to the `download` folder; the game reads faces directly from there at startup — no `cpk.root` entry is needed.

#strong[Note:] Unlike the old SmokePatch facepack, these packs install to the `download` folder rather than `content\faces`. No `cpk.root` entry in `sider.ini` is needed — the game reads faces directly from the `download` directory at startup.

=== Layer 5 — Stadiums

FL26 includes 36 pre-installed stadiums in the base download. The Stadium Server and AIO Stadium Pack below add per-team assignment and additional high-resolution stadiums beyond the built-in set.

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Stadium Server], [Sider module for per-team and per-league stadium assignment. Unversioned; confirmed active August 2026. EvoWeb — search: "Stadium Server sider".], [Place the Stadium Server Lua module in `Sider\`. Enable in `sider.ini` with `lua.module = "StadiumServer.lua"`. Configure assignments in `map_teams.txt` — see the Sider Configuration chapter.],
    [AIO Stadium Pack], [High-resolution stadiums, adboards, and tunnel scenes for the 2025/26 season. EvoWeb — search: "AIO Stadium Pack FL26".], [Extract to `content\stadium-server\`. The pack includes pre-configured `map_teams.txt` entries — merge or replace as needed. Large download; allocate 50+ GB free space.],
  ),
  caption: [Layer 5 — Stadiums]
)

The Stadium Server is the prerequisite module; the AIO Stadium Pack supplies the actual stadium data. Install the server first, confirm it loads (check the Sider overlay in-game), then install the stadium pack. Do not configure `map_teams.txt` until both are installed and the server module is verified active.

=== Layer 6 — Graphics Overhaul

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Soccer Revolution], [Lighting overhaul: pitch textures, stadium shadows, and broadcast-style colour grading. Unversioned; confirmed active August 2026. Direct thread: #link("https://evoweb.uk/threads/soccer-revolution-10-0-brand-new-gameplay-graphics-reshades.94305/")[EvoWeb thread #94305].], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\soccer-revolution\`). Add `cpk.root = ".\livecpk\soccer-revolution"` to `sider.ini`.],
    [Jeremiah's Ultra Turfs], [Organic non-repeating grass textures with realistic wear patterns, mowing lines, and pitch degradation. Unversioned; confirmed active August 2026. EvoWeb — search: "Jeremiah Ultra Turfs".], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\ultra-turfs\`). Add `cpk.root = ".\livecpk\ultra-turfs"` to `sider.ini`.],
    [Realistic Turf in Full HD], [Alternative/companion to Jeremiah's Ultra Turfs. Realistic grass textures in full HD resolution. Available at #link("https://www.pesoccerworld.com/descargar/pes-2021-sp-football-life-2026-cesped-realista-en-full-hd-6076.html?lang=en")[pesoccerworld.com].], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\realistic-turf\`). Add `cpk.root = ".\livecpk\realistic-turf"` to `sider.ini`. Install after Jeremiah's Ultra Turfs — later `cpk.root` entries override earlier ones. If you prefer this turf to Jeremiah's, place it last in the CPK root chain.],
    [ReShade Preset], [Post-processing colour and sharpening preset by Machete Gaming / KnightMD. Unversioned; confirmed active August 2026. Community-distributed via Machete Gaming's YouTube/Discord channels or EvoWeb. ReShade base: #link("https://reshade.me/")[reshade.me].], [Download the ReShade installer from reshade.me and run it targeting `FL 26.exe`. Select Direct3D 10/11/12 as the rendering API. After ReShade is installed, copy the `.ini` preset file into your FL26 root directory. Select it in the ReShade in-game overlay (default: Home key).],
  ),
  caption: [Layer 6 — Graphics Overhaul]
)

#strong[Load order note:] ReShade runs independently of Sider — it hooks the Direct3D pipeline directly. The `livecpk` entries for Soccer Revolution and the two turf mods load through Sider's CPK root system. Install and verify the CPK root mods before applying ReShade; the preset is tuned to complement the lighting and turf changes. For turf: install both Jeremiah's Ultra Turfs and Realistic Turf, but only enable one as your active turf by placing it later in the CPK root chain — later entries override earlier ones.

=== Layer 7 — Camera

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Nesa24's Camera Modules], [TV-broadcast camera suite with configurable zoom, height, angle, and smooth panning. Replaces the default in-game camera options. Unversioned Sider module; confirmed active August 2026. EvoWeb — search: "Nesa24 camera".], [Place the camera Lua module(s) in `Sider\`. Enable in `sider.ini` with `lua.module = "Camera.lua"` (exact filename may vary — check the module archive). Configure camera parameters in-game via the Sider overlay or the module's `.ini` file.],
  ),
  caption: [Layer 7 — Camera]
)

=== Layer 8 — Balls

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Ball Server (Hawke/community)], [Competition-aware ball selection: loads the correct official ball for each league, cup, and tournament. #strong[Bundled in the Essentials Mod Pack (Layer 3) as Ballpack v60 AIO by Hawke.] Standalone thread: EvoWeb — search: "Ball Server sider". Unversioned Sider module; confirmed active August 2026.], [If using the Essentials Mod Pack, Ball Server is already installed — skip this step. Otherwise: place the Ball Server Lua module in `Sider\`. Enable in `sider.ini` with `lua.module = "BallServer.lua"`. In-game, press Spacebar to open the Sider overlay, then press `~` (tilde) to open the OMB.lua menu — Ball Server appears as a configurable module there.],
  ),
  caption: [Layer 8 — Balls]
)

#strong[Note:] The Essentials Mod Pack (Layer 3) includes a ball pack as part of its AIO bundle. Ball Server builds on that collection by assigning the correct competition ball automatically. If you skipped Layer 3, ensure ball `.cpk` files are present in your `livecpk` tree before enabling the server.

=== Layer 9 — Gameplay

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Gameplay Loader], [Modular gameplay-switching framework. Lets you swap between gameplay mods without reinstalling. #strong[Bundled in the Essentials Mod Pack (Layer 3) with multiple gameplay options pre-loaded.] Standalone thread: EvoWeb — search: "Gameplay Loader". Unversioned Sider module; confirmed active August 2026.], [If using the Essentials Mod Pack, Gameplay Loader is already installed — skip this step. Otherwise: place the Gameplay Loader Lua module in `Sider\`. Enable in `sider.ini` with `lua.module = "GameplayLoader.lua"`. Place gameplay mod `.dt` files in the Loader's designated subdirectory (typically `content\gameplay-loader\`).],
    [Holland's Gameplay Mod], [Fixes AI build-up play, reduces scripting, improves physicality and player individuality. Primary gameplay recommendation. Unversioned; confirmed active August 2026. EvoWeb — search: "Holland gameplay" (in the Gameplay sub-forum).], [Place the `.dt` file in the Gameplay Loader directory. Select it in-game via the Gameplay Loader Sider overlay.],
    [Allstar Mix (Machete Gaming)], [Alternative gameplay mod with distinct pacing and physicality profile. Distributed via Machete Gaming's YouTube/Discord channels — not hosted on EvoWeb. Unversioned; confirmed active August 2026.], [Same as Holland's: place the `.dt` file in the Gameplay Loader directory and select via the overlay. Use as a fallback if Holland's gameplay doesn't suit your preference.],
  ),
  caption: [Layer 9 — Gameplay]
)

Holland's Gameplay Mod is the recommended starting point — it has the broadest community adoption and is actively maintained on EvoWeb. Allstar Mix covers a different feel; try both via the Loader and keep whichever plays best for you. The Loader can hold multiple `.dt` files simultaneously.

=== Layer 10 — Career Depth

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Ultimate Master League (UML) v3],
    [Overhauled career mode: reworked player development curves, 2,800+ player stat adjustments, World Cup 2026 rosters with accurate squads, K League 1, and exclusive facepacks. Developed by UML Team (PogChampion, jovic1901, Daemon, BMKits) and freely distributed via #link("https://caocacao.net/ultimate-master-league-for-football-life-uml-fl/")[caocacao.net]. Explicitly FL26 v2.2 compatible.],
    [UML v3 is a #strong[free mod] — download via PixelDrain from caocacao.net. Downloads include: FL Version, EDIT00000000, install instructions, Ball Server fix v3 (all PixelDrain), and WC addon fix (Modsfire). Follow the UML Team's installation guide: database files into `content\`, Sider modules into `Sider\`, kit server configuration per the included documentation. UML expects the Essentials Mod Pack (Layer 3) as a prerequisite for kit server and face assignment.]
  ),
  caption: [Layer 10 — Career Depth]
)

#strong[caocacao.net note:] UML v3 is distributed by the UML Team and hosted freely on caocacao.net. Downloads are via PixelDrain (primary files) and Modsfire (WC addon fix). This mod is optional — the base FL26 Master League is fully playable without it.

=== Layer 11 — Optional Leagues

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Ultra League Patch (ULP) / community league databases], [Community-maintained league expansions adding regional leagues beyond the FL26 base. Liga MX and Chinese Super League are available via separate community database mods. Scope varies by release wave and maintainer — verify current coverage at install time. Active development as of August 2026. Sourced from #link("https://evoweb.uk/")[EvoWeb] and Reddit r/SPFootballLife.], [Follow each mod's own installation instructions. Most community league databases ship as Sider modules with accompanying `cpk.root` entries. Install one league database at a time and verify the game boots between each to isolate conflicts. Do not mix league databases from different authors unless explicitly declared compatible.],
  ),
  caption: [Layer 11 — Optional Leagues]
)

#strong[Engine limitation:] The FL26 engine does not support a full lower-league pyramid below tier 2. The Championship is the lowest playable division in the English league structure; no League One, League Two, or National League mods exist. Community league databases expand horizontally (adding new top-tier leagues like Liga MX and CSL) rather than vertically (adding promotion/relegation tiers). Accept this constraint before installing — no amount of modding can add a third tier.


=== Layer 12 — Sleeve Patch & Armband Server

#let sleeve-url = "https://www.pesoccerworld.com/descargar/pes-2021-fl-2026-sleeve-patch-y-armband-server-4-0-aio-con-insignias-del-mundial-fifa-2026-6084.html?lang=en"
#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Sleeve Patch & Armband Server 4.0 AIO], [Updated 2026 versions of regular competition badges — refreshes league, cup, and super cup patches across 16+ competitions. Includes FIFA World Cup 2026 badges + champions badge. Replaces outdated default patches with current-season designs; not separate replacement badges. Sider module. Available at #link(sleeve-url)[pesoccerworld.com].], [*CRITICAL:* Delete any previous version before installing — do not overwrite. Copy `content` and `modules` into the Sider directory. Enable `lua.module = "SleeveBadge-ArmbandServer.lua"` in `sider.ini`.]
  ),
  caption: [Layer 12 — Sleeve Patch & Armband Server]
)

#strong[Installation order:] Install after core visual and gameplay layers are stable. Patches are assigned dynamically per competition. The delete-before-install requirement is critical: stale files from a previous version cause silent failures.

=== Layer 13 — Soundtrack Server

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Soundtrack Server v8.0 (marcoiacovelli02)], [Three curated music collections: 80s (182 songs), Iconic (88 songs), PES+FIFA (97 songs) — 367 tracks total. Favourites system, pre-match intro compatible, Ctrl+F5 live reload. Available at #link("https://www.pesoccerworld.com/descargar/sp-football-life-2026-soundtrack-server-v8-0-by-marcoiacovelli02-6032.html?lang=en")[pesoccerworld.com].], [Follow the included TXT instructions. Installs as a Sider module, replaces the in-game soundtrack. Ctrl+F5 reloads music live during gameplay.],
  ),
  caption: [Layer 13 — Soundtrack Server]
)

#strong[Note:] This is a music replacement, not an audio mixer. It is separate from SoundServer (Layer 2), which controls crowd, referee, and announcer audio. Both coexist — Soundtrack Server handles the playlist, SoundServer handles the in-match mix.

=== Layer 14 — Kitpacks

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Mega Kitpack V2 2025/26 (FL & UML)], [Comprehensive 2025/26 kit pack for FL26 and UML leagues. Available at #link("https://www.pesoccerworld.com/descargar/pes-2021-football-life-y-uml-mega-kitpack-v2-2025-26-6080.html?lang=en")[pesoccerworld.com].], [Extract to `livecpk\mega-kitpack-v2\`. Add `cpk.root = ".\livecpk\mega-kitpack-v2"` to `sider.ini`. Install before the DN7 addon.],
    [Mega Kitpack 2025/26 V2 Addon (DN7 Kits)], [Supplementary kits by DN7 Kits. Additional 2025/26 kits beyond the V2 base. Available at #link("https://www.pesoccerworld.com/descargar/pes-2021-sp-football-life-2026-mega-kitpack-2025-26-v2-addon-by-dn7-kits-6043.html?lang=en")[pesoccerworld.com].], [Extract to `livecpk\dn7-kits-addon\`. Add `cpk.root = ".\livecpk\dn7-kits-addon"` to `sider.ini`. Place after V2 base in CPK root chain — later entries take priority.],
  ),
  caption: [Layer 14 — Kitpacks]
)

#strong[Kit load order:] The Essentials Mod Pack (Layer 3) includes a base kit set. Place these kitpack `cpk.root` entries after the Essentials entries so the dedicated kit packs override the base.

=== Layer 15 — Accessories

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Gloves & Boots Pack (Fallons)], [Updated goalkeeper gloves and player boots for the April 2026 window. Available at #link("https://www.pesoccerworld.com/descargar/pes-2021-y-football-life-2026-pack-de-guantes-y-botas-abril-by-fallons-6052.html?lang=en")[pesoccerworld.com].], [Extract to `livecpk\gloves-boots-fallons\`. Add `cpk.root = ".\livecpk\gloves-boots-fallons"` to `sider.ini`. Place after kitpacks and Essentials in the CPK root chain.],
  ),
  caption: [Layer 15 — Accessories]
)

#strong[Note:] The Essentials Mod Pack (Layer 3) bundles an older boots/gloves set. The Fallons pack provides more recent models. Place its `cpk.root` entry after the Essentials entries so newer accessories override bundled ones.


=== Layer 16 — Scoreboards & TV Logos

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Mega Scoreboard Pack 2026 v2], [Argentina, World Cup 2026, and AFCON scoreboards in a single pack. Sider module with Scoreboard Server + Hexx integration. Available at #link("https://pes-files.com/pes-2021-mega-scoreboard-pack-2026-update-v2/")[pes-files.com]. #strong[UML CONFLICT:] UML v3 ships exclusive scoreboards — installing this pack overrides UML's scoreboard assignments. Install only if not using UML.], [Enable in `sider.ini`: `lua.module = "common\Scoreboard-Server.lua"` and `lua.module = "common\Scoreboard-Hexx.lua"`. Copy scoreboard assets to the designated Sider content folder per the pack's included instructions.],
    [TV Logo Scoreboard FIFA WC 2026], [World Cup 2026 TV-style logo overlay scoreboard. Unversioned. Available at #link("https://pes-files.com/pes-2021-update-tv-logo-scoreboard-fifa-wc-2026/")[pes-files.com].], [Copy to matching Sider `livecpk` folder. If the pack includes a Sider module, enable it in `sider.ini`.],
  ),
  caption: [Layer 16 — Scoreboards & TV Logos]
)

#strong[Installation order:] Install after core visual and gameplay layers are stable. Scoreboard modules load independently via Sider — no CPK root chain considerations. The Mega Scoreboard Pack's Hexx module may conflict with other scoreboard modules (including UML's); enable only one scoreboard system at a time.

=== Layer 17 — Stadium Additions

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Stadium Pack 4K Turf 2026], [Four stadiums — Etihad, Emirates, Parc des Princes, Anfield — with 4K turf textures. 2026 season update. Available at #link("https://pes-files.com/pes-2021-stadium-pack-4k-turf-update-2026/")[pes-files.com].], [Extract to `content\stadium-server\`. The pack includes `map_teams.txt` entries — merge with your existing file. Confirm stadium IDs don't conflict with the AIO Stadium Pack (Layer 5).],
    [Dirt Stains in Snow Turf 2026], [Snow weather turf texture with realistic dirt stain detail. 2026 update. Available at #link("https://pes-files.com/pes-2021-dirt-stains-in-snow-turf-update-2026/")[pes-files.com].], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\snow-turf\`). Add `cpk.root = ".\livecpk\snow-turf"` to `sider.ini`. Place after other turf mods in the CPK root chain — this only affects snow-weather pitches.],
  ),
  caption: [Layer 17 — Stadium Additions]
)

#strong[Stadium load order:] The stadium pack adds to `content\stadium-server\` alongside the AIO Stadium Pack (Layer 5). Merge `map_teams.txt` entries carefully — duplicate stadium IDs will cause assignment conflicts. The snow turf is weather-conditional and won't interfere with dry-weather turf mods.

=== Layer 18 — Kits & Adboards

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Kitpack Style Collection 2026/27 V16 AIO], [Comprehensive kit collection by Karjan for the 2026/27 season. Compatible with all patches including FL26 and UML. Available at #link("https://pes-files.com/pes-2021-kitpack-style-collection-2026-27-v16-aio/")[pes-files.com].], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\karjan-kits-v16\`). Add `cpk.root = ".\livecpk\karjan-kits-v16"` to `sider.ini`. Place after Mega Kitpack V2 and DN7 Addon (Layer 14) in the CPK root chain — later entries override earlier ones.],
    [Animated Adboard Pack V2 AIO 2026/27], [Animated digital adboards for the 2026/27 season by lanphan09. FL26 compatible. Available at #link("https://pes-files.com/pes-2021-animated-adboard-pack-v2-aio-2026-27/")[pes-files.com].], [Extract to `livecpk\Adboard\`. Add `cpk.root = ".\livecpk\Adboard"` to `sider.ini`. Place after the Essentials Mod Pack's adboard entries.],
    [FIFA WC New Adboard 2026], [World Cup 2026 themed static/digital adboards. Available at #link("https://pes-files.com/pes-2021-fifa-world-cup-new-adboard-2026/")[pes-files.com].], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\wc-adboards\`). Add `cpk.root = ".\livecpk\wc-adboards"` to `sider.ini`. Place after the Animated Adboard Pack — WC boards will appear for World Cup competition matches if the pack is competition-aware.],
  ),
  caption: [Layer 18 — Kits & Adboards]
)

#strong[Kit load order:] The Essentials Mod Pack (Layer 3) and Mega Kitpack V2 (Layer 14) already provide substantial kit coverage. Place Karjan's V16 kitpack last in the CPK root chain so it overrides older kits with 2026/27 designs. For adboards: the Animated Adboard Pack covers league play; the WC adboards are competition-specific and coexist without conflicts.

=== Layer 19 — Audio Additions

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Realistic Chants Pack 2026], [Team-specific chants for England, Argentina, Spain, France, and Italy. Sider module. Complementary to Predator002 (Layer 2) — install alongside for broader chant coverage. Available at #link("https://pes-files.com/pes-2021-realistic-chants-pack-season-2026/")[pes-files.com].], [Enable in `sider.ini` with `lua.module = "chants.lua"`. Copy chant audio files to the Sider module's designated directory. This coexists with Predator002 — each module handles different teams and leagues.],
    [Player Enhanced Foul Voices], [Player reaction voice samples for fouls — adds grunts, shouts, and protests on heavy tackles. Unversioned. Available at #link("https://pes-files.com/pes-2021-player-enhanced-foul-voices/")[pes-files.com].], [Copy to matching Sider `livecpk` folder.],
    [Mariano Closs V5.5.1], [Spanish-language commentary by Mariano Closs. Alternative to the English Commentary v8 (Peter Drury & Jim Beglin). Available at #link("https://pes-files.com/pes-2021-mariano-closs-update-v5-5-1/")[pes-files.com].], [Copy commentary files to the game's commentary directory. After install, select Spanish under System Settings > Language > Commentary. This replaces English commentary entirely — not a mix.],
    [Real Atmosphere Announcer Stadium], [Stadium PA announcer: goal calls, substitution announcements, added time declarations. Unversioned. Available at #link("https://pes-files.com/pes-2021-real-atmosphere-announcer-stadium-update/")[pes-files.com].], [Copy to matching Sider folders. Works through SoundServer's ambient channel — ensure SoundServer (Layer 2) is installed and active.],
  ),
  caption: [Layer 19 — Audio Additions]
)

#strong[Audio coexistence:] The Realistic Chants Pack and Predator002 (Layer 2) serve different teams and can coexist without conflicts. The Mariano Closs commentary is a complete replacement for English commentary — install one, not both. The Stadium Announcer operates through SoundServer's ambient audio channel and complements all other audio mods.

=== Layer 20 — Immersion & Visuals

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Cutscenes VAR 2026], [VAR review cutscenes that trigger during match stoppages. 2026 season update. Available at #link("https://pes-files.com/pes-2021-cutscenes-var-season-2026/")[pes-files.com].], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\var-cutscenes\`). Add `cpk.root = ".\livecpk\var-cutscenes"` to `sider.ini`.],
    [Dynamic Penalty Camera 2026], [Dynamic camera angles for penalty kicks — zooms, pans, and player close-ups during spot-kicks. 2026 update. Available at #link("https://pes-files.com/pes-2021-dynamic-penalty-camera-update-2026/")[pes-files.com].], [Copy to matching Sider folders. If the pack includes a `.lua` module, place it in `Sider\` and enable in `sider.ini`.],
    [New Menu PES Street 27], [PES Street themed main menu UI — urban/street football aesthetic. 2026/27 season. Available at #link("https://pes-files.com/pes-2021-new-menu-pes-street-27/")[pes-files.com].], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\menu-pes-street\`). Add `cpk.root = ".\livecpk\menu-pes-street"` to `sider.ini`. Only one menu theme can be active — this replaces the default FL26 menu.],
    [Body Faces Next-Gen Textures], [Next-gen quality body and face texture pack — improves skin detail, muscle definition, and facial texture resolution. Unversioned. Available at #link("https://pes-files.com/pes-2021-body-faces-next-gen-textures-update/")[pes-files.com].], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\nextgen-textures\`). Add `cpk.root = ".\livecpk\nextgen-textures"` to `sider.ini`. Place after facepacks (Layer 4) — CPK root priority means these textures override base face textures.],
    [Celebration Mod Shirtless V4.2], [Shirtless goal celebration animations — players remove shirts on big goals. v4.2. Available at #link("https://pes-files.com/pes-2021-celebration-mod-shirtless-update-v4-2/")[pes-files.com].], [Copy to matching Sider folders. May include a Sider module — check the archive for `.lua` files and enable in `sider.ini` if present.],
    [GP Prematch Animations 2026], [Pre-match sequences: tunnel walkouts, lineup presentations, and warm-up animations. 2026 season update. Available at #link("https://pes-files.com/pes-2021-gp-prematch-animations-season-2026/")[pes-files.com].], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\prematch-anims\`). Add `cpk.root = ".\livecpk\prematch-anims"` to `sider.ini`.],
  ),
  caption: [Layer 20 — Immersion & Visuals]
)

#strong[Immersion stack note:] These mods are cosmetic and independent — they don't interact with gameplay, career, or database systems. Install in any order within the layer. All install via `livecpk` with `cpk.root` entries. The menu theme is mutually exclusive with any other menu mod; the rest coexist without conflicts.

=== Known Limitations

#strong[No full lower-league pyramid.] #link("https://evoweb.uk/")[EvoWeb] and #link("https://caocacao.net/download-football-life-2026-fl-26/")[caocacao.net] have confirmed this is an engine-level restriction, not a modding gap. The English Championship is the lowest tier 2 league; the German 2. Bundesliga and Spanish LaLiga 2 are similarly the floor for their pyramids. Installing league database mods will not add lower divisions.

#strong[UML v3 is now free.] Ultimate Master League was previously paid but is now freely distributed on caocacao.net with PixelDrain downloads. Every mod in this stack is free. The base FL26 Master League provides a solid career experience without UML — UML adds depth (player development overhaul, stat tuning, exclusive facepacks) and is fully optional.

#strong[No classic or legendary teams.] FL26 does not ship classic teams (Classic World XI, Classic European XI, retro national squads), and no community mod reliably adds them. Attempts exist on EvoWeb but suffer from broken face assignments, misaligned stats, and database conflicts. Treat any classic-team mod as experimental and back up your install before trying one.

=== Save Compatibility Warning

FL26 updates (for example, v2.2 → v2.3) are not save-compatible with Master League and Become a Legend careers. An update can introduce database changes — roster moves, stat adjustments, league structure modifications — that invalidate existing save files. The game will either crash on load or display corrupted career data.

#strong[Before applying an FL26 update:] Back up your `Documents\KONAMI\` save directory and your current `FL 26.exe`. This lets you revert to the previous version and resume your career if the update breaks saves.

#strong[For career stability:] Lock your FL26 install at v2.2 for the duration of a long-term Master League or Become a Legend save. Do not apply mid-season patches, league database swaps, or FL26 updates while a career is active. If you want to experiment with newer versions, maintain a parallel install on a separate drive or rename your existing FL26 directory, install the new version fresh, and keep the v2.2 install untouched for your active career.
