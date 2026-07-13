# 03 -- Bug Fixes

**Goal:** Fix bugs CDPR hasn't addressed. Quest fixes, animation fixes, world
holes, scripting errors, and general polish. No gameplay changes -- only fixes.

---

### Always First Equip

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/2557>
- **Version:** 1.11.0
- **Released:** 2025-06-15
- **Summary:** Repeats the first-equip animation each time you draw a weapon or
  press a hotkey. Fixes the bug where weapons appear invisible on the first draw
  after loading a save.
- **Why:** Vanilla bug -- after loading a save, the equip animation doesn't play,
  making weapons appear invisible or floating. This mod restores the animation
  and adds weapon inspection (IdleBreak, SafeAction).
- **Conflicts:** None
- **Dependencies:** Native Settings UI
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Configure via Native Settings UI in CET overlay (default Insert key).
    - Highly configurable -- set trigger delay, hotkeys, and which animations to use.
- **Performance:** None

### Quest Trigger Fixes

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/17980>
- **Version:** 1.5.0
- **Released:** 2025-10-15
- **Summary:** Fixes quest triggers that are still broken in v2.31 -- missions
  that fail to start, NPCs that don't appear, and blocked progression.
- **Why:** Even after CDPR's patches, some quest triggers remain broken.
  This mod addresses the most commonly reported stuck quests.
- **Conflicts:** Check mod page for compatibility version vs all-in-one
- **Dependencies:** redscript
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Choose between "Compatibility" version (for heavily-modded setups) and
    "All-In-One" version (full coverage, fewer conflicts).
    - Recommended: use the Compatibility version for this modlist.
- **Performance:** None

### Deceptious Bug Fixes

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/18318>
- **Version:** 2.2.0
- **Released:** 2024-12-09
- **Summary:** Collection of non-subjective bug fixes merged into a single
  archive. Covers multiple areas (quests, world, items, UI, vehicles).
- **Why:** Consolidates many small bug-fix mods into one maintained package.
  Fixes issues that individual modders have identified and patched.
- **Conflicts:** May conflict with other mods that touch the same scripts
- **Dependencies:** redscript, RED4ext
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Install AFTER Quest Trigger Fixes to avoid script overlap.
    - Read included documentation for full list of fixes.
- **Performance:** None

### Semimaru Quest Restart Bug Fix

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/23031>
- **Version:** 1.1
- **Released:** 2025-09-12
- **Summary:** Fixes missing HUD notification and journal objective updates for
  River's Semimaru quest. v2.31 fixed the trigger but not the feedback loop.
- **Why:** After missing the Semimaru, River's text message arrives but the HUD
  notification and journal objective don't update, leaving the quest stalled on
  "Wait for River" despite progress being possible.
- **Conflicts:** Compatible with Quest Trigger Fixes (covers different aspects)
- **Dependencies:** ArchiveXL, RED4ext
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Works retroactively — no need to reload a save from before the quest.
- **Performance:** None

### Eddies Notification Fix

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/16420>
- **Version:** 1.01
- **Released:** 2024-08-29
- **Summary:** Restores the HUD eddies notification when selling/buying at
  vendors and drop points. v2.12a broke these notifications.
- **Why:** Vanilla bug — after v2.12a, the "+X eddies" notification stopped
  appearing for vendor transactions, making it impossible to see sale earnings
  without checking the inventory screen.
- **Conflicts:** None known
- **Dependencies:** redscript
- **MO2 Notes:** Extract `EddiesNotificationFix.reds` to `Cyberpunk 2077/r6/scripts/`. Tag as **Root**.
- **Performance:** None

### Epistrophy Delamain Despawn Fix

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/29851>
- **Version:** 1.2
- **Released:** 2026-05-23
- **Summary:** Fixes Delamain cabs despawning during the Epistrophy questline,
  preventing softlocks and progression blockers.
- **Why:** Epistrophy cab encounters can despawn mid-mission, forcing reloads or
  blocking completion entirely. This ensures each cab stays active until resolved.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL 1.26.2+, RED4ext 1.30.0+
- **MO2 Notes:**
    - Extract `EpistrophyDelamainDespawnFix.archive` to `Cyberpunk 2077/archive/pc/mod/`. Tag as **Root**.
    - IMPORTANT: Must be installed BEFORE completing Epistrophy — does not apply retroactively.
- **Performance:** None

### NCPD Fixes

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/22838>
- **Version:** ncpdf-1.5
- **Released:** 2025-07-20
- **Summary:** Prevention system bug fixes for NCPD, Netwatch, MaxTac — fixes
  kill-not-wanted bugs, icon desync, duplicate names, and missing archetypes.
- **Why:** Police system has subtle bugs — you could kill officers execution-style
  without becoming wanted, icons appeared with no police present, and MaxTac
  Melissa Rory's name was misspelled. These undermine the wanted system's integrity.
