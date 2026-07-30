#import "../../typst/theme.typ": mod-panel, tokugawa-navy, tokugawa-gold

== Wave 2: Mod List

Wave 2 introduces campaign overhauls, expanded maps, and deeper mechanics. These mods significantly change how the game plays.

=== Expanded Mechanics

#mod-panel("Sinkable Ships", "https://steamcommunity.com/sharedfiles/filedetails/?id=2105458722", tokugawa-navy)[
  Ships can now be sunk by sustained ranged fire (arrows, bullets, cannon) rather than only through boarding. Makes naval battles more dynamic and realistic — ranged supremacy becomes a viable strategy at sea, and every engagement carries greater risk for both sides.
]

#mod-panel("Kneel Fire for Matchlocks", "https://steamcommunity.com/sharedfiles/filedetails/?id=285212680", tokugawa-navy)[
  Grants matchlock-armed units the Kneel Fire ability: the front rank kneels so the rear rank can fire over them, doubling volley density. A historically authentic formation that gives matchlock units a tactical edge in defensive positions. Both the player and AI can use it.
]

#mod-panel("New Unique Garrison Retainers", "https://steamcommunity.com/sharedfiles/filedetails/?id=2131378524", tokugawa-navy)[
  Replaces generic garrison units with unique retainer compositions that vary by clan and castle level. Makes defending settlements feel more thematic and gives each clan's home territory a distinctive defensive character. Compatible with vanilla campaigns.
]

=== Campaign Pacing

#mod-panel("12 Turns per Year (Shogun 2 + RotS, with Otomo fix)", "https://steamcommunity.com/sharedfiles/filedetails/?id=3357610873", tokugawa-navy)[
  Changes the campaign calendar from 4 turns per year to 12 turns per year (3 per season). This extends the Sengoku campaign from ~154 turns to 660 turns, and Rise of the Samurai to 350 turns. Both the player and AI operate on the same calendar — this is a pacing preference, not a cheat. Characters age more slowly relative to progress, and you have more time to prepare before Realm Divide triggers at the historical date. Updated version by Ravonator: fixes the Otomo DLC crash present in the original mod, and correctly extends the Shogunate-hold requirement to 12 rounds instead of 4. Works in multiplayer campaigns.

  #v(4pt)
  #set text(size: 10pt)
  - Total turns (Sengoku): 660
  - Total turns (RotS): 350
]

=== AI & Difficulty Mods

#mod-panel("UAI Updated (RotS support) with Yarki's Reduced AI Cheating", "https://steamcommunity.com/sharedfiles/filedetails/?id=2243596240", tokugawa-navy)[
  An update to TheHedgeKnight's Universal AI mod. The AI gives more weight to military strength in diplomacy, plays safer with naval invasions, defends borders more actively, and is less fixated on producing light ships. Also includes Yarki's Reduced AI Cheating — on Easy and Normal difficulty, the AI plays with the same resistance to public order penalties as the player, rather than receiving hidden buffs. All UAI improvements are ported to Rise of the Samurai. Out-of-scope changes from the original UAI (diplomatic attitudes, event generation) have been reverted for broader compatibility. Last updated: September 2020.
]

=== Compatibility Notes

Wave 2 mods have the highest potential for conflicts. Always:
1. Read the full Workshop description for known incompatibilities
2. Check the last-updated date
3. Review recent comments before subscribing
4. Test with a new campaign (not a saved game) after changing load order
