=== How Sider Works

Sider is a runtime injection framework for PES 2021 / FL26. It loads #emph[before the game] and patches the game's memory-space to insert custom assets — stadiums, faces, audio files, gameplay tweaks, and camera modules — without modifying the game's original files.

This matters because FL26 ships with over 20 GB of bundled content in `.cpk` archives. Sider layers community content #emph[on top of] that archive, respecting load order so mods can selectively override specific assets without unpacking or replacing dozens of gigabytes of stock data.

The framework is Lua-scriptable: modules can hook into in-game events, present overlay menus, and react to match state. The Stadium Server, for example, reads the match fixture at kickoff, looks up the home team in its `map_teams.txt`, and injects the corresponding stadium model before the game engine finishes loading.

#strong[To use Sider:] launch the game via `FL_2026 start.exe`, never `FL 26.exe`. If you launch through the game executable directly, Sider never loads and none of the installed mods are injected.

=== The `sider.ini` File

`sider.ini` lives in the FL26 root directory and controls every aspect of Sider's behavior at startup. It is a plain-text INI file with sections delimited by `[section]` headers. Two sections matter for this mod guide: `[lua]` and `[cpk]`.

== `+[lua]` — Module Registration

Each `lua.module` line loads a Sider Lua module at startup. Modules are read from the `Sider\` directory. The order of entries #emph[does not matter — with one exception:] library modules must load before the modules that need them (`lib\nesalib.lua` before `BroadCastCam.lua`; `lib\CommonLib.lua` before `BallServer.lua`). Keep libraries at the top of the `[lua]` section and everything else can follow in any order.

#figure(
  table(
    columns: (auto, auto, 2fr),
    table.header([Module], [Entry], [What It Does]),
    [SoundServer], [`lua.module = "SoundServer.lua"`], [Per-channel audio mixer — crowd, referee, announcer, ambient. Open in-game via Sider overlay to balance levels.],
    [Stadium Server], [`lua.module = "StadiumServer.lua"`], [Per-team / per-league stadium assignment. Reads `SiderAddons\content\stadiums\map_teams.txt` at kickoff and injects the correct stadium.],
    [Ball Server], [`lua.module = "lib\CommonLib.lua"` then `lua.module = "BallServer.lua"`], [Competition-aware ball selection. CommonLib must load first. In-game access: Spacebar → `~` → OMB.lua.],
    [Gameplay Loader], [`lua.module = "GameplayLoader.lua"`], [Swaps between gameplay mods without file replacement. Only one gameplay mod active at a time.],
    [Camera], [`lua.module = "lib\nesalib.lua"` then `lua.module = "BroadCastCam.lua"`], [TV-broadcast camera tuning: zoom, height, smooth panning. Nesa24's camera modules — nesalib must load first.],
  ),
  caption: [Lua Modules — Our Stack]
)

This section also carries the master enable switch:

```ini
[lua]
lua.enabled = 1
```

If `lua.enabled` is set to `0`, no Lua modules load — even if they have `lua.module` entries below. Sider boots but injects nothing. This is useful for debugging: set it to `0` temporarily to isolate whether a problem is mod-related.

== `+[cpk]` — Live CPK Roots

Each `cpk.root` line registers a filesystem directory that Sider scans and overlays onto the game's virtual CPK archive. The directory must contain assets in the game's internal folder structure (e.g., `common\render\model\player\face\real` for face files).

#strong[Order matters.] The game resolves conflicts the same way a file system resolves overlapping mounts: a later `cpk.root` declaration overrides an earlier one. If two CPK roots both supply `common\render\model\player\face\real\12345\face.fpk`, the file from the #emph[last] matching `cpk.root` wins.

This is the opposite of how many game mod managers work (loose files override archives). In Sider, later entries are higher priority. Use this intentionally: put your base asset packs early and your fine-tuning overrides later.

```ini
[cpk]
cpk.root = ".\livecpk\preds-root"
cpk.root = ".\livecpk\referee-whistle"
cpk.root = ".\livecpk\atmosphere-overhaul"

