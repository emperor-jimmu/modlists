# 04 - UI & HUD

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

### Better Armor Tooltip

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/9706>
- **Version:** 1.0.1
- **Released:** 2025-12-28
- **Summary:** Fixes the armor tooltip in the Cyberware/Ripperdoc menu to show your actual current damage reduction rather than a theoretical maximum.
- **Why:** Vanilla armor tooltip is misleading — it shows a theoretical maximum "X% or more" rather than your actual damage reduction. This provides accurate, actionable data for gearing decisions.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, RED4ext, redscript
- **MO2 Notes:** Extract to game root. Files go to `r6/scripts/`. Works automatically — no configuration needed.
- **Performance:** None

### Flavorfull Descriptions

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/13575>
- **Version:** 1.0
- **Released:** 2024-03-11
- **Summary:** Restores lore/flavor texts on cyberware, healing items, and grenades that were removed in the 2.0 update.
- **Why:** 2.0 stripped immersive item descriptions that added character and world-building to gear. Restoring them makes reading item tooltips feel like part of Night City's atmosphere rather than dry stat sheets.
- **Conflicts:** None known
- **Dependencies:** Cyber Engine Tweaks
- **MO2 Notes:** Extract to `Cyberpunk 2077/bin/x64/plugins/cyber_engine_tweaks/mods/`. Note: cyberdeck descriptions and some oversized tooltips may still have display issues.
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

### Crafting Recipe Owned and Iconic Labels

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/11261>
- **Version:** 1.1.1
- **Released:** 2025-12-02
- **Summary:** Adds check marks to recipe icons for items you already own, plus
  iconic background borders for iconic recipes in the crafting menu.
- **Why:** Vanilla crafting has no way to tell if you already own a craftable
  item without cross-referencing your inventory. This eliminates wasted materials
  on duplicates and makes iconic recipes visually distinct.
- **Conflicts:** None known
- **Dependencies:** redscript
- **MO2 Notes:** Extract to game root. Files go to `r6/scripts/`. Works automatically.
- **Performance:** None

### Loot Quantity Text

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/23942>
- **Version:** 1.1
- **Released:** 2025-09-19
- **Summary:** Removes the vanilla 9999+ limit on loot quantity display in the
  loot widget, showing the actual value instead.
- **Why:** Vanilla caps loot quantity display at 9999 with a placeholder "9999+",
  hiding whether a body has 10,042 or 25,378 eddies. Affects money and stackable
  items, removing useful information for no good reason.
- **Conflicts:** Compatible with Crafting Component Quantity Text and Numerals Get Commas
- **Dependencies:** redscript
- **MO2 Notes:** Extract `z_LootQuantityText.reds` to `Cyberpunk 2077/r6/scripts/`. Tag as **Root**.
- **Performance:** None

### Ultimate Kill Counter

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/9372>
- **Version:** 1.17
- **Released:** 2025-09-12
- **Summary:** Adds a detailed kill tracking tab to the Stats screen — tracks
  Killed, Finished, Defeated, Incapacitated, and downed-by-type (melee, ranged,
  quickhacks, stealth takedowns, etc.).
- **Why:** Vanilla kill counters are buggy and incomplete. Accurate kill tracking
  rewards different playstyles and provides meaningful feedback on combat approach.
  Non-lethal options are properly distinguished from lethal ones.
- **Conflicts:** Compatible with Stealthrunner (different scope)
- **Dependencies:** ArchiveXL, RED4ext, redscript
- **MO2 Notes:**
    - Extract `DumpPromptFix.archive` to `Cyberpunk 2077/archive/pc/mod/`.
    - Extract `UltimateKillCounter.reds` to `Cyberpunk 2077/r6/scripts/`.
    - Tag as **Root**. Recommended for new playthroughs (existing saves show pre-mod vanilla figures).
- **Performance:** None

### Finished Quests Sorted

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/16009>
- **Version:** 1.01
- **Released:** 2024-12-12
- **Summary:** Fixes the sorting of Finished quests in the Journal so they
  appear in the order you completed them, not the order their entries were created.
- **Why:** v2.0's quest sorting uses entry-creation timestamps for the Finished
  filter instead of completion timestamps, making the quest log look random.
  This restores proper chronological order.
- **Conflicts:** None known
- **Dependencies:** redscript
- **MO2 Notes:** Extract `FinishedQuestsSorted.reds` to `Cyberpunk 2077/r6/scripts/`. Tag as **Root**.
- **Performance:** None

