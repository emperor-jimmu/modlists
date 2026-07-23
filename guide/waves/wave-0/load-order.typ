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
)

#tip-box[Wave 0 has only 2 mods. BLSE's Auto-Sort will handle this correctly by default. If you add additional UI/QoL mods from future waves, insert them between these two positions or after position 2.]
