// 98-conflicts.typ -- Known Conflicts

#pagebreak()
#import "lib.typ": callout

= Known Conflicts

Documented incompatibilities, conflict resolution steps, and DLC mount
priority notes.

#callout("warning")[
  When two mods modify the same game file, the mod installed LAST wins.
  Always check this section before adding mods to your install order.
]

== Incompatible Mod Pairs

_None documented yet. Add entries as conflicts are discovered._

== Overwrite Warnings

When two texture mods modify the same game file, the mod installed LAST wins.
Texture mods should generally be installed AFTER all content mods.

*LEUITM and LEDs ON LE1 (LE1)*

LEUITM replaces many armor and character textures, while LEDs ON LE1 specifically
enables LED lighting on armor suits. These mods are generally compatible, but
install LEUITM LAST to ensure its character textures take priority. The LED
changes should persist as they modify different texture properties.

*Zeb's Eye Re-Textures and Other Eye Mods (LE1/LE2/LE3)*

Zeb's Eye Re-Textures replaces eye textures across all three games. This will
overwrite any other eye texture mods installed before it. Compatible with
renegade scarring from the base game.

*GunMetal Weapon Textures and Other Weapon Mods (LE2/LE3)*

GunMetal modifies weapon albedo, normal, and tint maps. If you install other
weapon texture mods after GunMetal, they will overwrite GunMetal's changes.
Install GunMetal LAST among weapon texture mods.

*Improved Normandy Crash Site Flashback Textures and Unofficial LE2 Patch (LE2)*

The Unofficial LE2 Patch includes its own improved flashback textures. If using
both mods, install the Flashback Textures mod AFTER the Unofficial LE2 Patch,
or use the LE2 Patch compatible version available on the mod page.
