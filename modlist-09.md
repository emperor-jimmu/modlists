# NPCs and Creatures

## NPC Appearance Overhauls

### Core Idea

This subsection owns the face, hair, and overall presentation direction for Skyrim's named NPCs and broader social cast.

The question here is not whether the list can make NPCs prettier in the abstract. It is whether `Elder Wilds` should lean toward a grounded modernized look, a clearly stylized beauty-forward look, or a more explicitly vanilla-faithful refresh that keeps the familiar identity of the game's people intact.

This subsection should not re-decide the body, skin, and baseline character-visual stack already owned by `modlist-02.md`. It should decide how far the list wants to push NPC-specific beauty and personality styling on top of that baseline.

### Suggested Options

- Grounded hold-based route: use `Northbourne NPCs of Whiterun Hold` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/35404> as the anchor comparison if the project wants a more grounded, modern, and regionally textured NPC look without jumping all the way into glamour-model territory.
- Beauty-forward route: use `Pandorable's NPCs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/78524> if the list wants a clearly stylized, polished, and more conventionally attractive overhaul direction that prioritizes striking faces over restraint.
- Vanilla-faithful route: use `High Poly True to Vanilla NPC Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/74226> if the project wants to preserve the familiar identity of vanilla NPCs while smoothing out roughness through a more faithful high-poly refresh.

### Complementary Additions

- `Northbourne NPCs` is the clearest grounded baseline to keep tracking even if the final answer becomes more modular, because it represents the strongest current middle ground between older beauty overhauls and strict vanilla preservation.
- `Pandorable's NPCs` matters as the obvious comparison because it answers a different taste question very clearly: not subtle realism, but a more idealized and intentionally beautified NPC cast.
- `High Poly True to Vanilla NPC Overhaul` matters because it represents the most direct answer for players who want clear improvement without losing the recognizable vanilla social identity.
- Additional race- or gender-specific stacks like `Dibella's Blessing`, `Pride of Skyrim`, or similar targeted overhauls can be revisited later if the project decides a mixed modular route is better than one clear subsection-wide direction.

### Recommendation

Start with the grounded hold-based route.

`Northbourne NPCs` is the strongest first-pass baseline because it appears to fit the broader `Elder Wilds` tone better than a fully glamour-driven replacer stack. Current `r/skyrimmods` signal treats it as a respected, higher-quality modernization route that still feels more like Skyrim than a fashion catalog, even if its hold-by-hold coverage and patch complexity mean it is not a frictionless all-in-one answer.

Keep `High Poly True to Vanilla NPC Overhaul` as the meaningful vanilla-faithful comparison if the project decides even `Northbourne NPCs` pushes too far away from familiar vanilla identity.

Keep `Pandorable's NPCs` as the explicit beauty-forward branch if the project later decides that a more stylized and polished cast is worth the stronger aesthetic shift and patch burden.

### Why This Is The Right Baseline

The strongest version of this subsection should make Skyrim's people look better without making the world feel like it belongs to a different game. `Northbourne NPCs` appears to do that most convincingly. It modernizes faces and presentation, but the current community signal still treats it as more grounded than the classic glamour stacks.

`High Poly True to Vanilla NPC Overhaul` still matters because it protects a valuable principle: some lists do not want their NPCs reinterpreted so much as cleaned up. That makes it an important restraint-minded comparison.

`Pandorable's NPCs` matters because it remains one of the clearest and most popular expressions of the beauty-forward route. Even if it is not the baseline here, it is useful to keep the contrast explicit rather than pretending all NPC overhauls are solving the same problem.

That makes the distinction clear: grounded modernization, explicit beauty-forward stylization, or a more faithful vanilla refresh.

### Working Guidance For Elder Wilds

- Judge this subsection through ordinary social play: walking through cities and inns, talking to quest NPCs, seeing whether faces still suit class, region, age, and role, and checking whether improved presentation supports immersion rather than constantly calling attention to the overhaul itself.
- Test `Northbourne NPCs` first if the list wants a stronger-looking cast without sacrificing the rougher grounded identity that still suits Skyrim.
- Compare `High Poly True to Vanilla NPC Overhaul` if the real priority is preserving familiar NPC identity and minimizing interpretive drift.
- Compare `Pandorable's NPCs` only if the project intentionally wants a more stylized and beauty-forward presentation and is comfortable with the stronger aesthetic signature that comes with it.
- Track coverage and patch pressure carefully, especially where hold-based packs, AI overhauls, blackface risks, and mixed NPC replacer stacks can create unnecessary maintenance debt.
- Keep this subsection separate from body, skin, and creature baseline ownership in `modlist-02.md`; the question here is NPC-specific presentation philosophy, not rebuilding the entire character-visual stack from scratch.

### What Elder Wilds Should Prioritize

- NPC faces that feel improved and memorable without collapsing into one samey beauty standard.
- A clear distinction between grounded modernization, glamour-forward replacement, and vanilla-faithful refresh.
- Enough consistency that towns, factions, and questlines still feel like they belong to one coherent Skyrim.
- A solution that can be maintained without a sprawling patch web or fragile mixed replacer stack unless the payoff is clearly worth it.
- Room for later enemy, creature, and population subsections to solve different problems instead of inheriting unresolved NPC-style confusion.

### Research Tasks

- Confirm `Northbourne NPCs of Whiterun Hold`, `Pandorable's NPCs`, and `High Poly True to Vanilla NPC Overhaul` behave cleanly on Steam `1.6.1170` with the current visual and NPC-related stack.
- Test whether `Northbourne NPCs` stays cohesive enough once incomplete coverage and hold-by-hold adoption are factored in.
- Test whether `High Poly True to Vanilla NPC Overhaul` avoids the blackface, dependency, and stability issues current Reddit discussion keeps surfacing.
- Test whether `Pandorable's NPCs` feels like an intentional aesthetic upgrade rather than a tonal mismatch with the rest of the list.
- Record AI-overhaul, facegen, load-order, and mixed-replacer compatibility pressure before locking any broad NPC appearance route.

