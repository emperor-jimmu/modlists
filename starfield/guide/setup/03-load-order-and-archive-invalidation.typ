== Load Order & Archive Invalidation

=== Plugin Sorting

Starfield uses a plugin-based load order similar to Fallout 4 / Skyrim.

1. Enable plugins in the MO2 right pane.
2. Order: master files first, then plugins, then patches.
3. Use the built-in MO2 priority system (left pane) for asset conflicts.

=== Archive Invalidation

The `StarfieldCustom.ini` setting `bInvalidateOlderFiles=1` tells the game to load loose files over archived ones. Required for texture/mesh replacers.

=== Load Order Guidelines

- Framework mods (SFSE, Address Library) load first.
- UI mods load after frameworks.
- Content mods load after UI.
- Patches and compatibility fixes load last.

Specific load order is provided per wave in its mod installation section.
