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
)

#tip-box[Wave 0 contains 5 UI/QoL mods. BLSE's Auto-Sort will handle lightweight UI mods correctly. All mods are UI-only with no mechanical impacts.]
