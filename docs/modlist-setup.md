# Modlist Setup

This guide walks you through installing and configuring **Mod Organizer 2 (MO2)** to manage your Stellaris mods with version locking.

## Why Mod Organizer 2?

- **Version locking** — stop auto-updates from breaking your campaign
- **Profiles** — separate mod sets for different playthroughs
- **Virtual filesystem** — your Stellaris install stays clean
- **Visual separators** — color-coded categories for easy management

## Installation

### Prerequisites

- Stellaris installed via Steam
- Windows 10 or later

### Step 1: Download Mod Organizer 2

[Download MO2 from GitHub](https://github.com/ModOrganizer2/modorganizer/releases) (latest stable release). Install to a location outside Program Files to avoid permission issues — e.g., `C:\Games\Mod Organizer 2`.

### Step 2: Configure for Stellaris

1. Launch MO2. It will ask for a game — select **Stellaris**.
2. If Stellaris isn't in the list, manually point MO2 to your Stellaris executable (e.g., `C:\Program Files (x86)\Steam\steamapps\common\Stellaris\stellaris.exe`).
3. MO2 will create a mod directory. Set it to a location with enough space.

### Step 3: Download Mods

**From Steam Workshop:**
1. Subscribe to mods on Steam Workshop.
2. Launch MO2 — it will detect Workshop downloads.
3. Enable each mod in the left panel. MO2 manages load order.

**From other sources (GitHub, Discord, Paradox Mods):**
1. Download the mod archive.
2. Drag the folder into MO2's download tab, or manually place it in your MO2 mod directory.

### Step 4: Version Locking

1. In MO2, right-click a mod in the left panel.
2. Select **Ignore Updates** to prevent Steam from auto-updating it.
3. For manual mods, keep a backup of the original archive.

### Step 5: Create a Profile

1. Click the profile dropdown in MO2's top bar.
2. Select **Manage Profiles** → **Create New**.
3. Name it (e.g., "Modded 2026 v1"). This isolates your mod set from vanilla.

## Load Order Basics

Mods lower in the left panel override mods higher up. General ordering:

1. Bugfixes
2. Audio
3. UI / HUD
4. Graphics
5. AI & Diplomacy
6. Economy & Automation
7. Warfare & Ships
8. Technology
9. Events & Story
10. Origins & Civics
11. Species, Genetics & Portraits
12. Galaxy & Setup

See [Load Order](load-order.md) for the detailed rules and separator definitions.

## Handling Stellaris Version Updates

When Stellaris updates (major or minor), most mods will break until their authors update them. Never update Stellaris mid-campaign.

### Checking Your Version

In Steam, right-click Stellaris → **Properties** → **Betas** tab. The current stable version is shown there.

### Reverting to a Previous Version

If an update breaks your setup:

1. Right-click Stellaris in Steam → **Properties** → **Betas**
2. Select the version your guide was built for (e.g., `3.12 - "Andromeda"`)
3. Steam will downgrade the game
4. Mods tied to that version will work again

Older versions remain available on Steam indefinitely — Paradox doesn't remove them. Each version is tagged with a name (e.g., "Andromeda", "Bermuda", "Cepheus").

### Version Matching

Every entry in this guide's modlist notes whether the mod is version-locked. Keep your game version matching the mods' target version.

### Starting Fresh

When you're ready to move to a new Stellaris version:

1. Create a new MO2 profile
2. Update mods that have been patched
3. Replace mods that were abandoned
4. Update this guide's `VERSION` file
5. Start a new campaign

## Next Steps

With MO2 set up, head to [The Modlist](modlist/) to start choosing your mods.
