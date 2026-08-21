== Wave 1 Mod Installation

=== Prerequisites

Complete the Wave 0 playthrough first. Create a new MO2 profile for Wave 1 — do not carry over Wave 0 mods. Frameworks (SFSE, Address Library, Baka Achievement Enabler, Plugins.txt Enabler) are re-installed in this profile.

=== Creating a New MO2 Profile

1. In MO2, open the profile dropdown and select *Manage*.
2. Click *Create* and name it `Void Enhanced — Wave 1`.
3. Set it as a *separate profile* (do not copy Wave 0's mods).

=== Installation Order

1. Framework mods (SFSE plugins, Address Library, enablers).
2. Ship Builder Categories (SBC) — before other ship mods.
3. Content mods (quests, weapons, armor, companions).
4. Mechanics mods (Royal Galaxy, Starvival, POI mods, ship flips/snaps).
5. Graphics mods (Starfield HD Reworked Project, optional ReShade).
6. Patches and compatibility fixes.

=== Load Order

Priority, top to bottom:

- Masters and frameworks first (SFSE, Address Library, SBC).
- Framework patches second.
- Quest and content mods third.
- Mechanics mods fourth (Royal Galaxy and Starvival before smaller mechanics tweaks).
- Graphics last (texture replacers lowest in the left pane).
- Comprehensive patches last.

Specific notes:

- Ship Builder Categories loads high; Better Ship Part Flips and Snaps load after it.
- Do not combine Better Ship Part Flips/Snaps with Ship Module Snap Expansion (SMSEX).
- Don't stack Starvival with another survival overhaul, or Royal Galaxy with another total gameplay overhaul.

=== Verification

1. Launch via SFSE.
2. Check each configurable mod's options (Starvival's config book, BetterHUD, The Gang's All Here terminal).
3. Test a save-load cycle.
4. Visit a new location (a Dark Universe base or a restored landmark quest) to confirm content mods load.
