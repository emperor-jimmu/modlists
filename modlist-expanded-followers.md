# Followers & Reputation

**MO2 Separator:** `Expanded Systems` → `Expanded Systems - Followers & Reputation`

Part of the [`Expanded Systems`](modlist-expanded-systems.md) section. See also: `UI - Framework & HUD` (Character & Progression), `UI - Inventory & Items` (Magic & Perks), `UI - Map, Dialogue, Menus` (Survival & Needs), `06d` (Crafting & Economy).

## Crime, Reputation, And Social Systems → `Expanded Systems - Followers & Reputation`

### Core Idea

- This subsection decides how much the world should notice what the player does socially: whether reputation should quietly shape reactions across the province, whether stealth and criminal behavior should gain more expressive tools, or whether city-side suspicion and guard behavior should become more active.
- The goal is to choose one clear social-pressure direction without letting this subsection absorb religion, economy, or follower ownership.

### Options

- Reputation-first route: `Skyrim Reputation` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22374> → `Expanded Systems - Followers & Reputation`
- Crime-expression route: `Book Of Shadows - Behaviour Based Stealth Additions` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/76086> → `Expanded Systems - Followers & Reputation`
- Guard-pressure route: `Suspicious City Guards` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/38762> → `Expanded Systems - Followers & Reputation`
- Quest-pacing companion route: `The Choice is Yours` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/3850> → `Expanded Systems - Followers & Reputation`
- Greeting-discipline companion route: `To Your Face SE - AE - VR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/24720> → `Expanded Systems - Followers & Reputation`
- Ownership note: keep targeted fixes such as `Simple Offence Suppression` in `modlist-foundations.md` (Targeted Bugfix Mods); they are support fixes, not the social-system answer. → `Expanded Systems - Followers & Reputation`

### Recommendation

- Start with `Skyrim Reputation` as the main baseline. → `Expanded Systems - Followers & Reputation`
- Keep `Suspicious City Guards` as the more focused comparison if the main goal is grounded urban tension around suspicious behavior. → `Expanded Systems - Followers & Reputation`
- Keep `Book Of Shadows` as the deliberate high-expression branch if the project wants crime and stealth to become a much larger playstyle pillar rather than a world-reaction layer. → `Expanded Systems - Followers & Reputation`
- Add `The Choice is Yours` as the clearest roleplay-facing companion when the list wants stricter control over quest auto-start pressure in a content-heavy run. → `Expanded Systems - Followers & Reputation`
- Add `To Your Face SE - AE - VR` as the low-drama social-polish companion if normal city and tavern play still feels too noisy from vanilla greeting behavior. → `Expanded Systems - Followers & Reputation`
- Keep stealth-expression tooling separate from broader world-reaction goals so this subsection does not become a stealth overhaul by accident.
- Optional pickpocketing-fidelity mod: `Steal off Scoundrels - Pickpocketing Criminals is Not Stealing` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/171870> (v0.1.2, Feb 2026, by wSkeever, 778 endorsements) — prevents pickpocketing from being flagged as stealing when the target is a criminal (bandits, forsworn, etc.). Lightweight SKSE plugin, no ESP, no conflicts with crime or reputation systems. Adds roleplay consistency to the crime layer without expanding the social-response footprint. → `Expanded Systems - Followers & Reputation`

### Risks & Compatibility

- A very light social-response layer can undershoot the subsection and leave crime and reputation too close to vanilla.
- A stealth-heavy crime toolkit can make one playstyle dominate a subsection that should still support broader roleplay.
- City suspicion systems can become annoying if they create constant friction without enough payoff.
- `The Choice is Yours` improves pacing and roleplay control, but it matters only if the list actually wants tighter discipline over when quests enter the journal. → `Expanded Systems - Followers & Reputation`
- `To Your Face` is a narrow polish win, but it is still a preference-shaped social-cleanup mod rather than a core world-reaction framework. → `Expanded Systems - Followers & Reputation`
- Mixing multiple social philosophies too casually can make guard behavior, stealth expectations, and world reaction feel incoherent.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred crime-and-social baseline, one narrower guard-pressure comparison, and one more expressive stealth-and-crime branch. → `Expanded Systems - Followers & Reputation`
- Companion picks such as `The Choice is Yours` and `To Your Face` stay documented as focused complements rather than replacements for the main social-system baseline.
- The chosen baseline complements religion, economy, survival, and follower direction instead of collapsing several later sections into one crime answer.
- Later follower and world-content decisions still have visible room to matter.

## Followers And Companion Systems → `Expanded Systems - Followers & Reputation`

### Core Idea

- This subsection decides how `Elder Wilds` wants companions to function at the systems level: whether follower management should be modern and flexible, whether a lighter older framework is enough, or whether the project wants a more intervention-heavy companion-control layer. → `Expanded Systems - Followers & Reputation`
- The goal is to choose one clear follower-framework direction without letting this subsection absorb custom-follower content, broader NPC overhauls, or world-content ownership.

### Options

- Modern flexible route: `Nether's Follower Framework` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/55653> → `Expanded Systems - Followers & Reputation`
- Classic management route: `EFF - Extensible Follower Framework` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/7003> → `Expanded Systems - Followers & Reputation`
- Heavy intervention route: `Amazing Follower Tweaks SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6656> → `Expanded Systems - Followers & Reputation`

### Recommendation

- Start with `Nether's Follower Framework` as the main baseline. → `Expanded Systems - Followers & Reputation`
- Keep `EFF` as the classic comparison if the project wants a simpler established management route. → `Expanded Systems - Followers & Reputation`
- Keep `Amazing Follower Tweaks SE` as the deliberate heavy-management branch only if the list truly wants follower control and party behavior to become a more dominant systems pillar. → `Expanded Systems - Followers & Reputation`
- Keep follower-framework choice separate from later custom-follower picks; this subsection owns party-management philosophy, not named companion selection.

