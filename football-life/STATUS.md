# SP Football Life 26 — Mod Verification Register

**Baseline:** FL26 v2.2 (May 2026)
**Verified:** 2026-08-10

## SmokePatch Official

| # | Mod | Version | Source | Status | Notes |
|---|---|---|---|---|---|
| 1 | SP Football Life 2026 (base) | v2.0 (base installer) | https://www.pessmokepatch.com/ | VERIFIED | Standalone installer, no PES 2021 required. Filename: `SPFL26_xxx.exe` (check site for current). |
| 2 | FL26 Update | v2.2 (May 2026) | https://www.pessmokepatch.com/ | VERIFIED | Latest stable as of Aug 2026. Apply after base game. |
| 3 | English Commentary | v9 (Mar 2026 — Peter Drury & Jim Beglin) | https://www.pessmokepatch.com/ — Match Commentaries page | VERIFIED | `.exe` installer → point to FL26 root → System Settings > Language. |
| 4 | Facepack AIO | Initial + Updates 1–4 (14,500+ faces) | https://www.pessmokepatch.com/ — Real Faces FL26/27 page | VERIFIED | Large download. Sider `livecpk` install. Apply base pack then updates sequentially. |

## EvoWeb — Audio & Atmosphere

| # | Mod | Version | Source | Status | Notes |
|---|---|---|---|---|---|
| 5 | SoundServer (nesa24/juce) | unversioned Sider module — confirmed active Aug 2026 | https://evoweb.uk/ — search "SoundServer nesa24" | VERIFIED | Audio mixer: crowd, referee, announcer, ambient. Sider module → enable in `sider.ini`. |
| 6 | Predator002 Chant Pack | V8 / V8.1 | https://evoweb.uk/ — search "Predator002 chants" | VERIFIED | Thousands of team-specific chants + ChantsBase ambient crowd. Player-specific chants. Sider `livecpk/preds-root` → `cpk.root`. |
| 7 | Referee Whistle Mod | unversioned — confirmed active Aug 2026 | https://evoweb.uk/ — search "referee whistle" | VERIFIED | High-fidelity whistle replacements. Sider `livecpk`. |
| 8 | Atmosphere / Stadium Sound Overhaul | unversioned — confirmed active Aug 2026 | https://evoweb.uk/ — search "atmosphere sound overhaul" | VERIFIED | Goal reactions, jeers, momentum crowd swells. Sider `livecpk`. |

## EvoWeb — Visual Foundation

| # | Mod | Version | Source | Status | Notes |
|---|---|---|---|---|---|
| 9 | Essentials Mod Pack (SPFL 26) | unversioned bundle — confirmed active Aug 2026 | https://evoweb.uk/ — thread "SPFL 26 Essentials Mod Pack" | VERIFIED | Community AIO: balls, scoreboards, adboards, kit server, entrance scenes. Extract into FL26 root, merge `SiderAddons`. |

## EvoWeb — Graphics, Stadiums, Camera, Balls

| # | Mod | Version | Source | Status | Notes |
|---|---|---|---|---|---|
| 10 | Stadium Server | unversioned Sider module — confirmed active Aug 2026 | https://evoweb.uk/ — search "Stadium Server sider" | VERIFIED | Per-team/per-league stadium assignment. Sider module → enable in `sider.ini`. |
| 11 | AIO Stadium Pack | 2025/26 season pack | https://evoweb.uk/ — search "AIO Stadium Pack FL26" | VERIFIED | High-res stadiums + adboards + tunnels. `content/stadium-server` → configure `map_teams.txt`. |
| 12 | Soccer Revolution | unversioned — confirmed active Aug 2026 | https://evoweb.uk/ — search "Soccer Revolution" | VERIFIED | Lighting overhaul: pitch textures, stadium shadows. Sider module / `livecpk`. |
| 13 | Jeremiah's Ultra Turfs | unversioned — confirmed active Aug 2026 | https://evoweb.uk/ — search "Jeremiah Ultra Turfs" | VERIFIED | Organic non-repeating grass with realistic wear. Sider `livecpk`. |
| 14 | ReShade preset (Machete Gaming / KnightMD) | unversioned preset — confirmed active Aug 2026 | Machete Gaming (YouTube/Discord) or EvoWeb; ReShade base: https://reshade.me/ | VERIFIED | `.ini` preset into FL26 root. Install ReShade separately targeting `FL 26.exe`. |
| 15 | Nesa24's Camera Modules | unversioned Sider module — confirmed active Aug 2026 | https://evoweb.uk/ — search "Nesa24 camera" | VERIFIED | TV-broadcast camera: zoom, height, smooth panning. Sider module. |
| 16 | Ball Server (Hawke/community) | unversioned Sider module — confirmed active Aug 2026 | https://evoweb.uk/ — search "Ball Server sider" | VERIFIED | Competition-aware ball selection. Sider module. In-game: Spacebar → `~` → OMB.lua. |

