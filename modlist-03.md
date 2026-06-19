# Animations and Movement

## Pandora Framework And Prerequisites

### Core Idea

- `Pandora` is the behavior-engine foundation for the animation stack.
- This subsection locks the generator, MO2 output handling, and the rule that animation generation is validated before large content packs are layered on top.

### Options

- `Pandora Behaviour Engine Plus` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/133232>
- Legacy context only: `FNIS` and `Nemesis` format support matters because later animation packs may still ship with those assumptions, but they are not the preferred generator choice for `Elder Wilds`.

### Recommendation

- Use `Pandora Behaviour Engine Plus` as the single behavior-generation owner for the list.
- Register it as a dedicated MO2 executable and keep generated files in a separate output mod such as `Pandora Output`.
- Validate the current install guide and requirements tab during install instead of carrying forward older setup advice.

### Risks & Compatibility

- Leaving old generated output active or mixing generator workflows makes later debugging much harder.
- `Pandora` supporting older mod formats does not guarantee every legacy setup will be conflict-free without testing.
- Installing major locomotion, combat, or creature packs before the generator baseline is proven blurs whether the framework or the content is actually failing.

### Acceptance Criteria

- `Pandora Behaviour Engine Plus` is installed and registered cleanly in `Mod Organizer 2`.
- A baseline patch pass completes without framework-level errors.
- Generated behavior output is isolated in a dedicated MO2 output mod.

## Skeleton And Behavior Prerequisites

### Core Idea

- This subsection locks the low-level skeleton and physics assumptions that later locomotion, combat, and body-aware animation mods depend on.
- The baseline must support `Pandora`, the chosen `CBBE 3BA (3BBB)` route, and later third-person animation work without forcing an SMP-heavy stack too early.

### Options

- `XP32 Maximum Skeleton Special Extended - XPMSSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/44252>
- `CBPC - Physics with Collisions for SSE and VR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21224>
- `Faster HDT-SMP` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/57339>
- `ConsoleUtilSSE NG` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/76649>

### Recommendation

- Use `XPMSSE` as the single skeleton baseline.
- Use `CBPC` as the default first-pass physics layer for the chosen `CBBE 3BA (3BBB)` setup.
- Use `Faster HDT-SMP` alongside CBPC for SMP physics coverage. The adult animation framework (OStim Standalone, `modlist-16.md`) benefits from SMP body physics during scenes, and SMP is also needed by some outfits and creature features later in the stack. Running both physics layers is standard for current 3BA setups — CBPC handles broad collision and SMP handles finer mesh deformation.
- Keep `ConsoleUtilSSE NG` available for script-dependent ecosystem pieces that still expect it on current runtime versions.

### Risks & Compatibility

- Mixing skeleton solutions or old script loaders can break both animation and body systems in ways that are hard to trace.
- Body, outfit, and animation mods can all appear to install cleanly while still disagreeing on skeleton assumptions underneath.
- Locking into a heavier SMP-first stack too early adds maintenance and performance cost before the payoff is proven.

### Acceptance Criteria

- `XPMSSE` is the clear single skeleton baseline.
- `CBPC` and the chosen `CBBE 3BA (3BBB)` setup coexist cleanly on the active Steam `1.6.1170` profile.
- `Pandora` still generates behaviors cleanly after the skeleton and baseline body-physics layer are in place.

## Parkour, Climbing, And Free-Form Movement

### Core Idea

- This subsection owns whether `Elder Wilds` adds a true parkour and climbing layer on top of vanilla movement, or stays with the locked vanilla / `True Directional Movement` / sprint-and-jump stack.
- The goal is to expand how the player traverses the world vertically and laterally without breaking the third-person camera work in `modlist-04.md`, the animation ownership in this section, or the survival pacing from `modlist-05.md`.
- Parkour is a major movement-framework decision, so it stays in its own subsection rather than being absorbed by the dodge or sprint layers.

### Options

