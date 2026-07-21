#import "../../../typst/styles.typ": *

= Load Order — Wave 2

The correct load order for all Wave 2 mods, listed from top to bottom. This includes mods inherited from Waves 0 and 1 plus the new Wave 2 entries.

#warning-box[The load order is a suggested template based on placeholder mods. When real mods are added, update this table with actual mod names and verified positions.]

=== Load Order Rules (Wave 2)

+ *UI/QoL and Graphics*: Inherited from Waves 0 and 1 — load first
+ *Content addition*: Inherited from Wave 1 + new Wave 2 content — load after graphics
+ *Light mechanic*: Inherited from Wave 1 — load after content
+ *Heavy overhaul*: New in Wave 2 — load last, ordered by system dependency:
  1. Economy (other systems depend on prices and trade)
  2. World & Faction (map and faction changes define the playing field)
  3. Combat & Damage (combat math applies on top of faction balance)
  4. Troop & Recruitment (troops depend on faction definitions)
  5. Kingdom Management (highest-level system — depends on everything below)

#danger-box[Wave 2 load order is the most fragile. A single misplaced mod can cause cascading conflicts. Test the full load order before starting a campaign. When in doubt, load the mod that changes the FEWER systems first, and the mod that changes the MOST systems last.]