### Risks To Check

- Choosing an NPC overhaul because screenshots look impressive rather than because the world still feels coherent in ordinary play.
- Letting glamour-forward NPC design overpower the grounded tone established elsewhere in the modlist.
- Treating hold coverage gaps or mixed replacer stacking as a small detail when they can become ongoing maintenance debt.
- Using a vanilla-faithful option because it sounds safe even if it delivers weaker improvement than the list really wants.
- Accidentally duplicating body/skin baseline decisions that section 02 already owns.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred grounded NPC-appearance baseline, one meaningful beauty-forward comparison, and one vanilla-faithful comparison.
- The distinction between grounded modernization, stylized beautification, and faithful vanilla refresh is explicit.
- Any tracked alternative is documented with a verified or otherwise explicitly sourced canonical Nexus page and a clear explanation of why it differs from the baseline.
- The chosen direction improves NPC presence without creating a confusing aesthetic split from the rest of the list.

## Enemy Variety

### Core Idea

This subsection owns the question of how hostile enemy groups should feel less repetitive across ordinary Skyrim play.

The question here is not whether the list can make combat harder in a generic sense. It is whether `Elder Wilds` wants cleaner bandit variety, better undead variety, or a broader heavier enemy-overhaul route that changes the texture of common hostile encounters without collapsing into an all-purpose creature package.

This subsection should stay separate from section-07 wildlife ecology ownership, from combat-system ownership elsewhere in the list, and from the later section-09 creature subsections that will deal with creature visuals and creature behavior more directly.

### Suggested Options

- Focused bandit-variety route: use `Lawless - A Bandit Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/88080> if the project wants the cleanest modern vanilla-plus answer to repetitive bandit encounters without turning enemy variety into a giant systems stack.
- Legacy heavy-bandit route: use `OBIS SE - Organized Bandits In Skyrim Special Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/4145> if the list wants the classic large bandit-expansion route and is willing to absorb the bigger compatibility and maintenance burden that comes with it.
- Focused undead-variety route: use `Haugbui - A Draugr Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/26188> if the project wants a lighter, more vanilla-adjacent answer to repetitive draugr encounters without dramatically redefining undead content.
- High-commitment undead route: use `The Restless Dead (A Draugr and Skeleton Overhaul)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/94100> if the list wants a much broader undead refresh with stronger dungeon identity, wider enemy differentiation, and a more assertive redesign of draugr and skeleton spaces.

### Complementary Additions

- `Lawless - A Bandit Overhaul` is the clearest first-pass baseline because it solves one of Skyrim's most common enemy problems directly: bandits showing up too often with too little memorable variation.
- `Haugbui - A Draugr Overhaul` complements `Lawless` especially well in principle because one modernizes common humanoid enemies while the other modernizes the most common undead enemy family without either mod trying to become the whole encounter ecosystem.
- `OBIS SE - Organized Bandits In Skyrim Special Edition` remains worth documenting because it is still the legacy reference point for big bandit variety, even if current community signal treats it as the higher-maintenance branch.
- `The Restless Dead (A Draugr and Skeleton Overhaul)` matters because it represents the heavier undead answer clearly enough that the subsection can distinguish between light-touch variety and a more dramatic dungeon-enemy redesign.
- `Skyrim Immersive Creatures` is worth remembering as a broader creature-package comparison, but it is too wide and too overlapping with later creature subsections to serve as the clean baseline here.

### Recommendation

Start with the focused bandit-variety route.

`Lawless - A Bandit Overhaul` is the strongest first-pass baseline because it appears to solve the most common ordinary-play problem in the cleanest way. Bandits are everywhere in Skyrim, and current `r/skyrimmods` signal treats `Lawless` as a strong modern answer that expands archetypes, tiers, and encounter freshness without inheriting the same amount of legacy baggage attached to `OBIS`.

Keep `Haugbui - A Draugr Overhaul` as the meaningful undead comparison if the project wants enemy variety to improve ancient Nordic ruin gameplay just as much as roadside and fort-bandit gameplay.

Keep `OBIS SE - Organized Bandits In Skyrim Special Edition` as the heavier legacy bandit branch if the project later decides it wants the bigger historical bandit package and is willing to accept the extra patching and compatibility cost.

Keep `The Restless Dead (A Draugr and Skeleton Overhaul)` as the high-commitment undead branch if the list wants a much more assertive redesign of Skyrim's undead spaces rather than a lighter vanilla-plus adjustment.

### Why This Is The Right Baseline

The strongest version of this subsection should improve common hostile encounters before it chases maximum feature count. `Lawless - A Bandit Overhaul` appears to do that best. It targets the most overexposed enemy family in the game, modernizes their roster, and does so in a way current community discussion treats as cleaner and easier to live with than the older giant-bandit-package approach.

`Haugbui - A Draugr Overhaul` still matters because draugr repetition is the other major half of Skyrim's enemy-fatigue problem. It gives the subsection a lighter undead answer without immediately pushing the list into a much more dramatic dungeon redesign.

`OBIS SE - Organized Bandits In Skyrim Special Edition` matters because it is still the historical benchmark for big bandit variety, and ignoring it would hide an important tradeoff: scale and spectacle versus cleanliness and maintenance.

`The Restless Dead (A Draugr and Skeleton Overhaul)` matters because it makes the undead-side tradeoff explicit too: subtle variety improvement versus a heavier and more transformative undead overhaul.

That makes the distinction clear: modern focused bandit variety, heavier legacy bandit expansion, lighter undead variety, or a more transformative undead redesign.

### Working Guidance For Elder Wilds