- Procedural parkour and climbing baseline: `SkyParkour v3 - Procedural Parkour and Climbing Framework (SPPF)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/132292>
- Climbing-first alternative route: `SkyClimb` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/97253>
- Balance-assist companion: `Beam Walking Assist` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/175511>
- Structured jump-over-obstacles route: `RaySense - Jumping over obstacles` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/175506>
- Animation-selection patch for the above: `Open Animation Replacer - RaySense` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/175498>
- Discipline-first route: rely on vanilla climbing, `True Directional Movement`, sprint, and jump from this section and `modlist-04.md` only, with no dedicated parkour framework.
- Deferred high-commitment branch: do not adopt a full parkour framework until later movement and animation work is stable, because the parkour ecosystem has many overlapping derivatives and lock-in decisions are hard to reverse.

### Recommendation

- Use `SkyParkour v3 - Procedural Parkour and Climbing Framework (SPPF)` as the procedural parkour and climbing baseline. It adds a procedural climbing and parkour system that lets the player vault, climb, and traverse environmental geometry (10,112 endorsements, 432K unique downloads, v3.5.4). It is the most-endorsed parkour framework on Nexus and has a meaningful community track record.
- Keep `SkyClimb` as the deliberate alternative if the list wants procedural ledge climbing built around `EVG Animated Traversal` more than it wants the broader `SkyParkour` movement identity. It solves a narrower problem more directly, but that also means it overlaps with the baseline enough that both should not be treated as cumulative core picks.
- Keep `Beam Walking Assist` as a documented balance-assist companion rather than a baseline. It helps the player stay on narrow beams and ledges during parkour traversal, which is a usability gap in vanilla and a common frustration once parkour is enabled. Add it only after the parkour baseline is locked in and only if real traversal testing shows beam-walking is annoying.
- Keep `RaySense - Jumping over obstacles` and its dependency `Open Animation Replacer - RaySense` as a documented structured-jump companion pair rather than a baseline. `RaySense` is a different movement philosophy from `SkyParkour`: instead of procedural climbing and vaulting, it detects obstacles the player is about to run into and triggers a context-appropriate jump-over animation selected by obstacle height via the OAR behavior patch. The two are complementary rather than competing, but `RaySense` is brand new (901 endorsements on the main mod, 1,453 on the OAR patch) with limited community track record, so lock it in only if real playtesting shows the procedural parkour baseline leaves common obstacles feeling awkward to clear. Load `Open Animation Replacer - RaySense` only as a dependency of `RaySense`; it does not belong in the load order without the parent mod.
- Keep the discipline-first route alive only if the rest of the movement and animation stack is still being settled, because parkour is a major ownership decision that affects jump height, animation behavior, and camera expectations.
- Keep the deferred high-commitment branch alive if the project wants to see the full movement and animation stack working before adding parkour on top, since parkour layers often need to be tuned in light of the chosen animation and camera baselines.
- Keep this subsection separate from `modlist-04.md` dodge, sprint, and movement-responsiveness ownership, and from the third-person camera subsection. Parkour is a vertical-and-lateral movement system, not a combat responsiveness or camera framework.

### Risks & Compatibility

- A parkour framework can change jump height, ledge detection, and climb animation, which can interact with `XPMSSE` and `True Directional Movement`. Verify the parkour framework plays nicely with the chosen skeleton and movement baselines.
- `SkyClimb` and `SkyParkour v3` should be treated as competing traversal owners rather than harmless companions. Installing both would make climbing behavior harder to reason about instead of cleaner.
- Procedural parkour can expose navmesh gaps in older worldspace content mods. Test on the locked `modlist-08.md` worldspace picks before treating parkour as a stable part of the baseline.
- Parkour is fun but can trivialize early-game exploration if the player is too mobile too soon. Tune the framework's MCM to match the survival and travel pacing in `modlist-05.md` and `modlist-07.md`.

### Acceptance Criteria

- `Elder Wilds` has one clear parkour framework baseline or a deliberate discipline-first decision.
- Parkour movement feels like a natural extension of vanilla traversal rather than a separate game mode.
- The chosen framework does not fight the locked `XPMSSE`, `True Directional Movement`, or third-person camera baselines.
- `SkyClimb` is documented as the main alternative climbing route with explicit pros and cons instead of being implied as a second baseline.

### Core Idea

- This subsection chooses the baseline travel feel before combat-specific animation layers are added.
- The target is grounded, readable third-person movement that fits the wilderness tone instead of flashy showcase locomotion.

### Options

- Grounded realistic route: `Leviathan Animations II - Male Idle Walk And Run` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/81463> and `Leviathan Animations II - Female Idle Walk And Run` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/80760>
- Alternate grounded male route: `Vanargand Animations II - Male Idle Walk And Run` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/99999>
- Conditional follow-up route: `Conditional Armor Type Animations` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51507>
- Traversal companion to evaluate separately: `EVG Animated Traversal` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63232>

### Recommendation

- Start with the grounded `Leviathan Animations II` male and female pair as the control baseline for normal travel.
- Keep `Vanargand Animations II - Male Idle Walk And Run` as the main male-side comparison if `Leviathan` reads too heavy or too old-warrior-coded for the final travel tone. `Vanargand II` keeps the same grounded third-person goal but lands a little cleaner and more modern in ordinary exploration footage, so it is the best current "more animations" addition without changing the section's overall direction.
- Add `Conditional Armor Type Animations` only after the base walk and run feel is accepted on its own.
- Keep `EVG Animated Traversal` in the later interaction/traversal bucket rather than letting it define the core locomotion baseline.

### Risks & Compatibility

- A locomotion set can look good in isolation but feel too heavy, too floaty, or too theatrical during long play sessions.
- Mixing `Leviathan` and `Vanargand II` without a clear owner for the male locomotion slot will make the movement stack feel stitched together; pick one as the winner after real travel testing.
- Armor-conditional variants can add flavor, but they also make movement identity less consistent if added too early.
- Choosing locomotion before camera and combat direction are clearer may lead to a later full replacement.

### Acceptance Criteria

- Normal third-person walking and running feel grounded and readable during real exploration.
- The chosen baseline works cleanly with `Pandora`, `XPMSSE`, and the body setup already chosen in section 02.
- Male and female locomotion both feel intentional rather than stitched together from conflicting styles.

## Idle Animations

### Core Idea

- Idle animations should add character presence without turning downtime into constant posing or theatrical fidgeting.
- The idle layer should stay aligned with the locomotion tone instead of becoming a second competing movement identity.

### Options

- Conservative route: keep idle changes very light and let locomotion carry most of the movement identity.
- Female-idle comparison route: `Goetia Animations - Conditional Shuffled Idle for Pretty Female idles` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/68005>
- Equipment-conditional follow-up route: `Conditional Armor Type Animations` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51507>
- Locomotion alternate to evaluate back in the previous section, not here: `Goetia Animations - Female Idle Walk And Run` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/68625>

### Recommendation

- Keep the baseline idle posture aligned with the existing `Leviathan` locomotion choice rather than introducing a separate overlapping male movement package.
- Compare `Goetia Animations - Conditional Shuffled Idle for Pretty Female idles` first if the list wants a lighter female-only idle layer.
- Reassess `Goetia Animations - Female Idle Walk And Run` only as a broader locomotion alternate, not as an idle-only pick.

### Risks & Compatibility

- Separate idle packs can drift away from the locomotion tone and make the movement stack feel stitched together.
- Female-focused idle mods are easy to overcorrect into overly posed behavior that fights the grounded direction.
- Conditional idle variation can add flavor, but it also adds overlap if introduced before the base stance is accepted.

### Acceptance Criteria

- Idle posture feels natural and readable during normal third-person downtime.
- The chosen idle baseline works cleanly with the locomotion setup and the existing `Pandora` / `XPMSSE` foundation.
- Male and female presentation both feel intentional without obvious style clash.

## Combat Animation Packs

### Core Idea

- This subsection covers attack-animation presentation and its closest support mods, not the full combat-system stack that belongs in `modlist-04.md`.
- The goal is a sane baseline for player and NPC attack readability, while keeping the more ambitious `MCO` route explicit instead of half-implied.

### Options

- Conservative support route: `Precision - Accurate Melee Collisions` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/72347>
- Balanced modern route: `Precision` plus `SCAR - Skyrim Combos AI Revolution` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/72014>
- Full `MCO` route to evaluate later: `MCO ADXP - Modern Movement Combat Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/117115>
- Verified ambitious-route support to track with `MCO`: `Animation Motion Revolution` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/50258> and `Payload Interpreter` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/65089>
- Iframe-utility support: `IFrame Generator RE (AE Support)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/82737> is the AE-compatible iframe generator that several advanced attack and combat-animation packs expect. Hard-requires `Address Library for SKSE Plugins` and `SKSE64`. Required as a universal install if the final animation stack includes any pack that depends on it; otherwise install per-package when an animation mod explicitly lists it.
- Gameplay-side companion to revisit in `modlist-04.md`: `Valhalla Combat` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/64741>

### Recommendation

- Start with the balanced modern route: `Precision` first, then `SCAR` when the list is ready to judge NPC-side attack variety in real fights.
- Keep `MCO ADXP` as the main high-commitment route to compare later, not as the automatic baseline.
- If the list moves to `MCO`, treat `Animation Motion Revolution` and `Payload Interpreter` as part of the same route review instead of pretending `MCO` is a standalone decision.
- Keep `Valhalla Combat` adjacent but separate so animation presentation does not get collapsed into gameplay-rule design.

### Risks & Compatibility

- A full `MCO` route can pull the whole list toward a more system-heavy action-combat identity before the rest of the gameplay plan is settled.
- `SCAR` and attack-framework layering complicate debugging if the baseline animation stack is still unstable.
- Individual advanced animation packs may also expect extras such as `IFrame Generator RE`, but those should be validated per-package in the later dodge/combat pass instead of being treated as universal section-03 requirements.

### Acceptance Criteria

- Combat animations feel readable and intentional from normal third-person play distance.
- Player and NPC attack presentation both improve without forcing premature lock-in on the final combat-system direction.
- The section clearly distinguishes baseline combat support from the later full `MCO`-style route.

## Non-Combat Interaction Animations

### Core Idea

- This subsection covers contextual world interactions such as greeting, looting, harvesting, sleeping, and traversal-style set pieces that make third-person play feel embodied outside combat.
- The goal is to improve common actions without turning ordinary interaction into slow scripted friction.

### Options

- Grounded baseline: `Immersive Interactions - Animated Actions` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/47670>
- Higher-fidelity interaction companion or alternative: `Animated Interactions SKSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/143798>
- Sleep-focused companion: `Go to bed` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/4224>
- Traversal-heavy route to evaluate carefully: `EVG Animated Traversal` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63232>

