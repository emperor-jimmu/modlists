#import "../../../typst/styles.typ": *

= Load Order — Wave 1

The correct load order for all Wave 1 mods, listed from top to bottom. Mods loaded first appear at the top; mods loaded last override and appear at the bottom.

#warning-box[The load order is a suggested template based on placeholder mods. When real mods are added, update this table with actual mod names and verified positions. Load order is critical in Wave 1 — mods that affect the same systems must be ordered correctly to avoid overrides and conflicts.]

=== Load Order Rules (Wave 1)

+ *UI/QoL mods*: Load first — they should not override game mechanics
+ *Graphics mods*: Load after UI/QoL — they affect rendering, not logic
+ *Content addition mods*: Load after graphics — new items and troops must load before mods that modify them
+ *Light mechanic mods*: Load last — they modify game systems and need to see the full content stack

#table(
  columns: (auto, auto, auto, 1fr),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Position*], [*Category*], [*Mod*], [*Notes*],
  [1.], [UI/QoL], [Enhanced Encyclopedia], [UI-only, loads first to avoid conflicts],
  [2.], [UI/QoL], [Battle Camera & Controls], [UI-only, independent],
  [3.], [Graphics], [Lighting & Atmosphere], [Rendering layer, must load before texture mods],
  [4.], [Graphics], [Texture Enhancement], [Replaces base textures],
  [5.], [Graphics], [Character Models], [Depends on texture mod for base textures],
  [6.], [Content addition], [New Equipment], [Adds items before troop mods reference them],
  [7.], [Content addition], [Expanded Troop Trees], [References equipment from New Equipment],
  [8.], [Content addition], [Companions & NPCs], [Independent content addition],
  [9.], [Light mechanic], [Diplomacy Expansion], [Modifies kingdom diplomacy layer],
  [10.], [Light mechanic], [Improved AI], [Modifies game logic — loads after content],
  [11.], [Light mechanic], [Tournament & Arena], [Modifies tournament logic],
  [12.], [Light mechanic], [Bandit & Minor Faction], [Modifies faction logic],
  [13.], [Light mechanic], [Culture & Settlement], [Modifies settlement logic — loads last to override culture systems],
)