- Judge this subsection through common encounter rhythm: clearing forts, fighting roadside bandits, delving Nordic ruins, and checking whether enemy groups become more memorable without every fight turning into a showcase for one overhaul's gimmicks.
- Test `Lawless - A Bandit Overhaul` first if the list wants the cleanest improvement to the enemy group players fight most often.
- Compare `Haugbui - A Draugr Overhaul` if the project wants ruin delves to gain more identity without committing to a much bigger undead redesign.
- Compare `OBIS SE - Organized Bandits In Skyrim Special Edition` only if the project intentionally wants the larger legacy bandit package and is prepared for the patching and integration burden current community discussion still flags.
- Compare `The Restless Dead (A Draugr and Skeleton Overhaul)` only if the list wants a clearly stronger dungeon-undead identity and is willing to let undead spaces feel more heavily overhauled.
- Keep `Skyrim Immersive Creatures` out of the baseline decision for this subsection unless later testing shows the project specifically wants a broader creature package and is ready to deal with that overlap on purpose.
- Record compatibility pressure carefully around encounter zones, dungeon overhauls, quest mods, spawn additions, and any later creature-behavior changes.

### What Elder Wilds Should Prioritize

- More memorable enemy groups in the places players already fight most often.
- A clear distinction between bandit-focused variety and undead-focused variety rather than one unfocused pile of hostile-overhaul mods.
- Enemy additions that improve encounter freshness without quietly becoming a combat-balance rewrite the whole list has to serve.
- Enough restraint that later creature subsections still have room to decide visual and behavior changes on their own terms.
- Solutions that remain maintainable in a modern `1.6.1170` stack.

### Research Tasks

- Confirm `Lawless - A Bandit Overhaul`, `OBIS SE - Organized Bandits In Skyrim Special Edition`, `Haugbui - A Draugr Overhaul`, and `The Restless Dead (A Draugr and Skeleton Overhaul)` behave cleanly on Steam `1.6.1170` with the current quest, dungeon, and world-content stack.
- Test whether `Lawless - A Bandit Overhaul` delivers enough encounter freshness without feeling overtuned or over-scripted in ordinary bandit content.
- Test whether `Haugbui - A Draugr Overhaul` gives Nordic ruins enough additional identity to matter without pushing too far away from vanilla tone.
- Test whether `OBIS SE - Organized Bandits In Skyrim Special Edition` still justifies its heavier maintenance burden in a modern list compared with the cleaner `Lawless` route.
- Test whether `The Restless Dead (A Draugr and Skeleton Overhaul)` feels like a compelling upgrade or an unnecessarily dominant redesign of undead content.
- Record compatibility pressure around dungeon mods, quest mods, encounter-zone work, and any overlap with later creature-focused subsection choices.

### Risks To Check

- Turning enemy variety into a vague grab bag of combat and spawn mods instead of choosing a clear hostile-roster philosophy.
- Letting one heavy overhaul dominate section 09 before creature visuals, creature behavior, or population decisions have been made.
- Treating `Lawless` and `OBIS` as interchangeable when the maintenance and design tradeoffs are meaningfully different.
- Treating `Haugbui` and `The Restless Dead` as interchangeable when one is a lighter vanilla-adjacent adjustment and the other is a much bigger undead redesign.
- Pulling broad creature packages into this subsection so early that later creature-specific subsections lose their purpose.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred focused enemy-variety baseline, one meaningful heavier legacy bandit branch, one lighter undead branch, and one high-commitment undead branch.
- The distinction between bandit variety and undead variety is explicit.
- Any tracked alternative is documented with a verified or otherwise explicitly sourced canonical Nexus page and a clear explanation of why it differs from the baseline.
- The chosen direction improves encounter freshness without duplicating section-07 ecology ownership or pre-empting later creature subsections.

## Creature Visual Overhauls

### Core Idea

This subsection owns the creature-specific visual direction that sits on top of the broad baseline already established in `modlist-02.md`.

The question here is not whether `Bellyaches Animal and Creature Pack SSE` remains the baseline texture foundation. That decision is already made. The question is which additional creature-presentation layers are worth using to make Skyrim's animals, dragons, and region-specific undead feel more striking and better defined without turning this subsection into a giant all-in-one creature package.

### Suggested Options

- Broad creature-presentation layer: use `Fluffworks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56361> if the project wants a wide visual lift for furred animals and related creatures on top of the existing texture baseline.
- Species-specific standout branch: use `Bears of the North` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/47541> if the list wants one of Skyrim's most common large wildlife threats to feel much more physically imposing and visually distinct.
- Dragon-visual branch: use `Iconic's Dragon Retexture` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/101712> if the project wants a clean dragon-presentation upgrade without dragging in broader dragon-variety or gameplay baggage.
- Regional specialty branch: use `Cannibal Draugr on Solstheim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21238> if the list wants Solstheim's undead to carry a more specific Bloodmoon-flavored visual identity rather than looking like a copy of mainland draugr.

### Complementary Additions

- `Fluffworks` is the clearest complementary layer because it does not answer the same question as the more targeted creature picks. It is the broad presentation pass, while the others solve narrower identity problems.
- `Bears of the North` can coexist naturally with `Fluffworks` because it gives one especially visible animal family a stronger silhouette and presence rather than trying to replace the broad creature baseline by itself.
- `Iconic's Dragon Retexture` is the clean dragon-specific companion because it stays in the presentation lane more cleanly than dragon-variety systems like `Diverse Dragons Collection` or `Infinite Dragon Variants`.
- `Cannibal Draugr on Solstheim` is worth treating as a narrow specialty add-on rather than a general undead baseline because its value is regional flavor and identity, not broad creature coverage.
- `Fusa Fusa Project - Fluffy Animals` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/5514> is the clearest broad alternative to `Fluffworks`: older, well-liked, and still useful, but better treated as a comparison branch because current community signal more often frames it through overwrite and compatibility considerations.
- `Splendor - Dragon Variants` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/9670> is the strongest dragon-identity comparison if the project wants more visual dragon variation without stepping all the way into a heavier dragon-overhaul package.
- `Diverse True Wolves and Dogs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/38058>, `Real Rabbits HD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29223>, `Rally's Shaggy Cows of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/47742>, and `Realistic Horse Breeds by KrittaKitty` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/7685> all fit best as targeted species-side additions if the baseline lands well and the list still wants more visual identity in familiar domestic or wilderness animals.

### Recommendation

Start with the broad creature-presentation layer.

`Fluffworks` is the strongest first-pass baseline because it improves the visible creature experience across ordinary play without forcing section 09 to re-solve ecology, spawn design, or giant creature-package scope. It layers naturally on top of `Bellyaches Animal and Creature Pack SSE` and current community signal still treats it as one of the most noticeable broad creature-presentation upgrades available.

Keep `Bears of the North` as the meaningful species-specific comparison if the list wants one high-impact wildlife family to feel dramatically more memorable.

Keep `Iconic's Dragon Retexture` as the dragon-visual branch if the project wants dragons to look better without inheriting the broader design baggage of dragon-variety systems.

