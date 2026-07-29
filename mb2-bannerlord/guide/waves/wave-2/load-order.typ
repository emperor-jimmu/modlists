#import "../../../typst/styles.typ": *

= Load Order — Wave 2

The correct load order for Wave 2 mods, listed from top to bottom. This extends the combined Wave 0 and Wave 1 load order — all previous mods remain in their established positions.

#warning-box[The complete load order spans all three waves (35+ mods). BLSE's Auto-Sort should be used first, then manually verify positions against all three wave load order tables. The Wave 2 additions below are appended AFTER the Wave 1 load order.]

=== Wave 2 Additions

These are the new Heavy Overhaul mods, ordered by system dependency as defined by Wave 2 rules: World → Economy → Kingdom → Integration.

#table(
  columns: (auto, auto, auto, 1fr),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Position*], [*Category*], [*Mod*], [*Notes*],
  [31.], [Heavy Overhaul], [Calradia Expanded], [World layer — adds settlements. Must load before faction mods. NOT save compatible.],
  [32.], [Heavy Overhaul], [Calradia Expanded Kingdoms], [World/Faction layer — adds kingdoms, troop trees. After CE, before BK. NOT save compatible.],
  [33.], [Heavy Overhaul], [Banner Kings], [Economy/Kingdom layer — populations, titles, settlement management. After world mods. Requires ButterLib 2.4.1+.],
  [34.], [Heavy Overhaul], [Diplomacy], [Kingdom layer — external diplomacy. After economy mods.],
  [35.], [Heavy Overhaul], [AI Influence], [Kingdom/Diplomacy layer — narrative AI. After mechanical diplomacy.],
  [36.], [Heavy Overhaul], [Banner Kings Integrations], [Integration patch — must load AFTER all its dependencies: BK, CEK, Warlord Pack. Absolute last.],
)

=== Load Order Rules (Wave 2)

+ *UI/QoL and Graphics*: Inherited from Waves 0 and 1 — positions 1–5
+ *Content addition*: Inherited from Wave 1 — positions 6–15
+ *Light mechanic*: Inherited from Wave 1 — positions 16–30
+ *Heavy overhaul*: New in Wave 2 — positions 31–36, ordered by system dependency:
  1. World (map and faction changes define the playing field)
  2. Economy (other systems depend on prices and trade)
  3. Kingdom Management (highest-level system — depends on everything below)
  4. Integration patches (load after all their dependencies)

#danger-box[Wave 2 load order is the most fragile. Calradia Expanded, CEK, and Banner Kings require fresh campaigns. Always test the full load order before starting. Banner Kings Integrations MUST be last — it patches the other mods and will fail if loaded earlier.]
