# NPCs and Creatures

## NPC Appearance Overhauls

### Core Idea

This subsection owns the face, hair, and presentation direction for Skyrim's named NPCs and broader social cast. It does not re-decide the body, skin, and baseline character-visual stack already owned by `modlist-02.md`; it decides how far the list pushes NPC-specific styling on top of that baseline.

The real question is whether `Elder Wilds` should lean toward grounded modernization, clearly stylized beauty, or a vanilla-faithful refresh that keeps the familiar identity of the game's people intact.

### Options

- Grounded route (baseline): `Northbourne NPCs of Whiterun Hold` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/35404>. A modern, regionally textured look that current `r/skyrimmods` signal treats as higher-quality but still grounded — closer to Skyrim than a fashion catalog. Hold-by-hold coverage and patch complexity mean it is not a frictionless all-in-one answer.
- Beauty-forward route: `Pandorable's NPCs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/78524>. A stylized, polished, conventionally attractive overhaul that prioritizes striking faces over restraint; the clearest expression of the opposite taste question.
- Vanilla-faithful route: `High Poly True to Vanilla NPC Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/74226>. Preserves recognizable vanilla identity while smoothing roughness through a high-poly refresh; the restraint-minded comparison.
- Targeted named-NPC route: `The Wolven Widow - SerketHetyt's Elisif Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/62209>. A lore-friendly visual overhaul of a single high-visibility named NPC (Jarl Elisif the Fair of Solitude) rather than a broad cast pass. 1,096 endorsements, ~175K unique downloads, last updated July 2024. Useful as a complementary add-on on top of whichever broad route is chosen, because the Solitude Jarl's court is one of the social scenes where the player spends the most time looking at one character.
- Male coverage: `The Men of Winter SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/10902>. The three routes above skew female-weighted, so a dedicated high-poly male overhaul is needed to keep the cast consistent. `Males Of Skyrim by zzjay` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/37485> is the secondary alternative.
- Female-focused modular route: `DIbella's Blessing` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/82606>. Covers 233 female characters with a more curated, hand-authored appearance pass than the broad baseline routes above. Best treated as the targeted modular branch rather than the subsection-wide default.
- Behavior/schedule layer: `AI Overhaul SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21654>. The section repeatedly leans on "AI overhaul" compatibility pressure, so the actual mod is named here. It changes NPC schedules and behavior, not faces, and pairs with any of the appearance routes (mind its known overlap with `Immersive Citizens`, tracked under Population).
- Later/modular: targeted stacks like `Pride of Skyrim` can still be revisited if the project chooses a deeper mixed modular route instead of one subsection-wide direction.

### Recommendation

Start with the grounded route: `Northbourne NPCs` as the baseline, paired with `The Men of Winter SSE` for male coverage and `AI Overhaul SSE` as the behavior layer. It fits the broader `Elder Wilds` tone better than a fully glamour-driven stack while still clearly modernizing faces.

Keep `High Poly True to Vanilla NPC Overhaul` as the vanilla-faithful fallback if even `Northbourne` drifts too far from familiar identity, and `Pandorable's NPCs` as the beauty-forward branch if the project later accepts the stronger aesthetic shift and patch burden. Keep `DIbella's Blessing` as the modular female-side branch if the list wants more authored women without fully replacing the broader grounded baseline. Judge the result through ordinary social play — walking cities and inns, talking to quest NPCs — checking whether faces still suit class, region, age, and role rather than collapsing into one samey beauty standard. Treat `The Wolven Widow - SerketHetyt's Elisif Overhaul` as a targeted named-NPC companion, not a subsection baseline: it only affects one character but that character sits in one of the most-seen social scenes, so layering it on top of whichever broad route is chosen is reasonable as long as its facegen, skin, and hair mesh with the broader cast direction.

### Risks & Compatibility

- Choosing an overhaul because screenshots look impressive rather than because the world stays coherent in ordinary play.
- Letting glamour-forward design overpower the grounded tone established elsewhere, or letting female-weighted packs leave male NPCs visibly mismatched.
- Treating hold-coverage gaps or mixed-replacer stacking as a small detail when they become ongoing maintenance debt.
- Confirm `Northbourne`, `The Men of Winter`, `Pandorable's`, and `High Poly True to Vanilla` behave cleanly on Steam `1.6.1170`, and check blackface/facegen, dependency, and `AI Overhaul SSE` load-order pressure before locking a route.
- `DIbella's Blessing` is easiest to overuse in a way that pulls the whole cast toward a softer beauty pass than the rest of the list wants. Keep it modular and verify it complements rather than overrides the grounded baseline.
- Confirm `The Wolven Widow` behaves cleanly on Steam `1.6.1170` alongside whichever broad NPC route is chosen; record facegen, skin, and hair overlap with that broader route, and verify it does not silently desync from `Northbourne`/`Pandorable's`/`High Poly True to Vanilla` coverage of Elisif (or from a `Legacy of the Dragonborn` Safehouse display if relevant).
- Do not duplicate the body/skin baseline already owned by `modlist-02.md`.

