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