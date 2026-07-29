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

*Tali Remastered LE1 vs Children of Rannoch (LE1)*

Both mods replace Tali's appearance in Mass Effect 1 with different custom models.
They cannot be used together. Choose one based on preference:
- Tali Remastered: Full animated face with jaw/teeth/eyelashes, multiple suit options.
- Children of Rannoch: Unique face morphs for all quarians, diverse outfits, concept-art inspired.

*Spectre Expansion Mod - LE1 vs Eclectic Emails (LE1)*

Both mods add new emails to the Private Message Terminal. There is currently some
overlap in email content (~4-5 emails). While not technically incompatible today,
as Spectre Expansion Mod expands with more email content, overlap will likely
increase and Eclectic Emails may be marked incompatible in future versions.

*Spectre Expansion Mod - LE2 vs Eclectic Emails (LE2)*

Both mods add new emails to the Private Message Terminal. There is currently some
overlap in email content. While not technically incompatible today (both use the
email merge format), as Spectre Expansion Mod expands with more email content,
overlap will likely increase. Neither mod should be marked incompatible outright,
but be aware of duplicated emails if using both.

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