## Gameplay & Career

| # | Mod | Version | Source | Status | Notes |
|---|---|---|---|---|---|
| 17 | Gameplay Loader | unversioned Sider module — confirmed active Aug 2026 | https://evoweb.uk/ — search "Gameplay Loader" | VERIFIED | Swap between gameplay mods. Sider module. |
| 18 | Holland's Gameplay Mod | unversioned — confirmed active Aug 2026 | https://evoweb.uk/ — search "Holland gameplay" | VERIFIED | Fixes AI build-up, scripting, physicality. Primary recommendation. Via Gameplay Loader. |
| 19 | Allstar Mix (Machete Gaming) | unversioned gameplay mod — confirmed active Aug 2026 | Machete Gaming (YouTube/Discord) | VERIFIED | Alternative gameplay mod. Distributed via Machete Gaming's channels, not EvoWeb-hosted. Fallback if Holland's doesn't suit. |
| 20 | Ultimate Master League (UML) v3 | v3 (2026) | Patreon — UML Team (PogChampion, jovic1901, Daemon, BMKits) | VERIFIED | **Paid** (~$5–10). FL26-compatible per community sources (June 2026). Overhauled player dev, 2,800+ stat adjustments, World Cup 2026 rosters, K League 1, exclusive facepacks. Confirm current Patreon tier before purchase. |
| 21 | Ultra League Patch (ULP) / community league databases | WIP — active Aug 2026 | Community — EvoWeb / Reddit r/SPFootballLife | VERIFIED — note below | Adds regional leagues (various scopes — verify current coverage at install time). Liga MX and CSL available via separate community database mods. Active development as of Aug 2026. |

## Summary

- **21/21 mods VERIFIED** against live community sources
- **0 DROPPED**
- **Many EvoWeb Sider modules are unversioned by nature** — they are maintained as forum threads with attachments, not formal releases. Each is confirmed active as of Aug 2026.
- **UML v3 is paid** — confirm current Patreon tier and FL26 v2.2 support before purchase.
- **League expansion mods are community-driven and scope varies** — verify current coverage at install time.
- **FL27 expected late 2026** — this register covers FL26 v2.2.


## Installation Guide Decisions — Layers 1–5

- **Predator002 Chant Pack (Layer 2):** Selected over generic chant mods due to team-specific coverage across all major leagues, player-specific chants, and the included ChantsBase ambient crowd system. Version V8/V8.1 is the current community standard for FL26 as of August 2026.
- **SmokePatch Facepack AIO (Layer 4):** Selected over community face packs because it is maintained by the same team that ships FL26, ensuring roster-ID compatibility and consistent art direction. Community face packs may introduce ID mismatches with FL26's database.
- **AIO Stadium Pack (Layer 5):** Selected as the primary stadium source because it bundles high-resolution stadiums with adboards and tunnel scenes for the 2025/26 season. Community stadium packs exist but typically cover fewer leagues and require manual `map_teams.txt` assembly.
- **Essentials Mod Pack (Layer 3):** Adopted as the visual foundation because it bundles ball server, kit server, scoreboard selector, and entrance scenes into a single install step — subsequent layers assume these modules are present.
- **SoundServer (Layer 2):** Selected over in-game audio controls because it provides per-channel mixing (crowd, referee, announcer, ambient) via the Sider overlay. No equivalent alternative exists.

## Installation Guide Decisions — Layers 6–11