### Why This Is The Right Baseline

The strongest version of this subsection should make creatures look better in the places players actually see them most often before it starts stacking niche specialties. `Fluffworks` appears to do that best. It is broad enough to matter immediately, but still narrow enough to remain a presentation decision instead of turning into a creature-system overhaul.

`Bears of the North` still matters because bears are common, visually important, and easy to undersell. A strong bear-specific branch gives the list a way to make a familiar threat feel bigger and more physically serious.

`Iconic's Dragon Retexture` matters because dragons are too central to leave visually underdefined, but this subsection does not need to solve dragon gameplay, variety systems, or encounter design just to make them look better.

`Cannibal Draugr on Solstheim` matters because it represents the narrow specialty path done correctly: a lore-aware regional visual identity choice that complements the broader baseline rather than replacing it.

`Splendor - Dragon Variants` is worth tracking because it occupies the middle ground between pure dragon retexturing and heavier dragon-overhaul design. If the project later wants dragons to read less repetitively while still staying mostly in the visual lane, it is the cleaner branch to compare first.

That makes the distinction clear: a broad creature-presentation pass, a standout species branch, a clean dragon-visual branch, or a narrow regional identity upgrade.

### Working Guidance For Elder Wilds

- Judge this subsection through ordinary visibility: wildlife encounters on the road, common predator fights, dragon attacks, and Solstheim exploration, checking whether creatures look more memorable without the subsection spilling into behavior or ecology ownership.
- Test `Fluffworks` first if the project wants the broadest noticeable visual improvement on top of the existing creature-texture baseline.
- Compare `Bears of the North` if the real goal is to make a familiar high-impact creature feel more imposing rather than to broadly adjust many species at once.
- Compare `Iconic's Dragon Retexture` if the list wants a dragon-specific visual upgrade while keeping dragon encounter systems and roster design separate.
- Keep `Cannibal Draugr on Solstheim` as a specialty branch if Solstheim's undead identity feels too visually generic compared with the rest of the list.
- Compare `Splendor - Dragon Variants` if the list wants dragons to look less samey while still avoiding the larger gameplay and roster implications of heavier dragon packages.
- Keep `Fusa Fusa Project - Fluffy Animals` as the main broad comparison to `Fluffworks` rather than stacking both casually; they answer much of the same fluffy-animal presentation question from different generations of the mod ecosystem.
- Keep `Diverse True Wolves and Dogs`, `Real Rabbits HD`, `Rally's Shaggy Cows of Skyrim`, and `Realistic Horse Breeds by KrittaKitty` in mind as targeted follow-up layers if ordinary wolves, rabbits, cows, or horses still feel visually generic after the broader baseline is chosen.
- Keep dragon-variety systems like `Diverse Dragons Collection` and `Infinite Dragon Variants` out of this baseline decision unless the project later decides it wants broader dragon identity and gameplay changes on purpose.
- Record compatibility pressure carefully around creature meshes, fur shells, ENB/shader interactions, targeted species replacers, and any overlap with later creature-behavior choices.

### What Elder Wilds Should Prioritize

- Creature visuals that are immediately legible in ordinary play rather than only impressive in screenshots.
- A clear distinction between broad presentation upgrades and narrower species- or region-specific identity branches.
- Improvements that layer cleanly on top of the existing `Bellyaches Animal and Creature Pack SSE` baseline instead of quietly replacing section-02 ownership.
- Enough restraint that later creature-behavior and population subsections can still answer separate questions.
- Creature presentation that strengthens the world's visual identity without creating unnecessary complexity in a modern `1.6.1170` stack.

### Research Tasks

- Confirm `Fluffworks`, `Bears of the North`, `Iconic's Dragon Retexture`, and `Cannibal Draugr on Solstheim` behave cleanly on Steam `1.6.1170` with the current creature baseline.
- Confirm `Fusa Fusa Project - Fluffy Animals`, `Splendor - Dragon Variants`, `Diverse True Wolves and Dogs`, `Real Rabbits HD`, `Rally's Shaggy Cows of Skyrim`, and `Realistic Horse Breeds by KrittaKitty` also behave cleanly on Steam `1.6.1170` with the current creature baseline.
- Test whether `Fluffworks` improves creature presence enough to justify its known patching and shader-caveat overhead.
- Test whether `Bears of the North` feels like a worthwhile targeted upgrade rather than an isolated visual outlier.
- Test whether `Iconic's Dragon Retexture` gives dragons enough visual payoff without needing broader dragon-variant systems.
- Test whether `Cannibal Draugr on Solstheim` meaningfully improves Solstheim identity without adding unnecessary overlap with undead-overhaul decisions already tracked elsewhere in section 09.
- Test whether `Splendor - Dragon Variants` adds the right amount of dragon visual variety without dragging the subsection into a broader dragon-systems decision.
- Test whether the targeted animal additions (`Diverse True Wolves and Dogs`, `Real Rabbits HD`, `Rally's Shaggy Cows of Skyrim`, and `Realistic Horse Breeds by KrittaKitty`) layer cleanly on top of the chosen broad baseline rather than creating a patch pile of small exceptions.
- Record compatibility pressure around horse patches, ENB interaction, targeted species replacers, and any overlap with later creature behavior or enemy-variety picks.

