=== How Sider Works

Sider is a runtime injection framework for PES 2021 / FL26. It loads #emph[before the game] and patches the game's memory-space to insert custom assets — stadiums, faces, audio files, gameplay tweaks, and camera modules — without modifying the game's original files.

This matters because FL26 ships with over 20 GB of bundled content in `.cpk` archives. Sider layers community content #emph[on top of] that archive, respecting load order so mods can selectively override specific assets without unpacking or replacing dozens of gigabytes of stock data.

The framework is Lua-scriptable: modules can hook into in-game events, present overlay menus, and react to match state. The Stadium Server, for example, reads the match fixture at kickoff, looks up the home team in its `map_teams.txt`, and injects the corresponding stadium model before the game engine finishes loading.

#strong[To use Sider:] launch the game via `sider.exe`, never `FL 26.exe`. If you launch through the game executable directly, Sider never loads and none of the installed mods are injected.

=== The `sider.ini` File

`sider.ini` lives in the FL26 root directory and controls every aspect of Sider's behavior at startup. It is a plain-text INI file with sections delimited by `[section]` headers. Two sections matter for this mod guide: `[lua]` and `[cpk]`.

== `+[lua]` — Module Registration

Each `lua.module` line loads a Sider Lua module at startup. Modules are read from the `Sider\` directory. The order of entries #emph[does not matter] for Lua modules — each module's hooks are wired independently by the Sider framework.

#figure(
  table(
    columns: (auto, auto, 2fr),
    table.header([Module], [Entry], [What It Does]),
    [SoundServer], [`lua.module = "SoundServer.lua"`], [Per-channel audio mixer — crowd, referee, announcer, ambient. Open in-game via Sider overlay to balance levels.],
    [Stadium Server], [`lua.module = "StadiumServer.lua"`], [Per-team / per-league stadium assignment. Reads `content\stadium-server\map_teams.txt` at kickoff and injects the correct stadium.],
    [Ball Server], [`lua.module = "BallServer.lua"`], [Competition-aware ball selection. In-game access: Spacebar → `~` → OMB.lua.],
    [Gameplay Loader], [`lua.module = "GameplayLoader.lua"`], [Swaps between gameplay mods without file replacement. Only one gameplay mod active at a time.],
    [Camera], [`lua.module = "Camera.lua"`], [TV-broadcast camera tuning: zoom, height, smooth panning. Nesa24's camera modules.],
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
cpk.root = ".\content\faces"
```

Complete `sider.ini` template for this mod stack:

#figure(
  table(
    columns: (auto, 2fr),
    table.header([Entry], [Purpose]),
    [`lua.enabled = 1`], [Master enable switch for all Lua modules.],
    [`lua.module = "SoundServer.lua"`], [Audio mixing framework — volume control per channel.],
    [`lua.module = "StadiumServer.lua"`], [Stadium assignment per team and league.],
    [`lua.module = "BallServer.lua"`], [Competition-aware ball selection.],
    [`lua.module = "GameplayLoader.lua"`], [Gameplay mod switcher — activate one mod at a time.],
    [`lua.module = "Camera.lua"`], [Camera tuning modules by nesa24.],
    [`cpk.root = ".\livecpk\preds-root"`], [Predator002 Chant Pack V8 — team-specific chants + ChantsBase ambient crowd.],
    [`cpk.root = ".\livecpk\referee-whistle"`], [Referee Whistle Mod — high-fidelity whistle samples.],
    [`cpk.root = ".\livecpk\atmosphere-overhaul"`], [Atmosphere / Stadium Sound Overhaul — goal reactions, jeers, crowd swells.],
    [`cpk.root = ".\content\faces"`], [SmokePatch Facepack AIO — 14,500+ player faces. Must load #emph[before] other `livecpk` roots so face overrides elsewhere take priority.],
  ),
  caption: [Complete `sider.ini` — Our Mod Stack]
)

#strong[Why faces load first:] The Facepack AIO entry sits above other `livecpk` roots because face replacements shipped by other mods (e.g., a specific player face in the Essentials Mod Pack) must override the base facepack. If `.\content\faces` were the last entry, the facepack would overwrite every community face replacement — you would see only the AIO faces. By placing it early, community face overrides in later `cpk.root` paths win.

=== Common Pitfalls

#strong[Unmapped stadiums:] If a team plays at a generic stadium instead of its real-world ground, the Stadium Server's `map_teams.txt` is missing or outdated for that team. Check `content\stadium-server\map_teams.txt`. Each line maps a team ID to a stadium folder: `128, 009, Stamford Bridge, Chelsea\`. The file format is team ID, stadium ID, stadium name, stadium folder path — one line per assignment.

#strong[Faces not loading:] Verify the `cpk.root` path to your face pack is correct and present in `sider.ini`. Common causes: (a) the path has a typo — each path must match the actual directory name exactly; (b) the face pack was not extracted to the expected location; (c) a later `cpk.root` with its own face folder is overriding the facepack. See the load order rule above.

#strong[Sider not injecting:] The game is being launched through `FL 26.exe` instead of `sider.exe`. Sider must be the parent process. If you are using a desktop shortcut, edit the shortcut target to point to `sider.exe`, not the game executable. If you run the game through a launcher (Steam, Playnite), configure it to launch `sider.exe` and pass `FL 26.exe` as the working directory.

#strong[Module conflicts — gameplay mods:] The Gameplay Loader allows only one gameplay `.cpk` active at a time. If you try to activate both Holland's Gameplay Mod and Allstar Mix simultaneously through the loader, the second activation replaces the first — they are not additive. In-game via the Sider overlay, select your active gameplay mod: Spacebar to open the overlay, navigate to Gameplay Loader, pick one. This setting persists across sessions.

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
- `content\stadium-server\map_teams.txt` — hours of manual team-to-stadium mapping

#strong[Timestamp and label:] Naming snapshot archives descriptively saves time. Example: `sider-backup-layer4-faces-20260810.zip` tells you exactly what it contains and when it was made. Store snapshots outside the FL26 root directory so they are not accidentally deleted during uninstall or mod cleanup.