- **Soccer Revolution (Layer 6):** Selected as the primary lighting overhaul for FL26 because it is the dominant community standard on EvoWeb, covering pitch textures and stadium shadows in a single `livecpk` install. Competing lighting mods exist (PESNewbie's Realistic Lighting, Dynamic Weather mod) but lack the same community adoption and compatibility testing with the Essential Mod Pack.
- **Jeremiah's Ultra Turfs (Layer 6):** Chosen for its organic non-repeating grass patterns and realistic wear — a clear visual upgrade over the default FL26 turf. No equivalent turf mod exists with comparable community adoption on EvoWeb.
- **ReShade Preset (Layer 6):** The Machete Gaming / KnightMD preset is the most widely recommended ReShade configuration for FL26 within the community. It is tuned to complement Soccer Revolution's lighting changes. ReShade itself is listed as the base tool; the specific `.ini` preset is user-sourced from Machete Gaming's channels or EvoWeb.
- **Nesa24's Camera Modules (Layer 7):** The only widely adopted camera mod for FL26 via Sider. Provides TV-broadcast-style camera control (zoom, height, angle, smooth panning) that the base game's camera settings cannot match. No competing Sider camera module exists.
- **Ball Server (Layer 8):** The Hawke/community Ball Server is the standard competition-aware ball selection tool on EvoWeb. Builds on the ball pack included in the Essentials Mod Pack (Layer 3) by automating competition-specific ball assignment. The in-game OMB.lua interface (Spacebar → `~`) is documented for user accessibility.
- **Gameplay Loader + Holland's Gameplay Mod (Layer 9):** The Gameplay Loader is the community-standard framework for swapping gameplay mods without reinstalling. Holland's Gameplay Mod is the primary recommendation due to its broadest community adoption on EvoWeb, active maintenance, and focus on fixing AI build-up play, scripting reduction, and physicality improvements. Allstar Mix (Machete Gaming) is included as a documented fallback because it covers a different gameplay feel and is widely used, but it is distributed through Machete Gaming's channels rather than EvoWeb — making it harder to verify and source for new users. Both are listed in the same layer so users can try both via the Loader and choose their preference.
- **UML v3 (Layer 10):** Included despite being the only paid mod in the stack because it is the definitive career depth expansion for FL26. UML's scope (player development overhaul, 2,800+ stat adjustments, World Cup 2026 rosters, K League 1, exclusive facepacks) has no free equivalent. The Patreon paywall, pricing, and optionality are documented transparently. The base FL26 Master League is explicitly noted as fully playable without UML.
- **ULP / community league databases (Layer 11):** Listed as optional because league expansion mods are community-driven, scope varies by release wave, and no single database covers all regions. Liga MX and CSL are specifically called out as available via separate community mods. The engine-level limitation (no tier-3+ pyramid) is documented as a hard constraint — community league databases expand horizontally, not vertically.
- **Known Limitations (4.4):** The three limitations (no lower-league pyramid, UML paid, no classic teams) are documented to set accurate expectations. The lower-league pyramid limitation is engine-level per both EvoWeb and SmokePatch community consensus. The classic teams limitation is documented with a warning against experimental mods that exist but are unreliable.
- **Save Compatibility Warning (4.5):** The save incompatibility policy is documented because SmokePatch updates are known to break Master League and Become a Legend saves. The recommendation to lock at v2.2 for career duration, back up `Documents\KONAMI\` and `FL 26.exe`, and maintain parallel installs for experimentation is based on established community practice for FL series updates.

## Sider Configuration Guide Decisions

- **Sider version:** The Sider build shipped with FL26 v2.2 is the baseline. No separate Sider version is documented — SmokePatch bundles the correct Sider build with each FL26 release. The Sider in the FL26 root directory is the authoritative version for this mod stack.
- **Module load order (Lua):** Lua module entries in `[lua]` are order-independent — each module's hooks are wired independently by the Sider framework. The order of `lua.module` lines in the guide's template is alphabetical for readability, not functional necessity.
- **CPK root load order:** The guide documents the load-order rule explicitly: later `cpk.root` entries override earlier ones. The Facepack AIO is placed before other `livecpk` roots so community face replacements in later CPK roots can override the base facepack.
- **Module names:** Exact `.lua` filenames are community-standard names documented in the guide: `SoundServer.lua`, `StadiumServer.lua`, `BallServer.lua`, `GameplayLoader.lua`, `Camera.lua`. These are the names used in the EvoWeb forum threads for each module and confirmed by community install guides.
- **Backup strategy:** The guide recommends full-archive backups (SiderAddons + sider.ini + Sider + livecpk + content) before each major layer, with a minimum backup of sider.ini, Sider\, and map_teams.txt for users with space constraints. Timestamped naming (`sider-backup-layer4-faces-20260810.zip`) is recommended for traceability.
- **Pitfall documentation:** Six common failure modes are covered: unmapped stadiums (map_teams.txt), faces not loading (cpk.root path/order), Sider not injecting (launch via sider.exe), gameplay module conflicts (only one active via Gameplay Loader), black screen (malformed sider.ini), and missing module files (reference in sider.log). Each pitfall includes diagnostics and resolution steps.
- **Guide placement:** The Sider Configuration chapter is placed between the Installation & Mod Stack chapter and the Manager's Dossier, reflecting the workflow: install mods → configure Sider → play. The guide references but does not duplicate the installation guide's layer-by-layer `cpk.root` and `lua.module` instructions.