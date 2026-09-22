#strong[Read this first — Sider IS your mod manager.] There is no Nexus-style manager for FL26, and none is recommended: no third-party tool understands this stack's three load-bearing mechanisms — `map_teams.txt` merging, `cpk.root` priority (later entries win), and library-module load order (`nesalib`/`CommonLib` before the modules that need them). Sider itself does the managing (live CPK overlay + Lua modules); the layers below ARE the install order. Install in order, verify the gated layers before continuing, and keep the Sider Configuration chapter open beside this one — it holds the master `sider.ini` template that mirrors every layer's snippets.

#strong[If you skip a layer:] some later steps become mandatory instead of optional. Do not skip silently — use this table:

#figure(
  table(
    columns: (auto, 2fr),
    table.header([If you skip], [Then you must]),
    [Layer 3 (Essentials)], [Install SoundServer (Layer 2), Ball Server (Layer 8), and Gameplay Loader (Layer 9) standalone — each row says how.],
    [Layer 5 (Stadiums)], [Layer 17 map merges have no base — configure `map_teams.txt` from scratch.],
    [Layer 10 UML], [Layer 16 scoreboards become your WC2026 coverage — UML's exclusive boards won't be there.],
    [Layers 11, 19, 20], [Nothing — these are optional by design. Skip freely.],
  ),
  caption: [Skip-layer consequences]
)

#strong[Sync rule:] each layer's snippet is authoritative. The master template in the Sider Configuration chapter mirrors them; any divergence is a bug — report it against the layer, and the fix lands in both places (logged in STATUS.md).

=== Base Game Installation

Download SP Football Life 2026 from caocacao.net at #link("https://caocacao.net/download-football-life-2026-fl-26/")[caocacao.net]. The base game (v1.0) is an 11-part archive available via Mediafire and Sharemods mirrors. Extract all parts, then run `SPFL26_setup.exe` to install. The game ships as a standalone installer — no PES 2021 purchase or installation is required. 36 pre-installed stadiums are included in the base installation. English Commentary v8 (Peter Drury & Jim Beglin) is available as a separate download on the same page.