### Risks To Check

- Re-solving the section-02 creature baseline instead of building on it.
- Pulling dragon-variety systems or broad creature packages into this subsection until it stops being a creature-visual decision.
- Letting one flashy species replacer distort the visual tone of the whole subsection.
- Underestimating fur-shell, shader, or targeted replacer compatibility issues.
- Using narrow specialty mods as if they were broad baselines.
- Stacking `Fluffworks`, `Fusa Fusa Project - Fluffy Animals`, and multiple targeted animal replacers without a clear layering plan.
- Letting dragon-identity mods quietly become encounter-design decisions by accumulation instead of explicit choice.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred broad creature-presentation baseline, one meaningful species-specific branch, one clean dragon-visual branch, and one narrow regional specialty branch.
- The distinction between broad visual layering and targeted creature-identity upgrades is explicit.
- Any tracked alternative is documented with a verified or otherwise explicitly sourced canonical Nexus page and a clear explanation of why it differs from the baseline.
- The chosen direction improves creature presentation without duplicating section-02 visual-baseline ownership or section-07 ecology ownership.

## Creature Behavior Improvements

### Core Idea

This subsection owns encounter-side creature behavior: how creatures attack, react, pressure the player, and express their identity once combat actually starts.

The question here is not whether Skyrim should have more animals, rarer animals, or a more dangerous wilderness overall. Section 07 already owns ecology, distribution, and wilderness-danger tone. The question here is which behavior-side upgrades make creature encounters feel smarter, more distinct, and more memorable without re-opening those broader world-feel decisions.

### Suggested Options

- Clean dragon-behavior route: use `Dragons Use Thu'um - Dragon AI Enhancements and New Fully Voiced Shouts` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/87085> if the project wants dragons to behave more intelligently and express their identity through better shout usage and encounter-side AI rather than through broader dragon-system rewrites.
- Heavier dragon-overhaul route: use `Dragon War - A Dragon Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51310> if the list wants dragons to fight more aggressively and decisively as a larger combat-overhaul statement rather than a narrower AI-enhancement layer.
- Undead behavior/combat-role route: use `Draugr Upgrades and Improvements (Draugr and Skeleton Overhaul)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21775> if the goal is to make draugr and skeleton encounters feel more varied in role, pressure, and battlefield behavior without defaulting immediately to the bigger undead-overhaul packages already discussed elsewhere in section 09.

### Complementary Additions

- `Dragons Use Thu'um - Dragon AI Enhancements and New Fully Voiced Shouts` and `Dragon War - A Dragon Overhaul` are the clearest comparison pair because they answer the same dragon-encounter problem at different scales: one is the cleaner AI-and-shouts route, while the other is the heavier full-fight overhaul.
- `Draugr Upgrades and Improvements (Draugr and Skeleton Overhaul)` is worth tracking separately from `Haugbui - A Draugr Overhaul` and `The Restless Dead (A Draugr and Skeleton Overhaul)` because this subsection is about encounter behavior and combat roles, not re-running the broader enemy-variety choice already documented above.
- `SkyTEST Lite ESL` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/84539> remains important context because it is the classic animal-behavior answer, but current community signal suggests it drifts too easily back into section-07 ecology, population, and compatibility territory to be the clean baseline here.
- `Animal Tweaks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1532> is worth tracking as an older animal-behavior comparator, but current `r/skyrimmods` signal leans strongly toward overtuned lethality and animal-side balance issues rather than a clean modern baseline.
- `Pelagius's Wildlife AI - Skypatcher` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/144909> is better treated as wildlife-tuning context than as the main answer here because it explicitly de-escalates aggression and predator-prey conflict in ways that overlap with section-07 ecology ownership.
- `Cannibal Draugr Upgrades and Improvements` compatibility work seen in community discussion is relevant if `Draugr Upgrades and Improvements (Draugr and Skeleton Overhaul)` is tested alongside `Cannibal Draugr on Solstheim`, which is already documented in the creature-visual subsection.

### Recommendation

Start with the clean dragon-behavior route.

`Dragons Use Thu'um - Dragon AI Enhancements and New Fully Voiced Shouts` is the strongest first-pass baseline because it improves creature encounter behavior without dragging section 09 back into the bigger questions of ecology, population, or full creature-package replacement. It sharpens one of Skyrim's signature creature encounters by making dragons act more deliberately and more distinctively rather than merely bigger, tankier, or more numerous.

Keep `Dragon War - A Dragon Overhaul` as the meaningful heavier comparison if the project decides the real problem is not just smarter dragon behavior but the overall structure and tempo of dragon fights.

Keep `Draugr Upgrades and Improvements (Draugr and Skeleton Overhaul)` as the meaningful undead-side branch if the project wants the same subsection to improve Skyrim's other iconic creature-combat lane without re-opening the broader undead-variety decision.

### Why This Is The Right Baseline

The strongest version of this subsection should improve how creatures behave in the moment of encounter, not re-author the whole wilderness. `Dragons Use Thu'um - Dragon AI Enhancements and New Fully Voiced Shouts` does that cleanly. Dragons remain dragons, but they behave with more identity, more tactical expression, and more memorable pressure.

`Dragon War - A Dragon Overhaul` still matters because it represents the more forceful answer. If the current dragon problem is that fights feel too passive, too floaty, or too easily trivialized, then a larger dragon-overhaul branch may be justified.

`Draugr Upgrades and Improvements (Draugr and Skeleton Overhaul)` matters because draugr are one of Skyrim's most repeated hostile creature types. A behavior/combat-role improvement there can materially improve ordinary dungeon play without requiring the subsection to solve every animal or monster system at once.

That makes the distinction clear: smarter dragon behavior, heavier dragon fight restructuring, or more varied undead encounter behavior.

### Working Guidance For Elder Wilds