### Loot Icons Extension

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/16386>
- **Version:** 1.53
- **Released:** 2025-09-10
- **Summary:** Expands loot icons with 60+ vanilla icon variants, wall/scan
  visibility options, tinting by quality, icon sorting, and full Mod Settings
  customization.
- **Why:** Vanilla loot icons use generic magazine icons for all ammo types and
  lack variety. This makes loot evaluation faster with distinct icons per item
  type, plus color tinting by quality for quick rarity assessment.
- **Conflicts:** Incompatible with Better Loot Markers (self-disables if both installed)
- **Dependencies:** ArchiveXL, Codeware, redscript 0.5.31+, TweakXL. Recommended: Mod Settings.
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Configure via Mod Settings for icon scale, layout, tinting, and visibility.
    - Optional "LIExt Light" version available without DLL files.
- **Performance:** Light (icon rendering only on loot open)

### RAM bar fix

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/22503>
- **Version:** 1.2
- **Released:** 2025-09-20
- **Summary:** Prevents the health bar from shifting right when you have many
  RAM cells. Shrinks cells to fit and adds a filled/max RAM counter.
- **Why:** With high RAM counts, the health bar moves to the right, breaking HUD
  alignment. This fixes the layout and adds a useful RAM usage counter.
- **Conflicts:** Not compatible with Informative HUD Quickhacks Memory Counter (counter would shrink with RAM cells)
- **Dependencies:** RED4ext, redscript. Optional: Mod Settings (for counter size/position).
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Optional file without RAM counter available (works with Streamlined Health Bar).
    - Counter color changes based on RAM fill level.
- **Performance:** None

---

### Crouch Vignette Effect Remover

- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/535
- **Version:** Verify
- **Released:** 2020-12-25
- **Summary:** Removes the dark vignette effect that appears when crouching.
- **Why:** The crouch vignette is disorienting and reduces visibility during stealth gameplay. Removing it is a pure QoL improvement that doesn't affect game balance.
- **Conflicts:** None known
- **Dependencies:** None (standalone file replacement)
- **MO2 Notes:** Extract to game root. Simple .reds script -- no dependencies. Tag as **Root**.
- **Performance:** None

---

### Conflict Begone - Archive Conflict Checker

- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/21912
- **Version:** Verify
- **Released:** 2025-04-30
- **Summary:** Scans installed archives and detects file conflicts between mods, with exportable reports and user-mod support.
- **Why:** Essential diagnostic tool for large modlists. Quickly identifies which mods are overwriting each other's files, making conflict resolution manageable. No runtime impact -- runs on demand.
- **Conflicts:** None known
- **Dependencies:** None (standalone utility)
- **MO2 Notes:** Run as needed from the game directory. Generates conflict reports for manual resolution. Not a runtime mod -- use for diagnosis only. Tag as **Utility**.
- **Performance:** None (on-demand tool, no runtime impact)

---

### Ripperdoc Vendor UI Enhancements

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/23180>
- **Version:** 1.04
- **Released:** 2025-08-04
- **Summary:** Highlights cyberware category labels in the ripperdoc UI when items are on sale. Map tooltip integration showing each ripperdoc's cyberware specializations. Fully translated to all languages.
- **Why:** With Specialized Ripperdocs installed, knowing which vendor sells what becomes essential for planning cyberware purchases. This eliminates guesswork and makes the ripperdoc specialization system usable without referencing external tables.
- **Conflicts:** None known. Compatible with Ripperdoc Cyberware Specializations and Specialized Ripperdocs.
- **Dependencies:** Codeware, redscript. Optional: Mod Settings for in-game configuration. Integrates with Specialized Ripperdocs (#23399) and Ripperdoc Cyberware Specializations (#17110) if detected.
- **MO2 Notes:** Extract to game root. Tag as **Root**. Single `.reds` file install. For MO2 users with RCS: see pinned comment for compatibility steps if enhanced tooltips don't appear.
- **Performance:** None

## Install Order

All **Root**-category mods -- enable Root Builder in MO2 before installing.

1. Crouch Vignette Effect Remover
2. Immersive First Person
3. Limited HUD
4. Better Loot Markers
5. Clear Skill Checks
6. Real Vendor Names
7. Immersive Timeskip
8. Stash Filters
9. No Camera Auto Centering
10. Better Armor Tooltip
11. Flavorfull Descriptions
12. Improved Minimap Zoom
13. Crafting Recipe Owned and Iconic Labels
14. Loot Quantity Text
15. Ultimate Kill Counter
16. Finished Quests Sorted
17. Loot Icons Extension
18. RAM bar fix
19. Ripperdoc Vendor UI Enhancements

Conflict Begone is a **Utility**-category standalone diagnostic tool -- install outside normal load order.
