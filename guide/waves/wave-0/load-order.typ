#import "../../../typst/styles.typ": *

= Load Order — Wave 0

The correct load order for all Wave 0 mods, listed from top to bottom. Mods loaded first appear at the top; mods loaded last override and appear at the bottom.

Use BLSE's Auto-Sort function to resolve this automatically. If Auto-Sort places mods incorrectly, manually drag them to match this order.

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Position*], [*Mod*], [*Notes*],
  [1.], [Better Fonts & Text Scaling], [Font mods load first to apply before other UI mods],
  [2.], [Better Tooltips], [Depends on font mod for correct text display],
  [3.], [Map Enhancements], [No dependencies — loads independently],
  [4.], [Inventory Management], [No dependencies — loads independently],
  [5.], [Troop & Party Management], [No dependencies — loads independently],
  [6.], [Dialogue & Menus], [No dependencies — loads independently],
  [7.], [Battle Orders], [No dependencies — loads independently],
  [8.], [Save Management], [No dependencies — loads independently],
)

#warning-box[The load order is a suggested template based on placeholder mods. When real mods are added, update this table with actual mod names and verified positions. Always run BLSE Auto-Sort first, then adjust manually if needed.]