- Judge this subsection through actual encounter feel: first contact, aggression timing, pressure windows, attack variety, shout cadence, melee follow-through, and whether creature fights ask the player to react differently instead of simply absorbing more stats.
- Test `Dragons Use Thu'um - Dragon AI Enhancements and New Fully Voiced Shouts` first if the list wants more expressive dragon encounters without committing to a full dragon-combat redesign.
- Compare `Dragon War - A Dragon Overhaul` if dragons still feel structurally unsatisfying even after the cleaner AI/shout route is considered.
- Compare `Draugr Upgrades and Improvements (Draugr and Skeleton Overhaul)` if ordinary undead delves still need more behavioral distinction and combat-role variety.
- Keep `SkyTEST Lite ESL` in the context bucket unless the project explicitly decides to revisit animal behavior in a way that may overlap with section-07 wildlife/ecology ownership.
- Keep `Animal Tweaks` and `Pelagius's Wildlife AI - Skypatcher` in the same context bucket unless the project explicitly wants to revisit animal-side aggression and prey-predator tuning with the section-07 overlap made fully explicit.
- Review compatibility deliberately with the already-documented dragon visual/identity mods such as `Iconic's Dragon Retexture` and `Splendor - Dragon Variants`, and with undead-side picks such as `Haugbui - A Draugr Overhaul`, `The Restless Dead (A Draugr and Skeleton Overhaul)`, and `Cannibal Draugr on Solstheim`.
- Do not let this subsection quietly become the place where all dragon difficulty, dragon visuals, undead variety, and wildlife ecology decisions accumulate together.

### What Elder Wilds Should Prioritize

- Behavior changes that are immediately noticeable in play, not just more stat inflation.
- A clear distinction between encounter AI improvements and broader ecology/population changes.
- Mods that make iconic creature fights feel more distinct without forcing the whole section into a creature-systems overhaul.
- Enough restraint that dragon visuals, enemy variety, and wildlife balance remain separate decisions with separate ownership.
- Behavior improvements that can coexist with the current creature-visual and enemy-variety picks without multiplying unnecessary conflict.

### Research Tasks

- Confirm `Dragons Use Thu'um - Dragon AI Enhancements and New Fully Voiced Shouts`, `Dragon War - A Dragon Overhaul`, and `Draugr Upgrades and Improvements (Draugr and Skeleton Overhaul)` behave cleanly on Steam `1.6.1170` with the current section-09 stack.
- Test whether `Dragons Use Thu'um - Dragon AI Enhancements and New Fully Voiced Shouts` improves dragon encounter identity enough on its own or mainly works as a companion to a heavier dragon overhaul.
- Test whether `Dragon War - A Dragon Overhaul` feels like a justified dragon-fight upgrade rather than an unnecessary escalation for this list's current difficulty and pacing goals.
- Test whether `Draugr Upgrades and Improvements (Draugr and Skeleton Overhaul)` improves repeat dungeon encounters without colliding too hard with `Haugbui - A Draugr Overhaul` or `The Restless Dead (A Draugr and Skeleton Overhaul)` already tracked under enemy variety.
- Review whether any `SkyTEST Lite ESL` benefits are worth later reconsideration or whether its ecology/population overlap remains too strong for this subsection.
- Review whether `Animal Tweaks` or `Pelagius's Wildlife AI - Skypatcher` belong anywhere in the final list at all once section-07 wildlife ownership and modern compatibility expectations are weighed against their animal-side behavior goals.
- Record compatibility pressure around dragon overhauls, shout behavior, undead overhauls, Solstheim draugr patches, and any overlap with existing section-09 visuals.

### Risks To Check

- Re-opening section-07 wildlife/ecology decisions under the label of creature behavior.
- Using a large creature-behavior package that quietly changes population, distribution, or wilderness tone.
- Letting animal-side behavior mods with strong aggression or de-escalation opinions quietly redefine wilderness tone from inside section 09.
- Letting dragon-overhaul choices stack until visual identity, behavior, and difficulty all become one muddy decision.
- Duplicating the undead-overhaul choice already documented in `Enemy Variety` instead of keeping this subsection focused on encounter behavior.
- Choosing behavior mods that mostly inflate combat difficulty rather than making creature behavior more interesting.
- Underestimating patching needs between dragon AI mods, dragon identity mods, and undead-side specialty patches.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred clean creature-behavior baseline, one meaningful heavier dragon-fight comparison, and one meaningful undead behavior branch.
- The distinction between encounter-side AI improvements and ecology/population decisions is explicit.
- Any context-only or cautionary mod is documented with a clear explanation of why it is not the baseline answer here.
- The chosen direction improves creature encounters without duplicating section-07 ecology ownership or collapsing back into the broader enemy-variety decision.

## Civilian And Traveler Population Additions

### Core Idea

This subsection owns the extra background people who make towns, inns, and roads feel used without pretending that section 07 never already handled city feel, outskirts texture, and roadside atmosphere.

The question here is not whether `Elder Wilds` needs more clutter or bigger settlements. It is whether the world needs more believable incidental people: background town crowds, travelers on the road, and ambient civilian movement that makes Skyrim feel inhabited between the major authored content choices already made elsewhere.

### Suggested Options

- Compatibility-first background crowd route: use `Crowded Streets` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/127723> if the project wants more civilian presence in cities, towns, and inns without heavy cell edits or a large static-NPC footprint.
- Road-traveler route: use `Travellers of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1973> if the list wants the roads themselves to feel busier through merchants, mercenaries, pilgrims, and other traveling NPCs moving between many locations.
- Heavy legacy population route: use `Populated Skyrim Reborn SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32190> if the project wants a much louder population pass and is willing to accept the increased risk of over-crowding, static-feeling NPCs, and older compatibility baggage.

### Complementary Additions

