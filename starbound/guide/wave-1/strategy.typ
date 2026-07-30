#import "../../lib.typ": tip, concept, warning

= Advanced Strategy

You have beaten the Ruin and seen the credits roll. Now you are back for more — with mods that deepen every system. This chapter covers strategies and knowledge that separate veteran explorers from the rest.

== Planet Tier Optimization

=== Understanding Threat Levels

Every planet has a *threat level* (1-10, shown in the navigation console). Higher threat means:
- Tougher enemies with more health and damage
- Better ore spawns (higher tier)
- Better loot in chests
- Higher chance of rare dungeons and microdungeons

#concept[
  *The tier sweet spot:* Always fight at your armor tier or one tier above. At-tier fights are comfortable. +1 tier fights are challenging but reward more. +2 tiers will kill you unless you have exceptional weapons and movement tech.
]

=== Farming Routes

Once you understand ore tiers, optimize your route:

1. *Iron run (Tier 1):* Any Lush planet. 10 minutes. Get 100+ Iron Ore. Skip caves — surface deposits are faster.
2. *Tungsten run (Tier 2):* Desert planets. Visit the surface merchant for Manipulator Modules.
3. *Titanium run (Tier 3):* Ocean planets. Beam to the ocean floor. Titanium deposits are visible on the seabed.
4. *Durasteel run (Tier 4):* Toxic planets. Bring antidotes. Underground deposits are rich.
5. *Endgame ores:* Visit each racial-tier planet type (Frozen = Aegisalt, Fiery = Ferozium, Radioactive = Violium). For Solarium, farm the core of Fiery planets.

#tip[
  Buy ore from merchants when you have excess pixels. The Ursa Miner (found at outposts) sells ore up to Durasteel tier. It is often faster to farm pixels and buy than to mine.
]

== Faction Dynamics

Your actions affect how NPC factions perceive you. This matters for trade prices, quest availability, and crew recruitment.

- *Protectorate:* Your default faction. Reputation increases through story progression.
- *Peacekeepers:* Bounty hunting faction. Increases as you complete bounties.
- *Settlements:* Local reputation per-planet. Completing quests for a settlement improves prices and sometimes unlocks unique crew members.

#concept[
  *Reputation decay:* If you attack a settlement, reputation with that faction drops and takes multiple quests to recover. Do not test weapons near friendly NPCs.
]

== Crew Composition

A ship with 12 crew members has maximum passive bonuses. Optimize your composition:

| Role | Priority | Why |
|------|----------|-----|
| Engineer | 3-4 | Fuel efficiency stacks. More engineers = longer jumps. |
| Soldier | 2 | Follows you planetside. Useful for body-blocking in combat. |
| Medic | 2 | Health regen stacks. Two medics make you nearly unkillable between fights. |
| Mechanic | 1 | Ship speed bonus. One is enough. |
| Janitor | 1 | Minor all-around boost. |
| Tailor | 1 | For uniform customization. Purely cosmetic. |

#tip[
  Recruit crew from *friendly* settlements. Hostile or neutral NPCs will not join. Look for NPCs with exclamation marks — they always offer a quest and may join afterward.
]

== Base Building Efficiency

=== Location Selection

Your primary base should be on a planet that is:
- *Safe:* No meteor showers, no acid rain, no hostile NPC patrols
- *Rich:* Near surface ore deposits for passive resource collection
- *Accessible:* Bookmark the planet as a teleport destination

Lush planets at threat level 1-3 are ideal. They have mild weather, friendly settlements, and no environmental hazards.

=== Defensive Design

- Build your base off the ground (pillars or a floating platform) to prevent ground NPCs from wandering in
- Place *Turrets* (crafted at a Wiring Station) at entrances
- Light everything — enemies do not spawn in well-lit areas
- Keep a *Teleporter* and a *Flag* for quick return

=== Colony Optimization

#concept[
  *Tenant spawning:* The game checks each valid room once per in-game day. If a room meets the requirements for multiple tenant types, it picks one randomly. To guarantee a specific tenant, make each room meet exactly one set of requirements.
]

High-value tenants:
- *Chef* (Cooking Table): Buys crops at premium prices. Passive food income.
- *Guard* (Weapon Rack): Defends your colony from wildlife.
- *Merchant* (Cash Register): Sells random rare items. Worth checking daily.

== Rare Resources

| Resource | Location | Use |
|----------|----------|-----|
| Upgrade Modules | Planet chests, quest rewards | Improve crafted gear stats |
| Manipulator Modules | Surface chests, merchants | Matter Manipulator upgrades |
| Tech Cards | Tech Chests (story dungeons) | Unlock new techs |
| Diamonds | Deep caves, Volcanic planets | High pixel value, crafting |
| Venus Crystals | Toxic planets (surface) | Advanced crafting |
| Ancient Essence | Vaults (post-game) | Terraforming, endgame crafting |

#tip[
  Manipulator Modules are the bottleneck. Buy them from every merchant you meet. You need a total of 10 for a fully upgraded Matter Manipulator.
]

== Boss Tactics

=== Ixodoom (Floran Mission)
- *Phase 1:* Dodge the charge. Attack from behind.
- *Phase 2:* Spawns smaller Ixolings. Kill them first — they overwhelm quickly.
- *Weapon:* Ranged. Do not melee the Ixodoom.

=== Asra Nox Encounter (Hylotl Mission)
- This is a *chase*, not a fight. Follow her, dodge the energy blasts, survive.
- You will face her properly later in the story.

=== Kluex Avatar (Avian Mission)
- *Arena:* Temple chamber with pillars. Use pillars for cover.
- *Attack pattern:* Energy orbs (dodge vertically), ground slam (jump over shockwave).
- *Weapon:* Ranged with high DPS. The fight is a damage race.

=== Big Ape (Apex Mission)
- *Arena:* Multi-level lab. Stay on the lower level — Big Ape destroys upper platforms.
- *Attack pattern:* Lasers from eyes, ground pounds, minigun sweep.
- *Tactic:* Circle-strafe and fire. Shield tech helps.

=== Bone Dragon (Glitch Mission)
- *Arena:* Castle courtyard. Open space.
- *Attack pattern:* Fire breath (wide cone), tail swipe (close range).
- *Tactic:* Stay behind its head. Melee the neck.

=== The Ruin (Final Boss)
- *Phase 1:* Destroy the tentacles. Ignore the heart.
- *Phase 2:* Heart opens. Dump all damage. Use your strongest weapon.
- *Phase 3:* Heart closes again. Repeat phases 1-2.
- *Weapon:* Highest DPS you have. Craft or buy the best available.

== Modded Mechanics Integration

Wave 1 mods add systems on top of vanilla. A few principles for navigating them:

1. *Read the mod descriptions.* Each mod entry in this guide includes a "System Impact" badge. Pay attention to it.
2. *Test in isolation.* When a mod adds a new crafting chain or tech tree, try it out before integrating it with other systems. Some mods change the same vanilla system and need load order tweaking.
3. *Check the install notes.* Each mod entry includes SBMM-specific guidance. Follow it.
4. *Expect depth.* Modded mechanics are designed for players who have already mastered vanilla. They assume you know how crafting, tech, and ship systems work.
5. *Back up before big changes.* If you add a major mechanics mod mid-playthrough (not recommended, but sometimes done), back up your save first.

#warning[
  Adding or removing mechanics mods on an existing save is risky. Missing items, broken crafting recipes, and world generation issues are common. The safest approach: finalize your Wave 1 mod list before starting the playthrough, and do not change it mid-game.
]
