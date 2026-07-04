# NPCs and Creatures

**MO2 Separator:** `09 NPCs` → `09a Appearance`, `09b Enemies & Creatures`, `09c Population`, `09d Followers`

## NPC Appearance Overhauls → `09a Appearance`

### Core Idea

This subsection owns the face, hair, and presentation direction for Skyrim's named NPCs and broader social cast. It does not re-decide the body, skin, and baseline character-visual stack already owned by [`modlist-02b.md`](modlist-02b.md); it decides how far the list pushes NPC-specific styling on top of that baseline.

The real question is whether `Elder Wilds` should lean toward grounded modernization, clearly stylized beauty, or a vanilla-faithful refresh that keeps the familiar identity of the game's people intact.

### Options

- Grounded route (baseline): `Northbourne NPCs of Whiterun Hold` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/35404>. A modern, regionally textured look that current `r/skyrimmods` signal treats as higher-quality but still grounded — closer to Skyrim than a fashion catalog. Hold-by-hold coverage and patch complexity mean it is not a frictionless all-in-one answer. → `09a`
- Beauty-forward route: `Pandorable's NPCs` (now merged into `Pandorable's big overhauls AIO`) - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/78524>. A stylized, polished, conventionally attractive overhaul that prioritizes striking faces over restraint; the clearest expression of the opposite taste question. The mod page now redirects to the all-in-one merge; the individual NPCs release is no longer maintained separately. → `09a`
- Vanilla-faithful route: `High Poly True to Vanilla NPC Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/74226>. Preserves recognizable vanilla identity while smoothing roughness through a high-poly refresh; the restraint-minded comparison. → `09a`
- Targeted named-NPC route: `The Wolven Widow - SerketHetyt's Elisif Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/62209>. A lore-friendly visual overhaul of a single high-visibility named NPC (Jarl Elisif the Fair of Solitude) rather than a broad cast pass. 1,129 endorsements, ~175K unique downloads, last updated July 2024. Useful as a complementary add-on on top of whichever broad route is chosen, because the Solitude Jarl's court is one of the social scenes where the player spends the most time looking at one character. → `09a`
- Male coverage: `The Men of Winter SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/10902>. The three routes above skew female-weighted, so a dedicated high-poly male overhaul is needed to keep the cast consistent. Last updated August 2020 — verify 1.6.1170 compatibility before locking. `Males Of Skyrim by zzjay` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/37485> is the secondary alternative, actively maintained as of April 2024. → `09a`
- Female-focused modular route: `DIbella's Blessing` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/82606>. Covers 233 female characters with a more curated, hand-authored appearance pass than the broad baseline routes above. Best treated as the targeted modular branch rather than the subsection-wide default. → `09a`
- Race-specific Altmer route: `Children of the First - An Altmer NPC Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/122167>. Overhauls the appearance of all named Altmer NPCs. Best used as a modular race-specific overlay on top of a broader NPC baseline — applies only to Altmer characters, so it stacks cleanly with grounded or beauty-forward routes. → `09a`
- Race-specific Dunmer route: `Children of the Ash - A Dunmer NPC Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/122165>. Overhauls the appearance of all named Dunmer NPCs. Same modular philosophy as Children of the First — covers only Dunmer characters, stacks on top of whatever broader baseline is chosen. → `09a`
- Behavior/schedule layer: `AI Overhaul SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21654>. The section repeatedly leans on "AI overhaul" compatibility pressure, so the actual mod is named here. It changes NPC schedules and behavior, not faces, and pairs with any of the appearance routes (mind its known overlap with `Immersive Citizens`, tracked under Population). → `09a`
- Later/modular: targeted stacks like `Pride of Skyrim` can still be revisited if the project chooses a deeper mixed modular route instead of one subsection-wide direction. → `09a`

### Recommendation

Start with the grounded route: `Northbourne NPCs` as the baseline, paired with `The Men of Winter SSE` for male coverage and `AI Overhaul SSE` as the behavior layer. It fits the broader `Elder Wilds` tone better than a fully glamour-driven stack while still clearly modernizing faces.

Keep `High Poly True to Vanilla NPC Overhaul` as the vanilla-faithful fallback if even `Northbourne` drifts too far from familiar identity, and `Pandorable's NPCs` as the beauty-forward branch if the project later accepts the stronger aesthetic shift and patch burden. Keep `DIbella's Blessing` as the modular female-side branch if the list wants more authored women without fully replacing the broader grounded baseline. Add `Children of the First - An Altmer NPC Overhaul` and `Children of the Ash - A Dunmer NPC Overhaul` as race-specific modular overlays — they apply only to their respective races, so they stack cleanly on top of whichever broad baseline is chosen without overriding the entire cast direction. Judge the result through ordinary social play — walking cities and inns, talking to quest NPCs — checking whether faces still suit class, region, age, and role rather than collapsing into one samey beauty standard. Treat `The Wolven Widow - SerketHetyt's Elisif Overhaul` as a targeted named-NPC companion, not a subsection baseline: it only affects one character but that character sits in one of the most-seen social scenes, so layering it on top of whichever broad route is chosen is reasonable as long as its facegen, skin, and hair mesh with the broader cast direction.

### Risks & Compatibility

- Choosing an overhaul because screenshots look impressive rather than because the world stays coherent in ordinary play.
- Letting glamour-forward design overpower the grounded tone established elsewhere, or letting female-weighted packs leave male NPCs visibly mismatched.
- Treating hold-coverage gaps or mixed-replacer stacking as a small detail when they become ongoing maintenance debt.
- Confirm `Northbourne`, `The Men of Winter`, `Pandorable's`, and `High Poly True to Vanilla` behave cleanly on Steam `1.6.1170`, and check blackface/facegen, dependency, and `AI Overhaul SSE` load-order pressure before locking a route. → `09a`
- `DIbella's Blessing` is easiest to overuse in a way that pulls the whole cast toward a softer beauty pass than the rest of the list wants. Keep it modular and verify it complements rather than overrides the grounded baseline. → `09a`
- `Children of the First` and `Children of the Ash` are race-specific overhauls that should stack on top of the broader baseline. Test for facegen/blackface conflicts with whichever broad route is chosen, especially if that route already covers Altmer or Dunmer NPCs. → `09a`
- Confirm `The Wolven Widow` behaves cleanly on Steam `1.6.1170` alongside whichever broad NPC route is chosen; record facegen, skin, and hair overlap with that broader route, and verify it does not silently desync from `Northbourne`/`Pandorable's`/`High Poly True to Vanilla` coverage of Elisif (or from a `Legacy of the Dragonborn` Safehouse display if relevant). → `09a`
- Do not duplicate the body/skin baseline already owned by [`modlist-02b.md`](modlist-02b.md). → `09a`