### Risks & Compatibility

- A very light or dated framework can undershoot the subsection and leave companions awkward to manage once the list grows.
- A heavy follower-control framework can make party management dominate ordinary play more than intended.
- Generic follower frameworks can conflict with custom companions that are better left outside them.
- Mixing multiple follower-management philosophies too casually can make companion behavior and custom-follower support incoherent.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred follower-framework baseline, one older established comparison, and one heavier management branch. → `Expanded Systems - Followers & Reputation`
- The chosen baseline complements religion, crime, exploration, and later NPC/world-content direction instead of collapsing several future sections into one companion answer.
- The framework decision stays disciplined enough that later custom-follower work can build on it cleanly.

## Romance, Marriage, And Companionship → `Expanded Systems - Followers & Reputation`

### Core Idea

- This subsection owns the SFW romance and marriage layer: how marriage mechanics should be expanded, how dialogue with spouses and romance interests should feel modern, and which opt-in quest-driven romance arcs the list should support.
- It is intentionally kept SFW. The chosen baseline is fade-to-black, not explicit content, and the Amorous Adventures variant locked in here is the clean build that omits the explicit scenes.
- It is a systems-and-dialogue layer, not a follower-content layer. Custom named followers still belong in `modlist-npcs.md`. Marriage machinery and dialogue expansion for vanilla and recognized spouses belong here. → `Expanded Systems - Followers & Reputation`

### Options