- `Travellers of Skyrim` is the clearest comparison to `Crowded Streets` because both solve world emptiness in different places: one inside settlements and inns, the other out on the roads.
- `MINPCs (More Immersive NPCs)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29483> is worth tracking as a broader world-alive alternative if the project later wants more adventurer-style incidental content, but it reaches beyond simple civilian/traveler background population and starts drifting toward small content systems.
- `Immersive Wenches` was researched and is not a clean fit for this subsection; current visible community signal is dominated by troubleshooting, patch complexity, and side effects that do not match the repo's compatibility-minded baseline.
- `Crowded Streets` and `Travellers of Skyrim` can coexist in principle, but only if testing confirms that the final result feels inhabited rather than conspicuously busy.

### Recommendation

Start with the compatibility-first background crowd route.

`Crowded Streets` is the strongest first-pass baseline because it targets exactly what this subsection should solve: background civilian presence in towns and inns with a modern compatibility-first design. Its zero-cell-edit approach, dynamic cleanup, and configurable density make it a cleaner fit for `Elder Wilds` than older population mods that can feel static, noisy, or simply too heavy.

Keep `Travellers of Skyrim` as the meaningful road-travel comparison if the project decides that the real weakness is not city crowding but the feeling that roads and routes are too empty between destinations.

Keep `Populated Skyrim Reborn SSE` as the heavier legacy branch if testing shows the list truly wants a louder, more obvious population layer and is prepared to absorb the extra risk that comes with it.

### Why This Is The Right Baseline

The strongest version of this subsection should make Skyrim feel inhabited without making it feel overstuffed. `Crowded Streets` does that well because it treats background population as a compatibility and pacing problem, not just a numbers problem. More NPCs only help if they do not create obvious clutter, cell-edit conflicts, or a staged feeling where every inn and market looks jammed full at all times.

`Travellers of Skyrim` still matters because it answers a different version of emptiness. If the roads themselves feel underused, moving travelers can do more than town crowds to make the world feel connected and lived in.

`Populated Skyrim Reborn SSE` matters because it remains a recognizable legacy answer to the same problem, but current community signal makes it look much more likely to overshoot the target.

That makes the distinction clear: dynamic background settlement crowds, explicit road-traveler traffic, or a heavier all-around population push.

### Working Guidance For Elder Wilds

- Judge this subsection through normal movement: entering cities and inns, walking through towns at different times of day, taking roads between destinations, and noticing whether added people make the world feel naturally inhabited or simply more crowded.
- Test `Crowded Streets` first if the main issue is that towns and inns feel too sparse once the rest of the list has already improved world visuals and content density.
- Compare `Travellers of Skyrim` if the real gap is road traffic and the feeling that Skyrim's routes need more visible civilian or mercantile movement.
- Compare `Populated Skyrim Reborn SSE` only if the project genuinely wants a heavier population statement and is willing to verify that the extra bodies still feel believable.
- Keep `MINPCs (More Immersive NPCs)` in mind only if the project later wants a broader world-alive layer that includes adventurer-facing incidental content rather than just background civilians and travelers.
- Keep `Immersive Wenches` out of the baseline path unless the project deliberately revisits a much noisier and more compatibility-heavy style of population modding.
- Record compatibility pressure around settlement overhauls, inns, city expansions, navmesh, follower mods, and any road-travel systems already shaping how the player encounters the world.

### What Elder Wilds Should Prioritize

- Population additions that make Skyrim feel more used and inhabited without overwhelming spaces that were never meant to feel metropolitan.
- A clear distinction between background crowding inside settlements and actual road-travel traffic between them.
- Mods that stay compatible with the list's existing town, village, and world-content decisions instead of constantly forcing exception patches.
- Enough restraint that this subsection does not quietly re-decide section-07 city-feel and roadside-atmosphere ownership.
- NPC additions that improve everyday ambiance rather than pulling the section toward gimmick NPC packs or quest-adjacent clutter.

### Research Tasks

- Confirm `Crowded Streets`, `Travellers of Skyrim`, and `Populated Skyrim Reborn SSE` behave cleanly on Steam `1.6.1170` with the current settlement and world-content stack.
- Test whether `Crowded Streets` really feels natural in towns and inns once city overhauls and later NPC-section decisions are in place.
- Test whether `Travellers of Skyrim` makes roads feel alive or simply too busy once other encounter, patrol, and travel mods are active.
- Test whether `Populated Skyrim Reborn SSE` crosses the line from inhabited to over-crowded in common settlements and interiors.
- Review whether `MINPCs (More Immersive NPCs)` belongs anywhere in the final list if the team later wants a broader world-alive system rather than a pure background-population answer.
- Record compatibility pressure around inns, city expansions, navmesh, road traffic, crash history, and any overlap with patrol or encounter mods already tracked elsewhere.

### Risks To Check

- Re-solving section-07 city-feel and roadside-atmosphere decisions by just stuffing more NPCs into the world.
- Choosing a population mod because it looks busy in screenshots rather than because it improves ordinary play.
- Letting roads or inns become conspicuously overfilled instead of believably active.
- Treating `Crowded Streets`, `Travellers of Skyrim`, and `Populated Skyrim Reborn SSE` as interchangeable when they solve different versions of the same problem.
- Using older population mods with a heavy troubleshooting history when a cleaner modern route already exists.
- Quietly drifting into adventurer-content or quest-adjacent NPC systems when this subsection is supposed to stay about civilian and traveler background presence.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred settlement-crowd baseline, one meaningful road-traveler comparison, and one heavier legacy-population branch.
- The distinction between settlement background population and road-travel population is explicit.
- Any broader world-alive or cautionary alternative is documented with a clear explanation of why it is not the baseline answer.
- The chosen direction improves civilian presence without duplicating section-07 ownership or overwhelming the rest of section 09.

## Wildlife Density And Rarity Balance

### Core Idea

This subsection owns how common wildlife should feel on the landscape once the broader ecology, danger, and creature-identity decisions have already been handled elsewhere.

The question here is not whether `Elder Wilds` wants a more dangerous wilderness in the abstract. Section 07 already answered the ecology and creature-identity side of that. The question here is whether the province currently feels too crowded with animals, too predator-heavy on obvious routes, or too generous with constant wildlife sightings to preserve a strong sense of scale and rarity.

### Suggested Options

- Density-reduction baseline: use `True Hunter - fewer animals per square meter` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/25628> if the project wants wildlife sightings to feel less constant and more deliberate through straightforward spawn-chance reduction.
- Route-distribution comparison: use `No Predators on roads` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/11901> if the main issue is not total wildlife count but the feeling that major routes are too predictably lined with wolves, bears, and sabre cats.
- Broader legacy-overhaul caution branch: use `Real Wildlife Skyrim SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/17466> only if the project explicitly wants a much larger wildlife rework and is comfortable crossing back into territory that overlaps with section-07 ecology ownership.