#figure(
  table(
    columns: (auto, auto, 3fr),
    table.header([Component], [Version], [Installation]),
    [SP Football Life 2026 (base)], [v1.0], [Download the 11-part archive from #link("https://caocacao.net/download-football-life-2026-fl-26/")[caocacao.net] (Mediafire + Sharemods mirrors). Extract all parts, then run `SPFL26_setup.exe`. Choose a clean, unprotected directory — never install over another game.],
    [Update v2.0], [v2.0], [Download from #link("https://caocacao.net/download-football-life-2026-fl-26/")[caocacao.net] (Modsfire + Sharemods). Major database update: 15 new promoted teams, winter transfers, refreshed player stats, and gameplay adjustments (slower, more tactical pacing, revised set-piece power). Extract and run the installer over your existing FL26 install. Compatible with all prior save games.],
    [Update v2.1], [v2.1], [Download from #link("https://caocacao.net/download-football-life-2026-fl-26/")[caocacao.net]. Database and kit update. Apply after v2.0.],
    [Update v2.2 (final)], [May 12 2026], [Download from #link("https://pes-files.com/pes-2021-sp-football-life-2026-v2-2/")[pes-files.com] (Modsfire mirror + official link page). Final post-season update: database fixes (national teams), club + national kits. Requires v2.0 installed. Career saves from any FL26 version continue. Ships a new edit file. Unzip, run the installer, select the game directory.],
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

The FL26 root contains these directories relevant to the mod stack:

- `livecpk\` — Live CPK root. Mods placed in subdirectories here are loaded at runtime via `cpk.root` entries.
- `content\` — Structured content root for stadiums, faces, and large asset packs.
- `SiderAddons\` — Some community mod bundles unpack content here; merge with existing directories when prompted.
- `sider.ini` — Core configuration file controlling module loading (`lua.module`), CPK roots (`cpk.root`), and startup behavior. Covered in detail in the Sider Configuration chapter.

#strong[Launch order:] Launch the game through `FL_2026 start.exe`. This is the launcher that initializes Sider and injects all mod content before handing off to the game engine. The desktop shortcut created during installation also points to this executable. Never launch the game executable directly.

=== Layer 2 — Audio Framework & Atmosphere

#figure(
  table(
    columns: (1fr, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [SoundServer (2026)], [FL26-tuned audio mixer by All Makers (nesa24 lineage): stadium atmosphere, fan reactions, whistles, kick/net sounds. #strong[Bundled in Essentials (Layer 3).] Standalone: #link("https://pes-files.ru/pes_2021_sound_server_mod_update_2026")[Sound Server 2026 (Jul 2026)]. Legacy build: #link("https://pesnewupdate.com/pes-2021-sound-server-by-nesa24/")[PESNewupdate mirror].], [Place the Lua module in `Sider\`. Enable with `lua.module = "SoundServer.lua"`. Tune levels via the Sider overlay. Skip if you installed Essentials first.],
    [Atmosphere 2026 + Crowd Overhaul], [All-Makers 2026 stack: net sounds, pitch FX, crowd overhaul via `CrowdSoundOverhaul.lua`. #link("https://pes-files.ru/pes_2021_atmosphere_sound_server_2026")[Atmosphere 2026] + #link("https://pes-files.ru/pes_2021_crowd_sound_overhaul_update_2026")[Crowd Overhaul] (Sider 2026 v7.4.1).], [Copy folders to matching Sider dirs. Add the `cpk.root` lines and `lua.module = "CrowdSoundOverhaul.lua"` per the pack readme.],
  ),
  caption: [Layer 2 — Audio Framework & Atmosphere]
)

#strong[Volume tuning:] In-game, set Commentary to 10–12 in the audio settings. Balance Stadium Sound against Commentary to preference — the Atmosphere Overhaul packs drive the stadium mix, so keep crowd channels high. Use SoundServer's Sider overlay for fine-grained per-channel adjustment.

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

#strong[Verify before continuing:] launch via `FL_2026 start.exe`, press Spacebar for the Sider overlay — expect SoundServer, BallServer, and GameplayLoader listed as loaded. If any is missing, check its `lua.module` line exists in `sider.ini` and the `.lua` file is in `Sider\` (see Missing-module pitfall). Do not continue until all three load.

=== Layer 4 — Faces

#figure(
  table(
    columns: (1fr, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Mega Facepack V5 (Football4Life)], [#strong[Primary recommendation.] 17,555 faces across 5 parts. V5 is a complete standalone package — no previous versions required. Available at #link("https://www.pesoccerworld.com/descargar/mega-facepack-2026-v5-para-football-life-26-con-17-555-rostros-6103.html?lang=en")[pesoccerworld.com].], [Download all 5 parts, extract from the first archive with WinRAR, and copy the extracted `download` folder contents to `SP Football Life 26\download\`. Allocate 40+ GB free space for extraction.],
    [Managers Facepack V1], [#strong[Supplementary.] Manager faces for Master League. Available at #link("https://www.pesoccerworld.com/descargar/pes-2021-y-sp-football-life-2026-pack-de-caras-de-entrenadores-v1-6124.html?lang=en")[pesoccerworld.com].], [Install after the main facepack. Copy to `SP Football Life 26\download\`.],
    [Nabilemu Managers 2026 v1 (optional)], [6 managers (Jul 2026): Chivu (Inter), Deschamps, Kovac (Dortmund), Amorim (Milan), Tuchel (England), Montella (Turkey). Sider ID-folder install, not `download\`. #strong[UNVERIFIED vs v2.2 IDs — install after V5; revert on mismatch.] #link("https://pes-files.com/pes-2021-manager-facepack-2026-update-v1/")[pes-files.com]. VK: #link("https://vk.ru/wall-47881762_115301")[mirror].], [Extract ID folders under `livecpk\Faces\` per readme. Add `cpk.root = ".\livecpk\Faces"`.],
    [Youngster Facepack], [#strong[Supplementary.] 122 young player faces. Available at #link("https://www.pesoccerworld.com/descargar/pes-2021-y-football-life-2026-youngster-facepack-122-con-nuevos-rostros-juveniles-5988.html?lang=en")[pesoccerworld.com].], [Install after the main facepack. Copy to `SP Football Life 26\download\`.],
    [Special Facepack (Halobaim)], [#strong[Supplementary.] Additional special faces curated by Halobaim. Available at #link("https://www.pesoccerworld.com/descargar/pes-2021-y-football-life-2026-facepack-especial-by-halobaim-5990.html?lang=en")[pesoccerworld.com].], [Install after the main facepack. Copy to `SP Football Life 26\download\`.],
    [SmokePatch Real Faces Update 4], [Official cumulative update: +600 faces in Update 4 (12 May 2026; ~1,400 across U1–U4, includes all previous). 8 pre-installed cpk (1–6 main, 7 updates, 8 next season); 15k+ faces; 37.4 GB disk (34.5 GB archives) — raise pagefile. ID-safe alternative/supplement to Mega Facepack V5. Compat: SP FL26 (older versions = mismatched IDs). Available at #link("https://www.pessmokepatch.com/2025/10/faces2627.html")[pessmokepatch.com].], [Extract `01_smkdb_fa7.cpk` and replace the older file in `SP Football Life 26\download\`.],
    [Mega Facepack FL 2026 Update v6 (optional)], [Small Sider supplement (~100 faces, Sep 22 2026 — NOT a V5 successor; different product line). Installs under `livecpk\Faces\` + `cpk.root`. #strong[UNVERIFIED ID-match — install after V5 so it overrides; revert on mismatch.] Available at #link("https://pes-files.com/pes-2021-mega-facepack-fl-2026-update-v6/")[pes-files.com].], [Extract ID folders under `livecpk\Faces\` per readme. Add `cpk.root = ".\livecpk\Faces"` after V5 entries.],
  ),
  caption: [Layer 4 — Faces]
)

#strong[Recommendation:] Install Mega Facepack V5 (17,555 faces, 5 parts) — it is a complete standalone package requiring no prior version. Add the three supplementary packs (Managers, Youngster, Halobaim) for auxiliary coverage beyond the main database. All facepacks install to the `download` folder; the game reads faces directly from there at startup — no `cpk.root` entry is needed.

#strong[Note:] Unlike the old SmokePatch facepack, these packs install to the `download` folder rather than `content\faces`. No `cpk.root` entry in `sider.ini` is needed — the game reads faces directly from the `download` directory at startup.

=== Layer 5 — Stadiums

FL26 includes 36 pre-installed stadiums in the base download (11 in the pre-installed Stadium Server v1.60, the rest in cpk). The rows below add per-team assignment and regional high-resolution stadium packs beyond the built-in set. Download: #link("https://www.pessmokepatch.com/2024/11/siderstadiums.html")[SmokePatch FL Sider Stadiums] (MediaFire/Mega mirrors + copy-paste map lines).

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Stadium Server (zlac, v1.60)], [Sider module for per-team and per-league stadium assignment (unlimited stadiums, `map_teams.txt` + `map_competition.txt`). #strong[Already pre-installed in FL26 (v1.60, upgraded in FL25) — do not replace it with an older version.] Standalone module: #link("https://pes-files.ru/pes_2021_stadium_server_2020_v1_60")[pes-files.ru — Stadium Server v1.60]. Server docs + regional packs: #link("https://www.pessmokepatch.com/2024/11/siderstadiums.html")[SmokePatch FL Sider Stadiums].], [Pre-installed — nothing to download. Enable in `sider.ini` with `lua.module = "StadiumServer.lua"` (+ `lua.module = "lib\commonLib.lua"` if required). Configure assignments in `map_teams.txt` — see the Sider Configuration chapter.],
    [Stadium packs (SmokePatch regional)], [High-resolution stadiums + adboards + tunnels, per region (England 36 stadiums ~9 GB, Spain 36 ~6.5 GB, more regions on the page). Download: #link("https://www.pessmokepatch.com/2024/11/siderstadiums.html")[SmokePatch FL Sider Stadiums (MediaFire/Mega mirrors + map lines)]. Packs exclude the 36 pre-installed FL stadiums.], [Pick a region, extract its stadium folders to `SiderAddons\content\stadiums\` (FL26 path — older guides say `content\stadium-server\`), and copy the page's map lines into `map_teams.txt`. Map format: `TeamID, StadiumID, Stadium name, Folder # comment`.],
  ),
  caption: [Layer 5 — Stadiums]
)

The Stadium Server is pre-installed — confirm it loads (check the Sider overlay in-game) before adding regional packs. Do not configure `map_teams.txt` until the server module is verified active. If Windows blocks saving `map_teams.txt`, save to Desktop first, then move it back.
#strong[Verify before continuing:] start a kickoff match at a mapped home ground — expect the assigned stadium, not a generic. If generic, check `SiderAddons\content\stadiums\map_teams.txt` has the team line (see Unmapped-stadiums pitfall).

=== Layer 6 — Graphics Overhaul

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Soccer Revolution 2026 v12 / Revamped], [Same-author lighting overhaul (elijio876), 2026-season builds for FL26: v12 (Mar 2026) / Revamped 10 (Apr 2026). Newer than the v10.0 EvoWeb thread #94305. #strong[Caution:] replaces EXE / `dt18_all` — back up `FL 26.exe` + Data files first; do not combine with UML's custom EXE setup without checking. EvoWeb thread: #link("https://evoweb.uk/threads/soccer-revolution-10-0-brand-new-gameplay-graphics-reshades.94305/")[#94305 (v10.0 base)]. Newer builds: #link("https://www.pesmodding.com/2026/03/pes-2021-soccer-revolution-2026-v12.html")[v12] / #link("https://www.pesmodding.com/2026/04/pes-2021-soccer-revolution-revamped-10.html")[Revamped 10].], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\soccer-revolution\`). Add `cpk.root = ".\livecpk\soccer-revolution"` to `sider.ini`. If the build ships an EXE/Data replacement, back up first and apply per its readme.],
    [Jeremiah's Ultra Turfs], [Organic non-repeating grass textures with realistic wear patterns, mowing lines, and pitch degradation. By Jeremiah Osoba; Stadium-Server addon. Download: #link("https://pes-files.ru/pes_2021_next_gen_fifa_turf_addon_2024")[pes-files.ru — Next-Gen FIFA Turf Addon] or EvoWeb — search: "Jeremiah Ultra Turfs".], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\ultra-turfs\`). Add `cpk.root = ".\livecpk\ultra-turfs"` to `sider.ini`.],
    [Realistic Turf in Full HD], [Alternative/companion to Jeremiah's Ultra Turfs. Realistic grass textures in full HD resolution. Available at #link("https://www.pesoccerworld.com/descargar/pes-2021-sp-football-life-2026-cesped-realista-en-full-hd-6076.html?lang=en")[pesoccerworld.com].], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\realistic-turf\`). Add `cpk.root = ".\livecpk\realistic-turf"` to `sider.ini`. Install after Jeremiah's Ultra Turfs — later `cpk.root` entries override earlier ones. If you prefer this turf to Jeremiah's, place it last in the CPK root chain.],
    [ReShade Preset (Machete Gaming / KnightMD)], [Post-processing colour and sharpening preset. Preset: #link("https://www.mediafire.com/file/pxzjx4b3tooz3xx/Machete%2527s_PES21_Reshade_v3.ini/file")[Machete's PES21 ReShade v3 (.ini, MediaFire)] (also via #link("https://discord.gg/xSSvxWYjyh")[Machete Gaming Discord]); discussed for FL26 in #link("https://www.reddit.com/r/SPFootballLife/comments/1oeq3x7/best_reshade_for_fl26/")[r/SPFootballLife]. ReShade base: #link("https://reshade.me/")[reshade.me] (v6.3.3+).], [Download the ReShade installer from reshade.me and run it targeting `FL 26.exe`. Select Direct3D 10/11/12 as the rendering API. Copy the `.ini` preset file into your FL26 root directory. Select it in the ReShade in-game overlay (default: Home key).],
  ),
  caption: [Layer 6 — Graphics Overhaul]
)

#strong[Load order note:] ReShade runs independently of Sider — it hooks the Direct3D pipeline directly. The `livecpk` entries for Soccer Revolution and the two turf mods load through Sider's CPK root system. Install and verify the CPK root mods before applying ReShade; the preset is tuned to complement the lighting and turf changes. For turf: install both Jeremiah's Ultra Turfs and Realistic Turf, but only enable one as your active turf by placing it later in the CPK root chain — later entries override earlier ones.

=== Layer 7 — Camera

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Nesa24's Camera Modules], [TV-broadcast camera suite with configurable zoom, height, angle, and smooth panning (`BroadCastCam.lua` + `nesalib.lua` core). Replaces the default in-game camera options. Download: #link("https://sharemods.com/e56xe9kwhiv8/PES_2021_Nesa24_Camera_modules_3.3_for_sider.rar.html")[Sharemods — v3.3, 16.5 MB] or EvoWeb — search: "Nesa24 camera".], [Merge the archive's `modules` folder into `Sider\`. Enable in `sider.ini` with `lua.module = "lib\nesalib.lua"` first, then `lua.module = "BroadCastCam.lua"` (exact filenames may vary — check the archive). Configure camera parameters in-game via the Sider overlay or the module's `.ini` file.],
    [BroadcastCam Manager v2.0 (Ngysz_419)], [External `BroadCastCam.ini` + `BroadCastCam.lua` manager (not a Sider module): per-stadium TV-broadcast angles, presets, merge/install, plus v2.0 AI auto-correct that aligns stadium names with your map files. v2.0 archive: 11.81 MB, uploaded 2026-09-19, VirusTotal 0/28 (observed Sep 22). Complements Nesa24's in-game camera tuning above — install Nesa24 modules and the Stadium Server map first. #strong[UNVERIFIED — pending FL26 v2.2 smoke test; scan the binary before running.] #link("https://www.reddit.com/r/SPFootballLife/comments/1wkjccw/broadcastcam_manager_v20/")[r/SPFootballLife post] (v1.0: #link("https://www.reddit.com/r/SPFootballLife/comments/1wjytfq/broadcastcam_manager_v10/")[v1.0 post]); downloads: #link("https://www.mediafire.com/file/9ihum8weyvlmrz3/BroadCastCam_Manager_v2.0.rar/file")[v2.0 MediaFire], #link("https://www.mediafire.com/file/3lax714vmxd3s1d/BroadCastCam_Manager.rar/file")[v1.0 MediaFire].], [Extract beside your FL26 install. Point the tool at `BroadCastCam.ini` plus your stadium mapping file, apply auto-correct, then launch via Sider (as admin) with the in-game camera set to Live Broadcast. No `sider.ini` changes.],
  ),
  caption: [Layer 7 — Camera]
)
#strong[Verify before continuing:] in the Sider overlay (Spacebar), confirm the camera module list shows no errors, then check `sider.log` has no `nesalib`/`BroadCastCam` load errors. If errors, the library line is missing or below the camera line — libraries first. Do not continue until the log is clean.

=== Layer 8 — Balls

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Ball Server (Hawke/community)], [Competition-aware ball selection: loads the correct official ball for each league, cup, and tournament. #strong[Bundled in the Essentials Mod Pack (Layer 3) as Ballpack v60 AIO by Hawke.] Standalone module + packs: #link("https://caocacao.net/pes-2021-ball-pack-hawke/")[caocacao.net — Hawke ball pack (Modsfire/Sharemods)] or EvoWeb — search: "Ball Server sider". Unversioned Sider module; confirmed active August 2026.], [If using the Essentials Mod Pack, Ball Server is already installed — skip this step. Otherwise: place the Ball Server Lua module in `Sider\`. Enable in `sider.ini` with `lua.module = "BallServer.lua"` (plus `lua.module = "lib\CommonLib.lua"` first if required). In-game, press Spacebar to open the Sider overlay, then press `~` (tilde) to open the OMB.lua menu — Ball Server appears as a configurable module there.],
    [Ballpack v60 AIO 2025/26 (Hawke)], [Newer than the Sep-2025 pack: Vol 60 Christmas Edition (~1,606 balls, Dec 2025), PES2021 + FL26 compatible. Delete the old `ball-server` content folder first — never mix packs. Available at #link("https://www.ultigamerz.com/2025/12/pes-2021-ballpack-v60-aio-2025-26.html")[ultigamerz — Vol 60] (module guide: #link("https://caocacao.net/pes-2021-ball-pack-hawke/")[caocacao]).], [Delete old `content\ball-server\`, copy the new `ball-server` folder to `content\`. Keep `lua.module = "lib\CommonLib.lua"` before `lua.module = "BallServer.lua"` enabled — only the ball content changes.],
  ),
  caption: [Layer 8 — Balls]
)

#strong[Note:] The Essentials Mod Pack (Layer 3) includes a ball pack as part of its AIO bundle. Ball Server builds on that collection by assigning the correct competition ball automatically. If you skipped Layer 3, ensure ball `.cpk` files are present in your `livecpk` tree before enabling the server.

=== Layer 9 — Gameplay

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Gameplay Loader (Baris, v2.6)], [Modular gameplay-switching framework. Lets you swap between gameplay mods without reinstalling. #strong[Bundled in the Essentials Mod Pack (Layer 3) with multiple gameplay options pre-loaded.] Standalone: #link("https://caocacao.net/pes-2021-gameplay-loader/")[caocacao.net — v2.6 (Modsfire/Sharemods)] or EvoWeb — search: "Gameplay Loader".], [If using the Essentials Mod Pack, Gameplay Loader is already installed — skip this step. Otherwise: place the Gameplay Loader Lua module in `Sider\`. Enable in `sider.ini` with `lua.module = "GameplayLoader.lua"`. Place gameplay mod `.dt` files in the Loader's designated subdirectory (typically `content\gameplay-loader\`).],
    [Realism Gameplay V12 (All Makers)], [#strong[Primary recommendation.] Holland-lineage gameplay overhaul, September 2026 iteration. Improves player movement, natural animations, ball physics, shooting/finishing, goalkeeper behavior, physical contact, and pitch feel. Explicitly FL26 compatible. Available at #link("https://sharemods.com/8lsb0ktln8e9/PES_2021_Realism_Gameplay_V12.rar.html")[Sharemods] (mirrors via pesfiles.ru).], [
- Move the `Realism Gameplay V12` folder into `livecpk\`.
- Merge the `modules` folder contents into `Sider\` (all `.lua` files go here).
- Add the v12 `cpk.root` + `lua.module` entries from the pack readme to `sider.ini` (one CPK root plus gameplay Lua modules — verify names against the readme).
- Copy the pack's `Data`-folder `.cpk` files (e.g. `dt18_all.cpk`, `dt13_all.cpk`) into the game's `Data` folder, replacing existing files.],
    [AI Manager v2 (Emre Cakir)], [#strong[Complementary.] AI mentality manager that reads match state and adapts team attack/defense levels in real time. Auto mode: losing→attack level 3–4, winning against strong team→defense level 0 in last 10 min. Manual override available. Works alongside any gameplay mod — no conflicts. Available at #link("https://pes-files.com/pes-2021-al-manager-mod-update-v2/")[pes-files.com] (Modsfire + Sharemods mirrors).], [
- Place `Al-Manager.lua` in `Sider\`.
- Add to `sider.ini` under `[lua]`: `lua.module = "Al-Manager.lua"`.
- In-game controls: press 8 to select your team, 9 to toggle auto/manual mode, PageUp/PageDown to adjust attack/defense level in manual mode.],
  ),
  caption: [Layer 9 — Gameplay]
)

Realism Gameplay V12 (All Makers) is the primary recommendation — the September 2026 Holland-lineage iteration with explicit FL26 compatibility. Verify the v12 module and Data-file list in the pack's readme before swapping (folder and module names may differ between releases). AI Manager v2 adds adaptive AI mentality on top — it runs alongside any gameplay mod, including Realism V12, with zero conflicts. The Gameplay Loader is retained for testing other `.dt`-based gameplay mods or swapping between gameplay variants. Note that Realism V12 installs directly into Sider (`livecpk` + Lua modules) and does not use the Gameplay Loader — only `.dt`-based gameplay mods go through the Loader.
#strong[Verify before continuing:] open the Sider overlay (Spacebar) — expect the Gameplay Loader menu plus AI Manager present with no module errors in `sider.log`. Pick a gameplay variant in the Loader and confirm it persists across a restart. If missing, check the `lua.module` lines and `Sider\` files (see Missing-module pitfall).

=== Layer 10 — Career Depth

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Ultimate Master League (UML) v3],
    [Overhauled career mode: reworked player development curves, 2,800+ player stat adjustments, World Cup 2026 rosters with accurate squads, K League 1, and exclusive facepacks. Developed by UML Team (PogChampion, jovic1901, Daemon, BMKits) and freely distributed via #link("https://caocacao.net/ultimate-master-league-for-football-life-uml-fl/")[caocacao.net]. Explicitly FL26 v2.2 compatible.],
    [UML v3 is a #strong[free mod] — download the FL Version, EDIT00000000, install instructions, Ball Server fix v3 (PixelDrain) and WC addon fix (Modsfire) from #link("https://caocacao.net/ultimate-master-league-for-football-life-uml-fl/")[caocacao.net — UML for FL v3 + WC fix]. #strong[Apply v3's bundled sider.exe/sider.dll as a set.] Follow the UML Team's installation guide: database files into `content\`, Sider modules into `Sider\`, kit server configuration per the included documentation. UML expects the Essentials Mod Pack (Layer 3) as a prerequisite for kit server and face assignment.],
    [Touchline (ML companion, ASK Andalus)], [Free external Master League storyline layer (v0.8.6): stories, press, board memory, staff; form arcs, coaching, LIVE ECONOMY budget — all toggleable. Adds `TouchlineCompanion` + 3 scripts (`MLRuntime.lua`, `MLImmersion.lua`, `MLRegenAliases.lua`) with `sider.ini.touchline-<date>.bak` backup; careers in `content\ml-immersion\profiles`. #strong[Auto-disables BudgetSetter.lua — crash risk.] #strong[UNVERIFIED — site names FL26 v1.4 for live features, no v2.2 statement.] Download from #link("https://askandalus.com/downloads/prologue")[askandalus.com] only.], [Close the game, run the installer, point at the folder containing `sider.exe`. Start the game through Sider, save your ML career once, open Touchline beside the game and connect the career.],
    [Prologue (BAL companion, ASK Andalus)], [Free external Become a Legend storyline layer (v0.6.5): inbox/decisions, sponsors, club/national rankings, honours, invented injuries (none/minimum/realistic), crest import shared with Touchline. Reads the save only; small ±3 own-player boosts via the running game with a GAME WRITES off-switch (admin parity needed for boosts/OVR). Adds `PrologueCompanion` + `content\prologue`; no Sider scripts, never edits `sider.ini`. #strong[UNVERIFIED — site names FL26 v1.4 for live features, no v2.2 statement.] Download from #link("https://askandalus.com/downloads/prologue")[askandalus.com] only — the author disavows mirrors.], [Extract the zip (never run from inside it), run the setup, point at the folder containing `sider.exe`. Start FL26 through Sider, save your BAL career once, create your legend in Prologue and connect the save.],
  ),
  caption: [Layer 10 — Career Depth]
)

#strong[caocacao.net note:] UML v3 is distributed by the UML Team and hosted freely on caocacao.net. Downloads are via PixelDrain (primary files) and Modsfire (WC addon fix). UML ships its own EDIT00000000 — back up yours before applying. This mod is optional — the base FL26 Master League is fully playable without it.
#strong[Verify before continuing (UML only):] boot to the Master League menu with UML applied — expect UML's league list (incl. K League 1) and exclusive scoreboards. If the game crashes on load, restore the pre-Layer-10 snapshot.

=== Layer 11 — Optional Leagues

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Ultra League Patch (ULP) / community league databases], [Community-maintained league expansions adding regional leagues beyond the FL26 base. Liga MX and Chinese Super League are available via separate community database mods. Scope varies by release wave and maintainer — verify current coverage at install time. Active development as of August 2026. Sources: #link("https://evoweb.uk/")[EvoWeb] and #link("https://www.reddit.com/r/SPFootballLife/new/")[r/SPFootballLife new posts] — no single canonical download; search the current wave at install time.], [Follow each mod's own installation instructions. Most community league databases ship as Sider modules with accompanying `cpk.root` entries. Install one league database at a time and verify the game boots between each to isolate conflicts. Do not mix league databases from different authors unless explicitly declared compatible.],
  ),
  caption: [Layer 11 — Optional Leagues]
)

#strong[Engine limitation:] The FL26 engine does not support a full lower-league pyramid below tier 2. The Championship is the lowest playable division in the English league structure; no League One, League Two, or National League mods exist. Community league databases expand horizontally (adding new top-tier leagues like Liga MX and CSL) rather than vertically (adding promotion/relegation tiers). Accept this constraint before installing — no amount of modding can add a third tier.
#strong[Experimental — new-leagues beta (Sep 2026):] Matozanato's `FootballLife-new-leagues` beta breaks the ~750-club ceiling at runtime via Sider (no `.exe`/CPK edits) — the only current path to brand-new leagues in Master League. See the #link("https://www.reddit.com/r/SPFootballLife/comments/1whewve/beta_footballlife_2026_new_leagues_past_the/")[r/SPFootballLife beta post] and GitHub (`Matozanato/FootballLife-new-leagues`). Known walls: 1,536-club season generation, day-~238 career crash, placeholder assets. Test on a copy with a fresh save only; the engine-limitation note above otherwise stands.


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
    [Soundtrack Server v9.0 AIO (marcoiacovelli02)], [SP-FL compatible music system (Jul 2026): F1/F2 favorites, F3 live search, Ctrl+F5 refresh, 8-state detection, 40+ tournaments, ML/BAL support. Three collections: 2000s Throwbacks (400+), Best Rock (360+), 90s Hits (250+). Available at #link("https://pes-files.ru/pes_2021_soundtrack_server_v9_0_aio")[pes-files.ru].], [Follow the included TXT guides (module install, features, add-songs, track lists). Installs as a Sider module, replaces the in-game soundtrack. Ctrl+F5 reloads music live during gameplay.],
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
    [Collection Kits Style V19 AIO 2026/27 (Karjan)], [Full 2026/27 kit AIO (Aug 2026, full version — no priors required): 20+ leagues incl. PL, LaLiga, Serie A Enilive, Bundesliga. PES2021 + FL26 compatible. Available at #link("https://pes-files.com/pes-2021-collection-kits-style-v19-aio-season-2026-27/")[pes-files.com]. Place last in the `cpk.root` chain.], [Extract per readme. Add its `cpk.root` after all other kitpacks — later entries override earlier ones.],
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
    [Boot-Root August 2026 (Fallons/DN7)], [Newer boots/gloves (Aug 2026): remove old `boot-root` from `livecpk` first, copy new folder to `livecpk\boot-root`, `cpk.root = ".\livecpk\boot-root"`. Available at #link("https://pes-files.com/pes-2021-added-boot-root-august-season-2026/")[pes-files.com].], [Remove old boot-root, install new per readme. Place after kitpacks in the CPK root chain.],
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
    [Scoreboard La Liga 2026/27 (Juandrs)], [2026/27 La Liga + ESPN logo companion — installs ON TOP of the Mega Pack v2 (`map_competitions.txt`: `19, Spain\La Liga\ESPN NEW LOGO`). Non-UML only. Available at #link("https://pes-files.com/pes-2021-scoreboard-la-liga-season-2026-27/")[pes-files.com (Sep 2026)].], [Install the Mega Pack v2 first, then add this board per its readme and append the map line.],
  ),
  caption: [Layer 16 — Scoreboards & TV Logos]
)

#strong[Installation order:] Install after core visual and gameplay layers are stable. Scoreboard modules load independently via Sider — no CPK root chain considerations. The Mega Scoreboard Pack's Hexx module may conflict with other scoreboard modules (including UML's); enable only one scoreboard system at a time.

=== Layer 17 — Stadium Additions

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Stadium Pack 4K Turf 2026], [Four stadiums — Etihad, Emirates, Parc des Princes, Anfield — with 4K turf textures. 2026 season update. Available at #link("https://pes-files.com/pes-2021-stadium-pack-4k-turf-update-2026/")[pes-files.com].], [Extract to `SiderAddons\content\stadiums\` (FL26 path — older guides say `content\stadium-server\`). The pack includes `map_teams.txt` entries — merge with your existing file. Confirm stadium IDs don't conflict with the regional packs (Layer 5).],
    [Dirt Stains in Snow Turf 2026], [Snow weather turf texture with realistic dirt stain detail. 2026 update. Available at #link("https://pes-files.com/pes-2021-dirt-stains-in-snow-turf-update-2026/")[pes-files.com].], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\snow-turf\`). Add `cpk.root = ".\livecpk\snow-turf"` to `sider.ini`. Place after other turf mods in the CPK root chain — this only affects snow-weather pitches.],
  ),
  caption: [Layer 17 — Stadium Additions]
)

#strong[Stadium load order:] The stadium pack adds to `SiderAddons\content\stadiums\` alongside the regional packs (Layer 5). Merge `map_teams.txt` entries carefully — duplicate stadium IDs will cause assignment conflicts. The snow turf is weather-conditional and won't interfere with dry-weather turf mods.

=== Layer 18 — Kits & Adboards

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Kitpack Style Collection 2026/27 V16 AIO], [Comprehensive kit collection by Karjan for the 2026/27 season. Compatible with all patches including FL26 and UML. Available at #link("https://pes-files.com/pes-2021-kitpack-style-collection-2026-27-v16-aio/")[pes-files.com].], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\karjan-kits-v16\`). Add `cpk.root = ".\livecpk\karjan-kits-v16"` to `sider.ini`. Place after Mega Kitpack V2 and DN7 Addon (Layer 14) in the CPK root chain — later entries override earlier ones.],
    [Mega Animated Adboard Pack FL26 2026 (MindTuts)], [FL26-targeted animated LED adboards: all major leagues + cups + WC2026 tournament boards. 5-part archive (4× 2.0 GB + 14.6 MB tail, Jun 17 2026). Replaces lanphan09 V2 (generic PES2021 build) — FL26 naming + WC2026 coverage. Sharemods: #link("https://sharemods.com/92g09wd9e45i/MEGA_ANIMATED_ADBOARD-PACK_FL26_2026.part1.rar.html")[part1] #link("https://sharemods.com/48gud30t0lgp/MEGA_ANIMATED_ADBOARD-PACK_FL26_2026.part2.rar.html")[part2] #link("https://sharemods.com/q6v9x4gootde/MEGA_ANIMATED_ADBOARD-PACK_FL26_2026.part3.rar.html")[part3] #link("https://sharemods.com/kagchrlnkcl2/MEGA_ANIMATED_ADBOARD-PACK_FL26_2026.part4.rar.html")[part4] #link("https://sharemods.com/8ya3fr5xirbh/MEGA_ANIMATED_ADBOARD-PACK_FL26_2026.part5.rar.html")[part5].], [Download all 5 parts to one folder, extract from part1 with WinRAR/7-Zip. Copy the adboard folder to `livecpk\`. Add its `cpk.root` to `sider.ini` after Essentials adboards. Disable/remove older static/animated adboard mods to avoid overrides.],
    [DN7 FIFA World Cup 2026 Full Kits Pack], [All 48 WC teams (+ non-qualifiers): kits, fonts/numbers, shorts/socks, WC hierarchy folders, PANDURO badge-server sleeve badges, referee kits. By DN7 + KitManCal, byBAU, Hawke, PANDURO et al. (corroborated: Kazemario + pesmodding + showcases). WC-tournament use; does not replace club kitpacks. Available at #link("https://www.kazemario.com/2026/06/pes-2021-fifa-world-cup-2026-kitpack.html")[kazemario.com].], [Install per the pack's KitServer instructions (`content\kit-server\` + map.txt alignment for the WC hierarchy).],
    [Kitpack FIFA WC 2026 Update v3 (newer)], [Newest WC kitpack (Aug 2026, All Makers, PES2021 + FL26 compatible): complete WC NT kits. WC-tournament use; does not replace club kitpacks. Available at #link("https://pes-files.com/pes-2021-kitpack-fifa-wc-2026-update-v3/")[pes-files.com].], [Install per the pack's KitServer instructions. Prefer over the June DN7 pack above.],
  ),
  caption: [Layer 18 — Kits & Adboards]
)

#strong[Kit load order:] The Essentials Mod Pack (Layer 3) and Mega Kitpack V2 (Layer 14) already provide substantial kit coverage. Place Karjan's V16 kitpack last in the CPK root chain so it overrides older kits with 2026/27 designs. For adboards: the Mega pack covers league play; the WC boards below are competition-specific and coexist without conflicts.

=== Layer 19 — Audio Additions

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Realistic Chants Pack 2026], [Team-specific chants for England, Argentina, Spain, France, and Italy. Sider module. 2026-season coverage via All Makers (Apr 2026). Available at #link("https://pes-files.com/pes-2021-realistic-chants-pack-season-2026/")[pes-files.com].], [Enable in `sider.ini` with `lua.module = "chants.lua"`. Copy chant audio files to the Sider module's designated directory.],
    [Player Enhanced Foul Voices], [Player reaction voice samples for fouls — adds grunts, shouts, and protests on heavy tackles. Unversioned. Available at #link("https://pes-files.com/pes-2021-player-enhanced-foul-voices/")[pes-files.com].], [Copy to matching Sider `livecpk` folder.],
    [Mariano Closs V5.6 (TheViper12)], [Spanish-language commentary by Mariano Closs (Aug 2026): +6 phrases, 1,526 callnames, WC2026 intro. Universal Sider/CPK version, no previous versions required. Available at #link("https://pes-files.ru/pes_2021_mariano_closs_v5_6")[pes-files.ru].], [Copy `Mariano Closs V5` to `livecpk\`. Add `cpk.root = ".\livecpk\Mariano Closs V5"` to `sider.ini`. After install, select Spanish under System Settings > Language > Commentary. This replaces English commentary entirely — not a mix.],
    [Real Atmosphere Announcer Stadium], [Stadium PA announcer: goal calls, substitution announcements, added time declarations. Unversioned. Available at #link("https://pes-files.com/pes-2021-real-atmosphere-announcer-stadium-update/")[pes-files.com].], [Copy to matching Sider folders. Works through SoundServer's ambient channel — ensure SoundServer (Layer 2) is installed and active.],
  ),
  caption: [Layer 19 — Audio Additions]
)

#strong[Audio coexistence:] The Mariano Closs commentary is a complete replacement for English commentary — install one, not both. The Stadium Announcer operates through SoundServer's ambient audio channel and complements all other audio mods.

=== Layer 20 — Immersion & Visuals

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Cutscenes VAR 2026 (v0.1 Fix)], [VAR review cutscenes (maiconcosta222, Aug 2026 — uninstall old Scenes 1.1 first, Fix contains all prior content). #strong[Do not combine with any other scene mod.] Sider-root Scenes layout (NOT `livecpk`): `cpk.root` Scenes + `GoalScenes.lua` + `FoulScenes.lua` per readme. Available at #link("https://pes-files.com/pes-2021-cutscenes-var-season-2026/")[pes-files.com].], [Install per the pack readme (Sider-root Scenes layout).],
    [Dynamic Penalty Camera 2026], [Dynamic camera angles — random per match. Overwrites `nesalib.lua` (say yes, but back it up first). FL path: `penaltycam.lua` module in `SiderAddons/modules`. Available at #link("https://pes-files.com/pes-2021-dynamic-penalty-camera-update-2026/")[pes-files.com].], [Back up `nesalib.lua`, install per readme, enable the penalty-cam module in `sider.ini`.],
    [New Menu PES Street 27], [Lightweight single-theme menu (fan-made street aesthetic, Aug 2026). For the full 2026/27 competition-mapped menu server, prefer Menu Server AIO below. Either/or — never both. Available at #link("https://pes-files.com/pes-2021-new-menu-pes-street-27/")[pes-files.com].], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\menu-pes-street\`). Add `cpk.root = ".\livecpk\menu-pes-street"` to `sider.ini`. Only one menu system active.],
    [Menu Server AIO 2026/27 (recommended)], [Full 2026/27 menu server (All Makers, Sep 2026). Installs over JEMP Menu Server Max AIO 2025/26. Available at #link("https://pes-files.com/pes-2021-menu-server-aio-season-2026-27/")[pes-files.com]. Either this OR PES Street above — never both.], [Install per readme over the JEMP base. Only one menu system active.],
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