- Dialogue-expansion baseline: `Relationship Dialogue Overhaul - RDO SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1187> → `Expanded Systems - Followers & Reputation`
- Opt-in romance-quest route: `Amorous Adventures` (clean variant) - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/7305> → `Expanded Systems - Followers & Reputation`
- Marriage-machinery route: `Marriage Mod - To Have And To Hold` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/8589> → `Expanded Systems - Followers & Reputation`
- Best-in-class single-companion route: `Serana Dialogue Add-On` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32161> → `Expanded Systems - Followers & Reputation`
- Discipline-first route: rely on vanilla marriage mechanics and skip dedicated romance and marriage content. Realistic only if `Elder Wilds` treats romance as out of scope. → `Expanded Systems - Followers & Reputation`

### Recommendation

- Use `Relationship Dialogue Overhaul - RDO SE` as the dialogue-expansion baseline. It adds 5,000+ fully-voiced new lines for vanilla NPCs, followers, and spouses using their original voices, restores cut dialogue, and fixes dialogue bugs. It is the community-canonical dialogue expansion (137K endorsements) and is fully SFW. It is also the most compatible choice because it does not change mechanics, only dialogue. → `Expanded Systems - Followers & Reputation`
- Use `Amorous Adventures` (clean variant) as the opt-in romance-quest route. The mod ships a clean build that omits the explicit scenes and keeps every quest as fade-to-black, which fits the SFW rule. It adds fully voiced romance arcs for Lydia, Serana, Elisif, and several other marriage-eligible NPCs. Lock only the clean variant into the load order; the explicit version is out of scope for `Elder Wilds`. → `Expanded Systems - Followers & Reputation`
- Use `Marriage Mod - To Have And To Hold` as the marriage-machinery expansion. It supports up to 11 simultaneous spouses, adds divorce and remarriage, enhances the wedding ceremony, and ties dynamic events to player progress. This is the systems-layer change that lets the dialogue and romance content above actually matter mechanically. → `Expanded Systems - Followers & Reputation`
- Use `Serana Dialogue Add-On` as the best-in-class single-companion expansion. It adds 7,000+ new fully-voiced lines for Serana, plus new story arcs, romance progression, and quest commentary. Serana is the most-recruited companion in vanilla Dawnguard content, and 51K endorsements show this is the canonical Serana enhancement. It complements RDO rather than overlapping it because Serana is one of the few NPCs RDO does not deeply cover. → `Expanded Systems - Followers & Reputation`
- Keep the discipline-first route alive only if `Elder Wilds` explicitly decides romance is out of scope. Locking in zero romance content is internally consistent but would leave RDO's most popular use case unsupported. → `Expanded Systems - Followers & Reputation`

### Risks & Compatibility

- The wrong Amorous Adventures variant breaks the SFW rule. The download must be the clean build, not the explicit build, and the load order must keep the clean variant active.
- Marriage-machinery mods can conflict with each other; do not stack `To Have And To Hold` with another multi-spouse mod or with custom marriage overhauls from other sections. → `Expanded Systems - Followers & Reputation`
- Romance dialogue expansion can conflict with custom-voiced follower mods from `modlist-npcs.md` that replace the same NPC's voice; verify any new custom follower does not double-voice a romance-interest NPC. → `Expanded Systems - Followers & Reputation`
- Romance quest mods add non-trivial content to the world and can affect pacing, which means they should be reviewed against the quest section in `modlist-world-content.md` to avoid doubling up on a single NPC's quest line. → `Expanded Systems - Followers & Reputation`
- Marriage events triggered by `To Have And To Hold` can fire during unintended moments if not configured; check the MCM for event timing and cooldown settings. → `Expanded Systems - Followers & Reputation`

### Acceptance Criteria

- `Elder Wilds` has one clear dialogue-expansion baseline, one opt-in romance-quest route (clean variant), one marriage-machinery expansion, and one best-in-class single-companion expansion. → `Expanded Systems - Followers & Reputation`
- The locked Amorous Adventures variant is the clean build. The explicit variant is not in the load order.
- Marriage feels like a meaningful long-term choice rather than a stat boost, with the machinery to support up to 11 simultaneous spouses if the player wants that.
- Romance dialogue and quest work stays separated from custom-follower content in `modlist-npcs.md` so the two systems do not double-voice or double-quest the same NPC.
