# Wave 1: City of Dreams — Mod List

> Roleplaying Theme: You've made a name for yourself. The immigrant who stepped off that boat is gone — now you have enemies, allies, and a reputation. The city is yours for the taking, but the higher you climb, the harder they'll fight to bring you down.

> **Scope:** Graphics, content, and mechanics mods that transform the game into a harder, richer experience. Builds on FusionFix (installed per the installation guide) and Wave 0's lessons.

> **Installation:** Start with a fresh save on a clean GTA IV 1.0.8.0. Install FusionFix first, then mods in the order specified in the installation guide.

---

## Graphics

FusionFix's graphics feature set is this wave's visual layer. It ships inside the framework — no separate ENB or shader pack is required for the baseline look.

### [FusionFix — Graphics](https://github.com/ThirteenAG/GTAIV.EFLC.FusionFix)

| Field | Value |
|-------|-------|
| **Version** | v5.0.1 |
| **Dependencies** | Ultimate ASI Loader (bundled) |
| **System Impact** | Visual quality, performance |

Provides the wave's graphical overhaul: ambient occlusion, tone mapping, restored console colour grading ("Console Gamma"), sun shafts, volumetric fog, FXAA/SMAA anti-aliasing, shadow filtering, an FPS limiter, and an optional Vulkan renderer (via DXVK).

No separate install — enable the options in the in-game FusionFix menu (see `06-fusionfix-config.md`).

### User to provide — texture / visual overhaul

| Field | Value |
|-------|-------|
| **Version** | — |
| **Dependencies** | FusionFix |
| **System Impact** | Visual quality |

Slot for a standalone texture or visual overhaul not covered by FusionFix.

---

## Content

Content mods (vehicles, weapons, map additions, new missions) run as scripts (via IV-SDK .NET) or as archive asset replacements (via OpenIV).

### [IV-SDK .NET](https://github.com/ClonkAndre/IV-SDK-DotNet)

| Field | Value |
|-------|-------|
| **Version** | 1.9.1 |
| **Author** | ItsClonkAndre |
| **Dependencies** | FusionFix (ASI loading) |
| **System Impact** | Enables .NET script mods (content & mechanics) |

The .NET scripting framework for GTA IV 1.0.7.0/1.0.8.0. Required to run .NET script mods (new missions, gameplay systems). Install per its documentation and place scripts in the game's `scripts` folder.

Installation notes: requires Visual C++ 2005 Redistributable (x86) and the DirectX June 2010 SDK — standard for downgraded GTA IV setups.

### [OpenIV](https://openiv.com/)

| Field | Value |
|-------|-------|
| **Version** | latest (openiv.com) |
| **Dependencies** | None |
| **System Impact** | Tool for installing vehicle/weapon asset mods |

The standard editor for GTA IV's `.img`/`.wdr` archives. Required to install any asset-based content mod (vehicles, weapons, textures). Install it once and use it to open and edit the game's archive files.

### User to provide — content mod(s) for 1.0.8.0

| Field | Value |
|-------|-------|
| **Version** | — |
| **Dependencies** | OpenIV (assets) or IV-SDK .NET (scripts) |
| **System Impact** | New vehicles / weapons / missions in world |

Slot for content mods that run on 1.0.8.0. Note: many popular vehicle packs (e.g. "First Degree 154 Vehicle Addon Pack") are built for the Complete Edition only and will not drop into a 1.0.8.0 install — check each mod's stated patch target before adding.

---

## Mechanics

Mechanics mods deepen combat, AI, and the danger of Liberty City. Potential Grim and Responsive Plus (same author) are designed to run together.

### [Potential Grim](https://gtaforums.com/topic/945227-iveflc-potential-grim/)

| Field | Value |
|-------|-------|
| **Version** | latest (see thread) |
| **Author** | iiCriminnaaL |
| **Dependencies** | FusionFix, ASI loader (bundled) |
| **System Impact** | Gang reputation, aggression, world danger |

A realism overhaul that makes Liberty City grittier: a gang reputation system that evolves with your actions, more aggressive NPCs, and spontaneous street gunfights. Built for patches 1.0.7.0 and 1.0.8.0.

Installation: download from the GTAForums thread and follow its current instructions (script files go in the game's `scripts` folder).

### [Responsive Plus](https://gtaforums.com/topic/931069-iveflc-responsive-plus/)

| Field | Value |
|-------|-------|
| **Version** | latest (see thread) |
| **Author** | iiCriminnaaL |
| **Dependencies** | FusionFix, ASI loader (bundled) |
| **System Impact** | Weapon feel, combat balance, vehicle durability |

Companion to Potential Grim by the same author. Tightens weapon handling and recoil, rebalances combat, and adjusts vehicle durability. Designed to pair with Potential Grim — install both for the full effect.

### User to provide — additional mechanics

| Field | Value |
|-------|-------|
| **Version** | — |
| **Dependencies** | IV-SDK .NET |
| **System Impact** | Damage model, police AI, economy |

Slot for further mechanics mods (e.g. police-response or economy systems) that run on IV-SDK .NET.

---

## Audio

### [Radio Restoration (via GTA IV Downgrader)](https://github.com/ClonkAndre/GTAIVDowngrader)

| Field | Value |
|-------|-------|
| **Version** | v2.2 (Downgrader) |
| **Dependencies** | None |
| **System Impact** | Restores the original radio soundtrack |

The Complete Edition removed ~50 songs in 2018 when licences expired. The Downgrader's **radio downgrade** option restores the original stations. Enable it during Step 2 of the installation guide.

### User to provide — audio mod(s)

| Field | Value |
|-------|-------|
| **Version** | — |
| **Dependencies** | FusionFix |
| **System Impact** | Radio content, sound effects |

Slot for additional audio mods not covered by the radio restoration.
