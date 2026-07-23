#import "../../../typst/styles.typ": *

= Load Order — Wave 1.5

Wave 1.5 mods are appended after the Wave 1 load order. These are medium-weight gameplay mods that change significant systems but are not full heavy overhauls.

#warning-box[The complete load order now spans Waves 0, 1, 1.5, and 2. Use BLSE's Auto-Sort first, then manually verify positions against all four wave load order tables.]

=== Wave 1.5 Additions

These mods load after everything in Wave 1, organized by system dependency: character systems → campaign AI → economy → combat → kingdom.

#table(
  columns: (auto, auto, auto, 1fr),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Position*], [*Category*], [*Mod*], [*Notes*],
  [1.], [Light Mechanic], [True Controller], [TGO framework — must load before dependent mods.],
  [2.], [Light Mechanic], [Custom Startup Options], [Character setup — after True Controller.],
  [3.], [Light Mechanic], [Detailed Character Creation], [Character appearance — early layer.],
  [4.], [Light Mechanic], [True Battle Loot], [Loot system — after True Controller.],
  [5.], [Light Mechanic], [Useful Companions], [Companion utility — after character mods. No Harmony.],
  [6.], [Light Mechanic], [Party AI Controls], [Party orders — after companion mods.],
  [7.], [Light Mechanic], [Art of War], [Campaign AI — after faction and party mods.],
  [8.], [Light Mechanic], [Realistic Weather], [Weather effects on campaign map.],
  [9.], [Light Mechanic], [Supply Lines], [Logistics system — after campaign AI.],
  [10.], [Light Mechanic], [Donate Grain], [Settlement interaction — early economy.],
  [11.], [Light Mechanic], [Better Smithing Continued], [Smithing — after economy mods.],
  [12.], [Light Mechanic], [Agriculture Estate Updated], [Estate management — economy layer.],
  [13.], [Light Mechanic], [Kingdom Politics Expanded], [Internal politics — before faction mods.],
  [14.], [Light Mechanic], [Fourberie], [Rogue/schemes — after politics.],
  [15.], [Light Mechanic], [Calradian's Creed], [Stealth/assassination — late gameplay system.],
  [16.], [Light Mechanic], [Enlisted], [Soldier career — new gameplay system.],
  [17.], [Light Mechanic], [AI Values Life], [Tactical surrender — late behavioral layer.],
  [18.], [Light Mechanic], [Surrender Tweaks], [Strategic surrender — after tactical layer.],
  [19.], [Light Mechanic], [AI Executioner], [Execution mechanics — after surrender mods.],
  [20.], [Light Mechanic], [BE — Companion Expanded], [Companion depth — after NPC mods.],
  [21.], [Light Mechanic], [BE — Settlement Interactions], [Settlement depth — after faction mods.],
  [22.], [Light Mechanic], [BE — Spouses Expanded], [Marriage mechanics — after NPC mods.],
  [23.], [Light Mechanic], [BE — Children Expanded], [Dynasty mechanics — after family mods.],
  [24.], [Light Mechanic], [Pregnancy Control Continued], [Dynasty system — after family mods.],
  [25.], [Light Mechanic], [Dramalord], [Relationship overhaul — after NPC mods.],
  [26.], [Light Mechanic], [Reinforcement System], [Battle waves — after combat mods.],
  [27.], [Light Mechanic], [Realistic Morale System], [Battle morale — late battle logic.],
  [28.], [Light Mechanic], [Epic Sieges], [Siege parameters — before compilation mods.],
  [29.], [Light Mechanic], [Battle Duels], [Lord duels — late battle system.],
  [30.], [Light Mechanic], [I Swear Fealty], [Vassalage ceremony — kingdom layer.],
  [31.], [Light Mechanic], [BECOME KING — HOLMGANG], [Duel for throne — late kingdom system.],
  [32.], [Light Mechanic], [Naval DLC Balance Fix], [DLC balance — standalone fix.],
  [33.], [Light Mechanic], [Continuous Naval Battle], [Naval combat — late battle system.],
  [34.], [Light Mechanic], [Xorberax's Legacy], [Compilation — loads last in 1.5. Disable Deadly Combat, Deadly Horse Charges, and Friendly Fire.],
)

#tip-box[Wave 1.5 contains 34 Light Mechanic mods. These were moved from Wave 1 to keep Wave 1 at a manageable 18 Light Mechanic mods (focused on light tweaks and QoL-mechanic hybrids). Wave 2's heavy overhauls load after this entire section.]
