# Part 2 — The Modlist

Every mod in this list was **verified live against its Steam Workshop / Nexus Mods page** on 11 August 2026. Nothing here makes the game easier: the list is built to **modernize** (the real 2026 season), **deepen** (smarter, harder management), **improve the graphics** (HD models, modern cars, liveries, logos, post-processing), and **add detail** (real sponsors, flags, track partners, intros).

There are **two profiles** — pick one, they are separate experiences:

| Profile | Experience | Verdict |
|---------|-----------|---------|
| **A — 2026 Season** | The real-world 2026 motorsport season in Motorsport Manager: F1, F2, Eurocup-3, GT-Open, WEC, real calendars, sponsors and intros. | Flagship modernization |
| **B — Rebirth** | Rebirth: Redux — a deep balance and AI overhaul that makes the game noticeably harder and more rewarding. | Deep-dive management |

**Shared graphics** (Enhanced Graphics, Extended Camera) work with both profiles.

---

## 2.1 Profile A — 2026 Season

### A1. 2026 mod — F1 + F2 + Eurocup-3 + GT-Open + WEC *(flagship)*

| Detail | Value |
|--------|-------|
| **Author** | jojorso |
| **Source** | Steam Workshop — [filedetails/?id=3679864343](https://steamcommunity.com/sharedfiles/filedetails/?id=3679864343) |
| **Updated** | 25 Apr 2026 · 2,723 subscribers · ~2.9 GB |
| **Compatibility** | **Patch 1.6 ONLY** — crashes on any other version |
| **Dependencies** | None (bundles an F1 car model from Djangles LeVaughn's pack) |
| **What It Changes** | The biggest modernization available for 1.6. Replaces the game's world with the **real 2026 season**: F1, F2, Eurocup-3, International GT-Open, Iberian SuperCars and WEC championships; real teams, drivers and calendar; real trackside partners (Aramco, DHL, Paramount, Heineken, TAG Heuer); real circuit flags and images; official F1/F2 2026, WEC and Brad Pitt intros; a single-race mode; and three hand-made challenge saves. |
| **Installation** | 1) Subscribe on the Workshop. 2) Optional but recommended — open the mod folder `...\steamapps\workshop\content\415200\3679864343\Extras` and follow the included instructions to install the extra `Resources.assets` / `Championship.txt` files for the full experience (real calendar, intros, single races). **Back up originals first.** 3) Enable the mod in the in-game Steam Workshop tab and start a new game. |

### A2. Motorsport Manager 2026 Season — Vanilla Overhaul Mod *(alternative)*

| Detail | Value |
|--------|-------|
| **Author** | Djangles LeVaughn (with oleksandr_horobets) |
| **Source** | Steam Workshop — [filedetails/?id=3682708186](https://steamcommunity.com/sharedfiles/filedetails/?id=3682708186) |
| **Updated** | 20 Jun 2026 · 1,156 subscribers · ~451 MB |
| **Compatibility** | **Patch 1.6 ONLY** (opt into the 1.6 branch to use it) |
| **Dependencies** | Vanilla Retro/Fantasy Livery Pack (A4) |
| **What It Changes** | A fictional, vanilla-flavored 2026 refresh for players who prefer Motorsport Manager's own world: new regulations, new cars and hybrid systems; WMC and IGTC grow to **11 teams**; IEC gets **10 teams per class**; an updated F2-lookalike grid. |
| **Installation** | 1) Subscribe. 2) Copy the contents of the mod's `MM26_Main_Files` folder (inside `...\steamapps\workshop\content\415200\3682708186\`) into your `MM_Data` folder. 3) In the in-game Workshop tab enable this mod **and** the Vanilla Retro/Fantasy Livery Pack (A4). 4) New game. |

### A3. Djangles LeVaughn's Single Seater Car Pack for 1.6

| Detail | Value |
|--------|-------|
| **Author** | Djangles LeVaughn |
| **Source** | Steam Workshop — [filedetails/?id=3668727211](https://steamcommunity.com/sharedfiles/filedetails/?id=3668727211) |
| **Updated** | 8 Mar 2026 · 2,470 subscribers · ~12 MB |
| **Compatibility** | **Patch 1.6 ONLY** — subscribing on 1.53 crashes the game |
| **Dependencies** | None |
| **What It Changes** | Modernized 3D models for the single-seater classes — the cars look dramatically closer to today's Formula cars than the base-game assets. |
| **Installation** | Subscribe and enable. **Do not** stack it with Profile A1 (which already bundles an F1 model from this pack) — it pairs with the Vanilla Overhaul (A2) path. |

### A4. Vanilla Retro/Fantasy Livery Pack

| Detail | Value |
|--------|-------|
| **Author** | Maian |
| **Source** | Steam Workshop — [filedetails/?id=1249691137](https://steamcommunity.com/sharedfiles/filedetails/?id=1249691137) |
| **Updated** | 13 Jan 2018 · 14,249 subscribers · ~2 MB |
| **Compatibility** | 1.6 OK (database/asset cosmetic) |
| **Dependencies** | None |
| **What It Changes** | 30 retro/fantasy liveries (plus 10 Formula-2-style 2017 liveries) for the vanilla game. Pure cosmetics — activated and toggled in-game in the **Assets** tab, safe on existing saves. |
| **Installation** | Subscribe; enable in-game via the Assets tab. **Not compatible with custom car models** (skip if using car-model mods). Required companion for A2. |

---

## 2.2 Profile B — Rebirth

### B1. Rebirth: Redux

| Detail | Value |
|--------|-------|
| **Author** | Brian (BrianUK) |
| **Source** | Nexus Mods — [motorsportmanager/mods/11](https://www.nexusmods.com/motorsportmanager/mods/11) |
| **Version / Updated** | n23 · 8 Nov 2025 · 87 endorsements · 7,259 downloads |
| **Compatibility** | Current game versions (built for the modern game state; check the mod page/Discord for the latest notes) |
| **Dependencies** | Derivitas (B2) — required for team logos |
| **What It Changes** | The definitive Motorsport Manager overhaul — **more challenge, not less**: the vanilla race AI is replaced with a custom system (desired-lap strategy, attack/defend behavior, weather-aware qualifying, pit-strategy aggression), a new instant-failure reliability model, rebalanced car degradation, and much more. Single Seaters (WMC/APSC/ERS) and Endurance (IEC-A/B) are fully supported; **single-seater races must be run on Long preferences**. |
| **Installation** | 1) Download from Nexus (all 9 files). 2) Paste `Assembly-CSharp.dll` and `Assembly-CSharp-firstpass.dll` into `...\Motorsport Manager\MM_Data\Managed`. 3) Paste `resources.assets` into `...\Motorsport Manager\MM_Data`. 4) Subscribe to Derivitas (B2). 5) Disable all other Workshop mods — Redux is **not compatible** with other mods. 6) New game. |