- **Conflicts:** None known. Not needed if Cop Killer (14652) is installed.
- **Dependencies:** Codeware, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Tag as **Root**.
- **Performance:** None

### Item Records Fixes

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/25019>
- **Version:** 1.0
- **Released:** 2025-10-14
- **Summary:** Fixes incorrect or missing data in item records — preset iconic
  parts, missing weapon tags (HeavyWeapon, VehicleWeapon), and silencer tag
  oversight by CDPR.
- **Why:** Item records have data errors that affect other mods' ability to
  reference them correctly. Fixing these at the foundational level provides
  stability for any mod that queries item tags or iconic presets.
- **Conflicts:** None known — loads early so other mods can overwrite
- **Dependencies:** redscript, TweakXL
- **MO2 Notes:** Extract to game root. Tag as **Root**. Loads automatically before other TweakXL mods.
- **Performance:** None

### HUD Fixes

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/4011>
- **Version:** 1.15.0
- **Released:** 2026-04-11
- **Summary:** Patches disappearing HUD elements, quest dialogs, missing health
  bar, speedometer bugs, and Kiroshi scanner lockups introduced in v1.5–2.x.
- **Why:** The game has persistent HUD bugs where health bars, minimaps, quest
  dialogues, and speedometers disappear or behave incorrectly. Save-reload isn't
  always possible mid-combat or during locked quest phases.
- **Conflicts:** Auto-disables Health Bar/Weapon Roster fixes if Limited HUD is installed
- **Dependencies:** Cyber Engine Tweaks
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Configure via CET overlay or mod window. Set hotkey for manual HUD restore.
    - "HUD Features Autohide" ON by default (v1.6+ design).
- **Performance:** None

### H10 Interactive Stash Door Restored

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/18482>
- **Version:** 1.1
- **Released:** 2025-05-30
- **Summary:** Re-enables the HUD prompt for the H10 Megabuilding stash door,
  making it easier to access the stash room without aiming at the tiny intercom.
- **Why:** The H10 stash room intercom is notoriously finicky to trigger, and
  closing the door via intercom could softlock you inside (no Open prompt appears
  again). This restores intuitive door interaction.
- **Conflicts:** None known — hooks via ArchiveXL without editing vanilla files
- **Dependencies:** ArchiveXL 1.24.0+, RED4ext 1.28.0+
- **MO2 Notes:**
    - Extract archive and xl file to `Cyberpunk 2077/archive/pc/mod/`. Tag as **Root**.
    - Effective upon leaving and returning to the apartment after install.
- **Performance:** None

### Immersion Patch -- Story Quest Fixes

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/29152>
- **Version:** 1.2.0
- **Released:** 2026-04-25
- **Summary:** Fixes animation and scripting bugs in main story quests
  (The Heist, The Information, Automatic Love, etc.).
- **Why:** Story moments with broken animations or scripting break immersion.
  This restores intended behavior in critical narrative scenes.
- **Conflicts:** None known
- **Dependencies:** redscript
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Complements Quest Trigger Fixes -- covers different issues.
- **Performance:** None

### Immersion Patch -- Minor Activities Quest Fixes

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27162>
- **Version:** 1.1.0
- **Released:** 2026-07-04
- **Summary:** Fixes immersion-breaking bugs in Cyberpsycho sightings and NCPD
  scanner quests (Minor Activities).
- **Why:** Side content with broken triggers or NPC behavior undermines the
  living-world feel. This restores intended behavior.
- **Conflicts:** None known
- **Dependencies:** redscript
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Install after the Story Quest Fixes version.
- **Performance:** None

### No More Limp Bollards (And Road Barriers)

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/26568>
- **Version:** 1.0
- **Released:** 2025-12-30
- **Summary:** Modifies physics properties of roadside objects so bollards, railings, and barriers bolted to the ground no longer flop around like limp noodles. Temporary objects (construction fences, riot barricades) are left untouched.
- **Why:** Persistent visual bug where fixed-in-place roadside objects have ragdoll physics, creating a junky, immersion-breaking look throughout Night City.
- **Conflicts:** None known
- **Dependencies:** None
- **MO2 Notes:** Extract to game root. Tag as **Root**. Simple archive install — no configuration needed.
- **Performance:** None

---

## Install Order

1. Always First Equip
2. Quest Trigger Fixes (Compatibility version)
3. Deceptious Bug Fixes
4. Semimaru Quest Restart Bug Fix
5. Eddies Notification Fix
6. Epistrophy Delamain Despawn Fix
7. NCPD Fixes
8. Item Records Fixes
9. HUD Fixes
10. H10 Interactive Stash Door Restored
11. Immersion Patch -- Story Quest Fixes
12. Immersion Patch -- Minor Activities Quest Fixes
13. No More Limp Bollards (And Road Barriers)

All are **Root**-category mods -- enable Root Builder in MO2 before installing.

---
