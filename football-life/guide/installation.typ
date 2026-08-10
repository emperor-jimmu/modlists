=== Base Game Installation

Download SP Football Life 2026 from the official SmokePatch site at #link("https://www.pessmokepatch.com/")[pessmokepatch.com]. The game ships as a standalone installer — no PES 2021 purchase or installation is required.

#figure(
  table(
    columns: (auto, auto, 3fr),
    table.header([Component], [Version], [Installation]),
    [SP Football Life 2026], [v2.0], [Download `SPFL26_xxx.exe` from the SmokePatch site (filename varies by release wave — check the current download page). Run the installer to an unprotected directory.],
    [FL26 Update], [v2.2 — May 2026], [Apply after the base game. Download and run the update installer; point it to the same FL26 root directory.],
  ),
  caption: [Base Game Components]
)

#strong[Installation path:] Avoid `C:\Program Files` and `C:\Program Files (x86)`. Windows UAC virtualization interferes with Sider module loading, `livecpk` path resolution, and runtime asset injection. Use a short root path — for example, `D:\FL26` or `C:\Games\FL26`.

#strong[Verification:] After installation, launch `FL 26.exe` once. Confirm the game boots to the main menu. This generates configuration files, initializes the save directory in `Documents\KONAMI\`, and confirms your system meets the runtime requirements. Exit before installing mods.

#strong[Directory Anatomy:]
The FL26 root contains these directories relevant to the mod stack:

- `Sider\` — Sider Lua modules. Copy each `.lua` module here and enable it in `sider.ini`.
- `livecpk\` — Live CPK root. Mods placed in subdirectories here are loaded at runtime via `cpk.root` entries.
- `content\` — Structured content root for stadiums, faces, and large asset packs.
- `SiderAddons\` — Some community mod bundles unpack content here; merge with existing directories when prompted.
- `sider.ini` — Core configuration file controlling module loading (`lua.module`), CPK roots (`cpk.root`), and startup behavior. Covered in detail in the Sider Configuration chapter.

#strong[Launch order:] Start the game through `sider.exe`, not `FL 26.exe`. Sider injects all mod content before handing off to the game process.

=== Layer 1 — English Commentary

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [English Commentary v9], [Peter Drury & Jim Beglin. Released March 2026. Downloaded from the SmokePatch Match Commentaries page at #link("https://www.pessmokepatch.com/")[pessmokepatch.com].], [Run the `.exe` installer and point it to your FL26 root directory. After installation, launch the game and select English commentary under System Settings > Language.],
  ),
  caption: [Layer 1 — Commentary]
)

=== Layer 2 — Audio Framework & Atmosphere

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [SoundServer], [Audio mixing framework by nesa24 (JUCE-based). Controls crowd volume, referee calls, announcer levels, and ambient stadium atmosphere independently. Sourced from #link("https://evoweb.uk/")[EvoWeb] — search "SoundServer nesa24".], [Place the SoundServer Lua module in `Sider\`. Enable in `sider.ini` with `lua.module = "SoundServer.lua"`. Configure levels in-game via the Sider overlay.],
    [Predator002 Chant Pack V8], [Thousands of team-specific chants plus ChantsBase ambient crowd audio. Player-specific chants included. V8 / V8.1 confirmed active August 2026. Sourced from #link("https://evoweb.uk/")[EvoWeb] — search "Predator002 chants".], [Extract to `livecpk\preds-root\`. Add `cpk.root = ".\livecpk\preds-root"` to your `sider.ini`.],
    [Referee Whistle Mod], [High-fidelity whistle replacement samples. Unversioned; confirmed active August 2026. Sourced from #link("https://evoweb.uk/")[EvoWeb] — search "referee whistle".], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\referee-whistle\`). Add `cpk.root = ".\livecpk\referee-whistle"` to `sider.ini`.],
    [Atmosphere / Stadium Sound Overhaul], [Goal reactions, jeers, momentum crowd swells, and dynamic stadium ambiance. Unversioned; confirmed active August 2026. Sourced from #link("https://evoweb.uk/")[EvoWeb] — search "atmosphere sound overhaul".], [Extract to a subdirectory under `livecpk\` (e.g. `livecpk\atmosphere-overhaul\`). Add `cpk.root = ".\livecpk\atmosphere-overhaul"` to `sider.ini`.],
  ),
  caption: [Layer 2 — Audio Framework & Atmosphere]
)

#strong[Volume tuning:] In-game, set Commentary to 10–12 in the audio settings. Balance Stadium Sound against Commentary to preference — the Atmosphere Overhaul and Predator002 packs drive the stadium mix, so keep crowd channels high. Use SoundServer's Sider overlay for fine-grained per-channel adjustment.

=== Layer 3 — Visual Foundation

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Essentials Mod Pack (SPFL 26)], [Community-curated all-in-one bundle: balls, scoreboards, adboards, kit server, entrance scenes, and core visual assets. Confirmed active August 2026. Sourced from #link("https://evoweb.uk/")[EvoWeb] — thread "SPFL 26 Essentials Mod Pack".], [Extract the archive into your FL26 root directory. When prompted, merge `SiderAddons\` with the existing folder — this populates `livecpk` roots and Sider modules. The pack includes pre-configured `cpk.root` entries; verify they appear in your `sider.ini`.],
  ),
  caption: [Layer 3 — Visual Foundation]
)

This pack is the recommended visual baseline. It installs several community standards (ball server, kit server, scoreboard selector) that later layers expect to be present. Do not skip this layer.

=== Layer 4 — Faces

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [SmokePatch Facepack AIO], [Over 14,500 player faces. Includes the initial pack plus Updates 1 through 4. Downloaded from the SmokePatch Real Faces FL26/27 page at #link("https://www.pessmokepatch.com/")[pessmokepatch.com].], [Extract the base facepack to `content\faces\`. Apply Updates 1–4 sequentially, overwriting when prompted. Add `cpk.root = ".\content\faces"` to your `sider.ini`. The facepack is large — allocate 20+ GB of free disk space for extraction and staging.],
  ),
  caption: [Layer 4 — Faces]
)

The SmokePatch Facepack is the recommended face source for FL26: it is maintained by the same team that ships the base game, ensuring version compatibility. Community face packs may introduce conflicts with FL26 roster IDs — prefer this pack unless you have a specific reason to use an alternative.

=== Layer 5 — Stadiums

#figure(
  table(
    columns: (auto, 2fr, 2fr),
    table.header([Mod], [Details], [Install]),
    [Stadium Server], [Sider module for per-team and per-league stadium assignment. Unversioned; confirmed active August 2026. Sourced from #link("https://evoweb.uk/")[EvoWeb] — search "Stadium Server sider".], [Place the Stadium Server Lua module in `Sider\`. Enable in `sider.ini` with `lua.module = "StadiumServer.lua"`. Configure assignments in `map_teams.txt` — see the Sider Configuration chapter.],
    [AIO Stadium Pack], [High-resolution stadiums, adboards, and tunnel scenes for the 2025/26 season. Sourced from #link("https://evoweb.uk/")[EvoWeb] — search "AIO Stadium Pack FL26".], [Extract to `content\stadium-server\`. The pack includes pre-configured `map_teams.txt` entries — merge or replace as needed. Large download; allocate 50+ GB free space.],
  ),
  caption: [Layer 5 — Stadiums]
)

The Stadium Server is the prerequisite module; the AIO Stadium Pack supplies the actual stadium data. Install the server first, confirm it loads (check the Sider overlay in-game), then install the stadium pack. Do not configure `map_teams.txt` until both are installed and the server module is verified active.