### Acceptance Criteria

- One preferred grounded baseline (plus male coverage and the `AI Overhaul SSE` behavior layer), one beauty-forward comparison, one vanilla-faithful comparison, and one modular female-side branch (`DIbella's Blessing`), with the distinction between them explicit. → `09a`
- Any tracked alternative documented with a verified canonical Nexus page and a clear reason it differs from the baseline.
- The chosen direction improves NPC presence without a confusing aesthetic split from the rest of the list.

## Enemy Variety → `09b Enemies & Creatures` → `09b`

### Core Idea

This subsection owns how hostile enemy groups feel less repetitive across ordinary play — cleaner bandit variety, better undead variety, or a heavier enemy-overhaul route — without collapsing into an all-purpose creature package. It stays separate from section-07 wildlife ecology, from combat-system ownership elsewhere, and from the later creature-visual and creature-behavior subsections below.

### Options

- Focused bandit route (baseline): `Lawless - A Bandit Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/88080>. The cleanest modern vanilla-plus answer to repetitive bandit encounters — expands archetypes, tiers, and freshness without the legacy baggage of older packages. → `09b`
- Legacy heavy-bandit route: `OBIS SE - Organized Bandits In Skyrim Special Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/4145>. The classic large bandit-expansion route; bigger compatibility and maintenance burden. → `09b`
- Focused undead route: `Haugbui - A Draugr Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/26188>. A lighter, vanilla-adjacent answer to repetitive draugr without redefining undead content. → `09b`
- High-commitment undead route: `The Restless Dead (A Draugr and Skeleton Overhaul)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/94100>. A broader undead refresh with stronger dungeon identity and a more assertive redesign of draugr and skeleton spaces. → `09b`
- Heavy roster overhaul: `Skyrim Revamped - Complete Enemy Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/14598>. The named option for the "broader heavier enemy-overhaul" route — reworks enemy rosters, stats, and perks across many factions at once. Compare only if the project wants a list-wide enemy rebalance rather than targeted variety, and accepts the combat-balance reach that comes with it. → `09b`
- Broader package (out of scope): `Skyrim Immersive Creatures` is too wide and overlaps the later creature subsections to serve as the baseline here. → `09b`

### Recommendation

Start with `Lawless - A Bandit Overhaul`. Bandits are the most overexposed enemy family in the game, and `Lawless` modernizes their roster in a way current discussion treats as cleaner and easier to live with than `OBIS`.

Keep `Haugbui` as the undead comparison if ancient Nordic ruins need as much attention as roadside forts; `OBIS` as the heavier legacy bandit branch if the bigger historical package is worth the patching cost; `The Restless Dead` as the high-commitment undead redesign; and `Skyrim Revamped - Complete Enemy Overhaul` as the list-wide rebalance branch. Judge through common encounter rhythm — clearing forts, roadside fights, ruin delves — checking whether groups become more memorable without every fight becoming a showcase for one overhaul's gimmicks.

### Risks & Compatibility

- Turning enemy variety into a vague grab bag of combat and spawn mods instead of a clear hostile-roster philosophy.
- Treating `Lawless` and `OBIS` as interchangeable (maintenance/design tradeoffs differ), or `Haugbui` and `The Restless Dead` as interchangeable (light adjustment vs. major redesign). → `09b`
- Letting a heavy overhaul like `Skyrim Revamped` quietly become a combat-balance rewrite the whole list must serve, or pre-empt the later creature subsections. → `09b`
- Confirm all picks behave cleanly on Steam `1.6.1170` with the current quest, dungeon, and world-content stack; record compatibility pressure around encounter zones, dungeon overhauls, quest mods, and spawn additions. → `09b`

### Acceptance Criteria

- One preferred focused-variety baseline plus clearly distinct heavier-bandit, lighter-undead, high-commitment-undead, and list-wide-overhaul branches, with the bandit/undead distinction explicit.
- Any tracked alternative documented with a verified canonical Nexus page and a clear reason it differs from the baseline.
- The chosen direction improves encounter freshness without duplicating section-07 ecology or pre-empting later creature subsections.

## Creature Visual Overhauls → `09b Enemies & Creatures`

### Core Idea

This subsection owns creature-specific visual direction layered on top of the broad baseline in [`modlist-02b.md`](modlist-02b.md). `Bellyaches Animal and Creature Pack SSE` remains the texture foundation — that is settled. The question is which additional presentation layers make animals, dragons, and region-specific undead more striking without turning this into a giant all-in-one creature package.

### Options

- Broad presentation layer (baseline): `Fluffworks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56361>. A wide visual lift for furred animals that layers on the existing texture baseline; current signal treats it as one of the most noticeable broad creature upgrades. Main alternative: `Fusa Fusa Project - Fluffy Animals` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/5514> (older, well-liked, but more often framed through overwrite/compatibility concerns — compare, don't casually stack both). → `09b`
- Species standout: `Bears of the North` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/47541>. Makes one of Skyrim's most common large wildlife threats more imposing and distinct. → `09b`
- Dragon visual: `Iconic's Dragon Retexture` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/101712>. A clean dragon-presentation upgrade that stays in the visual lane. `Splendor - Dragon Variants` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/9670> is the comparison if dragons should read less repetitively without a heavier overhaul; last updated September 2017. → `09b`
- Regional specialty: `Cannibal Draugr on Solstheim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21238>. Gives Solstheim's undead a Bloodmoon-flavored identity rather than a copy of mainland draugr; a narrow add-on, not a general undead baseline. → `09b`
- Mainland draugr visual overhaul: `Draugrs - New models and textures` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/123170> — replaces draugr models and textures with high-detail versions, improving the most-seen undead enemy in the game. Stacks with visual replacer philosophy without touching behavior records. → `09b`
- Spider visual overhaul: `Spider SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/182638> — replaces spider models and textures with higher-quality versions. Spiders are common dungeon enemies that vanilla treats with noticeably dated models, making this a high-visibility upgrade. → `09b`
- Targeted species follow-ups: `Diverse True Wolves and Dogs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/38058>, `Real Rabbits HD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29223>, `Rally's Shaggy Cows of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/47742>, and `Realistic Horse Breeds by KrittaKitty` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/7685> if familiar domestic/wilderness animals still feel generic after the baseline lands. Realistic Horse Breeds (2018) and Diverse True Wolves (2020) have not been updated for current AE builds; verify compatibility before including. → `09b`
- Deer visual overhaul: `Deer Reworked - Ultimate` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/155433> — replaces deer models and textures with high-detail versions across all deer variants. Deer are one of the most common wilderness wildlife sightings, making this a high-visibility targeted species upgrade. → `09b`
- Hagraven visual overhaul: `Hagraven - New models and Textures` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/160407> — replaces hagraven models and textures with high-detail versions inspired by Adam Adamowicz concept art. No ESP, pure mesh/texture replacer. 874 endorsements, by Mandragoraspout. Add as an optional creature visual upgrade alongside Draugrs and Spider — hagravens are common mid-to-late-game enemies across Forsworn camps, dungeons, and quest encounters. Not compatible with other mods that replace hagraven meshes. → `09b`
- Insect visual upgrade: `Butterfly Improved by zzjay - SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/37302> — replaces butterfly and moth textures with higher-resolution, more detailed versions. A lightweight targeted species upgrade for ambient insects that are common across the entire worldspace. 3K+ endorsements. → `09b`
- Out of scope: dragon-variety systems like `Diverse Dragons Collection` and `Infinite Dragon Variants` are encounter/gameplay decisions, not visual ones. → `09b`

### Recommendation

Start with `Fluffworks`. It improves the visible creature experience across ordinary play, layers naturally on `Bellyaches`, and stays a presentation decision rather than a creature-system overhaul.

Keep `Bears of the North` as the species-specific branch, `Iconic's Dragon Retexture` (with `Splendor - Dragon Variants` as the variety comparison) for dragons, `Cannibal Draugr on Solstheim` as the regional specialty done correctly, `Draugrs - New models and textures` as the mainland draugr visual upgrade, `Spider SE` as the spider visual upgrade, `Deer Reworked - Ultimate` as the deer visual upgrade, `Hagraven - New models and Textures` as the hagraven visual upgrade, and `Butterfly Improved by zzjay - SE` as a lightweight ambient-insect upgrade. Judge through ordinary visibility — roadside wildlife, common predator fights, dragon attacks, Solstheim exploration, dungeon draugr and spider encounters — checking that creatures look more memorable without the subsection spilling into behavior or ecology.

### Risks & Compatibility

- Re-solving the section-02 creature baseline instead of building on it, or using narrow specialty mods as if they were broad baselines.
- Stacking `Fluffworks`, `Fusa Fusa`, and multiple targeted replacers without a clear layering plan, or letting dragon-identity mods accumulate into encounter-design decisions by default. → `09b`
- Underestimating fur-shell, shader/ENB, and targeted-replacer conflicts, including insect mesh/texture overwrites. `Butterfly Improved` is a lightweight texture replacer with minimal conflict surface but verify it does not fight other mods that touch butterfly assets. → `09b`
- Confirm all named picks (broad, species, dragon, regional, hagraven, and the targeted follow-ups) behave cleanly on Steam `1.6.1170` with the current creature baseline; record pressure around creature meshes, fur shells, horse patches, and overlap with later creature-behavior or enemy-variety picks. → `09b`

### Acceptance Criteria

- One preferred broad-presentation baseline plus distinct species-specific, dragon-visual, regional-specialty, and hagraven branches, with the broad-vs-targeted distinction explicit.
- Any tracked alternative documented with a verified canonical Nexus page and a clear reason it differs from the baseline.
- The chosen direction improves creature presentation (including ambient insects) without duplicating section-02 visual baseline or section-07 ecology ownership.

## Creature Behavior Improvements → `09b Enemies & Creatures`

### Core Idea

This subsection owns encounter-side creature behavior: how creatures attack, react, and express identity once combat starts. Section 07 owns ecology, distribution, and wilderness-danger tone; this subsection only decides which behavior-side upgrades make encounters smarter and more distinct without re-opening those world-feel decisions.

### Options

- Clean dragon-behavior route (baseline): `Dragons Use Thu'um - Dragon AI Enhancements and New Fully Voiced Shouts` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/87085>. Makes dragons act more intelligently through better shout usage and encounter AI rather than a system rewrite. → `09b`
- Heavier dragon route: `Dragon War - A Dragon Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51310>. Restructures dragon fights as a larger combat-overhaul statement; compare if fights feel structurally passive or floaty rather than merely under-AI'd. → `09b`
- Undead behavior/combat-role route: `Draugr Upgrades and Improvements (Draugr and Skeleton Overhaul)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21775>. Varies draugr and skeleton role, pressure, and battlefield behavior. Tracked separately from the `Haugbui`/`The Restless Dead` enemy-variety picks because this is about behavior, not roster variety. **Abandoned** — last updated August 2021; author explicitly recommends switching to `The Restless Dead`. If tested alongside `Cannibal Draugr on Solstheim`, watch for the Cannibal Draugr compatibility patch work seen in community discussion. → `09b`
- Context only (animal-side, section-07 overlap): `SkyTEST Lite ESL` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/84539> (classic animal-behavior answer that drifts into ecology/population), `Animal Tweaks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1532> (signal leans toward overtuned lethality), and `Pelagius's Wildlife AI - Skypatcher` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/144909> (de-escalates aggression/predator-prey conflict, overlapping section-07). Keep these out of the baseline unless the project deliberately revisits animal aggression with the section-07 overlap made explicit. → `09b`

### Recommendation

Start with `Dragons Use Thu'um`. It sharpens one of Skyrim's signature encounters — dragons act more deliberately and distinctively rather than just bigger or tankier — without dragging section 09 back into ecology or full creature-package replacement.

Keep `Dragon War` as the heavier branch if the problem is the structure and tempo of dragon fights. **Lock `The Restless Dead`** as the undead-behavior baseline — it replaces the abandoned `Draugr Upgrades and Improvements` (whose author recommends `The Restless Dead` instead) with an actively maintained draugr and skeleton overhaul that varies AI, combat roles, and threat profiles across undead encounters. Judge through actual encounter feel — first contact, aggression timing, pressure windows, attack variety, shout cadence — checking whether fights ask the player to react differently rather than just absorb more stats.

### Risks & Compatibility

- Re-opening section-07 wildlife/ecology under the label of creature behavior, or using a large behavior package that quietly changes population, distribution, or wilderness tone.
- Letting dragon-overhaul choices stack until visual identity, behavior, and difficulty become one muddy decision, or duplicating the undead-overhaul choice already made in Enemy Variety.
- Choosing behavior mods that mostly inflate difficulty rather than making behavior more interesting.
- Confirm `Dragons Use Thu'um`, `Dragon War`, and `The Restless Dead` (not `Draugr Upgrades and Improvements`, which is abandoned) behave cleanly on Steam `1.6.1170`; review compatibility with the dragon visual/identity picks (`Iconic's Dragon Retexture`, `Splendor - Dragon Variants`) and undead picks (`Haugbui`, `The Restless Dead`, `Cannibal Draugr on Solstheim`). Reassess whether the context-only animal mods belong in the final list at all once section-07 ownership is weighed. → `09b`

### Acceptance Criteria

- One preferred clean creature-behavior baseline plus distinct heavier-dragon and undead-behavior branches, with the encounter-AI-vs-ecology distinction explicit.
- Any context-only or cautionary mod documented with a clear reason it is not the baseline.
- The chosen direction improves encounters without duplicating section-07 ecology or collapsing back into the enemy-variety decision.

## Civilian And Traveler Population Additions → `09c Population`

### Core Idea

This subsection owns the extra background people who make towns, inns, and roads feel used — without re-deciding the city feel, outskirts texture, and roadside atmosphere already handled in section 07. The goal is believable incidental presence (town crowds, road travelers, ambient civilian movement) between the major authored content choices made elsewhere, not more clutter or bigger settlements.

### Options

- Compatibility-first crowd route (baseline): `Crowded Streets` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/127723>. More civilian presence in cities, towns, and inns via a zero-cell-edit, dynamic-cleanup, configurable-density design — a cleaner fit than older static population mods. → `09c`
- Road-traveler route: `Travellers of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1973>. Busier roads through merchants, mercenaries, and pilgrims moving between locations. Coexists with `Crowded Streets` in principle (one solves settlements, the other roads), but only if testing confirms the result feels inhabited rather than conspicuously busy. Last updated June 2018 — LE-era port with no modern patches; verify 1.6.1170 compatibility before investing in a road-travel layer. → `09c`
- Heavy legacy route: `Populated Skyrim Reborn SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32190>. A louder population pass with higher risk of over-crowding, static-feeling NPCs, and older compatibility baggage. → `09c`
- Broader world-alive (later): `MINPCs (More Immersive NPCs)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29483>, if the project later wants adventurer-style incidental content rather than pure background population. → `09c`
- Out of scope (boundary notes, not background population): `Immersive Citizens - AI Overhaul SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/173> is an AI/schedule overhaul (note its known conflict with `AI Overhaul SSE` in the NPC subsection), and `Interesting NPCs SE (3DNPC)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29194> is authored content NPCs — both are named here only so readers know they are intentionally excluded from the background-population decision. `Immersive Wenches` was researched and previously rejected due to community signal around troubleshooting and side effects, but has since been added to `modlist-16.md` per user request. Revisit stability testing before locking. → `09c`

### Recommendation

Start with `Crowded Streets`. It targets exactly what this subsection should solve — background civilian presence in towns and inns — and treats population as a compatibility and pacing problem, not just a numbers problem.

Keep `Travellers of Skyrim` as the road-travel comparison if the real weakness is empty routes rather than empty towns, and `Populated Skyrim Reborn SSE` as the heavier branch if the list genuinely wants a louder statement and will verify the extra bodies still feel believable. Judge through normal movement — entering cities and inns, walking towns at different times of day, taking roads between destinations — checking whether added people feel naturally inhabited or simply crowded.

### Risks & Compatibility

- Re-solving section-07 city-feel and roadside-atmosphere by just stuffing in more NPCs, or choosing a mod because it looks busy in screenshots.
- Letting roads or inns become conspicuously overfilled, or treating the three main routes as interchangeable when they solve different versions of the problem.
- Drifting into adventurer-content or quest-adjacent NPC systems when this subsection should stay about civilian/traveler background presence.
- Confirm `Crowded Streets`, `Travellers of Skyrim`, and `Populated Skyrim Reborn SSE` behave cleanly on Steam `1.6.1170`; record pressure around settlement overhauls, inns, city expansions, navmesh, follower mods, crash history, and overlap with patrol/encounter mods. → `09c`

### Acceptance Criteria

- One preferred settlement-crowd baseline, one road-traveler comparison, and one heavier legacy branch, with the settlement-vs-road distinction explicit.
- Any broader world-alive or out-of-scope alternative documented with a clear reason it is not the baseline.
- The chosen direction improves civilian presence without duplicating section-07 ownership or overwhelming the rest of section 09.

## NPC Dialogue Expansions → `09a Appearance`

### Core Idea

This subsection owns targeted dialogue additions for existing NPCs — expanding what vanilla characters say without rewriting their identity or adding new voice actors. The goal is more responsive, less repetitive NPC conversations in key social and faction contexts.

### Options

- Vanilla-plus Windhelm route: `Dialogue Expansion - Windhelm` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/112415>. Adds 180+ new lines to Windhelm's citizens, guards, and jarl court, written to match vanilla character voice profiles. No new voice files — uses existing vanilla voice assets. **Discontinued** — the author has ceased all AI-voice work. Existing downloads still function; no future updates. → `09a`
- Faction dialogue route: `Dialogue Expansion - Imperial Soldiers` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/113208>. Adds dialogue to Imperial soldiers across camps, forts, and cities, using existing vanilla voice assets. Also discontinued for the same reason. → `09a`
- AI-voiced follower-dialogue series: `Follower Dialogue Expansion (FDE)` by Anbeegod — a series of mods that each expand a vanilla follower or follower-eligible NPC with hundreds of AI-voiced lines, quest awareness, location reactions, and story-driven interactions. The series covers multiple followers across Skyrim (details in Recommendation). → `09a`
- Broader alternative (out of scope): `More Dialogue Overhauls` or authored-NPC bundles that require new voice recording are outside this subsection's scope. → `09a`
- Optional dialogue-hub expansion: `Extended NPC Dialogue Hub` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/179341> (v1.0, May 2026, 171 endorsements) — adds a central dialogue hub with expanded conversation options for generic NPCs, giving more responses and branching to ambient interactions. Lightweight ESP, compatible with existing FDE and dialogue expansion mods. Evaluate after the core dialogue stack is locked. → `09a`
- Optional ambient-banter expansion: `Small Talk` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/168228> (v1.13.13.8, updated Jun 2026) — adds contextual NPC-to-NPC ambient dialogue lines in towns and cities, making social spaces feel more alive. SKSE plugin, no ESP. Complements the dialogue-expansion stack without touching individual NPC records. → `09a`
- Market-stall dialogue expansion: `Shouts of Stallholders` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/139025> — adds new voiced dialogue lines for market stall sellers across Skyrim and Solstheim, with unique lines per NPC and generic lines for any outdoor trader with a vanilla voice type. Lightweight, script-free, ESL-flagged. Tagged AI-Generated Content — evaluate voice quality during playtesting. → `09a`
- Enemy-dialogue expansion: `Bandit Lines Expansion` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/87961> — adds new voiced dialogue lines for bandits using spliced vanilla voice assets, making the most-encountered enemy type in Skyrim feel less repetitive. By jayserpa. No new voice actors, uses existing vanilla dialogue fragments. Complements the `Lawless - A Bandit Overhaul` enemy-variety pick elsewhere in this section. → `09a`
- Enemy-dialogue expansion: `Civil War Lines Expansion` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/139920> — adds new dialogue lines for Imperial and Stormcloak soldiers using spliced vanilla voice assets, covering combat, patrol, and camp interactions. By jayserpa. → `09a`
- Enemy-dialogue expansion: `Forsworn and Thalmor Lines Expansion` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/130880> — adds new voiced dialogue for Forsworn and Thalmor combat barks using spliced vanilla voice assets. By jayserpa. Completes the jayserpa enemy-dialogue trilogy alongside `Bandit Lines Expansion`. → `09a`

### Recommendation

- Add both `Dialogue Expansion - Windhelm` and `Dialogue Expansion - Imperial Soldiers` as baseline vanilla-plus additions. They are lightweight (ESP-only, no new assets), use existing voice files, and improve the most-repeated conversational contexts in the game. → `09a`
- Add `Bandit Lines Expansion` as a locked enemy-dialogue companion. Bandits are the most-encountered enemy type, and their vanilla dialogue pool is extremely limited. This mod adds variety to bandit taunts, alerts, and combat barks using spliced vanilla voice assets, making repeated bandit encounters feel less like listening to the same five lines. Pairs naturally with `Lawless - A Bandit Overhaul`. → `09a`
- Add `Civil War Lines Expansion` as a locked enemy-dialogue companion alongside `Bandit Lines Expansion`. It covers Imperial and Stormcloak soldiers — the second most-encountered hostile faction — using the same spliced-vanilla-voice approach by jayserpa. → `09a`
- Add `Forsworn and Thalmor Lines Expansion` as a locked enemy-dialogue companion, completing the jayserpa enemy-dialogue trilogy. Forsworn are an early-to-mid-game constant in the Reach; Thalmor appear in faction questlines and late-game content. Both benefit from the same variety treatment. → `09a`
- Add `Shouts of Stallholders` as a locked civilian-dialogue companion. It gives market stall sellers across Skyrim and Solstheim varied, location-appropriate barks that make marketplace social spaces feel more alive. Script-free and ESL-flagged, it pairs well with the ambient banter from `Small Talk` — one adds NPC-to-NPC chatter, the other adds vendor-to-player calls. Evaluate the AI-generated voice quality during playtesting before final lock-in. → `09a`
- Add the `Follower Dialogue Expansion (FDE)` series by Anbeegod as the AI-voiced companion to the vanilla-plus dialogue mods. Start with the full publicly available set of 10 follower expansions — they are modular, independent, and can be selectively installed based on which followers the player is likely to recruit: → `09a`
  - `FDE - Aela the Huntress` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/114801> — the flagship FDE mod with 2700+ lines, full quest commentary for all guilds, approval system, romance arc, and werewolf mechanics. Largest and most feature-rich entry in the series.
  - `FDE - Brelyna Maryon` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/113359> — expands the shy College apprentice with 400+ voiced lines focused on her research, insecurity, and personal growth.
  - `FDE - Lydia` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/119226> — expands the iconic Housecarl with 400+ voiced lines exploring her duty, loyalty, and frustration.
  - `FDE - Roggi Knot-Beard` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/134694> — expands the Kynesgrove miner into a fully fledged follower with quest awareness and personal story.
  - `FDE - Aranea Ienith` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/141907> — expands the Priestess of Azura with 495 voiced lines, quest awareness, and religious commentary.
  - `FDE - Borgakh the Steel Heart` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/133571> — expands the Orc stronghold warrior with 478 voiced lines, a personal quest, banter with Illia, and Orc-culture commentary.
  - `FDE - Uthgerd the Unbroken` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/122487> — expands the Unbroken with 233 voiced lines, banter with Aela, and Companions reconciliation arc.
  - `FDE - Ysolda` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/124787> — transforms the Whiterun merchant into a fully functional follower with 180 voiced lines and a darker backstory.
  - `FDE - Jenassa` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/120255> — expands the Dunmer mercenary with 500+ voiced lines, quest awareness, and Dark Elf cultural commentary.
  - `FDE - Olfina Gray-Mane` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/172562> — expands the Gray-Mane daughter into a fully fledged follower with 578 voiced lines, Civil War commentary, and an approval system.
- The FDE series uses AI voice acting rather than spliced vanilla lines. This is a known community point of discussion — some players prefer the purity of vanilla-voice additions. Judge by actual in-game feel: the voice quality is consistently high for AI-generated audio, and the writing expands each character's personality rather than replacing it.
- Author's official FDE collection: <https://next.nexusmods.com/skyrimspecialedition/collections/uu3kpb>

### Risks & Compatibility

- Dialogue additions can conflict with mods that replace the same NPC records or quest aliases.
- Confirm compatibility with `AI Overhaul SSE`, `Crowded Streets`, and any city overhaul that touches Windhelm NPCs or Imperial soldier faction assignments. → `09a`
- Both `Dialogue Expansion - Windhelm` and `Dialogue Expansion - Imperial Soldiers` are zero-asset (dialogue scripts only), so load-order placement matters more than asset conflicts. → `09a`
- The FDE series uses AI voice acting, which may feel tonally different from vanilla-voiced content in the same playthrough. Each FDE mod is ESL-flagged and claims 100% compatibility with any mod — verify against the specific NPC appearance overhaul chosen in the NPC Appearance Overhauls section to avoid facegen or blackface issues.
- FDE mods each add an ESP(-flagged) plugin. With 10 mods, this adds 10 lightweight plugins — well within the 254/4096 limit but worth tracking in the final plugin count.
- `FDE - Olfina Gray-Mane` explicitly conflicts with `IDE Whiterun` (duplicated content). Since IDE Whiterun is not in the current modlist, this is a non-issue — but flag it if Whiterun dialogue add-ons are added later. → `09a`
- The FDE series by Anbeegod (aka Negatrm) is separate from JaySerpa's quest/house-expansion mods. Both authors produce dialogue content, but they operate independently and do not conflict.
- `Shouts of Stallholders` is tagged AI-Generated Content. Evaluate voice quality against vanilla and spliced-vanilla dialogue during playtesting. It uses SPID for NPC blocking and a keyword-distribution system; verify SPID is fully functional in the current stack and that no NPC is double-assigned conflicting dialogue from other mods. → `09a`

### Acceptance Criteria

- Windhelm citizens and soldiers have noticeably more responsive dialogue during ordinary play.
- No missing-voice or subtitled-only lines appear.
- No record conflicts with the chosen NPC appearance, AI, or population stack.
- FDE followers deliver quest-aware lines and location reactions during ordinary gameplay without feeling like they are overriding the vanilla character identity. Test with 2-3 FDE followers active across different questlines.

## Wildlife Density And Rarity Balance → `09b Enemies & Creatures`

### Core Idea

This subsection owns how common wildlife should feel on the landscape once ecology, danger, and creature-identity decisions are handled elsewhere. Section 07 already answered the ecology and creature-identity side; the question here is only whether the province feels too crowded with animals, too predator-heavy on obvious routes, or too generous with constant sightings to preserve scale and rarity.

### Options

- Density-reduction baseline: `True Hunter - fewer animals per square meter` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/25628>. Straightforward spawn-chance reduction so sightings feel less constant and more deliberate. → `09b`
- Route-distribution comparison: `No Predators on roads` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/11901>. For when the issue is not total count but predictably predator-lined major routes. Coexists with `True Hunter` (one solves abundance, the other placement). **Abandoned** — last updated August 2017, LE-era port. Verify 1.6.1170 compatibility or replace with an alternative. → `09b`
- Broader legacy caution branch: `Real Wildlife Skyrim SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/17466>. A much larger wildlife rework; tracked mainly as a cautionary reference because it spills into section-07 ecology, behavior, and content scope. Use only if the project explicitly wants that broader intervention. → `09b`
- Upstream assumptions (not alternatives): section-07 picks `Animallica SE - Skyrim Wildlife Overhaul`, `One With Nature - Dynamic Animals and Creatures SE`, and `Savage Skyrim` are the ecology layer this subsection tunes on top of, not competitors to the distribution decision. → `09b`

### Recommendation

Start with `True Hunter`. Skyrim often feels overpopulated with ambient wildlife, and reducing spawn frequency is a clean distribution-and-rarity answer that makes the landscape feel larger and hunting more intentional without rebuilding wildlife logic.

Keep `No Predators on roads` as the comparison if the frustration is specifically roadside predator saturation, and `Real Wildlife Skyrim SE` as the clearly caveated broader branch. Judge through ordinary wilderness travel — roads, open tundra, forests — checking whether sightings feel appropriately intermittent rather than constant, and evaluate every change alongside the existing section-07 ecology picks so the combination stays coherent.

### Risks & Compatibility

- Re-opening section-07 wildlife/ecology under the narrower label of rarity tuning, or letting a broad overhaul override the tighter distribution decision.
- Reducing wildlife so aggressively the world feels empty rather than spacious, or treating road-predator placement and global density as the same problem.
- Creating contradictory expectations by combining rarity tuning with earlier wildlife mods chosen for different goals.
- Confirm `True Hunter` and `No Predators on roads` behave cleanly on Steam `1.6.1170` with the current section-07/09 wildlife stack; record patch pressure or contradictions with `Animallica SE`, `One With Nature`, `Savage Skyrim`, and later balance decisions. Reassess whether `Real Wildlife Skyrim SE` belongs in the final list once the section-07 overlap is weighed honestly. → `09b`

### Acceptance Criteria

- One preferred wildlife-density baseline, one route-distribution comparison, and one clearly caveated broader-overhaul branch, with the density-vs-placement-vs-overhaul distinction explicit.
- Any broader wildlife mod documented with a clear reason it is not the clean baseline.
- The chosen direction improves scale and rarity without duplicating section-07 ecology or making the landscape feel dead.

## Custom Followers → `09d`
### Core Idea

This subsection owns custom fully-voiced follower additions — new NPCs with authored dialogue, quest commentary, and personal content that expand the companion layer beyond vanilla followers.

### Options

- Scholar-follower baseline: `Lucien - Immersive Fully Voiced Male Follower` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/20035> — a fully voiced Imperial scholar with 5000+ lines, personal quest, and commentary on vanilla quests, Creation Club content, and modded locations. Grows from a cowardly scholar into a capable hero. Anniversary Edition All-In-One Creation Club patch available. LoTD-aware. → `09d`
- Dwemer-specialist follower: `Remiel - Custom Voiced Dwemer Specialist and Companion` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51874> — a Breton engineer with ~5000 lines of dialogue, commentary on dwemer ruins, cities, weather, and time of day. Found in Markarth's Silverblood Inn. Custom follower framework — do not use with NFF/AFT or she breaks. Companion dwemer spider. 10K+ endorsements. → `09d`
- Humorous follower: `Sofia - The Funny Fully Voiced Follower` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/2180> — Skyrim's most-endorsed follower. Professional voice acting by Christine Slagman. Full location and quest awareness (main quest, bounty quests). Custom dialogue system, drunk mechanic, horse summoning, MCM. v2.51, last updated July 2022. No further updates expected. → `09d`
- Bosmer archer follower: `Song of the Green (Auri Follower)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/11278> — a fully voiced Wood Elf archer with 1000+ lines, Bosmer culture commentary, approval system, mini-quest, romance option, and banter with other custom followers (Inigo support available). 19K+ endorsements. → `09d`
- Visual replacer for Auri: `Majestic Auri - a visual replacer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/72361> — high-poly visual replacer for Auri with 3 hair options, 2 eye options, and 2 teeth options. Depends on `Song of the Green (Auri Follower)`. 224K+ unique downloads. → `09d`
- Romantic follower: `Kaidan 2` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/19075> — a fully voiced romantic-interest follower with 1200+ lines, custom home, and mini-quests. Relationship progression based on interaction rather than location triggers. Custom AI system (does not add to follower count). Found in the Abandoned Prison. 2.1.1 current version. Original release by LivTempleton, last updated October 2019; the continued maintained version is available from kaidanmod.com via the Immersive Features installer. → `09d`
- Follower dialogue expansion: `Kaidan 2 Extended Edition - New dialogue - quest commentary and features` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63348> — adds new dialogue, quest commentary, and expanded features to Kaidan 2. Requires `Kaidan 2` as the base. **Deprecated** — the Nexus standalone release is no longer updated; the author directs users to the Immersive Features all-in-one installer from kaidanmod.com, which supersedes this mod. → `09d`
- Visual replacer for Kaidan: `A Makeover for Kaidan` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/100586> — a visual replacer for Kaidan 2 using COtR-inspired assets with a Jon Snow-inspired aesthetic. Standalone (does not require COtR). Optional patch for `Kaidan 2 Extended Edition`. 219 endorsements. → `09d`
- Alternate start for Kaidan: `Immersive Kaidan Start` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/64064> — provides an alternate starting scenario for Kaidan, integrating him into the world more naturally. Requires `Kaidan 2`. → `09d`

### Recommendation

- Start with `Lucien` as the primary custom-follower baseline. He fits the "lots of new content" pillar with extensive quest commentary across vanilla and AE content, and his scholar-to-hero arc avoids power-fantasy follower tropes. Has strong community reputation (30K+ endorsements) and extensive cross-mod integration (Inigo banter, LoTD patches, FDE-style expansion mods). → `09d`
- Add `Remiel` as the second custom-follower pick. She complements Lucien well (scholar + engineer pair), has deep dwemer-content commentary that connects to the world-content pillar, and her custom-framework approach (no NFF/AFT) keeps her working reliably alongside other custom followers. → `09d`
- Add `Song of the Green (Auri)` as the third custom-follower pick. Her Bosmer culture focus, approval system, and romance option add roleplay texture. Pair with `Majestic Auri` as the visual replacer. → `09d`
- Add `Sofia` as the comic-relief follower option. Her tone is intentionally less serious, and her alcohol/drunk mechanics and horse summoning add unique gameplay texture. She is the oldest and most controversial of the four picks — some players find her dialogue grating rather than funny. Keep her listed but flag that she may be cut if playtesting shows tonal mismatch with the broader list. → `09d`
- Add `Kaidan 2` as the dedicated romance-arc follower option. He is one of the most popular romantic-interest custom followers, with a relationship system based on interaction frequency rather than location triggers. Pair with the Immersive Features all-in-one installer from kaidanmod.com (supersedes the standalone `Kaidan 2 Extended Edition`, which is deprecated), `A Makeover for Kaidan` for the visual replacer, and `Immersive Kaidan Start` for a more natural introduction. → `09d`
- For the follower framework, note that Remiel and Auri work best outside NFF (they use their own custom systems), while Sofia can work under NFF or standalone. Lucien is tested with NFF but also works standalone. Kaidan 2 has a custom AI system that avoids adding to the follower count, which can cause conflicts with NFF/AFT — use the in-game track-summon powers instead of NFF management. This means NFF is still the recommended general framework for vanilla followers, but these custom followers should be left alone by NFF's management systems.

### Risks & Compatibility

- Custom followers add plugin count (Lucien + AE patch, Remiel, Sofia, Auri, Majestic Auri, Kaidan 2, Kaidan IF via kaidanmod.com, A Makeover for Kaidan, Immersive Kaidan Start = ~9 ESL-flagged plugins, minimal impact on 254 limit).
- Lucien's Creation Club patch is required for AE content awareness; without it he only comments on vanilla quests.
- Remiel uses a custom follower framework and WILL BREAK under NFF/AFT. Do not let NFF manage her. Same caution applies to Auri 2.0+ — use the `Auri 2.0 - Vanilla Following and Save Game Bridge Fixes` patch if NFF management is desired. → `09d`
- Kaidan 2 uses a custom AI system and does not add to the follower count, which can cause conflicts with NFF/AFT. Use his built-in summon power and map-tracking dialogue instead of NFF's follower management. Create a save before attempting any NFF functions on him.
- `Kaidan 2 Extended Edition` has two distribution paths: the Nexus version (deprecated, no longer updated) and the all-in-one installer from kaidanmod.com which supersedes it. The AIO includes Extended Edition plus Immersive Features and is NOT compatible with the Nexus version. Use the AIO path and document it in the install guide. → `09d`
- Confirm all custom followers are compatible with the chosen NPC appearance overhaul to avoid facegen issues.
- Coordinate with modlist-08 if other custom followers (Val Serano) are locked — follower-banter patches may be needed.
- Sofia's tone is intentionally comedic and may clash with the grim-dark presentation pillar. Evaluate during playtesting and be prepared to cut if tonal mismatch is severe.
- Remiel and Auri have Inigo banter patches available. Kaidan 2 has extended banter with Remiel. Verify cross-follower banter doesn't produce missing audio.
- `Backported Extended ESL Support` is listed as a requirement for `Majestic Auri` but does not apply to the target Steam runtime `1.6.1170` and should not be installed. → `09d`

### Acceptance Criteria

- Lucien delivers quest-aware commentary during normal gameplay without overriding vanilla dialogue.
- His personal quest triggers correctly and progresses through all stages.
- Remiel's dwemer-ruin quest triggers in Markarth and progresses through The Lost Expedition.
- Remiel's dialogue covers cities, weather, and dwemer content without repeating or overriding.
- Auri's approval system, mini-quest, and romance option function correctly.
- Sofia's drunk mechanic, horse summoning, and MCM options work as documented.
- Majestic Auri facegen renders correctly with no blackface or missing assets.
- Kaidan 2's relationship progression advances through interaction (not location triggers) and his romantic questline triggers with an Amulet of Mara.
- Kaidan 2 Extended Edition dialogue and quest commentary plays correctly alongside the base Kaidan 2 setup.
- A Makeover for Kaidan facegen renders correctly with no neck seams or blackface — if using RSV, exclude Kaidan from the SPID file or use the RSV Patch Collection.
- Immersive Kaidan Start provides a natural alternative to the Abandoned Prison start without breaking Kaidan's quest progression.
- Facegen for all followers matches the chosen NPC appearance baseline.
- AE patch functions correctly with the full Creation Club content set.
- Cross-follower banter (Inigo, Lucien, Remiel, Auri, Kaidan) plays without missing audio.

## Candidate TODO Additions

### NPC Dialogue → `09a`

- `Naked Comments Overhaul` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/142249>) — NPC dialogue about nudity → `09a`
- `Collision Dialogue Overhaul` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/115079>) — NPC collision dialogue expansion → `09a`
- `Extended NPC Dialogue` — series of generic NPC dialogue expansions → `09a`
- `Chattier Hunters and Fishermen` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/179154>) — NPC dialogue expansion → `09a`