### Recommendation

- Start with `Immersive Interactions` as the main baseline for everyday contextual actions.
- Treat `Animated Interactions SKSE` as the stronger pickup, looting, and door-animation route when the list wants extra physicality from common interactions. It can coexist with `Immersive Interactions`, but only if overlapping actions are deliberately disabled so both mods are not trying to own the same prompts.
- Add `Go to bed` as a companion. With survival, camping, and roleplay bed-use, it reinforces the embodied third-person tone rather than just adding spectacle. Keep it if nightly rest or inn stays are part of normal play rhythm.
- Treat `EVG Animated Traversal` as a curated expansion that must justify its marker coverage and added complexity.

### Risks & Compatibility

- Contextual interaction mods can feel immersive at first but become repetitive if the triggered actions are too slow or too frequent.
- `Animated Interactions SKSE` overlaps enough with `Immersive Interactions` that it should be framed as a pros-and-cons choice or tightly managed companion, not as an automatic stack-on upgrade.
- `EVG Animated Traversal` can raise expectations for world coverage that the actual mod stack may not consistently deliver without extra marker and add-on work.
- Sleeping and interaction animations may feel out of place if the final list does not meaningfully emphasize downtime, camping, taverns, or roleplay pacing.

### Acceptance Criteria

- Everyday third-person interactions feel more physical without becoming tedious.
- The chosen baseline works cleanly with the locomotion and idle stack.
- If `Animated Interactions SKSE` is used, its overlap with `Immersive Interactions` is documented as a conscious tradeoff rather than a silent duplicate install.
- Optional additions such as `Go to bed` or `EVG Animated Traversal` are only kept if they improve normal play rhythm rather than just adding spectacle.