### Acceptance Criteria

- One preferred grounded baseline (plus male coverage and the `AI Overhaul SSE` behavior layer), one beauty-forward comparison, one vanilla-faithful comparison, and one modular female-side branch (`DIbella's Blessing`), with the distinction between them explicit.
- Any tracked alternative documented with a verified canonical Nexus page and a clear reason it differs from the baseline.
- The chosen direction improves NPC presence without a confusing aesthetic split from the rest of the list.

## Enemy Variety

### Core Idea

This subsection owns how hostile enemy groups feel less repetitive across ordinary play — cleaner bandit variety, better undead variety, or a heavier enemy-overhaul route — without collapsing into an all-purpose creature package. It stays separate from section-07 wildlife ecology, from combat-system ownership elsewhere, and from the later creature-visual and creature-behavior subsections below.

### Options

- Focused bandit route (baseline): `Lawless - A Bandit Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/88080>. The cleanest modern vanilla-plus answer to repetitive bandit encounters — expands archetypes, tiers, and freshness without the legacy baggage of older packages.
- Legacy heavy-bandit route: `OBIS SE - Organized Bandits In Skyrim Special Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/4145>. The classic large bandit-expansion route; bigger compatibility and maintenance burden.
- Focused undead route: `Haugbui - A Draugr Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/26188>. A lighter, vanilla-adjacent answer to repetitive draugr without redefining undead content.
- High-commitment undead route: `The Restless Dead (A Draugr and Skeleton Overhaul)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/94100>. A broader undead refresh with stronger dungeon identity and a more assertive redesign of draugr and skeleton spaces.
- Heavy roster overhaul: `Skyrim Revamped - Complete Enemy Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/14598>. The named option for the "broader heavier enemy-overhaul" route — reworks enemy rosters, stats, and perks across many factions at once. Compare only if the project wants a list-wide enemy rebalance rather than targeted variety, and accepts the combat-balance reach that comes with it.
- Broader package (out of scope): `Skyrim Immersive Creatures` is too wide and overlaps the later creature subsections to serve as the baseline here.

### Recommendation

Start with `Lawless - A Bandit Overhaul`. Bandits are the most overexposed enemy family in the game, and `Lawless` modernizes their roster in a way current discussion treats as cleaner and easier to live with than `OBIS`.

Keep `Haugbui` as the undead comparison if ancient Nordic ruins need as much attention as roadside forts; `OBIS` as the heavier legacy bandit branch if the bigger historical package is worth the patching cost; `The Restless Dead` as the high-commitment undead redesign; and `Skyrim Revamped - Complete Enemy Overhaul` as the list-wide rebalance branch. Judge through common encounter rhythm — clearing forts, roadside fights, ruin delves — checking whether groups become more memorable without every fight becoming a showcase for one overhaul's gimmicks.

### Risks & Compatibility

- Turning enemy variety into a vague grab bag of combat and spawn mods instead of a clear hostile-roster philosophy.
- Treating `Lawless` and `OBIS` as interchangeable (maintenance/design tradeoffs differ), or `Haugbui` and `The Restless Dead` as interchangeable (light adjustment vs. major redesign).
- Letting a heavy overhaul like `Skyrim Revamped` quietly become a combat-balance rewrite the whole list must serve, or pre-empt the later creature subsections.
- Confirm all picks behave cleanly on Steam `1.6.1170` with the current quest, dungeon, and world-content stack; record compatibility pressure around encounter zones, dungeon overhauls, quest mods, and spawn additions.

### Acceptance Criteria

- One preferred focused-variety baseline plus clearly distinct heavier-bandit, lighter-undead, high-commitment-undead, and list-wide-overhaul branches, with the bandit/undead distinction explicit.
- Any tracked alternative documented with a verified canonical Nexus page and a clear reason it differs from the baseline.
- The chosen direction improves encounter freshness without duplicating section-07 ecology or pre-empting later creature subsections.

## Creature Visual Overhauls

### Core Idea

This subsection owns creature-specific visual direction layered on top of the broad baseline in `modlist-02.md`. `Bellyaches Animal and Creature Pack SSE` remains the texture foundation — that is settled. The question is which additional presentation layers make animals, dragons, and region-specific undead more striking without turning this into a giant all-in-one creature package.

### Options

- Broad presentation layer (baseline): `Fluffworks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56361>. A wide visual lift for furred animals that layers on the existing texture baseline; current signal treats it as one of the most noticeable broad creature upgrades. Main alternative: `Fusa Fusa Project - Fluffy Animals` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/5514> (older, well-liked, but more often framed through overwrite/compatibility concerns — compare, don't casually stack both).
- Species standout: `Bears of the North` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/47541>. Makes one of Skyrim's most common large wildlife threats more imposing and distinct.
- Dragon visual: `Iconic's Dragon Retexture` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/101712>. A clean dragon-presentation upgrade that stays in the visual lane. `Splendor - Dragon Variants` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/9670> is the comparison if dragons should read less repetitively without a heavier overhaul.
- Regional specialty: `Cannibal Draugr on Solstheim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21238>. Gives Solstheim's undead a Bloodmoon-flavored identity rather than a copy of mainland draugr; a narrow add-on, not a general undead baseline.
- Targeted species follow-ups: `Diverse True Wolves and Dogs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/38058>, `Real Rabbits HD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29223>, `Rally's Shaggy Cows of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/47742>, and `Realistic Horse Breeds by KrittaKitty` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/7685> if familiar domestic/wilderness animals still feel generic after the baseline lands.
- Out of scope: dragon-variety systems like `Diverse Dragons Collection` and `Infinite Dragon Variants` are encounter/gameplay decisions, not visual ones.

### Recommendation

Start with `Fluffworks`. It improves the visible creature experience across ordinary play, layers naturally on `Bellyaches`, and stays a presentation decision rather than a creature-system overhaul.

Keep `Bears of the North` as the species-specific branch, `Iconic's Dragon Retexture` (with `Splendor - Dragon Variants` as the variety comparison) for dragons, and `Cannibal Draugr on Solstheim` as the regional specialty done correctly. Judge through ordinary visibility — roadside wildlife, common predator fights, dragon attacks, Solstheim exploration — checking that creatures look more memorable without the subsection spilling into behavior or ecology.

### Risks & Compatibility

- Re-solving the section-02 creature baseline instead of building on it, or using narrow specialty mods as if they were broad baselines.
- Stacking `Fluffworks`, `Fusa Fusa`, and multiple targeted replacers without a clear layering plan, or letting dragon-identity mods accumulate into encounter-design decisions by default.
- Underestimating fur-shell, shader/ENB, and targeted-replacer conflicts.
- Confirm all named picks (broad, species, dragon, regional, and the targeted follow-ups) behave cleanly on Steam `1.6.1170` with the current creature baseline; record pressure around creature meshes, fur shells, horse patches, and overlap with later creature-behavior or enemy-variety picks.

### Acceptance Criteria

- One preferred broad-presentation baseline plus distinct species-specific, dragon-visual, and regional-specialty branches, with the broad-vs-targeted distinction explicit.
- Any tracked alternative documented with a verified canonical Nexus page and a clear reason it differs from the baseline.
- The chosen direction improves creature presentation without duplicating section-02 visual baseline or section-07 ecology ownership.

## Creature Behavior Improvements

### Core Idea

This subsection owns encounter-side creature behavior: how creatures attack, react, and express identity once combat starts. Section 07 owns ecology, distribution, and wilderness-danger tone; this subsection only decides which behavior-side upgrades make encounters smarter and more distinct without re-opening those world-feel decisions.

### Options

- Clean dragon-behavior route (baseline): `Dragons Use Thu'um - Dragon AI Enhancements and New Fully Voiced Shouts` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/87085>. Makes dragons act more intelligently through better shout usage and encounter AI rather than a system rewrite.
- Heavier dragon route: `Dragon War - A Dragon Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51310>. Restructures dragon fights as a larger combat-overhaul statement; compare if fights feel structurally passive or floaty rather than merely under-AI'd.
- Undead behavior/combat-role route: `Draugr Upgrades and Improvements (Draugr and Skeleton Overhaul)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21775>. Varies draugr and skeleton role, pressure, and battlefield behavior. Tracked separately from the `Haugbui`/`The Restless Dead` enemy-variety picks because this is about behavior, not roster variety. If tested alongside `Cannibal Draugr on Solstheim`, watch for the Cannibal Draugr compatibility patch work seen in community discussion.
- Context only (animal-side, section-07 overlap): `SkyTEST Lite ESL` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/84539> (classic animal-behavior answer that drifts into ecology/population), `Animal Tweaks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1532> (signal leans toward overtuned lethality), and `Pelagius's Wildlife AI - Skypatcher` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/144909> (de-escalates aggression/predator-prey conflict, overlapping section-07). Keep these out of the baseline unless the project deliberately revisits animal aggression with the section-07 overlap made explicit.

### Recommendation

Start with `Dragons Use Thu'um`. It sharpens one of Skyrim's signature encounters — dragons act more deliberately and distinctively rather than just bigger or tankier — without dragging section 09 back into ecology or full creature-package replacement.

Keep `Dragon War` as the heavier branch if the problem is the structure and tempo of dragon fights, and `Draugr Upgrades and Improvements` as the undead branch to improve repeat dungeon play without re-opening the enemy-variety choice. Judge through actual encounter feel — first contact, aggression timing, pressure windows, attack variety, shout cadence — checking whether fights ask the player to react differently rather than just absorb more stats.

### Risks & Compatibility

- Re-opening section-07 wildlife/ecology under the label of creature behavior, or using a large behavior package that quietly changes population, distribution, or wilderness tone.
- Letting dragon-overhaul choices stack until visual identity, behavior, and difficulty become one muddy decision, or duplicating the undead-overhaul choice already made in Enemy Variety.
- Choosing behavior mods that mostly inflate difficulty rather than making behavior more interesting.
- Confirm `Dragons Use Thu'um`, `Dragon War`, and `Draugr Upgrades and Improvements` behave cleanly on Steam `1.6.1170`; review compatibility with the dragon visual/identity picks (`Iconic's Dragon Retexture`, `Splendor - Dragon Variants`) and undead picks (`Haugbui`, `The Restless Dead`, `Cannibal Draugr on Solstheim`). Reassess whether the context-only animal mods belong in the final list at all once section-07 ownership is weighed.

### Acceptance Criteria

- One preferred clean creature-behavior baseline plus distinct heavier-dragon and undead-behavior branches, with the encounter-AI-vs-ecology distinction explicit.
- Any context-only or cautionary mod documented with a clear reason it is not the baseline.
- The chosen direction improves encounters without duplicating section-07 ecology or collapsing back into the enemy-variety decision.

## Civilian And Traveler Population Additions

### Core Idea

This subsection owns the extra background people who make towns, inns, and roads feel used — without re-deciding the city feel, outskirts texture, and roadside atmosphere already handled in section 07. The goal is believable incidental presence (town crowds, road travelers, ambient civilian movement) between the major authored content choices made elsewhere, not more clutter or bigger settlements.

### Options

- Compatibility-first crowd route (baseline): `Crowded Streets` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/127723>. More civilian presence in cities, towns, and inns via a zero-cell-edit, dynamic-cleanup, configurable-density design — a cleaner fit than older static population mods.
- Road-traveler route: `Travellers of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1973>. Busier roads through merchants, mercenaries, and pilgrims moving between locations. Coexists with `Crowded Streets` in principle (one solves settlements, the other roads), but only if testing confirms the result feels inhabited rather than conspicuously busy.
- Heavy legacy route: `Populated Skyrim Reborn SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32190>. A louder population pass with higher risk of over-crowding, static-feeling NPCs, and older compatibility baggage.
- Broader world-alive (later): `MINPCs (More Immersive NPCs)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29483>, if the project later wants adventurer-style incidental content rather than pure background population.
- Out of scope (boundary notes, not background population): `Immersive Citizens - AI Overhaul SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/173> is an AI/schedule overhaul (note its known conflict with `AI Overhaul SSE` in the NPC subsection), and `Interesting NPCs SE (3DNPC)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29194> is authored content NPCs — both are named here only so readers know they are intentionally excluded from the background-population decision. `Immersive Wenches` was researched and rejected: visible community signal is dominated by troubleshooting and side effects that do not match the repo's compatibility-minded baseline.

### Recommendation

Start with `Crowded Streets`. It targets exactly what this subsection should solve — background civilian presence in towns and inns — and treats population as a compatibility and pacing problem, not just a numbers problem.

Keep `Travellers of Skyrim` as the road-travel comparison if the real weakness is empty routes rather than empty towns, and `Populated Skyrim Reborn SSE` as the heavier branch if the list genuinely wants a louder statement and will verify the extra bodies still feel believable. Judge through normal movement — entering cities and inns, walking towns at different times of day, taking roads between destinations — checking whether added people feel naturally inhabited or simply crowded.

### Risks & Compatibility

- Re-solving section-07 city-feel and roadside-atmosphere by just stuffing in more NPCs, or choosing a mod because it looks busy in screenshots.
- Letting roads or inns become conspicuously overfilled, or treating the three main routes as interchangeable when they solve different versions of the problem.
- Drifting into adventurer-content or quest-adjacent NPC systems when this subsection should stay about civilian/traveler background presence.
- Confirm `Crowded Streets`, `Travellers of Skyrim`, and `Populated Skyrim Reborn SSE` behave cleanly on Steam `1.6.1170`; record pressure around settlement overhauls, inns, city expansions, navmesh, follower mods, crash history, and overlap with patrol/encounter mods.

### Acceptance Criteria

- One preferred settlement-crowd baseline, one road-traveler comparison, and one heavier legacy branch, with the settlement-vs-road distinction explicit.
- Any broader world-alive or out-of-scope alternative documented with a clear reason it is not the baseline.
- The chosen direction improves civilian presence without duplicating section-07 ownership or overwhelming the rest of section 09.

## Wildlife Density And Rarity Balance

### Core Idea

This subsection owns how common wildlife should feel on the landscape once ecology, danger, and creature-identity decisions are handled elsewhere. Section 07 already answered the ecology and creature-identity side; the question here is only whether the province feels too crowded with animals, too predator-heavy on obvious routes, or too generous with constant sightings to preserve scale and rarity.

### Options

- Density-reduction baseline: `True Hunter - fewer animals per square meter` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/25628>. Straightforward spawn-chance reduction so sightings feel less constant and more deliberate.
- Route-distribution comparison: `No Predators on roads` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/11901>. For when the issue is not total count but predictably predator-lined major routes. Coexists with `True Hunter` (one solves abundance, the other placement).
- Broader legacy caution branch: `Real Wildlife Skyrim SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/17466>. A much larger wildlife rework; tracked mainly as a cautionary reference because it spills into section-07 ecology, behavior, and content scope. Use only if the project explicitly wants that broader intervention.
- Upstream assumptions (not alternatives): section-07 picks `Animallica SE - Skyrim Wildlife Overhaul`, `One With Nature - Dynamic Animals and Creatures SE`, and `Savage Skyrim` are the ecology layer this subsection tunes on top of, not competitors to the distribution decision.

### Recommendation

Start with `True Hunter`. Skyrim often feels overpopulated with ambient wildlife, and reducing spawn frequency is a clean distribution-and-rarity answer that makes the landscape feel larger and hunting more intentional without rebuilding wildlife logic.

Keep `No Predators on roads` as the comparison if the frustration is specifically roadside predator saturation, and `Real Wildlife Skyrim SE` as the clearly caveated broader branch. Judge through ordinary wilderness travel — roads, open tundra, forests — checking whether sightings feel appropriately intermittent rather than constant, and evaluate every change alongside the existing section-07 ecology picks so the combination stays coherent.

### Risks & Compatibility

- Re-opening section-07 wildlife/ecology under the narrower label of rarity tuning, or letting a broad overhaul override the tighter distribution decision.
- Reducing wildlife so aggressively the world feels empty rather than spacious, or treating road-predator placement and global density as the same problem.
- Creating contradictory expectations by combining rarity tuning with earlier wildlife mods chosen for different goals.
- Confirm `True Hunter` and `No Predators on roads` behave cleanly on Steam `1.6.1170` with the current section-07/09 wildlife stack; record patch pressure or contradictions with `Animallica SE`, `One With Nature`, `Savage Skyrim`, and later balance decisions. Reassess whether `Real Wildlife Skyrim SE` belongs in the final list once the section-07 overlap is weighed honestly.

### Acceptance Criteria

- One preferred wildlife-density baseline, one route-distribution comparison, and one clearly caveated broader-overhaul branch, with the density-vs-placement-vs-overhaul distinction explicit.
- Any broader wildlife mod documented with a clear reason it is not the clean baseline.
- The chosen direction improves scale and rarity without duplicating section-07 ecology or making the landscape feel dead.
