// The 3rd Coming - Vanilla Strategy chapter
// Grounded on the XCOM Wiki (xcom.fandom.com): GTS, Magnetic Weapons, Research Projects,
// and class/squad-composition sources (IGN, Fextralife, r/Xcom), fetched 2026-08-12.
// The Core Collection mods preserve vanilla gameplay, so these strategies hold unmodified.

// theme colors + callout (include scope does not share #let bindings from template.typ)
#let cyan = rgb("#00e5ff")
#let red = rgb("#ff2d55")
#let callout(title, body, color: cyan) = block(
  fill: color.transparentize(92%),
  inset: 10pt,
  radius: 6pt,
  stroke: 0.6pt + color,
)[
  #text(weight: "bold", fill: color, title) #body
]

=== Suggested Building Order

The *Resistance Ring* first, the *Guerrilla Tactics School* second - that is the community consensus for WOTC, and it is what this guide recommends.

1. *Resistance Ring (1st).* Unlocks *Covert Actions*, the most efficient early source of supplies, soldiers (including faction heroes), engineers, scientists, and even Avatar Project stall. Its benefits snowball from month one.
2. *Guerrilla Tactics School (2nd).* Its headline upgrade is *Squad Size I* (4 -> 5 soldiers), the single most powerful upgrade in the game, followed by *Squad Size II* (5 -> 6). It also trains rookies into a class of your choice and sells army-wide upgrades (*Vulture*, *Wet Work*, *Integrated Warfare*, *Stay With Me*). Construction: 85 Supplies, 3 Power, 14 days. Because Squad Size I requires a Sergeant, starting with the Ring lets your soldiers earn that rank while the GTS builds.
3. *Flexible 3rd-4th:* *Proving Ground* (Plasma Grenades, experimental ammo, Mimic Beacons), *Training Center* (spend Ability Points, promote to Brigadier), or a *Power Relay* (expansion needs energy).
4. *As needed:* *Infirmary* early if injuries are piling up; *Psi Lab* once you have a stable squad and spare time; *Shadow Chamber* when the story demands it (it also pauses normal research while running its projects).

#callout("Warning:", [
  Never demolish the GTS - you lose every purchased army-wide upgrade with it. It has no engineer slot, so don't try to feed it Workshop adjacency bonuses.
], color: red)

#callout("Tip:", [
  Your bottleneck in WOTC is almost never research speed - it is Supplies and Engineers. Prefer buildings with direct tactical or strategic output over labs early.
])

=== Suggested Squad Composition

A balanced 6-soldier squad covers five roles. The community-standard "foundation" squad:

+ *2 Grenadiers* - armor shredding and cover destruction, the kings of the battlefield.
+ *1-2 Rangers* - close-range flanks, melee, and scouting (*Phantom* scouts stay concealed).
+ *1-2 Sharpshooters* - long-range firepower (*Squadsight*), or the pistol *Gunslinger* build for mobility.
+ *1 Specialist* - heals, hacks, *Haywire Protocol* for enemy robots, and mission objective hacking.
+ *1 flex slot* - a faction hero (Reaper for best-in-class scouting, Templar for melee power, Skirmisher for versatility) or a Psi Operative late game.

*Adjust by mission type:* timed missions favor mobility (Rangers, Skirmishers); Lost missions favor Sharpshooters with *Serial*; Chosen fights want armor shredding and burst damage.

#callout("Tip:", [
  Fatigue and injuries mean a single perfect squad loses campaigns. Aim for two deep "A-teams" - roughly 10-12 leveled soldiers - and rotate. Bonded pairs (see How to Play) should deploy together.
])

=== Research Strategy

The guiding rule: *firepower first, survivability second, utility third.* Research priorities in order:

1. *Modular Weapons* -> *Magnetic Weapons* as soon as available. Magnetic Weapons (about 6,500 research points on standard difficulty) is the campaign's key offensive breakpoint - you want it before ADVENT MECs become common. Unlocks the Magnetic Rifle, Shard Gun, and Mag Pistol; prerequisite for Gauss Weapons.
2. *Hybrid Materials* -> *Plated Armor*. Keeps your leveled soldiers alive through the mid-game.
3. *High-value autopsies* (need the corpse): *Sectoid Autopsy* (unlocks Psionics and Mindshields), *Viper Autopsy* (Battlefield Medicine), *Faceless Autopsy* (Mimic Beacon - one of the best items in the game), *ADVENT MEC Breakdown* (GREMLIN Mark II, unlocks Elerium research).
4. *Resistance Communications / Resistance Radio* - more contacts mean more monthly Supplies and more missions. Take these when income starts limiting you.
5. *Mid-game:* *Elerium* -> *Powered Armor* and the *Plasma Rifle* line (Storm Gun, Beam Cannon, Plasma Lance), *Gauss Weapons* as the second weapon tier.
6. *Shadow Chamber projects* when available (Blacksite Vial, Codex Brain, Encrypted Codex Data, Psionic Gate, Avatar Autopsy) - these advance the story and unlock the final missions; they pause standard research while running.

#callout("Note:", [
  WOTC adds *Breakthroughs and Inspirations*: random one-off bonuses that appear as you research. Take good ones when they arrive (e.g. cheaper/faster Magnetic Weapons), even if they shift your order slightly.
])

#callout("Tip:", [
  Autopsies get *faster with each additional corpse* of that enemy - most can eventually complete instantly. Don't autopsy your only body if a bigger research goal is queued.
])
