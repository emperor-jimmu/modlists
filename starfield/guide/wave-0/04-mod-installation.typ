== Wave 0 Mod Installation

=== Prerequisites

Ensure you have completed the setup guide (MO2, SFSE, Address Library, INI tweaks) before continuing. Frameworks from setup — SFSE, Address Library for SFSE Plugins, Baka Achievement Enabler, and Plugins.txt Enabler — are required by this wave.

=== Installation Order

1. Framework mods first (already covered in setup).
2. UI mods: the StarUI suite, then the Compact UI series, then Undelayed Menus and BetterHUD.
3. Graphics mods: Neutral LUTs, then Starfield HD Reworked Project (optional).

=== Load Order

- Frameworks load first (SFSE plugins, Address Library).
- UI mods load after frameworks; keep the StarUI and Compact suites adjacent for readability.
- Texture replacers load last in the left pane so they override vanilla assets.
- Archive invalidation (`bInvalidateOlderFiles=1`) must be set for the texture mods.

=== Verification

Launch the game via SFSE. Verify:

1. The StarUI and Compact menus appear and are compact/sortable.
2. BetterHUD hides the elements you configured.
3. Neutral LUTs removes the color cast (interiors look neutral, not green).
4. No crashes on save or load.
