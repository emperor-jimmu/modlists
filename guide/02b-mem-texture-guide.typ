// 02b-mem-texture-guide.typ -- MEM Texture Installation Guide

#pagebreak()
#import "lib.typ": callout

= MEM Texture Guide

Mass Effect Modder (MEM) is the tool for installing texture replacements
in Mass Effect Legendary Edition. Unlike standard DLC-based mods,
texture mods directly modify the game's texture archive files.

== What Is Mass Effect Modder?

MEM is bundled with ME3Tweaks Mod Manager. It handles the installation of
custom textures into the game's `.tfc` (Texture File Cache) archives.
Texture mods can replace any visual asset: character faces, armor,
environments, weapons, skyboxes, UI elements, and more.

Because MEM modifies the game files directly (rather than adding DLC
folders), texture mods are "sticky" -- they cannot be toggled off
like DLC mods. This is why textures must be applied last and why the
backup is essential.

== Where to Get Texture Mods

Texture mods are available on NexusMods under the Mass Effect Legendary
Edition category. Look for mods that:
- Include `.mem` files (the format MEM uses for texture packages).
- Mention "MEM" or "Mass Effect Modder" in their installation
  instructions.
- Specify that they are texture replacements, not DLC packages.

Some mods provide both DLC packages (for non-texture changes) and MEM
files (for texture changes). Install the DLC component through the
Mod Manager, then apply the MEM component through the texture tool.

== Launching MEM

1. Open ME3Tweaks Mod Manager.
2. Locate the Mass Effect Modder tab or menu entry. In recent versions
   of ME3Tweaks, MEM appears as a dedicated tab alongside Mod Management.
3. Select the game you want to texture (Mass Effect 1, 2, or 3 from
   the Legendary Edition). Each game has its own set of texture archives.

== Installing Texture Mods

1. In MEM, click the option to add or load texture mod files. Browse to
   the `.mem` file you downloaded.
2. MEM will scan the `.mem` file and list the textures it contains. Review
   the list to understand what is being replaced.
3. Repeat for each texture mod you want to install. MEM can queue
   multiple `.mem` files before applying them.
4. When you are ready, click Apply (or the equivalent button in your
   MEM version). MEM will write the new textures into the game's `.tfc`
   archives. This process may take several minutes for large texture
   packs.

== Applying and Verifying Textures

The MEM workflow has three stages:
1. *Scan* -- MEM reads the `.mem` files and identifies which textures
   will be replaced.
2. *Install* -- MEM writes the new texture data into the game archives.
3. *Verify* -- Launch the game and visually confirm that the textures
   appear correctly. Check areas or characters that the mod description
   says were changed.

#callout("warning")[
  Do not interrupt MEM while it is writing textures. Closing the
  application mid-write can corrupt your game files, requiring a
  full restore from backup.
]

== Texture Load Order Within MEM

Order matters within MEM, just as it does for DLC mods. When two texture
mods replace the same asset, the mod applied *last* wins.

Apply textures in this sequence:
1. *Base texture packs* first (large overhauls that replace many textures,
   e.g., a complete environment retexture).
2. *Specific overrides* after (mods that replace individual textures,
   e.g., a specific character face or weapon skin).

MEM displays the texture mods in the order you added them. You can
reorder them before applying by dragging entries in the list.

== Common Pitfalls

*Applying textures before all DLC mods are installed.* This is the most
common mistake. If a DLC mod adds new content that references textures
you have already replaced, you may get missing textures, pink surfaces,
or crashes. Always install all DLC mods before touching MEM.

*Conflicting texture mods.* Two mods that replace the same texture will
conflict. The last one applied wins. If the result looks wrong (e.g., a
character has mismatched face and body textures), reorder the texture
mods in MEM and reapply.

*Performance issues.* Large texture packs (4K resolution textures on
every surface) can cause performance problems on lower-end hardware.
If you experience stuttering or extended loading times, consider using
2K versions of texture packs instead of 4K, or skipping environment
textures and only applying character and weapon textures.

*Reverting textures.* There is no "uninstall" for textures. To remove
or change texture mods, you must restore your clean backup and start
over. This is the sole supported method for changing your texture setup.