```

Complete `sider.ini` template for this mod stack:

#figure(
  table(
    columns: (auto, 2fr),
    table.header([Entry], [Purpose]),
    [`lua.enabled = 1`], [Master enable switch for all Lua modules.],
    [`lua.module = "lib\CommonLib.lua"`], [Library — must load before BallServer.],
    [`lua.module = "lib\nesalib.lua"`], [Library — must load before BroadCastCam.],
    [`lua.module = "SoundServer.lua"`], [Audio mixing framework — volume control per channel.],
    [`lua.module = "StadiumServer.lua"`], [Stadium assignment per team and league.],
    [`lua.module = "BallServer.lua"`], [Competition-aware ball selection.],
    [`lua.module = "GameplayLoader.lua"`], [Gameplay mod switcher — activate one mod at a time.],
    [`lua.module = "BroadCastCam.lua"`], [Camera tuning modules by nesa24.],
    [`cpk.root = ".\livecpk\preds-root"`], [Predator002 Chant Pack V8 — team-specific chants + ChantsBase ambient crowd.],
    [`cpk.root = ".\livecpk\referee-whistle"`], [Referee Whistle Mod — high-fidelity whistle samples.],
    [`cpk.root = ".\livecpk\atmosphere-overhaul"`], [Atmosphere / Stadium Sound Overhaul — goal reactions, jeers, crowd swells.],
    [—], [#strong[Facepack:] Mega Facepack V4/V5 installs to `download\` — no `cpk.root` entry needed. FL26 reads faces directly from the `download` folder at startup. #emph[Remove any old `cpk.root = ".\content\faces"` line if migrating from the SmokePatch facepack.]],
  ),
  caption: [Complete `sider.ini` — Our Mod Stack]
)

#strong[Why faces load from `download` folder:] The Football4Life facepacks (Mega Facepack V4/V5 and Facepack v2) install to the `SP Football Life 26\download\` directory, which FL26 reads natively at startup — no `cpk.root` entry is required. If you are migrating from the old SmokePatch Facepack AIO, remove the `cpk.root = ".\content\faces"` line from your `sider.ini` and delete the `content\faces\` folder to free disk space.

=== Common Pitfalls

#strong[Unmapped stadiums:] If a team plays at a generic stadium instead of its real-world ground, the Stadium Server's `map_teams.txt` is missing or outdated for that team. Check `SiderAddons\content\stadiums\map_teams.txt`. Each line maps a team ID to a stadium folder: `128, 009, Stamford Bridge, Chelsea\`. The file format is team ID, stadium ID, stadium name, stadium folder path — one line per assignment.

#strong[Faces not loading:] Faces install to `SP Football Life 26\download\` — there is no `cpk.root` entry for faces, so a missing `cpk.root` is never the cause. Check: (a) the pack was extracted to `download\` (not a nested subfolder); (b) `01_smkdb_fa7.cpk` (SmokePatch) or the facepack folders are directly in `download\`; (c) no stale `cpk.root = ".\content\faces"` line from a SmokePatch migration is present — remove it if so. See the faces note above.

#strong[Sider not injecting:] The game is being launched through `FL 26.exe` instead of `FL_2026 start.exe`. The launcher must be the parent process so Sider can initialize. If you are using a desktop shortcut, edit the shortcut target to point to `FL_2026 start.exe`, not the game executable. If you run the game through a launcher (Steam, Playnite), configure it to launch `FL_2026 start.exe`.

#strong[Module conflicts — gameplay mods:] Realism Gameplay V12 installs as a Sider `livecpk` overlay with multiple Lua modules — it does not use the Gameplay Loader. AI Manager v2 runs as a standalone Lua module alongside it without conflicts. The Gameplay Loader remains available for testing other `.dt`-based gameplay mods. Only one `.dt`-based gameplay mod can be active via the Gameplay Loader at a time — the second activation replaces the first. In-game via the Sider overlay: Spacebar to open the overlay, navigate to Gameplay Loader, pick one. This setting persists across sessions.

#strong[Black screen on launch:] A malformed `sider.ini` entry can prevent the game from starting. Most common culprit: a `cpk.root` or `lua.module` line with a backslash instead of a forward slash in a path. Sider expects Windows-style paths (`.\livecpk\faces`) and Lua-style dot separators for modules (`StadiumServer.lua`). If you see a black screen with no error, rename or remove `sider.ini` temporarily and confirm the game boots without it — then rebuild the file entry by entry to isolate the bad line.

#strong[Missing module file:] If a `lua.module` entry references a `.lua` file that does not exist in `Sider\`, Sider logs the error to its console and skips that module. The game still boots. Check `sider.log` in the FL26 root for module load errors.

=== Backup Strategy

A broken `sider.ini` can cost you an evening of troubleshooting. A working `sider.ini` is a precious artifact. Treat it accordingly.

#strong[Before each major layer] of the installation guide, create a snapshot:

```sh
# In your FL26 root directory
# Before Layer N:
7z a sider-backup-layerN.zip sider.ini SiderAddons\ Sider\ livecpk\ content\
```

This zips the entire mod-loading infrastructure — Sider configuration, all module files, and every `livecpk`/`content` root — into one archive. If a later layer breaks something, restore:

```sh
7z x sider-backup-layerN.zip -o." -aoa
```

Use `-aoa` (overwrite all) to force-restore every file to the snapshot state.

#strong[Minimum backup:] If full archives are impractical (the facepack and stadium pack alone exceed 40 GB), back up at least:

- `sider.ini` — the single most valuable file; 2 KB that controls your entire mod stack
- `Sider\` — all Lua module files; under 1 MB
- `SiderAddons\content\stadiums\map_teams.txt` — hours of manual team-to-stadium mapping

#strong[Timestamp and label:] Naming snapshot archives descriptively saves time. Example: `sider-backup-layer4-faces-20260810.zip` tells you exactly what it contains and when it was made. Store snapshots outside the FL26 root directory so they are not accidentally deleted during uninstall or mod cleanup.
