# 01 - MO2 Setup & Tools

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
  - Cyberpunk 2077 plugin v3.0+ handles root-level files (CET, RED4ext) natively
    via USVFS. Root Builder is no longer needed. If using MO2 2.5.2, download the
    [plugin v3.0 update](https://github.com/ZashIn/modorganizer-basic_games/releases/tag/cyberpunk-v3.0).
    MO2 2.5.3+ ships with plugin v3.0 built in.
  - Portables mode only (default) -- not Instance mode
  - After install: launch MO2, it should auto-detect Cyberpunk 2077
- **Performance:** None

## MO2 Quick-Start Workflow

1. Install MO2 (portable)
2. Launch MO2 -- it auto-detects Cyberpunk 2077
3. Create a profile (e.g., "Modlist Playthrough")
4. Download mods via "Download with Manager" on Nexus
5. Install mods from Downloads tab
6. Set executables: `CET.exe`, `REDprelauncher.exe`, `Cyberpunk2077.exe`
7. Always launch the game through MO2

## Separator Reference

MO2 supports colored separators in the left mod list pane. Create each separator
by right-clicking in the left pane → **Create Separator**, naming it as shown
below, then right-click → **Set Colour** and entering the hex code.

Main separators use bold, saturated colors. Sub-category separators use lighter
gradient shades of the parent category's color.

### How To Apply Colors

1. Right-click the separator → Select Colour
2. Click "Pick Custom Colour"
3. Enter the hex code (e.g. `#E8B830`)
4. Click OK

### Separator Palette

| # | Separator Name | Hex (Main) | Sub-Category | Hex (Gradient) |
|---|----------------|------------|--------------|-----------------|
| 01 | 01 ─ MO2 Setup & Tools | `#9E9E9E` | — | — |
| 02 | 02 ─ Core Utilities | `#1565C0` | — | — |
| 03 | 03 ─ Bug Fixes | `#C62828` | — | — |
| 04 | 04 ─ UI & HUD | `#00ACC1` | ▶ HUD & Minimap | `#80DEEA` |
| | | | ▶ Menus & Inventory | `#4DD0E1` |
| | | | ▶ Notifications & Dialogue | `#26C6DA` |
| 05a | 05a ─ Combat & Stealth | `#E65100` | — | — |
| 05b | 05b ─ RPG Systems & Economy | `#EF6C00` | — | — |
| 06a | 06a ─ Survival & Systems | `#2E7D32` | — | — |
| 06b | 06b ─ World Interaction | `#388E3C` | — | — |
| 06c | 06c ─ Leisure & Entertainment | `#43A047` | — | — |
| 07 | 07 ─ Quests & Stories | `#F9A825` | ▶ Main Quest Expansions | `#FFF59D` |
| | | | ▶ Side Content | `#FFEE58` |
| | | | ▶ Gigs & Unaffiliated | `#FFEB3B` |
| 08 | 08 ─ Relationships & Romance | `#AD1457` | ▶ Romance Extensions (M/F) | `#F48FB1` |
| | | | ▶ Romance Extensions (F/F) | `#F06292` |
| | | | ▶ Companions & Friends | `#EC407A` |
| 09 | 09 ─ Collectibles & Exploration | `#FF6F00` | ▶ Collectibles | `#FFD54F` |
| | | | ▶ Secrets & Easter Eggs | `#FFCA28` |
| | | | ▶ Exploration Rewards | `#FFC107` |
| 10 | 10 ─ Appearance & Character | `#6A1B9A` | ▶ Body & Presets | `#CE93D8` |
| | | | ▶ Skin, Hair & Eyes | `#BA68C8` |
| | | | ▶ Cyberware Visuals | `#AB47BC` |
| | | | ▶ Tattoos & Scars | `#9C27B0` |
| 11 | 11 ─ Clothing & Fashion | `#4A148C` | ▶ Clothing Sets | `#B39DDB` |
| | | | ▶ Individual Items | `#9575CD` |
| | | | ▶ Virtual Atelier | `#7E57C2` |
| | | | ▶ Outfit System | `#673AB7` |
| 12 | 12 ─ Armor & Gear | `#37474F` | ▶ Gear Sets | `#90A4AE` |
| | | | ▶ Transmog / Vanity | `#78909C` |
| | | | ▶ Special Equipment | `#607D8B` |
| 13 | 13 ─ Weapons | `#B71C1C` | ▶ Firearms | `#EF9A9A` |
| | | | ▶ Melee | `#E57373` |
| | | | ▶ Cyberware Weapons | `#EF5350` |
| | | | ▶ Attachments & Optics | `#F44336` |
| 14 | 14 ─ Apartments & Housing | `#00695C` | ▶ Player Homes | `#80CBC4` |
| | | | ▶ Decorations & Furniture | `#4DB6AC` |
| | | | ▶ Garage | `#26A69A` |
| 15 | 15 ─ Vehicles & Transport | `#0D47A1` | ▶ Driving Overhaul | `#64B5F6` |
| | | | ▶ New Vehicles | `#42A5F5` |
| | | | ▶ Customization | `#2196F3` |
| | | | ▶ Metro / NCART | `#1E88E5` |
| 16 | 16 ─ Locations & World Expansion | `#33691E` | ▶ Open Buildings | `#AED581` |
| | | | ▶ Rooftops & Vertical | `#9CCC65` |
| | | | ▶ New Interiors | `#8BC34A` |
| 17 | 17 ─ Visuals & Atmosphere | `#1A237E` | ▶ Lighting | `#7986CB` |
| | | | ▶ Weather & LUTs | `#5C6BC0` |
| | | | ▶ Textures | `#3F51B5` |
| 18 | 18 ─ Audio & Music | `#880E4F` | ▶ Sound Overhaul | `#F48FB1` |
| | | | ▶ Custom Radio | `#F06292` |
| | | | ▶ Ambient & SFX | `#E91E63` |
| 19 | 19 ─ Performance & Optimization | `#424242` | — | — |

### Quick Setup

For a faster setup, a `separators.txt` file is included in the repo. Create
separators manually via right-click → Create Separator, naming each one, then
set colors from the table above.

> Mods are added below as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
