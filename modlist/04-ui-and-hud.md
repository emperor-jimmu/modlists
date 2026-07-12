# 04 -- UI & HUD

**Goal:** Interface improvements. Menus, minimap, notifications, inventory
screens, dialogue interface, and anything the player interacts with on screen.
Clean, informative, immersive.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---

### Immersive First Person

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/2675>
- **Version:** 1.5.1
- **Released:** 2025-12-06
- **Summary:** Improved body presence (visible torso) and free look camera for first-person view.
- **Why:** Makes the first-person view more immersive by clearly showing the player's body when looking down, and adds head-turning (free look) without rotating the body.
- **Conflicts:** None known
- **Dependencies:** Cyber Engine Tweaks
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Configure toggle hotkey via CET overlay -> Bindings -> **Hotkeys** and **Inputs** menus.
    - Free look shortcut defaults to "B".
    - Multi-language support available via separate translation mods on Nexus.
- **Performance:** None

---

### Limited HUD

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/2592>
- **Version:** 2.22.3
- **Released:** 2026-05-30
- **Summary:** Hides main HUD widgets by default and shows them only on configurable events (combat, stealth, weapon unsheathed, etc.).
- **Why:** Core immersion mod — gives full control over HUD clutter. Widgets appear only when contextually relevant, keeping the screen clean during exploration and dialogue.
- **Conflicts:** None known. Compatible with Better Loot Markers and Improved Minimap Zoom with optional patches.
- **Dependencies:** redscript 0.5.31+. Optional: ArchiveXL, Input Loader, Mod Settings, RED4ext.
- **MO2 Notes:** Extract to game root. Configure visibility conditions per-widget via Mod Settings menu or `r6/scripts/LimitedHUD/Config.reds`. Hotkeys: F6 (minimap toggle), F8 (global toggle).
- **Performance:** None

### Better Loot Markers

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/3486>
- **Version:** 1.4.0
- **Released:** 2026-04-15
- **Summary:** Replaces default loot markers with detailed icons showing item categories (weapons, armor, eddies, crafting mats, etc.) with tier colors and count badges.
- **Why:** Makes loot evaluation faster and more informative at a glance. Includes immersive "scanner only" mode to keep HUD clean.
- **Conflicts:** None known
- **Dependencies:** Cyber Engine Tweaks 1.32.0+
- **MO2 Notes:** Extract to `Cyberpunk 2077/bin/x64/plugins/cyber_engine_tweaks/mods/`. Configure via CET overlay -> Better Loot Markers. Supports vertical/horizontal layout, scaling, and scanner-only mode.
- **Performance:** None

### Clear Skill Checks

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/2805>
- **Version:** 1.1.1
- **Released:** 2025-11-29
- **Summary:** Shows the required attribute level for conversation skill checks you pass (vanilla only shows your current level).
- **Why:** Removes ambiguity from dialogue checks — lets you know how close you are to thresholds and whether further investment is worthwhile.
- **Conflicts:** None known
- **Dependencies:** redscript
- **MO2 Notes:** Extract to game root. Files go to `Cyberpunk 2077/r6/scripts/`.
- **Performance:** None

### Real Vendor Names

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/4941>
- **Version:** 2.1.0
- **Released:** 2023-12-06
- **Summary:** Displays actual vendor names on world map icons instead of generic type labels (e.g., "Jinguji" instead of "Clothing Store").
- **Why:** Small immersion detail that makes Night City's shops feel like real places rather than menu entries.
- **Conflicts:** None known
- **Dependencies:** redscript
- **MO2 Notes:** Extract to game root. Files go to `Cyberpunk 2077/r6/scripts/`.
- **Performance:** None

### Immersive Timeskip

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/5115>
- **Version:** 2.2.2
- **Released:** 2026-01-08
- **Summary:** Replaces the static timeskip screen with an overlay that shows the world moving around you while time passes, activated by hotkey.
- **Why:** Breaks immersion less than the vanilla black-screen timeskip. Lets you see the city change as hours pass.
- **Conflicts:** None known
- **Dependencies:** Input Loader, RED4ext, redscript
- **MO2 Notes:** Extract to game root. Default hotkey is O (keyboard) / Right Pad (controller). Configurable via Mod Settings. Can also replace the default timeskip menu (enable in `r6/scripts/ImmersiveTimeskip/Config.reds`).
- **Performance:** None

### Stash Filters

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/5298>
- **Version:** 2.1.3
- **Released:** 2026-03-22
- **Summary:** Adds category filter buttons to the stash item list for easier navigation.
- **Why:** Essential QoL for managing a large collection. Vanilla stash has no filtering, making it tedious to find specific items.
- **Conflicts:** None known
- **Dependencies:** Codeware, RED4ext, redscript
- **MO2 Notes:** Extract to game root. Files go to `Cyberpunk 2077/r6/scripts/`.
- **Performance:** None

### No Camera Auto Centering

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/2169>
- **Version:** 0.9
- **Released:** 2023-11-14
- **Summary:** Disables the vehicle camera auto-centering that resets your look direction after ~2 seconds of no input.
- **Why:** Subtle but meaningful driving improvement. Lets you freely look around while driving without fighting the camera snap-back.
- **Conflicts:** None known
- **Dependencies:** RED4ext, TweakXL
- **MO2 Notes:** Extract to game root. FPP module included. For TPP, use in-game Camera Auto Reset Time slider (max 10s, can be increased via `r6/config/settings/options.json`).
- **Performance:** None

### Improved Minimap Zoom

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/2959>
- **Version:** 2.0.2
- **Released:** 2025-08-06
- **Summary:** Exposes minimap zoom configuration to the Mod Settings menu, allowing fine-tuned zoom levels.
- **Why:** Patch 2.0 added dynamic zoom, but this gives manual control over min/max zoom values for players who want consistent visibility.
- **Conflicts:** None known
- **Dependencies:** Mod Settings, RED4ext, redscript
- **MO2 Notes:** Extract to game root. Configure via Mod Settings -> Improved Minimap Zoom.
- **Performance:** None
