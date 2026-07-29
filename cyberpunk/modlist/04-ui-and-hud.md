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
    - Extract to game root.
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

### Contacts Redux

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27146>
- **Version:** 1.0.2
- **Released:** 2026-03-28
- **Summary:** Phone contact list overhaul — live online status indicators, visible contact avatars, smart sorting (by availability, recent calls, affinity), and improved contact list UI layout.
- **Why:** Vanilla phone contact list is bare text with no personality. This adds avatars, online status, and intelligent sorting — the phone feels like a device with real contacts, not a text menu. Smart sorting keeps frequent contacts accessible while reducing clutter.
- **Conflicts:** None known. Check compatibility with Immersive Fixers (modifies fixer contact timing — different layer, likely compatible).
- **Dependencies:** ArchiveXL (required), redscript (required). Optional: Mod Settings.
- **MO2 Notes:** Extract to game root. Contact avatars appear next to names. Online status indicators show who's available. Sort contacts by availability, recent calls, or affinity.
- **Performance:** None

### Immersive Timeskip

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/5115>
- **Version:** 2.2.2
- **Released:** 2026-01-08
- **Summary:** Replaces the static timeskip screen with an overlay that shows the world moving around you while time passes, activated by hotkey.
- **Why:** Breaks immersion less than the vanilla black-screen timeskip. Lets you see the city change as hours pass.
- **Conflicts:** None known
- **Dependencies:** Input Loader, RED4ext, redscript. Optional: Mod Settings (for in-game hotkey config).
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

### Show Weapon Plus Quality

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/19347>
- **Version:** 1.0.0
- **Released:** 2025-01-26
- **Summary:** Displays the weapon "+" quality tier directly on weapon cards (e.g., "D5 Copperhead ++") so you can see tier at a glance without mental math.
- **Why:** Weapon damage tiers use "+" and "++" notation but are not shown on weapon cards — you have to compare DPS numbers between weapons to gauge tier. This shows the tier label directly, making weapon comparison instant. Pure QoL — no balance impact.
- **Conflicts:** Verify against Better Armor Tooltip (different domains — armor vs. weapon tooltips, likely compatible).
- **Dependencies:** redscript
- **MO2 Notes:** Extract to game root. Weapon cards show tier label next to weapon name. No configuration needed.
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
- **MO2 Notes:** Extract `z_LootQuantityText.reds` to `Cyberpunk 2077/r6/scripts/`.
- **Performance:** None

### Numerals Get Commas

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/17160>
- **Version:** 1.2.0
- **Released:** 2025-01-27
- **Summary:** Adds thousands separators (commas) to large number displays throughout the UI — eddies, item values, loot quantities, and backpack tooltips.
- **Why:** Large numbers without separators are hard to parse at a glance — is that 1000000 or 100000? This adds commas everywhere eddies and quantities appear, making the UI more readable. Mod Settings integration for toggling per-display. Pure QoL with zero balance impact.
- **Conflicts:** Compatible with Loot Quantity Text (explicitly listed)
- **Dependencies:** Codeware, Mod Settings (for configuration menu)
- **MO2 Notes:** Extract to game root. Configure via Mod Settings -> Numerals Get Commas. Toggle comma display per UI element (inventory money, loot quantities, tooltips).
- **Performance:** None

### Show Me How Many - Proper Inventory Activity Logs

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/22744>
- **Version:** 2.0.3
- **Released:** 2025-07-16
- **Summary:** Enhances inventory activity logs with item quantity, quality color coding (Common/Uncommon/Rare/Epic/Legendary/Iconic), item type, and sell value display.
- **Why:** Vanilla activity logs show bare item names — you can't tell if that "Maelstrom Jacket" is Common or Legendary without opening inventory. Quality color coding makes loot evaluation instant. Mod Settings integration with per-feature toggles: quantity, quality, type, value, and color coding.
- **Conflicts:** None known. Complements Throttled Activity Log (different layer — this shows more detail, Throttled reduces spam).
- **Dependencies:** redscript (required). Optional: ArchiveXL (localizations), Mod Settings (configuration).
- **MO2 Notes:** Extract to game root. Configure via Mod Settings -> Show Me How Many. Toggle individual features: activity log, quantity, quality, item type, sell value, and quality color coding.
- **Performance:** None

