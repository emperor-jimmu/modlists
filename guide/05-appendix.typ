= Appendix

== Troubleshooting

=== Game Crashes on Launch

1. Verify game file integrity in your launcher
2. Remove all files from `lml_mods/` — test in vanilla
3. Re-install LML: replace `version.dll`
4. Check `Documents/Rockstar Games/RDR2/Settings/system.xml` for
   corrupted settings

=== Mods Not Loading

1. Ensure `version.dll` is in the game root
2. Verify each mod's folder structure matches LML expectations
3. Check LML's log (generated in the `LML/` folder)
4. Mods requiring Script Hook won't work without `ScriptHookRDR2.dll`

=== Save File Issues

- Disable all mods before loading a vanilla save
- Wave 1 saves are not backward-compatible with Wave 0
- Backup saves before adding or removing mods

== Performance Tuning

+----------------------------+----------+----------+
| Setting                    | Wave 0   | Wave 1   |
+----------------------------+----------+----------+
| Resolution                 | 1440p    | 1080p    |
| Texture Quality            | Ultra    | Ultra    |
| Reflection Quality         | High     | Medium   |
| Water Quality              | High     | Medium   |
| Volumetric Quality         | Medium   | Low      |
| Tree Tessellation          | On       | Off      |
| Near Volumetric Resolution | High     | Medium   |
+----------------------------+----------+----------+
