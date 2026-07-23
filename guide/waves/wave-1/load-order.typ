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
  [4.], [Graphics], [Immersive Battlefields], [Audio overlay — loads before BloodMod],
  [5.], [Graphics], [BloodMod], [Visual effects — loads before body/holster mods],
  [6.], [Graphics], [Random Bodies], [Character variety — after BloodMod, before holsters],
  [7.], [Graphics], [Realistic Practical Holsters], [Weapon visuals — before armor packs],
  [8.], [Graphics], [Swadian Armoury], [Asset pack — before sound mods that reference items],
  [9.], [Graphics], [Realistic Battle Sounds], [Audio overlay — loads last in Graphics section],
  [10.], [Content Addition], [Cultured Start Reloaded], [Character creation — must load early. Requires framework.],
  [11.], [Content Addition], [Women in Calradia], [New characters — load before mods that reference NPCs],
  [12.], [Content Addition], [Open Source Armory], [Asset pack — must load before troop mods that use its items],
  [13.], [Content Addition], [Bandit Variety], [New troop trees — after character mods, before mechanics],
  [14.], [Content Addition], [Titles], [Immersion content — loads independently. Note: disable if using Banner Kings (Wave 2).],
  [15.], [Content Addition], [Player Settlements], [Settlement system — after character mods, before mechanics],
  [16.], [Content Addition], [Retinues], [Custom troop trees — after all equipment and troop mods],
  [17.], [Content Addition], [Warlord Pack], [Feature pack — after troop mods. Disable Manhunters if CEK (Wave 2) active.],
  [18.], [Content Addition], [Captivity Events], [Event system — after settlement mods],
  [19.], [Content Addition], [Camp Followers], [Army menu additions — last in Content Addition],
  [20.], [Light Mechanic], [Better Time], [Time control — early mechanic layer. Requires Better Core.],
  [21.], [Light Mechanic], [Raise your Torch], [Battle visual/mechanic — after content, before other battle mods],
  [22.], [Light Mechanic], [Useful Companions], [Companion behavior — after NPC mods, before dialogue. No Harmony.],
  [23.], [Light Mechanic], [Complex Characters], [Dialogue/ambition system — before rumor and scheme mods],
  [24.], [Light Mechanic], [Rumor Has It], [Rumor system — after dialogue framework],
  [25.], [Light Mechanic], [Kingdom Politics Expanded], [Kingdom politics — before faction and diplomacy mods],
  [26.], [Light Mechanic], [Fourberie], [Rogue gameplay — after dialogue, before combat mechanics],
  [27.], [Light Mechanic], [Art of War], [Campaign AI — loads after faction mods],
  [28.], [Light Mechanic], [Realistic Weather], [Weather effects on campaign map — after faction mods],
  [29.], [Light Mechanic], [Breakable Polearms], [Battle mechanic — after troop mods, before compilations],
  [30.], [Light Mechanic], [Surrender Tweaks], [Surrender/capture logic — late behavioral layer],
  [31.], [Light Mechanic], [Realistic Morale System], [Battle morale — late battle logic layer],
  [32.], [Light Mechanic], [Epic Sieges], [Siege parameters — before compilation mods],
  [33.], [Light Mechanic], [Nemesis], [Voice/taunt system — after NPC mods, before compilations],
  [34.], [Light Mechanic], [Malfoy Collection], [Tweak compilation — before relationship mods],
  [35.], [Light Mechanic], [Pregnancy Control Continued], [Dynasty system — after NPC mods],
  [36.], [Light Mechanic], [Dramalord], [Relationship overhaul — after NPC and dialogue systems],
  [37.], [Light Mechanic], [Xorberax's Legacy], [Multi-system compilation — loads last to avoid overrides. Disable Deadly Combat, Deadly Horse Charges, and Friendly Fire.],
)

#tip-box[The foundation framework mods (Harmony, ButterLib, UIExtenderEx, MCM, Better Exception Window, Better Core) are installed separately and BLSE will auto-sort them above this list. Do not manually place them in the Wave 1 load order.]
