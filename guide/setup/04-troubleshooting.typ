== Troubleshooting

=== Game Crashes on Launch

1. Verify SFSE version matches game version.
2. Check MO2 plugin list for incompatible plugins.
3. Disable mods in batches to isolate the culprit.

=== Textures Appear Black or Missing

- Check `bInvalidateOlderFiles=1` in `StarfieldCustom.ini`.
- Verify MO2 left-pane order — textures should load after vanilla assets.

=== Mods Not Appearing In-Game

1. Verify the mod is enabled in MO2's left pane.
2. Check the mod's plugin is checked in the right pane.
3. Launch via SFSE, not the vanilla executable.

=== Common CTD Causes

- Missing master or dependency (check MO2 warnings triangle).
- Outdated SFSE plugins.
- Conflicting mods editing the same record.

=== Getting Help

- Check `conflicts-mods.md` in the modlist root.
- Visit the mod's Nexus page for known issues.