## Conditional Animation Systems

### Core Idea

- This subsection defines the rule-based layer that decides when different animations should play based on state, equipment, or context.
- The goal is to lock one clear owner for conditional logic, then add only a small number of high-value packs on top of it.

### Options

- Framework-only route: `Open Animation Replacer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/92109>
- Balanced flavor route: `Open Animation Replacer` plus `EVG Conditional Idles` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/34006>
- Targeted follow-up route: `Conditional Armor Type Animations` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51507>
- Targeted OAR-pack route: `Unique Jarl Throne Sitting Animation (OAR)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/174752>. Replaces the single generic Jarl-on-throne pose with a unique per-Jarl sitting animation that reflects personality, authority, and throne type. Hard-requires `Open Animation Replacer`, ships standalone patches for `Thrones of Skyrim`, `Thrones Expanded`, and `High Poly Project` (must load after those mods), and is safe to install mid-playthrough. 698 endorsements, ~16K unique downloads, last updated April 2026.

### Recommendation

- Use `Open Animation Replacer` as the condition framework and ownership layer for this part of the stack.
- Let `EVG Conditional Idles` prove the value of condition-driven flavor before layering additional situational packs.
- Keep `Conditional Armor Type Animations` as a narrower follow-up option if armor-state variation is still wanted after the locomotion and idle baseline is already stable.
- Treat `Unique Jarl Throne Sitting Animation (OAR)` as a small, high-quality situational add-on. It only requires `Open Animation Replacer` (which is already the framework baseline for this section) and only needs extra load-order attention if `Thrones of Skyrim`, `Thrones Expanded`, or `High Poly Project` are also installed — none of which are current section-02 or section-03 baselines — so it is a clean add-on once the OAR baseline is proven.
- Treat older `Dynamic Animation Replacer` assumptions as legacy compatibility context, not the framework direction for `Elder Wilds`.