### Complementary Additions

- `No Predators on roads` is the clearest companion to `True Hunter - fewer animals per square meter` because one solves overall wildlife abundance while the other solves route placement and encounter legibility.
- `Real Wildlife Skyrim SE` is worth documenting mainly as a cautionary reference point: it represents the broader older-style wildlife-overhaul answer, but current fit analysis says it likely spills too far into ecology, behavior, and content scope for this specific subsection.
- Section-07 picks such as `Animallica SE - Skyrim Wildlife Overhaul`, `One With Nature - Dynamic Animals and Creatures SE`, and `Savage Skyrim` remain upstream assumptions here, not alternatives to this subsection's distribution-tuning decision.

### Recommendation

Start with the density-reduction baseline.

`True Hunter - fewer animals per square meter` is the strongest first-pass baseline because it answers the cleanest version of this problem: Skyrim often feels overpopulated with ambient wildlife, and reducing spawn frequency is a simple way to make the landscape feel larger, sightings feel less routine, and hunting feel more intentional.

Keep `No Predators on roads` as the meaningful comparison if the real frustration is specifically roadside predator saturation rather than global wildlife abundance.

Keep `Real Wildlife Skyrim SE` as the cautionary broader branch if the project later decides it wants a much larger wildlife-system intervention than this subsection is currently supposed to own.

### Why This Is The Right Baseline

The strongest version of this subsection should improve scale and encounter rhythm without accidentally rebuilding Skyrim's wildlife logic from scratch. `True Hunter - fewer animals per square meter` does that well because it is fundamentally a distribution-and-rarity answer. It makes the world feel less crowded without forcing a bigger philosophical reset.

`No Predators on roads` still matters because it solves a very specific but common immersion problem: the main roads can feel too consistently padded with hostile wildlife, which makes travel feel gamey rather than believable.

`Real Wildlife Skyrim SE` matters mostly as a warning about scope. It may still be useful to some lists, but for `Elder Wilds` it looks more like a broader wildlife-overhaul branch than a clean density-and-rarity answer.

That makes the distinction clear: fewer wildlife spawns overall, cleaner predator placement on routes, or a much broader wildlife rewrite that risks crossing section boundaries.

### Working Guidance For Elder Wilds

- Judge this subsection through ordinary wilderness travel: walking roads, crossing open tundra, moving through forests, and noticing whether animal sightings feel too constant, too predictable, or appropriately intermittent.
- Test `True Hunter - fewer animals per square meter` first if the world currently feels too full of ambient wildlife for its scale.
- Compare `No Predators on roads` if the real issue is the repeated pattern of road-adjacent predator encounters rather than total wildlife count.
- Keep `Real Wildlife Skyrim SE` in the caution bucket unless the project explicitly decides to revisit the broader wildlife-overhaul question that section 07 already mostly answered.
- Evaluate all density and rarity changes alongside the existing section-07 ecology picks so the final combination feels coherent rather than contradictory.
- Record overlap carefully with encounter mods, patrol mods, wildlife-ecology mods, and any travel-balance decisions that already shape how often the player expects road danger.

### What Elder Wilds Should Prioritize

- Wildlife sightings that feel more intentional and less like constant ambient spam.
- A clear distinction between reducing overall animal density and simply relocating predators away from obvious travel routes.
- Distribution tuning that supports the scale and travel rhythm of the list without re-opening section-07 ecology ownership.
- Mods that do one narrow job clearly rather than quietly replacing multiple earlier wildlife decisions.
- Enough restraint that the final world still feels alive, just less mechanically crowded.

### Research Tasks

- Confirm `True Hunter - fewer animals per square meter` and `No Predators on roads` behave cleanly on Steam `1.6.1170` with the current section-07 and section-09 wildlife stack.
- Test whether `True Hunter - fewer animals per square meter` improves scale and rarity without making the world feel oddly empty.
- Test whether `No Predators on roads` improves travel believability without making roads feel artificially safe or too sterile.
- Review whether `Real Wildlife Skyrim SE` belongs anywhere in the final list once overlap with section-07 ecology ownership and older-overhaul baggage are weighed honestly.
- Record any patch pressure or contradictions with `Animallica SE - Skyrim Wildlife Overhaul`, `One With Nature - Dynamic Animals and Creatures SE`, `Savage Skyrim`, and any later balance decisions.

### Risks To Check

- Re-opening section-07 wildlife/ecology decisions under the narrower label of rarity tuning.
- Making the world feel empty instead of spacious by reducing wildlife too aggressively.
- Treating road-predator placement and global wildlife density as the same problem when they are not.
- Letting a broad wildlife-overhaul mod quietly override the tighter distribution decision this subsection is supposed to make.
- Creating contradictory expectations by combining rarity tuning with earlier wildlife mods that were chosen for different goals.

### Acceptance Criteria

- `Elder Wilds` has one clearly preferred wildlife-density baseline, one meaningful route-distribution comparison, and one clearly caveated broader-overhaul branch.
- The distinction between spawn density, predator route placement, and broader wildlife-overhaul scope is explicit.
- Any broader wildlife mod is documented with a clear explanation of why it is not the clean baseline answer here.
- The chosen direction improves scale and rarity without duplicating section-07 ecology ownership or making the landscape feel dead.