### Enemies & Creatures → `09b`

- `Next Gen Dragon VFX` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/176433>) — dragon VFX upgrade → `09b`
- `Diverse 4thUnknown Dragons` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/162886>) — dragon model diversity → `09b`
- `Dragons actually fall down` — dragon kill animation fix → `09b`
- `Epic Dwarven Centurion Combat - Diverse Centurions` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/181405>) — Dwarven centurion enemy overhaul → `09b`
- `Skyrim Bandit Expansion` — bandit variety/roster expansion → `09b`
- `Sleep of the Dead - A Draugr Leather and Shroud Replacer` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/178057>) — draugr visual replacer → `09b`
- `Frozen Electrocuted Combustion` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/3532>) — enemy death VFX (frozen/shock/burn) → `09b`
- `Better Butterflies` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/79332>; based on `Butterfly Improved by zzjay` Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/37302>) — butterfly visual upgrade → `09b`

### NPC AI → `09c`

- `Immersive Citizens - AI` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/173>) — NPC AI overhaul (known conflict with AI Overhaul SSE) → `09c`

### NPC Framework → `09d`

- `Keep Up - Follower Locomotion Fix` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/169808>) — follower movement speed fix → `09d`

Note: `Lawless` (#124) already in `09b` as baseline pick. `Steal off scoundrels` (#74) already in `05e`. `Streamlined Fishing` (#103) already mentioned in `08b`.

## Post-Install Smoke Test

After completing this section, verify stability with the coc console command at these 6 locations:

| # | Command | Location | Stress Profile |
|---|---------|----------|----------------|
| 1 | `coc Whiterun` | Whiterun | Major city — NPCs, shadows, architecture density |
| 2 | `coc Solitude` | Solitude | Large city — water reflections, long draw distances |
| 3 | `coc RiftenOrigin` | Riften | Canopy lighting, heavy NPC AI packages |
| 4 | `coc MarkarthOrigin` | Markarth | Dwemer stone, waterfalls, extreme verticality |
| 5 | `coc Riverwood` | Riverwood | Forest exterior — grass, trees, landscape LOD |
| 6 | `coc BleakFallsBarrow01` | Bleak Falls Barrow | Interior dungeon — close-quarters lighting |
| 7 | `coc WhiterunBanneredMare` | Bannered Mare (Whiterun) | Tavern interior — fire lighting, patron NPCs, confined space |

**Pass criteria:** No crash on load. No missing textures. ≥60 FPS maintained (uncap framerate, use `tgm` for god mode if needed).

If any location fails, the most recently installed mod or generation step is the first suspect.
