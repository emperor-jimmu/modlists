#import "../../../typst/styles.typ": *

= Load Order — Wave 0

The correct load order for all Wave 0 mods, listed from top to bottom. Mods loaded first appear at the top; mods loaded last override and appear at the bottom.

Use BLSE's Auto-Sort function to resolve this automatically. If Auto-Sort places mods incorrectly, manually drag them to match this order.

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Position*], [*Mod*], [*Notes*],
  [1.], [Banner Fix], [Graphics fix loads first — applies before UI overlays],
  [2.], [All Heroes Are Visible In Battle], [UI overlay loads after graphics fixes. No dependencies.],
  [3.], [Aggregated Income], [Tooltip enhancement — UI-only. Uses Harmony.],
  [4.], [Alert on High Selling Price], [Trade alert — UI-only. Requires MCM.],
  [5.], [Banner Editor], [Banner creation tool — standalone. Loads last in Wave 0.],
  [6.], [Troop Sorting], [Party/roster sorting — standalone UI. Updated for v1.4.7.],
  [7.], [Workshops Completed], [Workshop UI display — requires Harmony and UIExtenderEx.],
  [8.], [BetterPartyTooltip], [Enhanced party tooltip — standalone UI.],
  [9.], [Better Save and Load], [Save/load UI improvement — standalone.],
  [10.], [Fast Inventory UI], [Inventory performance — standalone UI.],
  [11.], [Crafting Piece Sorter], [Smithy UI sorting — standalone.],
  [12.], [Equipment UI Helper], [Equipment tooltip enhancement — standalone UI.],
  [13.], [Missing Hair Fix], [Character visual fix — standalone.],
  [14.], [Butter Icon Fix], [Food icon fix — standalone.],
  [15.], [AI Defend Yourself], [Party behavior fix — standalone.],
)

#tip-box[Wave 0 contains 15 UI/QoL mods. All are standalone or lightweight UI mods. BLSE's Auto-Sort handles them correctly. No mechanical changes — all mods are interface, visual, or behavior fixes only.]
