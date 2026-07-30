#import "../../template/styles.typ": *

= Wave 0 -- The Warlord's First Steps

== Roleplaying Background

The Han dynasty crumbles. Yellow Turban rebels burn the countryside, and
warlords across the land sharpen their blades. You are not yet among them -- you
are a minor official, a displaced captain, or a wandering scholar. The world
is vast and dangerous. Every decision matters.

Your goal: survive. Learn the land. Build a following.

== Game Setup

#table(
  columns: (auto, auto),
  stroke: 0.5pt + luma(200),
  fill: (card-white, category-bg),
  table.cell(fill: crimson, text(fill: white, [*Setting*])),
  table.cell(fill: crimson, text(fill: white, [*Choice*])),
  [Difficulty], [Normal],
  [Campaign], [Mandate of Heaven / Rise of the Warlords (any)],
  [Faction], [Any recommended starter faction (e.g., Liu Bei, Sun Jian)],
  [Turn Timer], [Unlimited],
  [Battle Time Limit], [60 min],
)

== Mods in This Wave

This wave uses only UI improvements and quality-of-life mods. No gameplay
overhauls. This is the vanilla experience -- polished.

== Choosing Your Faction

Your starting faction defines your campaign. Each plays radically differently.

=== Starter Factions (Recommended for First Campaign)

#table(
  columns: (auto, auto, auto, auto),
  stroke: 0.5pt + luma(200),
  table.header(
    table.cell(fill: crimson, text(fill: white)[*Faction*]),
    table.cell(fill: crimson, text(fill: white)[*Playstyle*]),
    table.cell(fill: crimson, text(fill: white)[*Difficulty*]),
    table.cell(fill: crimson, text(fill: white)[*Why Start Here*]),
  ),
  [Liu Bei], [Diplomacy, defensive, brotherhood], [Easy], [Strongest starting generals (Guan Yu, Zhang Fei). Safe northeastern start. Best for learning.],
  [Sun Jian], [Economy, navy, southern expansion], [Easy], [Richest starting province. Protected south flank. Strong ranged units. Forgiving economy.],
  [Cao Cao], [Manipulation, vassals, central China], [Medium], [Best diplomatic tools. Access to unique Credibility resource. Starts in the middle of everything -- more action, more danger.],
)

=== Intermediate Factions (After Your First Win)

#table(
  columns: (3fr, 2fr, 4fr),
  stroke: 0.5pt + luma(200),
  table.header(
    table.cell(fill: crimson, text(fill: white)[*Faction*]),
    table.cell(fill: crimson, text(fill: white)[*Playstyle*]),
    table.cell(fill: crimson, text(fill: white)[*Why Play Them*]),
  ),
  [Gongsun Zan], [Cavalry blitz, northern aggression], [Best cavalry faction. White Horse Fellows are devastating. Fast expansion.],
  [Yuan Shao], [Vassal swarm, heavy infantry], [Can vassalize without war. Massive army count. Plays tall through subordinates.],
  [Sun Ce], [Aggressive expansion, young heroes], [Sun Ce's Conqueror bonuses reward rapid war. Heir to Sun Jian's southern base.],
  [Liu Biao], [Defensive, economic turtle], [Starts huge but fragmented. Teaches defensive campaign management.],
)

=== Advanced Factions & DLC

#table(
  columns: (auto, auto, auto),
  stroke: 0.5pt + luma(200),
  table.header(
    table.cell(fill: crimson, text(fill: white)[*Faction*]),
    table.cell(fill: crimson, text(fill: white)[*Playstyle*]),
    table.cell(fill: crimson, text(fill: white)[*Challenge*]),
  ),
  [Dong Zhuo], [Aggression, terror], [Everyone hates you from turn 1. Constant war. Lu Bu is a one-man army.],
  [Ma Teng], [Horse nomads, western frontier], [Unique cavalry roster. Remote start, slow to expand.],
  [Kong Rong], [Trade empire, diplomatic], [Weak military, strong economy. Must buy allies and out-earn enemies.],
  [Yellow Turbans], [Religious horde, unique mechanics], [Completely different tech tree, units, and government. Feels like a different game.],
  [Nanman], [Jungle warfare, monsters], [Elephant units. Different building and reform systems. DLC-locked.],
)

DLC campaigns: *Mandate of Heaven* (play as the Han Emperor), *A World Betrayed* (Lu Bu as a roaming force), *Fates Divided* (Liu Yan, Yuan Shu with new faction mechanics), *Eight Princes* (eight Sima family factions in a later time period).

*Not sure?* Start as *Liu Bei* on Normal. If you prefer naval strength and trade, choose *Sun Jian* instead. Save Cao Cao for your second campaign.

== How to Use This Guide

Read *02-how-to-play* for a complete beginner's guide to the game's
systems. The mod list above is installed via TW Mod Manager -- see the
*Mod Installation Guide* appendix for instructions.
