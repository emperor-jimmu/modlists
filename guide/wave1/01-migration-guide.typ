= Migrating from Wave 0

== Backup Your Saves

Wave 1 uses many of the same save files as Wave 0, but mods can corrupt saves. Back up your save folder before installing new mods:

`Documents\Rockstar Games\GTA V\Profiles\<your-profile-id>\`

== Removing Wave 0 Mods

Some Wave 0 QoL mods may conflict with Wave 1 mechanics mods. When in doubt:
1. Clear the */mods/* folder
2. Reinstall only Wave 1 mods
3. Keep ScriptHookV and OpenIV — they're shared

== New Dependencies

Wave 1 mods often require additional frameworks:

#table(
  columns: (auto, auto),
  [*Framework*], [*Purpose*],
  [ScriptHookVDotNet], [.NET-based mods],
  [NativeUI], [Custom menu interfaces],
  [LemonUI], [Alternative UI framework],
  [MapEditor], [Map/content editing],
  [HeapAdjuster], [Memory limit adjustment for heavy mods],
)

== Gameconfig.xml

Many graphics and content mods require a custom *Gameconfig.xml* to increase memory limits:
1. Download a v1.73-compatible Gameconfig.xml
2. Install to: */mods/update/update.rpf/common/data/gameconfig.xml*
3. Without this, the game crashes when loading heavy mods