### B2. Derivitas

| Detail | Value |
|--------|-------|
| **Author** | Derivitas team (Rebirth ecosystem) |
| **Source** | Steam Workshop — [filedetails/?id=3147853996](https://steamcommunity.com/sharedfiles/filedetails/?id=3147853996) |
| **Updated** | 12 Oct 2024 · 1,391 subscribers · ~2 MB |
| **Compatibility** | 1.6 OK (with Rebirth: Redux) |
| **Dependencies** | Rebirth: Redux (B1) |
| **What It Changes** | Rebalanced supplier pool and custom hat/team logos for all Rebirth custom teams, plus fixes for vanilla team logos and custom chairman bodies. **Required** by Redux — without it new teams render with white boxes. |
| **Installation** | Subscribe and keep enabled while running Profile B. |

### B3. Rebirth: Logo Pack

| Detail | Value |
|--------|-------|
| **Author** | The Flaming Red |
| **Source** | Steam Workshop — [filedetails/?id=1188384463](https://steamcommunity.com/sharedfiles/filedetails/?id=1188384463) |
| **Updated** | 6 Nov 2017 · 4,657 subscribers · ~1.6 MB |
| **Compatibility** | 1.6 OK |
| **Dependencies** | Rebirth: Redux (B1) / Derivitas (B2) |
| **What It Changes** | Team logos for the Rebirth rebranding project and supplier logos for the supplier overhaul — completes Profile B's visual identity. |
| **Installation** | Subscribe and enable. |

---

## 2.3 Shared Graphics (both profiles)

### G1. Enhanced Graphics

| Detail | Value |
|--------|-------|
| **Author** | newman55 |
| **Source** | Nexus Mods — [motorsportmanager/mods/3](https://www.nexusmods.com/motorsportmanager/mods/3) |
| **Version / Updated** | v1.2.0a · 5 May 2023 · 817 endorsements · 57,484 downloads |
| **Compatibility** | Current game versions; Unity Mod Manager plugin |
| **Dependencies** | Unity Mod Manager |
| **What It Changes** | The single biggest visual upgrade for the game: HD models for cars and drivers, Subpixel Morphological Anti-Aliasing (SMAA), Temporal Reprojection AA (TRAA), Ambient Occlusion, an alternate Depth-of-Field, and rotating/spinning wheels. |
| **Installation** | Install via UMM (Part 1.4). Toggle individual effects in-game with **Ctrl+F10** (e.g. disable TRAA if you're not at 60 fps). |

### G2. Extended Camera

| Detail | Value |
|--------|-------|
| **Author** | newman55 |
| **Source** | Nexus Mods — [motorsportmanager/mods/1](https://www.nexusmods.com/motorsportmanager/mods/1) |
| **Version / Updated** | v1.0.2 · 15 Jul 2019 · 730 endorsements · 45,442 downloads |
| **Compatibility** | Current game versions; Unity Mod Manager plugin |
| **Dependencies** | Unity Mod Manager |
| **What It Changes** | Adds a free camera (X), sticky camera (C) and hide-UI toggle (H) for race days, plus adjustable zoom and camera-angle limits. You can now watch the racing like a TV broadcast instead of a strategy board. |
| **Installation** | Install via UMM; enable the **expanded camera** option in the game's settings. |

---

## 2.4 Install Order

### Profile A — 2026 Season (flagship)
1. Patch 1.6 confirmed (Part 1.2)
2. **A1 2026 mod** subscribed + Extras files installed (back up originals)
3. **G1 Enhanced Graphics** + **G2 Extended Camera** via UMM
4. Launch → in-game Workshop tab: enable **only** the 2026 mod → New Game

*Alternative (vanilla world):* A2 Vanilla Overhaul + A4 Livery Pack + A3 Car Pack + G1 + G2.

### Profile B — Rebirth
1. Patch 1.6 confirmed
2. **B1 Rebirth: Redux** files placed in `MM_Data\Managed` + `MM_Data` (back up originals)
3. **B2 Derivitas** + **B3 Logo Pack** subscribed
4. **G1 Enhanced Graphics** + **G2 Extended Camera** via UMM *(optional — Redux's "no other mods" rule covers data/logic mods; graphics plugins are render-level, but start a fresh save when testing)*
5. Launch → **disable all other Workshop mods** → New Game, race length **Long**

> Switch profiles cleanly: verify game files (Steam → Properties → Installed Files) to restore vanilla `MM_Data`, then apply the other profile's files.
