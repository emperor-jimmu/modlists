# Followers & Reputation

**MO2 Separator:** `Expanded Systems` → `Expanded Systems - Followers & Reputation`

Part of the [`Expanded Systems`](modlist-expanded-systems.md) section. See also: `Expanded Systems - Character & Progression`, `Expanded Systems - Magic & Perks`, `Expanded Systems - Survival & Needs`, `Expanded Systems - Crafting & Economy`.

## Crime, Reputation, And Social Systems → `Expanded Systems - Followers & Reputation`

This subsection decides how much the world should notice what the player does socially: whether reputation should quietly shape reactions across the province, whether stealth and criminal behavior should gain more expressive tools, or whether city-side suspicion and guard behavior should become more active.

### Baseline

- **Skyrim Reputation** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/22374)) — Main baseline for reputation. → `Expanded Systems - Followers & Reputation`
- **The Choice is Yours** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/3850)) — Roleplay-facing companion for stricter control over quest auto-start pressure in a content-heavy run. → `Expanded Systems - Followers & Reputation`
- **To Your Face SE - AE - VR** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/24720)) — Low-drama social-polish companion if normal city and tavern play still feels too noisy from vanilla greeting behavior. → `Expanded Systems - Followers & Reputation`
- **Steal off Scoundrels - Pickpocketing Criminals is Not Stealing** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171870)) — Optional lightweight SKSE plugin preventing pickpocketing from being flagged as stealing when the target is a criminal (bandits, forsworn, etc.). No ESP, no conflicts. → `Expanded Systems - Followers & Reputation`

### Alternatives

- **Suspicious City Guards** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/38762)) — More focused comparison if the main goal is grounded urban tension around suspicious behavior. → `Expanded Systems - Followers & Reputation`
- **Book Of Shadows - Behaviour Based Stealth Additions** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/76086)) — High-expression branch if the project wants crime and stealth to become a much larger playstyle pillar rather than a world-reaction layer. → `Expanded Systems - Followers & Reputation`

### Notes

- A very light social-response layer can undershoot and leave crime and reputation too close to vanilla.
- A stealth-heavy crime toolkit can make one playstyle dominate a subsection that should still support broader roleplay.
- City suspicion systems can become annoying if they create constant friction without enough payoff.
- Targeted fixes like `Simple Offence Suppression` belong in `modlist-foundations.md` (Targeted Bugfix Mods), not as the social-system answer. → `Expanded Systems - Followers & Reputation`
- Keep stealth-expression tooling separate from broader world-reaction goals so this subsection does not become a stealth overhaul by accident.

## Followers And Companion Systems → `Expanded Systems - Followers & Reputation`

This subsection decides how `Elder Wilds` wants companions to function at the systems level: whether follower management should be modern and flexible, whether a lighter older framework is enough, or whether the project wants a more intervention-heavy companion-control layer.

### Baseline

- **Nether's Follower Framework** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/55653)) — Main baseline. Modern flexible route. → `Expanded Systems - Followers & Reputation`

### Alternatives

- **EFF - Extensible Follower Framework** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/7003)) — Classic comparison if the project wants a simpler established management route. → `Expanded Systems - Followers & Reputation`
- **Amazing Follower Tweaks SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/6656)) — Heavy-management branch if the list truly wants follower control and party behavior to become a more dominant systems pillar. → `Expanded Systems - Followers & Reputation`

### Notes

- A very light or dated framework can undershoot and leave companions awkward to manage once the list grows.
- A heavy follower-control framework can make party management dominate ordinary play more than intended.
- Generic follower frameworks can conflict with custom companions that are better left outside them.
- Keep follower-framework choice separate from later custom-follower picks; this subsection owns party-management philosophy, not named companion selection.

## Romance, Marriage, And Companionship → `Expanded Systems - Followers & Reputation`

This subsection owns the SFW romance and marriage layer: how marriage mechanics should be expanded, how dialogue with spouses and romance interests should feel modern, and which opt-in quest-driven romance arcs the list should support. The chosen baseline is fade-to-black, not explicit content. It is a systems-and-dialogue layer, not a follower-content layer — custom named followers belong in `modlist-npcs.md`.

### Baseline

- **Relationship Dialogue Overhaul - RDO SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1187)) — Dialogue-expansion baseline. Adds 5,000+ fully-voiced new lines for vanilla NPCs, followers, and spouses using original voices. Community-canonical (137K endorsements), fully SFW, most compatible choice (dialogue only, no mechanics). → `Expanded Systems - Followers & Reputation`
- **Amorous Adventures** (clean variant) ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/7305)) — Opt-in romance-quest route. Clean build ships as fade-to-black, fitting the SFW rule. Adds fully voiced romance arcs for Lydia, Serana, Elisif, and other marriage-eligible NPCs. Lock only the clean variant. → `Expanded Systems - Followers & Reputation`
- **Marriage Mod - To Have And To Hold** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/8589)) — Marriage-machinery expansion supporting up to 11 simultaneous spouses, divorce and remarriage, enhanced wedding ceremony, and dynamic events tied to player progress. → `Expanded Systems - Followers & Reputation`
- **Serana Dialogue Add-On** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/32161)) — Best-in-class single-companion expansion. Adds 7,000+ new fully-voiced lines for Serana plus new story arcs, romance progression, and quest commentary. Complements RDO (51K endorsements). → `Expanded Systems - Followers & Reputation`

### Alternatives

- **Discipline-first route** — Rely on vanilla marriage mechanics. Only if `Elder Wilds` explicitly decides romance is out of scope.

### Notes

- The wrong Amorous Adventures variant breaks the SFW rule. The download must be the clean build, not the explicit build.
- Marriage-machinery mods can conflict with each other; do not stack `To Have And To Hold` with another multi-spouse mod. → `Expanded Systems - Followers & Reputation`
- Romance dialogue expansion can conflict with custom-voiced follower mods from `modlist-npcs.md` that replace the same NPC's voice. → `Expanded Systems - Followers & Reputation`
- Romance quest mods add non-trivial content that should be reviewed against the quest section in `modlist-world-content.md` to avoid doubling up on a single NPC's quest line. → `Expanded Systems - Followers & Reputation`
- Marriage events triggered by `To Have And To Hold` can fire during unintended moments if not configured; check MCM for event timing and cooldown settings. → `Expanded Systems - Followers & Reputation`
