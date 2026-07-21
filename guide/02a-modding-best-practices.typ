// 02a-modding-best-practices.typ -- Modding Best Practices

#pagebreak()
#import "lib.typ": callout

= Modding Best Practices

Follow these practices for a stable, conflict-free modded game. The
texture rule is the most important item on this page.

== Always Backup Before Modding

Before installing your first mod, create a full game backup as described
in the Installation chapter. Do this once, while the game is completely
clean. Store the backup somewhere safe and do not modify it.

== Install in Small Batches

Install 3 to 5 mods at a time, then launch the game to verify that
everything works before installing more. This makes it easy to identify
which mod caused a problem if something breaks.

== The Texture Rule

#callout("warning")[
  *Texture mods must always be installed last.*

  Mass Effect Modder (MEM) applies textures directly to the game's
  `.tfc` archive files. This is a one-way operation -- there is no
  simple "uninstall" for textures. If you install texture mods, then
  later add or change DLC-based mods, the texture changes may be
  overwritten, corrupted, or produce visual bugs.

  *The only safe way to add or change mods after applying textures*
  is to restore your clean backup, reinstall all DLC mods in order,
  then reapply all textures from scratch.

  Plan your mod list carefully before touching MEM. Apply textures
  once, when you are certain your DLC mod setup is final.
]

== Document Your Install Order

Keep a personal log of every mod you install and the order in which
you install it. ME3Tweaks tracks installed mods, but a text file or
spreadsheet is invaluable when troubleshooting or when you need to
restore from backup and reinstall.

Recommended format:
```
1. LE1 Community Patch (wave 0)
2. LE2 Community Patch (wave 0)
3. LE3 Community Patch (wave 0)
...
```

== Install Dependencies Before Dependents

If Mod B lists Mod A as a requirement, install Mod A first.
ME3Tweaks will warn you if it detects a missing dependency, but
it cannot always detect every requirement. Read each mod's
description page on NexusMods for dependency information.

== Category Install Order

Install mods in this sequence, from first to last:

#callout("info")[
  1. Bugfixes and Community Patches
  2. Tools and Utilities
  3. Gameplay and Mechanics
  4. Weapons and Armor
  5. UI and Quality of Life
  6. Quests
  7. Content (dialogue, NPCs, non-quest additions)
  8. Audio and Sound
  9. Characters and Appearance
  10. Graphics
  11. Textures (via MEM -- apply absolutely last)
]

Within each category, install mods in the order they appear in this
guide. Mods are listed in recommended install order inside each
category section.

== When to Restore a Backup

You should restore your clean backup when:
- You need to add, remove, or change any mod after textures have been
  applied.
- The game crashes consistently and you cannot identify the cause.
- A mod update requires a clean reinstall (check the mod's changelog).
- You want to switch between Wave 0 and Wave 1 mod setups.

Restoring is simple: delete your current game directory (or rename it)
and copy the clean backup back to the original location.