### Throttled Activity Log

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/17674>
- **Version:** 1.1
- **Released:** 2024-11-08
- **Summary:** Consolidates repeated activity log messages — instead of 5 individual "Scrap x1" lines, you get one "Scrap x5" entry.
- **Why:** Looting or dismantling items in bulk floods the activity log with redundant messages, pushing useful notifications off screen. This throttles identical sequential entries into consolidated single lines, keeping the log informative without spam.
- **Conflicts:** None known. Complements Show Me How Many (consolidation vs. detail display).
- **Dependencies:** redscript
- **MO2 Notes:** Extract to game root. No configuration needed — works automatically.
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
    - . Recommended for new playthroughs (existing saves show pre-mod vanilla figures).
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
- **MO2 Notes:** Extract `FinishedQuestsSorted.reds` to `Cyberpunk 2077/r6/scripts/`.
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
    - Extract to game root.
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
    - Extract to game root.
    - Optional file without RAM counter available (works with Streamlined Health Bar).
    - Counter color changes based on RAM fill level.
    - If using a custom game font, counter may misalign. Optional add-on by urmyflower adjusts size and position.
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
- **MO2 Notes:** Extract to game root. Simple .reds script -- no dependencies.
- **Performance:** None

---

### 4K Hand Cursor

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/12225>
- **Version:** 1.0
- **Released:** 2024-01-09
- **Summary:** Replaces the low-resolution interaction hand cursor with a 4K version, eliminating visible pixelation at the modlist's 4K baseline resolution.
- **Why:** Vanilla hand cursor texture is noticeably low-res and pixelated at 4K — a small but constant visual irritation during every interaction prompt. Simple .archive texture replacement with zero performance cost.
- **Conflicts:** Any other mod replacing the hand cursor texture
- **Dependencies:** None (standalone .archive texture)
- **MO2 Notes:** Drop .archive into `Cyberpunk 2077/archive/pc/mod/`. Texture replacer — survives game updates.
- **Performance:** None

### Compact Weapon Mod Slots

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/25032>
- **Version:** 1.0.0
- **Released:** 2025-10-15
- **Summary:** Compacts weapon mod slot UI when extra attachment slots are present (from mods like Depeche Mods), keeping all attachments in a single row for cleaner weapon card layout.
- **Why:** When extra weapon mod slots are added by other mods (Depeche Mods is in this modlist), the default UI stacks them vertically, wasting screen space. This keeps them in one compact row.
- **Conflicts:** None known. Designed for use with mods that add extra weapon mod slots.
- **Dependencies:** None (standalone)
- **MO2 Notes:** Extract to game root. Only useful if the modlist has mods that add extra weapon mod slots — pairs directly with Depeche Mods (in 05b).
- **Performance:** None

### Now Playing Display

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/21570>
- **Version:** 1.3.4
- **Released:** 2025-05-20
- **Summary:** Displays the currently playing radio track name and artist as an on-screen overlay, with optional reduced lens curve effect.
- **Why:** Standard QoL feature missing from vanilla — you can hear a track but can't identify it without opening menus. Especially valuable with custom RadioExt stations (Retrowave, Phonkwave) already in the modlist. Clean, unobtrusive display that disappears when not showing track info.
- **Conflicts:** None known
- **Dependencies:** Codeware, Cyber Engine Tweaks
- **MO2 Notes:** Extract to `Cyberpunk 2077/bin/x64/plugins/cyber_engine_tweaks/mods/`. Optional reduced lens curve effect file available. May not display correct metadata for all custom RadioExt stations (depends on station config).
- **Performance:** None

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
- **MO2 Notes:** Extract to game root. Single `.reds` file install. For MO2 users with RCS: see pinned comment for compatibility steps if enhanced tooltips don't appear.
- **Performance:** None

## Install Order

1. Crouch Vignette Effect Remover
2. Immersive First Person
3. Limited HUD
4. Better Loot Markers
5. Clear Skill Checks
6. Real Vendor Names
7. Contacts Redux
8. Immersive Timeskip
9. Stash Filters
10. No Camera Auto Centering
11. Better Armor Tooltip
12. Show Weapon Plus Quality
13. Flavorfull Descriptions
14. Improved Minimap Zoom
15. Crafting Recipe Owned and Iconic Labels
16. Loot Quantity Text
17. Numerals Get Commas
18. Show Me How Many
19. Throttled Activity Log
20. Ultimate Kill Counter
21. Finished Quests Sorted
22. Loot Icons Extension
23. RAM bar fix
24. Compact Weapon Mod Slots
25. Now Playing Display
26. 4K Hand Cursor
27. Ripperdoc Vendor UI Enhancements

Conflict Begone is a **Utility**-category standalone diagnostic tool -- install outside normal load order.
