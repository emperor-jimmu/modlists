# 02 -- Core Utilities

**Goal:** Script extenders, frameworks, and essential libraries that other mods
depend on. Install these first -- nothing else works without them.

---

### RED4ext

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/2380>
- **Version:** 1.30.0
- **Released:** 2026-03-09
- **Summary:** Native plugin loader for REDengine 4. The foundation layer every
  native-code mod depends on.
- **Why:** Required by ArchiveXL, TweakXL, Codeware, Input Loader, and most
  serious gameplay/UI mods. Without RED4ext, native plugin mods cannot load.
- **Conflicts:** None
- **Dependencies:** Visual C++ Redistributable 2022
- **MO2 Notes:**
    - Extract archive to game root.
    - Tag mod as **Root** category in MO2 (it installs to `bin/x64/` and `red4ext/`).
    - Verify: check `<GameDir>/red4ext/logs/red4ext.log` for successful load.
- **Performance:** None

### Cyber Engine Tweaks

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/107>
- **Version:** 1.37.1
- **Released:** 2025-09-30
- **Summary:** Scripting framework with in-game console, Lua modding API, and
  quality-of-life fixes.
- **Why:** Foundation for Lua-based mods (appearance, UI, gameplay tweaks).
  Provides the dev console, ImGui rendering, and Lua scripting runtime.
- **Conflicts:** None
- **Dependencies:** Visual C++ Redistributable
- **MO2 Notes:**
    - Extract archive to game root.
    - Tag mod as **Root** category.
    - Add `CET.exe` as an executable in MO2 -- launch the game through CET.
    - Launches `Cyberpunk2077.exe` automatically; injects its overlay.
- **Performance:** None

### redscript

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/1511>
- **Version:** 0.5.31
- **Released:** 2025-06-01
- **Summary:** Compiler and loader for redscript (`.reds`) files -- the native
  scripting language of REDengine 4.
- **Why:** Many gameplay, quest, and UI mods ship `.reds` scripts. redscript
  compiles them on load. Without it, those mods do nothing.
- **Conflicts:** None
- **Dependencies:** None (standalone)
- **MO2 Notes:**
    - Extract archive to game root.
    - Tag mod as **Root** category.
    - Compiled scripts appear in `r6/cache/redscript/`.
- **Performance:** None

### ArchiveXL

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/4198>
- **Version:** 1.26.8
- **Released:** 2026-05-20
- **Summary:** Archive expansion framework -- adds .archive loading, dynamic
  appearances, character customization system, and custom resource support.
- **Why:** Required by clothing, appearance, weapon, and housing mods. Enables
  custom meshes, textures, animations, and world-streaming blocks.
- **Conflicts:** None
- **Dependencies:** RED4ext 1.29.0+, redscript 0.5.31+
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Install this BEFORE TweakXL and any clothing/appearance mods.
    - No FOMOD -- simple extraction.
- **Performance:** None

### TweakXL

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/4197>
- **Version:** 1.11.3
- **Released:** 2025-12-20
- **Summary:** TweakDB modification framework -- edit game stats, items,
  recipes, and balance via YAML files.
- **Why:** Required by virtually every gameplay overhaul, rebalance, and
  item/weapon/clothing mod. Without it, mods can't modify game data.
- **Conflicts:** None
- **Dependencies:** RED4ext 1.29.0+
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Install after ArchiveXL.
    - TweakDB overrides load from `r6/tweaks/`.
- **Performance:** None

### Codeware

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/7780>
- **Version:** 1.20.3
- **Released:** 2026-04-11
- **Summary:** UI scripting runtime -- extends RED4ext with native UI
  programming support (ink widgets, controllers, custom HUD elements).
- **Why:** Required by mods that add custom UI screens, HUD elements, inventory
  panels, or in-game configuration menus.
- **Conflicts:** None
- **Dependencies:** RED4ext 1.29.0+, redscript 0.5.31+, CET 1.37.0+
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Install after ArchiveXL and TweakXL.
- **Performance:** None

### Input Loader

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/4575>
- **Version:** 0.2.3
- **Released:** 2025-07-19
- **Summary:** Merges custom input XML files with the game's input config at
  load time.
- **Why:** Required by mods that add custom keybinds (vehicle mods, photo mode
  tools, gameplay actions). Without it, custom inputs conflict or don't load.
- **Conflicts:** None
- **Dependencies:** RED4ext
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Custom input files go in `r6/input/`.
    - Merged output written to `r6/cache/`.
- **Performance:** None

### Native Settings UI

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/3518>
- **Version:** 1.2.0
- **Released:** 2024-01-06
- **Summary:** In-game settings menu for CET-based mods.
- **Why:** Provides a unified settings panel for mods that expose configurable
  options. Cleaner than editing config files manually.
- **Conflicts:** None
- **Dependencies:** CET
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Settings appear under CET's overlay (default Insert key).
- **Performance:** None

### Browser Extension

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/10038>
- **Version:** 0.9.7
- **Released:** 2025-09-20
- **Summary:** Framework for adding custom web sites to the in-game browser homepage. Gathers and shows all vanilla journal-defined sites.
- **Why:** Enables economy mods like Much Better Eddies with its Dead Channel black-market fixer line. Provides the in-game browser infrastructure that other mods depend on.
- **Conflicts:** None known
- **Dependencies:** redscript, RED4ext, Codeware. Optional: Mod Settings.
- **MO2 Notes:** Extract to game root. Tag as **Root**. Custom sites can be added by creating a child of BrowserEventsListener (see CustomSiteExample in optional files).
- **Performance:** None

## Install Order

1. Visual C++ Redistributable 2022 (system prerequisite)
2. RED4ext
3. Cyber Engine Tweaks
4. redscript
5. ArchiveXL
6. TweakXL
7. Codeware
8. Input Loader
9. Native Settings UI

All of these are **Root-category** mods -- enable Root Builder in MO2 before
installing.

---
