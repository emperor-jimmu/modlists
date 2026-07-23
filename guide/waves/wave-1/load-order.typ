#import "../../../typst/styles.typ": *

= Load Order — Wave 1

The correct load order for all Wave 1 mods, listed from top to bottom. Mods loaded first appear at the top; mods loaded last override and appear at the bottom.

#warning-box[Load order is critical in Wave 1 — mods that affect the same systems must be ordered correctly to avoid overrides and conflicts. Always use BLSE's Auto-Sort first, then manually adjust to match this order.]

=== Load Order Rules (Wave 1)

+ *Graphics mods*: Load first — they affect rendering, not game logic
+ *Content addition mods*: Load after graphics — new items, characters, and troops must load before mods that modify them
+ *Light mechanic mods*: Load last — they modify game systems and need to see the full content stack

#table(
  columns: (auto, auto, auto, 1fr),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Position*], [*Category*], [*Mod*], [*Notes*],
  [1.], [Graphics], [Raise your Banner], [Visual layer — loads before any content mods],
  [2.], [Graphics], [Perfect Fire Arrows], [Visual-only, standalone — loads independently],
  [3.], [Graphics], [Hairstyles dlx], [Character appearance — loads after base visual mods],
  [4.], [Graphics], [Immersive Battlefields], [Audio overlay — loads last in Graphics section],
  [5.], [Content Addition], [Cultured Start Reloaded], [Character creation — must load early. Requires framework.],
  [6.], [Content Addition], [Women in Calradia], [New characters — load before mods that reference NPCs],
  [7.], [Content Addition], [Bandit Variety], [New troop trees — after character mods, before mechanics],
  [8.], [Content Addition], [Titles], [Immersion content — loads independently],
  [9.], [Content Addition], [Player Settlements], [Settlement system — after character mods, before mechanics],
  [10.], [Content Addition], [Retinues], [Custom troop trees — after all equipment and troop mods],
  [11.], [Light Mechanic], [Better Time], [Time control — early mechanic layer. Requires Better Core.],
  [12.], [Light Mechanic], [Raise your Torch], [Battle visual/mechanic — after content, before other battle mods],
  [13.], [Light Mechanic], [Complex Characters], [Dialogue/ambition system — before rumor and scheme mods],
  [14.], [Light Mechanic], [Rumor Has It], [Rumor system — after dialogue framework],
  [15.], [Light Mechanic], [Fourberie], [Rogue gameplay — after dialogue, before combat mechanics],
  [16.], [Light Mechanic], [Realistic Morale System], [Battle morale — late battle logic layer],
  [17.], [Light Mechanic], [Epic Sieges], [Siege parameters — before compilation mods],
  [18.], [Light Mechanic], [Xorberax's Legacy], [Multi-system compilation — loads last to avoid overrides. Disable Deadly Combat, Deadly Horse Charges, and Friendly Fire.],
)

#tip-box[The foundation framework mods (Harmony, ButterLib, UIExtenderEx, MCM, Better Exception Window, Better Core) are installed separately and BLSE will auto-sort them above this list. Do not manually place them in the Wave 1 load order.]
