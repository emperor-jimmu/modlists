= Wave 0: Modlist

Wave 0 is *vanilla plus*: quality-of-life, interface, and bug-fix mods only. No graphics overhauls, no new content, no gameplay changes. The foundation (ScriptHookV, ScriptHookVDotNet, OpenRPF, CodeWalker) is installed per the *Before You Begin* guide.

== Mod Entry Format

Each entry shows:
- *Category:* UI / QoL / Bugfix
- *Version:* Compatible with GTA V Enhanced 1.0.1158.13
- *Dependencies:* Required tools or mods
- *Install path:* Where files go
- *System Impact:* What the mod changes
- *Installation:* Special steps (if any)

== Stability & QoL

These two tools prevent the most common modded-game crashes. They change nothing visually or mechanically — they only raise engine limits so the game doesn't fall over. On Enhanced, use the *Enhanced* builds of both.

=== #link("https://www.gta5-mods.com/tools/heapadjuster")[HeapAdjuster]
- *Category:* QoL / stability
- *Author:* Dilapidated
- *Version:* latest Enhanced build (see source)
- *Dependencies:* None
- *Install path:* Game root (`HeapAdjuster.asi` + `HeapAdjuster.ini`)
- *System Impact:* Raises the memory-heap limit
- *Installation:* Copy the `.asi` and `.ini` into the GTA V root folder.

Fixes `ERR_MEM_EMBEDDEDALLOC_ALLOC` crashes, which happen when the game loads too many custom assets (high-poly vehicles, add-on DLC). The bundled `.ini` lets you raise the heap size; the default is fine for Wave 0 and only needs raising in Wave 1.

=== #link("https://www.gta5-mods.com/tools/packfile-limit-adjuster")[Packfile Limit Adjuster]
- *Category:* QoL / stability
- *Version:* latest Enhanced build (see source)
- *Dependencies:* None
- *Install path:* Game root (`.asi`)
- *System Impact:* Raises the packfile (`.rpf`) limit
- *Installation:* Copy the `.asi` into the GTA V root folder.

Fixes `ERR_FIL_PACK_1` crashes by raising the number of `.rpf` archives the game can open. Harmless in Wave 0 and required by most Wave 1 content packs.

== Bug Fixes

=== #link("https://www.gta5-mods.com/misc/fixes-improvements")[Bugstar Fixes]
- *Category:* Bugfix
- *Author:* Alex106
- *Version:* 7.0 (Enhanced build available)
- *Dependencies:* CodeWalker (mods folder)
- *Install path:* `/mods/` (via CodeWalker)
- *System Impact:* Fixes long-standing engine and world bugs
- *Installation:* Install the Enhanced build into the `mods` folder via CodeWalker.

A community patch collection that corrects engine glitches and broken vehicle/pedestrian/world configuration left in the base game. Keeps the vanilla experience intact while removing annoyances — no new content or balance changes.

== Not included (deliberately)

- *Trainers* (Simple Trainer, Menyoo, Rampage, Enhanced Native Trainer) — the no-cheating / no-all-knowing rule excludes them from every wave.
- *Graphics overhauls* — these live in Wave 1; Wave 0 keeps the vanilla look.

== User to provide

If you want a standalone HUD/UI mod that changes the interface (rather than fixing it), verify it targets Enhanced 1.0.1158.13 and add it here. None are included by default because Wave 0 keeps the vanilla UI.

== Carried into Wave 1

Every mod in this wave stays installed in Wave 1. Wave 1 layers graphics, content, and mechanics on top of this foundation — nothing here is removed when you migrate.