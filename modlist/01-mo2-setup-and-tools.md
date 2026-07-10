# 01 -- MO2 Setup & Tools

**Goal:** Everything needed to get Mod Organizer 2 running with Cyberpunk 2077.
Prerequisites, installation, profile setup, launch workflow, and essential
tooling.

---

### Mod Organizer 2
- **Nexus:** https://www.nexusmods.com/skyrimspecialedition/mods/6194
- **Version:** 2.5.2
- **Released:** 2026-03-27
- **Summary:** Mod management with virtual file system -- keeps game directory clean
- **Why:** Foundation of the entire modlist. Virtualized installs prevent conflicts
  and make mod removal/updating safe.
- **Conflicts:** None
- **Dependencies:** None
- **MO2 Notes:**
  - Install MO2 to a location OUTSIDE Program Files (e.g. `C:\Modding\MO2`)
  - Use the Cyberpunk 2077 game plugin (built-in since MO2 2.5)
  - Portables mode only (default) -- not Instance mode
  - After install: launch MO2, it should auto-detect Cyberpunk 2077
- **Performance:** None

### Root Builder (MO2 Plugin)
- **Nexus:** https://www.nexusmods.com/skyrimspecialedition/mods/31720
- **Version:** 0.9.4.0
- **Released:** 2025-06-25
- **Summary:** Allows MO2 to manage files in the game root directory via VFS
- **Why:** Cyberpunk 2077 mods (CET, RED4ext, etc.) install DLLs and files into
  the game root (`bin/x64/`, `red4ext/`, etc.). Root Builder lets MO2 virtualize
  these instead of directly modifying the game folder.
- **Conflicts:** None
- **Dependencies:** Mod Organizer 2
- **MO2 Notes:**
  1. Download the Root Builder plugin from Nexus
  2. Extract to `<MO2-install-dir>/plugins/`
  3. In MO2: Tools -> Settings -> Workarounds tab
  4. Check "Enable Root Builder"
  5. Set "Root" category for mods that install to game root
- **Performance:** None

## MO2 Quick-Start Workflow

1. Install MO2 (portable) + Root Builder plugin
2. Launch MO2 -- it auto-detects Cyberpunk 2077
3. Go to Tools -> Settings -> Workarounds -> enable Root Builder
4. Create a profile (e.g., "Modlist Playthrough")
5. Download mods via "Download with Manager" on Nexus
6. Install mods from Downloads tab
7. Right-click installed mods -> "Change Category" to assign Root category when needed
8. Set executables: `CET.exe`, `REDprelauncher.exe`, `Cyberpunk2077.exe`
9. Always launch the game through MO2

> Mods are added below as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
