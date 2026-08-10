=== Base Game Installation

Download SP Football Life 2026 from PeSoccerWorld at #link("https://www.pesoccerworld.com/descargar/smokepatch-football-life-2026-5911.html?lang=en")[pesoccerworld.com]. The game ships as a standalone installer — no PES 2021 purchase or installation is required. Commentary v8 (English, Peter Drury & Jim Beglin) and 36 pre-installed stadiums are included in the base download.

#figure(
  table(
    columns: (auto, auto, 3fr),
    table.header([Component], [Version], [Installation]),
    [SP Football Life 2026 (base)], [—], [Download from PeSoccerWorld. Extract the archive and run `SPFL26_setup.exe`. Choose a clean, unprotected directory — never install over another game.],
    [Update 1.1], [v1.1], [After base installation, extract and run `SPFL26_110.exe`. Select your game folder when prompted. Includes database fixes, graphic corrections, stadium performance improvements, and referee appearance fixes.],
    [v2.0 Major Update], [v2.0], [Download from #link("https://www.pesoccerworld.com/descargar/smokepatch-football-life-2026-v2-0-6018.html?lang=en")[PeSoccerWorld]. Major database update: 15 new promoted teams, winter transfers, refreshed player stats, and gameplay adjustments (slower, more tactical pacing, revised set-piece power). Extract and run the installer over your existing FL26 install. Compatible with all prior save games.],
    [v2.20 Option File], [Jun 2026], [Download from #link("https://www.pesoccerworld.com/descargar/smokepatch-football-life-2026-v2-20-option-file-25-06-2026-mundial-fifa-2026-6093.html?lang=en")[PeSoccerWorld]. World Cup 2026 rosters and confirmed summer transfers through June 25, 2026. Backup your `EDIT00000000` file first, then install over your existing FL26 installation and replace files when prompted. Compatible with FL26 v2.20.],
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
    [SmokePatch Facepack AIO], [Over 14,500 player faces. Includes the initial pack plus Updates 1 through 4. Downloaded from the SmokePatch Real Faces FL26/27 page at #link("https://www.pessmokepatch.com/2025/10/faces2627.html")[pessmokepatch.com].], [Extract the base facepack to `content\faces\`. Apply Updates 1–4 sequentially, overwriting when prompted. Add `cpk.root = ".\content\faces"` to your `sider.ini`. The facepack is large — allocate 20+ GB of free disk space for extraction and staging.],
  ),
  caption: [Layer 4 — Faces]
)

The SmokePatch Facepack is the recommended face source for FL26: it is maintained by the same team that ships the base game, ensuring version compatibility. Community face packs may introduce conflicts with FL26 roster IDs — prefer this pack unless you have a specific reason to use an alternative.

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
    [ReShade Preset], [Post-processing colour and sharpening preset by Machete Gaming / KnightMD. Unversioned; confirmed active August 2026. Community-distributed via Machete Gaming's YouTube/Discord channels or EvoWeb. ReShade base: #link("https://reshade.me/")[reshade.me].], [Download the ReShade installer from reshade.me and run it targeting `FL 26.exe`. Select Direct3D 10/11/12 as the rendering API. After ReShade is installed, copy the `.ini` preset file into your FL26 root directory. Select it in the ReShade in-game overlay (default: Home key).],
  ),
  caption: [Layer 6 — Graphics Overhaul]
)

#strong[Load order note:] ReShade runs independently of Sider — it hooks the Direct3D pipeline directly. The `livecpk` entries for Soccer Revolution and Ultra Turfs load through Sider's CPK root system. Install and verify the two CPK root mods before applying ReShade; the preset is tuned to complement the lighting and turf changes.

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
    [Overhauled career mode: reworked player development curves, 2,800+ player stat adjustments, World Cup 2026 rosters with accurate squads, K League 1, and exclusive facepacks. Developed by UML Team (PogChampion, jovic1901, Daemon, BMKits) and distributed via #link("https://www.patreon.com/")[Patreon]. FL26 v2.2 compatible per community sources (June 2026).],
    [UML v3 is a #strong[paid mod] — the Patreon tier is approximately 5–10 USD (confirm the current price before purchasing). After purchase, follow the UML Team's installation guide: database files into `content\`, Sider modules into `Sider\`, kit server configuration per the included documentation. UML expects the Essentials Mod Pack (Layer 3) as a prerequisite for kit server and face assignment.],
  ),
  caption: [Layer 10 — Career Depth]
)

#strong[Patreon note:] UML v3 pricing and tier structure are set by the UML Team, not this guide. Verify the current tier on their Patreon page before purchasing. This mod is optional — the base FL26 Master League is fully playable without it.

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

=== Known Limitations

#strong[No full lower-league pyramid.] #link("https://evoweb.uk/")[EvoWeb] and #link("https://www.pesoccerworld.com/descargar/smokepatch-football-life-2026-5911.html?lang=en")[PeSoccerWorld] have confirmed this is an engine-level restriction, not a modding gap. The English Championship is the lowest tier 2 league; the German 2. Bundesliga and Spanish LaLiga 2 are similarly the floor for their pyramids. Installing league database mods will not add lower divisions.

#strong[UML v3 is paid.] Ultimate Master League is the only mod in this stack that requires payment. Every other mod is free. The base FL26 Master League provides a solid career experience without UML — the paid version adds depth (player development overhaul, stat tuning, exclusive facepacks) but is not required for an enjoyable career.

#strong[No classic or legendary teams.] FL26 does not ship classic teams (Classic World XI, Classic European XI, retro national squads), and no community mod reliably adds them. Attempts exist on EvoWeb but suffer from broken face assignments, misaligned stats, and database conflicts. Treat any classic-team mod as experimental and back up your install before trying one.

=== Save Compatibility Warning

SmokePatch updates (for example, FL26 v2.2 → v2.3) are not save-compatible with Master League and Become a Legend careers. An update can introduce database changes — roster moves, stat adjustments, league structure modifications — that invalidate existing save files. The game will either crash on load or display corrupted career data.

#strong[Before applying a SmokePatch update:] Back up your `Documents\KONAMI\` save directory and your current `FL 26.exe`. This lets you revert to the previous version and resume your career if the update breaks saves.

#strong[For career stability:] Lock your FL26 install at v2.2 for the duration of a long-term Master League or Become a Legend save. Do not apply mid-season patches, league database swaps, or SmokePatch updates while a career is active. If you want to experiment with newer versions, maintain a parallel install on a separate drive or rename your existing FL26 directory, install the new version fresh, and keep the v2.2 install untouched for your active career.