### Risks & Compatibility

- Conditional systems become hard to reason about if multiple packs try to own similar states such as injured, relaxed, weapon-drawn, or armor-specific behavior.
- Great-looking context clips can add little value if the trigger conditions are too rare or too subtle during ordinary play.
- The more conditional logic this section adds, the more important it becomes to keep ownership disciplined across later sections.

### Acceptance Criteria

- `Open Animation Replacer` is the clear condition owner for the animation stack.
- Any chosen conditional packs improve noticeable third-person readability or immersion during normal play.
- The conditional layer remains understandable enough that later camera-aware or gameplay-driven work can build on it without turning debugging into guesswork.

## Camera-Aware Animation Support

### Core Idea

- This subsection covers animation behavior that benefits from perspective-aware presentation, not the broader third-person camera framework itself.
- Its job is to keep occasional first-person or immersive-camera use from feeling neglected while leaving shoulder switching, lock-on, and camera tuning to `modlist-04.md`.

### Options

- Perspective foundation route: `Improved Camera SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/93962>
- Optional first-person polish route: `Comprehensive First Person Animation Overhaul - CFPAO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/87169>
- Conservative route: keep perspective support minimal unless the list actually expects meaningful hybrid-perspective play.

### Recommendation

- Use `Improved Camera SE` as the animation-side perspective foundation only if hybrid perspective is a real part of the intended playstyle.
- Treat `CFPAO` as an optional follow-up layer only if testing shows the project will spend meaningful time in first person.
- Keep broader camera framework decisions in `modlist-04.md` so this subsection stays scoped to animation coherence.

