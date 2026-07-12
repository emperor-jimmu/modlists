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
- **Version:** 1.0.0
- **Released:** 2025-07-28
- **Summary:** Hotfix for a quest-restart bug in the Motorbreath quest that
  v2.31 only partially addressed.
- **Why:** Some quests still restart incorrectly after reloading, breaking
  narrative flow. This fixes the remaining edge cases.
- **Conflicts:** May conflict with Quest Trigger Fixes -- test if both enabled
- **Dependencies:** redscript
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Place AFTER Quest Trigger Fixes in load order if using both.
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
5. Immersion Patch -- Story Quest Fixes
6. Immersion Patch -- Minor Activities Quest Fixes
7. No More Limp Bollards (And Road Barriers)

All are **Root**-category mods -- enable Root Builder in MO2 before installing.

---
