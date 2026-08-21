#import "../../theme.typ": *

== Combat Basics

=== The Three Bars

- *Health* — your HP. Potions refill it; getting hit empties it. When it hits zero you cart (see *The Hunt*).
- *Stamina* — spent by sprinting, dodging, and many attacks. Manage it: an exhausted hunter is a dead hunter. Meat/rations restore it.
- *Sharpness (melee)* — weapons dull with use; a dull blade bounces and deals less damage. *Whetstone* restores it, and every sharpness tier (green, blue, white…) is a real damage step. Sharpening takes a moment — do it when the monster is busy, not while it is looking at you.

Ranged weapons trade sharpness for *ammo/coatings* — you carry your resource economy instead.

=== The 14 Weapons

Every weapon is a complete fighting style. Pick the one that clicks, not the "best" one — all are endgame-viable.

#table(
  columns: (22%, 78%),
  stroke: 0.4pt + LINE,
  fill: (x, y) => if y == 0 { EMBER_DK } else { white },
  table.header(
    [#text(fill: SNOW, weight: "bold", font: DISPLAY, size: 9.5pt)[Weapon]],
    [#text(fill: SNOW, weight: "bold", font: DISPLAY, size: 9.5pt)[One-line verdict]],
  ),
  [*Great Sword*], [Big charged hits; slow, deliberate, devastating punishes. The patience weapon.],
  [*Long Sword*], [Flow and counters; build the spirit gauge, spend it on powerful combo finishers.],
  [*Sword & Shield*], [Fast, flexible, can use items while unsheathed; the friendliest weapon to learn.],
  [*Dual Blades*], [Relentless fast attacks, high element damage; stamina-hungry, very mobile.],
  [*Hammer*], [Blunt, heavy, and the king of stuns; break heads and knock monsters out.],
  [*Hunting Horn*], [The support hammer: buffs allies with melodies while doing respectable blunt damage.],
  [*Lance*], [The wall: best blocking, poke and counter forever; positioning > mobility.],
  [*Gunlance*], [Lance with explosions: block, stab, and shell; shelling ignores hit zones.],
  [*Switch Axe*], [Two forms — axe and sword — with an elemental discharge finisher; aggressive, technical.],
  [*Charge Blade*], [The most complex: charge phials in sword mode, spend them on big axe-mode burst.],
  [*Insect Glaive*], [Aerial combat and a kinsect buddy that collects extracts; very mobile, hard to master.],
  [*Light Bowgun*], [Rapid-fire shots with every ammo type; mobile and safe, high maintenance.],
  [*Heavy Bowgun*], [Stationary artillery; highest raw damage at range, slow to move.],
  [*Bow*], [Mobile ranged combo weapon with charge levels and coatings; high skill ceiling.],
)

=== The Combat Principles

- *Position over reflexes.* Most deaths come from standing where the attack lands, not from slow reactions. Be on the monster's *side*, not in front of the mouth.
- *Dodge through, or block.* Dodges have invincibility frames at the start; blocks (shield weapons) negate damage but cost stamina or knockback. Learn which attacks you can dodge and which you must block.
- *Hit zones matter.* Damage numbers and bouncing tell you where to hit. Weak spots — often the head — take noticeably more damage. The Hunter's Notes record each monster's weak points.
- *Elements and status.* Monsters resist or fear elements (fire, water, thunder, ice, dragon) and statuses (poison, paralysis, sleep, blast). Matching the weakness is free damage — check the Notes.
- *The monster is a clock.* Every attack has wind-up, active, and recovery frames. The recovery is your opening. Attack during recovery, not during wind-up.

=== Wirebugs

Wirebugs are Rise's signature tool — silk-like grappling bugs that let you launch yourself around the monster and recover from mistakes:

- *Wirefall:* knocked down? Press the wirebug action to recover instantly and escape the follow-up attack. This single mechanic saves more hunts than any armor skill.
- *Silkbind attacks:* every weapon has special wirebug moves with cooldowns — powerful attacks or utility. Read them in the weapon controls and practice in the training area.
- *Traversal:* wirebug leaps get you up cliffs and across gaps; *Great Wirebugs* in the field launch you across the map.
- You start with two wirebugs (a skill can add a third). Spent wirebugs recharge over time.

=== Mounting & Wyvern Riding

Attack while airborne (or with wirebug moves) to build the *riding* state. When it triggers, the monster becomes *rideable*: you control it briefly, and its attacks — including slamming it into other monsters — deal enormous damage. In a pinch, riding is both a free damage window and a way to stop an out-of-control monster.

=== Blights & Status on You

Monsters inflict *blights* (fire, water, thunder, ice) and statuses (poison, paralysis, stun, sleep). Symptoms are in the top-left of the HUD. Nullberries cure blights; cleanser/antidote items cure poison; getting hit while stunned or paralyzed is fatal — avoid it by not being greedy when the monster is enraged.

=== The Training Area

Before every weapon switch, spend five minutes in the training area: hit the dummy, try each silkbind move, and learn your dodge. It is the fastest way to go from "button mashing" to "hunting."