### Risks & Compatibility

- First-person polish can become wasted complexity if the list rarely leaves third person.
- Perspective-related mods can expose clipping, weapon-position issues, and camera-body mismatches that are not obvious in third person.
- This subsection drifts into duplicate decision-making quickly if it starts trying to own general camera framework questions.

### Acceptance Criteria

- Perspective changes feel coherent enough that occasional first-person use does not break the animation quality bar.
- `Improved Camera SE`, if chosen, works cleanly with the current animation stack.
- The camera-aware layer remains clearly separate from later third-person camera and gameplay framework decisions.

## Creature Animations

### Core Idea

- This subsection covers the non-humanoid side of the animation stack.
- The right approach is curated creature improvement, not a completionist attempt to patch every creature type before the rest of the stack is stable.

### Options

- Curated high-impact route:
- `New Creature Animation - Giant` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/83317>
- `New Creature Animation - Falmer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/83572>
- `New Creature Animation - Werewolf` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/83806>
- Broad-coverage route: expand later into more creature-specific packs only after the main humanoid stack and testing workflow are already stable.

### Recommendation

- Start with a curated wilderness-threat route instead of chasing one fictional universal creature-animation answer.
- Prioritize `New Creature Animation - Giant` and `New Creature Animation - Werewolf` first because they affect memorable encounters and strongly shape third-person combat readability.
- Keep `New Creature Animation - Falmer` as the strong dungeon-focused follow-up once the baseline creature direction is proven.

### Risks & Compatibility

- Creature animation packs can create more debugging overhead than humanoid packs because encounter timing, collision readability, and behavior generation all matter at once.
- It is easy to over-invest in rare or novelty creature types that add little value to ordinary play.
- Individual creature packs may also depend on advanced combat-animation support mods; validate those per pack instead of treating every route as baseline-safe.

### Acceptance Criteria

- Chosen creature animation packs noticeably improve important encounters in normal play.
- `Pandora` continues to generate cleanly with the curated creature additions.
- The creature-animation layer stays small and intentional enough that later debugging remains manageable.

## Animation Conflict Management

### Core Idea

- This subsection owns the file-wide animation-governance rules so the other sections do not need to repeat them.
- The goal is explicit ownership, isolated generated output, and small testing loops that make problems diagnosable.

### Options

- Strict ownership route: one clear owner per layer and reject overlapping packs unless they add obvious value.
- Broad experimentation route: test many packs together early and sort out conflicts later.
- Minimalist route: stop with the high-value baseline and add very few situational packs beyond it.

### Recommendation

- Use the strict ownership route.
- Keep `Pandora` as the only behavior-generation owner, `XPMSSE` as the only skeleton owner, and `Open Animation Replacer` as the only conditional-selection owner.
- Change one category at a time, regenerate, test, and document the result before stacking another pack on top.
- Keep `Pandora` output isolated in a dedicated MO2 output mod and record which selected mods rely on generation, which rely on `OAR`, and which are pure presentation-side companions.
- Test changes in repeatable scenarios: town walking, idle downtime, dungeon corridors, uneven outdoor combat, interaction-heavy interiors, and at least one creature encounter whenever the stack changes meaningfully.

### Risks & Compatibility

- Animation conflicts often look like camera bugs, combat bugs, or skeleton bugs until ownership is checked carefully.
- Generated output left mixed with source mods hides whether a problem comes from the current load order or stale behavior files.
- The more systems added later in `Third-Person Gameplay`, the more expensive it becomes to clean up unresolved ownership mistakes from this section.

### Acceptance Criteria

- Every major part of the animation stack has a clear owner.
- `Pandora` regeneration and MO2 output handling remain reproducible and easy to audit.
- New animation issues can be narrowed down to one layer or one recent change without excessive guesswork.
- The section is stable enough that `Animations and Movement` can be considered complete and future work can move into `Third-Person Gameplay`.
