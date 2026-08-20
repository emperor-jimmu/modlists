= Migrating from Wave 0

== Backup Your Saves

Wave 1 uses many of the same save files as Wave 0, but mods can corrupt saves. Back up your save folder before installing new mods:

`Documents\Rockstar Games\GTA V\Profiles\<your-profile-id>\`

== Building on Wave 0

Wave 1 *keeps* every Wave 0 mod — you are layering on top, not replacing:

1. Keep ScriptHookV, OpenIV, HeapAdjuster, Packfile Limit Adjuster, and Bugstar Fixes installed.
2. Add Wave 1 mods in order: graphics → content → mechanics.
3. Apply a custom `gameconfig.xml` (below) before heavy content packs.

Only remove a Wave 0 mod if a specific Wave 1 mod's documentation says it conflicts — none in this list do.

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
  [SirenSetting Limit Adjuster], [Siren limit for add-on emergency vehicles],
)

== Gameconfig.xml

Many graphics and content mods require a custom *Gameconfig.xml* to increase memory limits:
1. Download a 1.0.3889.0-compatible Gameconfig.xml
2. Install to: `/mods/update/update.rpf/common/data/gameconfig.xml`
3. Without this, the game crashes when loading heavy mods
