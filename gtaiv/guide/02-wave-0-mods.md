# Wave 0: Fresh Off the Boat — Mod List

> Roleplaying Theme: New immigrant arrives in Liberty City. You have no connections, no reputation, and no resources. You take odd jobs and learn the city's rhythms.

> **Scope:** UI improvements and quality-of-life fixes only. No graphics overhauls, no content additions, no mechanic changes. FusionFix provides all compatibility fixes.

> **Installation:** All mods below are installed on top of a clean GTA IV 1.0.8.0 with FusionFix (+ Legacy Addon) already applied.

---

## Wave 0 Foundation

Wave 0 is carried by a single framework: **FusionFix**. Because it already contains nearly every quality-of-life and UI fix the community used to install as separate mods, this wave is intentionally light.

### [FusionFix](https://github.com/ThirteenAG/GTAIV.EFLC.FusionFix)

| Field | Value |
|-------|-------|
| **Version** | v5.0.1 (+ Legacy Addon for 1.0.8.0) |
| **Author** | ThirteenAG |
| **Dependencies** | Ultimate ASI Loader (bundled) |
| **System Impact** | Bug fixes, UI/QoL options, graphics fixes |

The base compatibility and quality-of-life framework. Fixes long-standing PC-port bugs (z-fighting, broken bloom/motion-blur scaling, the inverted "Definition" blur, broken soft particles, missing neon lights) and adds an in-game options menu.

Install via the installation guide (Step 3). On 1.0.8.0 the **Legacy Addon** is required.

### What FusionFix covers in Wave 0

The features below are this wave's UI/QoL content — no separate mods are needed for them.

**UI & display**

- FOV slider, transparent map menu, FPS counter, skip intro / skip main menu
- Windowed / borderless windowed, pause on focus loss, letterbox & pillarbox controls
- Controller icon styles (Xbox 360/One, PS3/PS4/PS5, Switch, Steam Deck)

**Controls & feel**

- Raw mouse input, mouse look/aim sensitivity, always-run toggle
- Turn indicators, instant taxi stop, disable wardrobe transition
- Centered on-foot and vehicle camera

**Bug fixes (selection)**

- Frame-rate fixes (physics and animation no longer break above 30 FPS)
- Recoil consistency between keyboard/mouse and gamepad
- Cutscene "Definition" and DLC car-light fixes
- Ultrawide support

---

## UI & Audio — where they live

**UI is covered by FusionFix.** The UI/display/controls features in the section above are this wave's UI layer. There is no maintained standalone UI/HUD mod for 1.0.8.0, and older "GTA V style" HUD replacements are unstable — not recommended.

**Audio lives in Wave 1.** Weapon sounds, custom radio, and soundtrack restoration are content, not QoL, so they are documented in the Wave 1 → Audio section rather than here.

If a future standalone QoL/UI mod is needed, it goes here:

### User to provide — standalone QoL / UI

| Field | Value |
|-------|-------|
| **Version** | — |
| **Dependencies** | FusionFix |
| **System Impact** | — |

Slot reserved for a QoL/UI mod that does something FusionFix does not (currently none needed).

---

## Already covered — do not add

- **IV Centered Vehicle Cam / OnFoot Cam** (gennariarmando) — merged into FusionFix; installing separately is redundant.
- **ZolikaPatch** — overlaps FusionFix; requires disabling ~30 overlapping options to avoid conflicts, so it is excluded from the list.
