# Animations and Movement

## Pandora Framework And Prerequisites

### Core Idea

- `Pandora` is the behavior-engine foundation for the planned animation stack in `Elder Wilds`
- This section should lock the generator tool, baseline setup, and validation rules before choosing locomotion, combat, idle, or creature animation packs
- Because this modlist is already committed to a `Pandora`-based animation direction, this item is about clean setup and compatibility discipline rather than comparing multiple equal core engines

### Recommendation

- Primary option: `Pandora Behaviour Engine Plus` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/133232>
- Treat this as the default behavior engine for `Elder Wilds`
- Treat `FNIS` and `Nemesis` here as compatibility formats Pandora can work with, not as the preferred core generator choice for this list

### Why This Is The Right Baseline

- The mod page positions `Pandora Behaviour Engine Plus` as an alternative behavior engine intended to replace older generator workflows
- It explicitly supports both `FNIS` and `Nemesis` mod formats, which matters for a modern mixed animation ecosystem
- It explicitly advertises full creature support, which fits the long-term plan for creature animations later in the document
- The tool also emphasizes fast patching, stronger logging, and better output handling, which matches the broader `Elder Wilds` preference for reproducible generation workflows

### Setup And Prerequisites To Validate

- Install `Pandora Behaviour Engine Plus` and register it as a dedicated executable in `Mod Organizer 2`
- Keep its generated behavior output separate from source mods in a dedicated MO2 output mod such as `Pandora Output`
- Validate the current installation guide and requirements tab at install time instead of assuming older setup advice still applies
- Confirm the tool runs cleanly in the Steam `1.6.1170` environment and through the active MO2 profile
- Do not treat this section as permission to skip later skeleton and behavior prerequisite research; those still need to be locked in next

### Working Guidance For Elder Wilds

- Run a clean baseline Pandora patch pass before installing large animation bundles so the generator path is proven first
- Keep animation-generation output in the `Output` separator with the rest of the generated tooling stack
- Re-run Pandora whenever major locomotion, combat, creature, or behavior-editing animation mods are added, removed, or replaced
- Record which later animation mods are shipped in `Pandora`, `Nemesis`, or `FNIS`-oriented formats so compatibility expectations stay explicit
- Treat clear logging and successful regeneration as part of the framework choice, not as optional cleanup work after conflicts appear

### What Elder Wilds Should Prioritize

- A stable modern behavior-engine baseline before layering ambitious third-person animation packs
- Clear MO2 executable and output handling so animation generation is easy to rebuild later
- Compatibility discipline across humanoid and creature animation mods instead of mixing formats blindly
- Fast feedback when an animation pack introduces errors, missing behaviors, or unsupported edits
- A generator setup that supports the later third-person-first combat and movement goals instead of fighting them

### Research Tasks

- Confirm the exact MO2 executable setup and output-path handling for `Pandora Behaviour Engine Plus`
- Check the current requirements tab and install guide before actual install so runtime assumptions are current
- Run a baseline patch test with only the core framework in place before adding locomotion or combat packs
- Track which planned animation mods later rely on `Pandora`, legacy `Nemesis` format support, or older `FNIS` format support
- Verify that planned creature animation coverage still makes sense with the current Pandora ecosystem before the later creature-animation section is finalized

### Risks To Check

- Mixing behavior generators or leaving old generated output active can make animation debugging much harder than it needs to be
- `Pandora` supporting older mod formats does not guarantee every legacy animation setup will be conflict-free without testing
- Installing large animation packs before the generator baseline is validated can blur whether the engine setup or the pack itself is failing
- If generated behavior output is not isolated in MO2, later rebuilds and conflict checks become harder to audit

### Acceptance Criteria

- `Pandora Behaviour Engine Plus` is installed and registered cleanly in `Mod Organizer 2`
- A baseline patch pass completes without obvious framework-level errors
- Generated behavior output is isolated in a dedicated MO2 output mod
- The framework is stable enough that the next section can evaluate skeleton and behavior prerequisites on top of it instead of compensating for a broken generator setup

## Skeleton And Behavior Prerequisites

### Core Idea

- This section locks the skeleton and low-level support layer that later locomotion, combat, idle, and interaction animation mods will depend on
- For `Elder Wilds`, the skeleton path must support `Pandora`, modern third-person animation mods, creature-aware behavior generation, and the already chosen female body stack built around `CBBE 3BA (3BBB)`
- The goal is to settle one stable foundation before adding animation packs that would otherwise hide bad skeleton or physics assumptions

### Recommendation

- Primary skeleton baseline: `XP32 Maximum Skeleton Special Extended - XPMSSE` - use the actively maintained/fixed-script route - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/44252>
- Primary body-physics support for the chosen `CBBE 3BA (3BBB)` route: `CBPC - Physics with Collisions for SSE and VR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21224>
- Support utility to keep script-dependent ecosystem pieces current when needed: `ConsoleUtilSSE NG` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/76649>
- Treat an SMP-capable path as part of the `3BA` compatibility review, but only lock the exact SMP-side stack after validating the current `3BA` requirements at install time

### Why This Is The Right Baseline

- `CBBE 3BA (3BBB)` explicitly expects a physics-aware skeleton and supports both `CBPC` and `SMP` paths, so the skeleton choice cannot be separated from the body setup anymore
- `XPMSSE` remains the practical standard skeleton foundation for modern Skyrim animation ecosystems and body-related node support
- `CBPC` gives a lighter, easier-to-maintain physics baseline that aligns with the current `3BA` page guidance and avoids forcing a heavier SMP-only decision too early
- `Pandora` works best when the skeleton and physics assumptions are stable before large animation bundles are introduced

### CBBE 3BA Compatibility Guidance

- Treat `XPMSSE` as mandatory for the current female body path unless the `3BA` mod page explicitly changes that requirement later
- Treat `CBPC` as the current default physics baseline for `Elder Wilds` because `3BA` explicitly supports it and it is easier to manage as a first-pass setup
- Keep SMP-side support under review for outfits or features that specifically need it, but do not make the entire animation stack depend on full SMP complexity before the baseline is proven
- Do not mix skeleton replacements casually once `CBBE 3BA`, `BodySlide`, and animation generation are in play

### Setup And Prerequisites To Validate

- Install `XP32 Maximum Skeleton Special Extended - XPMSSE` before serious animation packs, body physics, or body-aware outfit conversions
- Install `CBPC - Physics with Collisions for SSE and VR` as part of the chosen `CBBE 3BA (3BBB)` baseline review
- Keep `ConsoleUtilSSE NG` available for mods in this ecosystem that still expect it on current runtime versions
- Recheck the exact `CBBE 3BA (3BBB)` requirements tab during install so the SMP-side expectations are current for Steam `1.6.1170`
- Validate that the skeleton, body physics, and `Pandora` generator all run through the same MO2 profile before adding locomotion or combat packs

### Working Guidance For Elder Wilds

- Install and validate the skeleton layer immediately after the `Pandora` baseline is confirmed, before adding movement or combat animation bundles
- Keep the skeleton path conservative: one main skeleton, one clear baseline body-physics route, and no redundant low-level behavior frameworks solving the same problem
- If later armor, hair, cloth, or body setups need more SMP coverage, add that deliberately as an extension of the body system, not as a casual animation prerequisite
- Re-run `Pandora` after any meaningful skeleton or low-level behavior-support change so generation output stays trustworthy
- Document the final skeleton and physics baseline clearly in MO2 separators because this layer affects both animation and body/outfit systems

### What Elder Wilds Should Prioritize

- A skeleton path that works cleanly with `CBBE 3BA (3BBB)` and later `HIMBO` outfit/body generation
- Stable third-person animation support without low-level node or physics conflicts
- Clear separation between required skeleton/body support and optional later physics luxury features
- Minimal low-level overlap so animation debugging stays possible
- A foundation that supports both humanoid animation ambitions and later creature-animation work

### Research Tasks

- Confirm whether the `XPMSSE` fixed-script route is the cleanest current install path for Steam `1.6.1170`
- Validate the exact current `CBBE 3BA (3BBB)` requirements for `CBPC`, SMP, and any related utilities during install
- Check whether any planned later animation mods assume a specific skeleton option or additional node setup beyond the chosen `XPMSSE` baseline
- Verify that the chosen `CBPC` baseline is sufficient for first-pass body behavior before adding optional SMP-heavy extras
- Record which future outfit, armor, and animation decisions depend on the skeleton/body-physics layer so rebuild rules stay clear

### Risks To Check

- Mixing multiple skeleton solutions or old script loaders can break both animation and body systems in ways that are hard to trace
- Locking into a heavier SMP-first stack too early can add maintenance and performance cost before the actual visual or gameplay payoff is proven
- Body, outfit, and animation mods can all appear to install cleanly while still disagreeing on skeleton assumptions underneath
- Leaving skeleton validation until after locomotion or combat packs are installed makes later debugging slower and less reliable

### Acceptance Criteria

- `XPMSSE` is installed as the clear single skeleton baseline for the modlist
- `CBPC` and the chosen `CBBE 3BA (3BBB)` setup coexist cleanly on the active Steam `1.6.1170` profile
- `Pandora` still generates behaviors cleanly after the skeleton and baseline body-physics layer are in place
- The skeleton/body-support foundation is stable enough to move on to locomotion animation evaluation without compensating for low-level setup problems

## Third-Person Locomotion Animation Sets

### Core Idea

- This section chooses the baseline movement feel for normal third-person travel before combat-specific animation layers are added
- For `Elder Wilds`, locomotion should feel grounded, readable, and modern without turning movement into a flashy parkour showcase that fights the wilderness tone
- The goal is to lock one coherent walk, run, and movement style that works with the current `Pandora`, `XPMSSE`, and `CBBE 3BA (3BBB)` foundation

### Suggested Options

- Grounded realistic route: heavier, more natural body weight and travel motion
- Lighter heroic route: cleaner and slightly more stylized movement without becoming exaggerated
- Conditional route: grounded base locomotion with armor-based variation layered on top

### Recommendation

- Start with the grounded realistic route
- Use `Leviathan Animations II - Male Idle Walk And Run` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/81463>
- Use `Leviathan Animations II - Female Idle Walk And Run` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/80760>
- Treat `Conditional Armor Type Animations` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51507> as the main optional layer if the final movement setup needs more equipment-sensitive variation
- Treat `EVG Animated Traversal` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63232> as a separate traversal companion to evaluate later, not as the core locomotion baseline

### Why This Is The Right Baseline

- `Leviathan Animations II` gives a grounded third-person locomotion style that fits the larger-scale wilderness tone better than overly flashy movement packs
- Separating male and female locomotion keeps the choice explicit and easier to evaluate against the current body setup instead of pretending one universal pack solves everything equally well
- `Conditional Armor Type Animations` is a strong follow-up option because it adds context-sensitive movement flavor without replacing the need for a stable base walk and run style
- This route stays conservative enough that locomotion problems are easier to debug before idle, combat, traversal, and interaction animation layers are added

### Working Guidance For Elder Wilds

- Start by testing the `Leviathan Animations II` male and female locomotion pair as the control baseline for normal travel
- Only add `Conditional Armor Type Animations` after the base walk and run feel is accepted on its own
- Keep `EVG Animated Traversal` in the later movement-and-interaction bucket unless the list explicitly wants traversal gameplay to become a larger pillar
- Judge locomotion from actual exploration routes, towns, forest roads, and uneven terrain instead of only flat open showcase spaces
- Keep the first-pass locomotion stack smaller than the eventual full animation stack so later problems can still be traced back to their source
- Re-run `Pandora` after each locomotion change and keep the generated output isolated in the same MO2 output workflow already established for animation generation

### What Elder Wilds Should Prioritize

- Clear readable motion from the normal third-person camera distance
- A grounded travel feel that supports forests, ruins, roads, and long overland movement
- Animation style that fits the chosen female and male body setup without looking floaty, exaggerated, or mismatched
- Strong movement identity without adding unnecessary complexity too early in the animation stack
- A locomotion baseline that can later support combat and idle layering without being replaced immediately

### Research Tasks

- Compare the `Leviathan Animations II` male and female pair against at least one broader alternate locomotion direction before final lock-in
- Test walking, running, turning, and stop-start transitions in towns, roads, forests, and slopes
- Check whether female locomotion still feels coherent with the chosen `CBBE 3BA (3BBB)` setup and whether male locomotion still fits the planned `HIMBO` baseline
- Decide whether `Conditional Armor Type Animations` adds meaningful variety or just extra complexity once armor progression mods are chosen
- Decide later whether `EVG Animated Traversal` adds the right amount of immersive traversal for `Elder Wilds` or starts pushing the movement stack too far away from grounded travel
- Record whether the selected locomotion baseline still feels right after camera, combat, and idle layers start coming online

### Risks To Check

- A locomotion set can look good in isolation but feel too heavy, too floaty, or too theatrical during long play sessions
- Mixing too many movement-style mods early can blur which pack is actually defining the character's travel feel
- Armor-conditional variants can improve flavor but also make movement identity less consistent if added too early
- Choosing a locomotion style before camera and combat direction are clearer may lead to a later full replacement

### Acceptance Criteria

- Normal third-person walking and running feel grounded and readable during real exploration
- The chosen baseline works cleanly with the existing `Pandora`, `XPMSSE`, and `CBBE 3BA (3BBB)` foundation
- Male and female locomotion both feel intentional rather than stitched together from conflicting styles
- The locomotion layer is stable enough that the next sections can evaluate idle and combat animation flavor on top of it instead of compensating for weak baseline movement

## Idle Animations

### Core Idea

- Idle animations should add character presence and a stronger third-person identity without turning normal exploration into constant posing or theatrical fidgeting
- For `Elder Wilds`, the idle layer should stay grounded, readable, and compatible with the current `Pandora`, `XPMSSE`, `CBBE 3BA (3BBB)`, and `HIMBO` foundation
- The goal is to choose one restrained baseline idle direction before layering more situational, equipment-based, or personality-heavy animation logic

### Suggested Options

- Conservative route: keep idle changes very light and let locomotion carry most of the movement identity
- Grounded character route: use restrained male and female idles that fit the locomotion baseline without looking static
- Conditional route: add equipment- or state-aware idles only after the base idle tone feels right

### Recommendation

- Start with the grounded character route
- Keep the baseline idle posture aligned with the existing `Leviathan` locomotion choice above instead of introducing a separate male idle package here
- Use `Goetia Animations - Conditional Shuffled Idle for Pretty Female idles` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/68005> as the main idle-specific comparison route if `Elder Wilds` wants a more feminine but still curated female idle layer
- Treat `Conditional Armor Type Animations` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51507> as the main later comparison route if the list wants different idle flavor by equipment class
- Treat `Goetia Animations - Female Idle Walk And Run` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/68625> as a female locomotion alternate to revisit in `### Third-Person Locomotion Animation Sets`, not as an idle-layer pick

### Why This Is The Right Baseline

- The current locomotion recommendation already uses the `Leviathan` style, so carrying that grounded posture into the idle layer keeps the full movement stack coherent
- Reusing the existing locomotion baseline is safer than introducing a second overlapping male movement package just to solve idles
- `Conditional Armor Type Animations` can add useful variation later, but it should not decide the base idle tone before the core stance and posture are proven
- This route stays conservative enough that later combat, interaction, and conditional systems can be judged on top of a stable baseline instead of compensating for mismatched idles

### Working Guidance For Elder Wilds

- Test the current `Leviathan` movement baseline in long idle states as well as active travel, so the list judges posture and presence instead of only walk and run cycles
- Keep first-pass idle evaluation focused on towns, interiors, camps, and menu-adjacent downtime where the player will actually notice stance quality
- Compare `Goetia Animations - Conditional Shuffled Idle for Pretty Female idles` first if the list wants a lighter female-only idle layer
- If `Goetia Animations - Female Idle Walk And Run` is still interesting later, evaluate it back in the locomotion section as a broader female movement alternate rather than here
- Add armor-conditional or state-based idle layers only after the base idle posture is accepted
- Re-run `Pandora` after idle changes and keep generated output isolated in MO2 like the rest of the animation stack

### What Elder Wilds Should Prioritize

- Natural third-person stance during downtime, dialogue-adjacent moments, and exploration pauses
- Idle posture that fits the current grounded locomotion direction instead of fighting it
- Female and male presentation that feels deliberate without pushing either body setup into exaggerated posing
- Readable silhouette and relaxed presence from normal camera distance
- A stable idle layer that leaves room for later combat and interaction animation choices

### Research Tasks

- Check whether the current `Leviathan` baseline already provides enough idle personality once the full locomotion stack is in place
- Compare `Goetia Animations - Conditional Shuffled Idle for Pretty Female idles` against the baseline first
- If a fuller female movement replacement is still needed later, reassess `Goetia Animations - Female Idle Walk And Run` in the locomotion section instead of treating it as idle-only
- Test long idle moments in cities, inns, wilderness camps, and dialogue-heavy spaces instead of judging only from showcase clips
- Decide whether `Conditional Armor Type Animations` improves idle flavor meaningfully or only adds early complexity
- Record whether chosen idles still feel right once camera, UI, and combat layers are active

### Risks To Check

- Separate idle packs can easily drift away from the locomotion tone and make the full movement stack feel stitched together
- Female-focused idle mods are especially easy to overcorrect into posed or overly stylized behavior that fights the grounded direction
- Conditional idle variation can add flavor, but it can also make character identity feel inconsistent if introduced too early
- Evaluating idles only in showcase scenes can hide how repetitive or theatrical they feel in long play sessions

### Acceptance Criteria

- Idle posture feels natural and readable during normal third-person downtime
- The chosen idle baseline works cleanly with `Pandora`, `XPMSSE`, `CBBE 3BA (3BBB)`, and the current locomotion setup
- Male and female presentation both feel intentional without obvious style clash
- The idle layer is stable enough that the next section can move into combat animation packs without first revisiting basic stance and posture

- ### Combat Animation Packs

### Core Idea

- This section is about the attack-animation layer and its close support mods, not the full combat-system stack that will be chosen later under `## Third-Person Gameplay`
- For `Elder Wilds`, combat animations should feel readable, weighty, and modern in third person without immediately forcing the entire list into the most elaborate combo-driven setup
- The goal is to identify one sane baseline for player and NPC attack presentation, then decide later how far to push the system once camera, dodge, lock-on, hit reactions, and broader combat rules are researched together

### Suggested Options

- Conservative support route
- Balanced modern route
- Full MCO-style route

### Recommendation

- Start with the balanced modern route
- Use `Precision - Accurate Melee Collisions` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/72347> as the baseline support layer for melee readability and contact quality
- Use `SCAR - Skyrim Combos AI Revolution` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/72014> as the main NPC-side support path when the list is ready to test richer attack behavior
- Treat `MCO ADXP - Modern Movement Combat Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/117115> as the main full combat-animation route to evaluate later, not as an automatic baseline lock-in
- Treat `Valhalla Combat` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/64741> as a related gameplay-side companion to revisit in `## Third-Person Gameplay`, not as the core animation-pack decision here

### Why This Is The Right Baseline

- `Precision` improves how melee animations read in actual play without forcing a full combo-combat commitment on day one
- `SCAR` is one of the clearest ways to keep NPC combat presentation from lagging behind the player-side animation stack
- `MCO ADXP` is the obvious high-commitment route for modern third-person attack animations, but it changes enough of the combat feel that it should be judged alongside later gameplay framework decisions rather than in isolation
- Keeping `Valhalla Combat` adjacent but separate preserves the distinction between animation presentation and combat-rule design

### Working Guidance For Elder Wilds

- Start by testing combat feel with `Precision` as the first support layer before stacking multiple large combat-animation frameworks
- Add `SCAR` when the list is ready to judge enemy attack variety and NPC-side animation behavior in real fights instead of showcase clips
- Do not lock a full `MCO ADXP` route until the later third-person camera, dodge, target-lock, and combat-system sections are researched together
- Judge attack animations in normal outdoor fights, dungeon corridors, and uneven terrain, not just open flat arenas
- Re-run `Pandora` after each meaningful combat-animation change and keep generated output isolated in MO2

### What Elder Wilds Should Prioritize

- Readable third-person attack motion from the normal gameplay camera
- Better melee contact and spacing feedback without turning every fight into spectacle-first combo combat
- NPC attack presentation that keeps pace with the player-side animation stack
- A combat-animation layer that still fits the grounded wilderness tone established elsewhere in the list
- A baseline flexible enough to support either restrained or more advanced third-person gameplay later

### Research Tasks

- Test `Precision` first to see how much combat readability improves before adding a full attack-animation overhaul
- Check when `SCAR` meaningfully improves enemy behavior and animation variety versus when it only adds more moving parts
- Evaluate `MCO ADXP` later as the main ambitious route once camera, dodge, target-lock, and combat-rule decisions are clearer
- Keep `Valhalla Combat` tracked as a companion comparison for the later gameplay section instead of letting it define this animation subsection
- Record whether chosen attack animations still feel good in cramped interiors, slopes, mixed weapon encounters, and longer play sessions

### Risks To Check

- A full `MCO`-style route can pull the whole list toward a more system-heavy action-combat identity before the rest of the gameplay plan is settled
- `SCAR` and attack-framework layering can complicate debugging if the baseline animation stack is still unstable
- Great-looking attack clips can still feel awkward in ordinary Skyrim spaces like doorways, stairs, caves, and cluttered ruins
- Mixing animation frameworks and gameplay-rule overhauls too early makes it harder to tell whether problems come from presentation, AI, collision, or combat rules

### Acceptance Criteria

- Combat animations feel readable and intentional from normal third-person play distance
- The chosen baseline works cleanly with `Pandora`, `XPMSSE`, and the current movement stack
- Player and NPC attack presentation both improve without forcing premature lock-in on the final combat-system direction

## Non-Combat Interaction Animations

### Core Idea

- This section is about contextual world interactions such as greeting, looting, harvesting, sleeping, sitting-adjacent actions, and traversal-style set pieces that make third-person play feel embodied outside combat
- For `Elder Wilds`, these animations should reinforce immersion and physical presence without turning ordinary interactions into slow, over-scripted friction
- The goal is to choose one grounded baseline for common contextual actions, then layer in more specific traversal or sleep-focused features only when they clearly add value

### Suggested Options

- Minimal quality-of-life route
- Grounded immersion route
- Traversal-heavy showcase route

### Recommendation

- Start with the grounded immersion route
- Use `Immersive Interactions - Animated Actions` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/47670> as the main baseline for everyday contextual world interactions
- Use `Go to bed` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/4224> as an optional sleep-focused companion if the list wants sleeping and bed use to feel more physically represented
- Keep `EVG Animated Traversal` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/63232> in this bucket as the larger traversal-focused option to evaluate carefully, not as the default interaction baseline

### Why This Is The Right Baseline

- `Immersive Interactions` covers the broadest set of ordinary third-person actions and gives the player-character more physical presence during normal play without immediately demanding a bespoke traversal ecosystem
- `Go to bed` is narrow and readable in scope, making it a good companion only if the list wants sleep interactions to matter visually instead of functioning as a menu shortcut
- `EVG Animated Traversal` is powerful and attractive, but it changes how environmental navigation is perceived enough that it should stay a conscious design choice rather than a default checkbox

### Working Guidance For Elder Wilds

- Start with `Immersive Interactions` first and test whether ordinary actions feel better in real exploration rather than only in isolated showcase scenarios
- Add `Go to bed` only if camp, inn, and home-rest loops are becoming an actual tone pillar for the list
- Treat `EVG Animated Traversal` as a curated expansion: only keep it if supported locations, markers, and add-ons are common enough to justify the extra complexity
- Judge non-combat interactions in towns, campsites, dungeons, wilderness harvesting, and house interiors so the baseline is measured against normal play rhythm
- Re-run `Pandora` after meaningful changes to the interaction stack and keep generated output isolated in MO2

### What Elder Wilds Should Prioritize

- Interactions that make third-person exploration feel embodied without constantly slowing the player down
- Readable, lore-fitting animations that match the grounded wilderness tone instead of feeling theatrical or gimmicky
- Coverage of common actions players actually perform often, not just rare showcase moments
- A stable interaction layer that does not create excessive conflict pressure with locomotion, idles, camera, or later gameplay systems

### Research Tasks

- Test `Immersive Interactions` as the default contextual-action baseline and record which actions genuinely improve everyday play
- Decide whether `Go to bed` meaningfully supports the intended rest-and-camp fantasy or only adds novelty
- Evaluate `EVG Animated Traversal` later with actual supported dungeon and worldspace content, not just the framework page and video clips
- Check whether interaction timing still feels good from the normal third-person camera distance chosen later in gameplay setup
- Record where animation ownership becomes ambiguous between interaction mods, OAR conditions, traversal add-ons, and any camera-sensitive systems

### Risks To Check

- Contextual interaction mods can feel immersive at first but become repetitive if the triggered actions are too slow or too frequent
- `EVG Animated Traversal` can raise expectations for world coverage that the actual mod stack may not consistently deliver without additional marker/add-on work
- Sleeping and interaction animations may feel out of place if the final list does not meaningfully emphasize downtime, camping, taverns, or roleplay pacing
- Layering too many interaction systems can make it harder to tell whether animation oddities come from OAR rules, behavior generation, marker placement, or camera perspective

### Acceptance Criteria

- Everyday third-person interactions feel more physical and immersive without becoming tedious
- The chosen baseline works cleanly with `Pandora`, `XPMSSE`, and the existing locomotion/idle stack
- Optional additions like `Go to bed` or `EVG Animated Traversal` are only kept if they improve normal play rhythm rather than just adding spectacle

## Conditional Animation Systems

### Core Idea

- This section is about the rule-based layer that decides when different animations should play based on state, equipment, context, or conditions rather than the base locomotion or idle packs themselves
- For `Elder Wilds`, conditional animation logic should make the character feel more responsive and situationally grounded without turning the animation stack into an opaque web of overlapping rules
- The goal is to lock one clear condition owner, then add only a small number of high-value conditional packs on top of it

### Suggested Options

- Minimal framework-only route
- Balanced conditional flavor route
- Heavy condition-stacking route

### Recommendation

- Start with the balanced conditional flavor route
- Use `Open Animation Replacer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/92109> as the condition framework and ownership layer for this part of the stack
- Treat `EVG Conditional Idles` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/34006> as the main optional showcase pack for contextual idle and condition-based flavor
- Keep `Conditional Armor Type Animations` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51507> as a targeted follow-up option if armor-state variation is still wanted after the base movement and idle tone are accepted
- Treat older `Dynamic Animation Replacer`-era logic as legacy compatibility context, not the framework direction to choose for `Elder Wilds`

### Why This Is The Right Baseline

- `Open Animation Replacer` is the clean modern answer for condition-driven animation ownership and keeps the framework question separate from whichever specific animation packs are layered on top
- `EVG Conditional Idles` is one of the clearest examples of conditional animation actually adding grounded player-state flavor instead of just technical complexity
- Keeping `Conditional Armor Type Animations` as a narrower follow-up option prevents armor-state variation from defining the whole conditional layer too early
- Avoiding a heavy pile of condition packs at the start makes debugging far easier once camera, traversal, idles, and gameplay systems begin interacting

### Working Guidance For Elder Wilds

- Install `Open Animation Replacer` as the clear rules engine before adding multiple packs that depend on contextual triggers
- Add one major conditional pack at a time and judge whether it improves normal exploration readability or only creates more hidden rule overlap
- Let `EVG Conditional Idles` prove the value of conditional flavor first before layering additional injured, armor-based, or highly situational variants
- Keep animation ownership simple: `Pandora` generates behaviors, `XPMSSE` owns skeleton assumptions, and `Open Animation Replacer` owns conditional selection
- Re-test towns, wilderness travel, interiors, and post-combat downtime after each conditional pack so changes are judged in real gameplay loops rather than menu previews

### What Elder Wilds Should Prioritize

- A clear single owner for conditional animation logic
- Condition-based flavor that supports the grounded third-person tone instead of distracting from it
- Readable state changes that the player can actually notice during normal play
- Low debugging overhead when later camera, traversal, or combat systems also start introducing special-case behavior

### Research Tasks

- Validate `Open Animation Replacer` as the default conditional framework for the current Steam `1.6.1170` setup and MO2 workflow
- Test `EVG Conditional Idles` to see which conditions genuinely improve the feel of exploration, rest states, and player presence
- Decide whether `Conditional Armor Type Animations` adds meaningful variety after the locomotion and idle baseline is already stable
- Record where conditions overlap between interaction mods, idle packs, traversal add-ons, and future camera-aware behavior
- Keep track of any packs that still reference `Dynamic Animation Replacer` assumptions so they can be judged as compatibility baggage rather than automatic installs

### Risks To Check

- Conditional systems can become hard to reason about if multiple packs try to own similar states such as injured, relaxed, weapon-drawn, or armor-specific behavior
- Great-looking context clips can add little real value if the trigger conditions are too rare or visually subtle during ordinary play
- Mixing too many conditional packs early can make it unclear whether odd behavior comes from OAR rules, package priority, animation content, or broader gameplay state changes
- The more conditional logic the list adds, the more important it becomes to keep animation ownership disciplined across later sections

### Acceptance Criteria

- `Open Animation Replacer` is the clear condition owner for the animation stack
- Any chosen conditional packs improve noticeable third-person readability or immersion during normal play
- The conditional layer works cleanly with `Pandora`, `XPMSSE`, locomotion, idles, and the current interaction baseline
- The system remains understandable enough that later camera-aware or gameplay-driven animation work can build on it without turning debugging into guesswork

## Camera-Aware Animation Support

### Core Idea

- This subsection is about animation behavior that changes based on viewpoint or benefits specifically from first-person and perspective-aware presentation, not about choosing the broader third-person camera framework itself
- For `Elder Wilds`, the goal is to make perspective changes feel coherent so the list does not have polished third-person motion but awkward or neglected first-person animation behavior whenever the player zooms in, aims, or uses an immersive camera setup
- The safest approach is to keep one clear perspective foundation and only add first-person animation work that materially improves immersion rather than creating a second full animation ecosystem to debug

### Suggested Options

- Perspective foundation route: use `Improved Camera SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/93962> so first-person body presence and perspective transitions are handled by a known dedicated framework
- First-person animation polish route: evaluate `Comprehensive First Person Animation Overhaul - CFPAO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/87169> if the list wants first-person melee, movement, and general hand/body presentation to feel less vanilla whenever immersive camera use becomes part of normal play
- Conservative route: keep perspective support minimal and do not add major first-person animation packs unless the list actually expects frequent first-person play or hybrid perspective use

### Recommendation

- Start with the disciplined hybrid perspective route
- Use `Improved Camera SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/93962> as the perspective-aware baseline if `Elder Wilds` wants body presence and cleaner first-person continuity
- Treat `Comprehensive First Person Animation Overhaul - CFPAO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/87169> as an optional follow-up layer only if testing shows the project will spend meaningful time in first person or immersive-camera play
- Keep the real camera framework decisions for `modlist-04.md` (`Third-Person Gameplay`) so this subsection stays focused on animation and perspective coherence rather than shoulder switching, lock-on, or third-person camera tuning

### Why This Is The Right Baseline

- `Improved Camera SE` solves the core perspective-presence problem more directly than trying to fake camera awareness entirely through animation packs
- `CFPAO` is useful specifically because it improves the moments where players notice neglected first-person animation quality, but it should not define the whole animation stack if `Elder Wilds` remains predominantly third-person
- Keeping camera-aware support narrow prevents this section from overlapping too heavily with the later third-person camera and movement systems section
- A conservative hybrid approach keeps the animation stack understandable: third-person remains the main presentation, while first-person support exists to avoid immersion breakage rather than become a second main mode with equal complexity

### Working Guidance For Elder Wilds

- Decide first whether hybrid perspective is a real part of the intended playstyle or just a compatibility courtesy
- If first-person body presence matters, install `Improved Camera SE` before judging dedicated first-person animation packs
- Add `CFPAO` only after the locomotion, idle, interaction, and conditional layers already feel stable in third person
- Test perspective transitions during ordinary gameplay loops such as walking through towns, looting interiors, aiming ranged attacks, and entering melee rather than only checking idle showcase clips
- Keep ownership clear: `Pandora` handles generated behavior output, `XPMSSE` handles skeleton assumptions, `Open Animation Replacer` handles condition logic, and camera-aware support should only extend presentation where viewpoint makes it necessary

### What Elder Wilds Should Prioritize

- Perspective consistency between third-person-first play and occasional first-person immersion
- First-person support that removes jarring vanilla behavior without demanding a full first-person-centered mod stack
- Clean separation between animation presentation choices and the later camera/gameplay framework decisions
- Low overlap with locomotion, idles, interaction packs, and future combat camera work

### Research Tasks

- Validate `Improved Camera SE` for the planned Steam `1.6.1170` runtime and MO2 workflow
- Test whether `Elder Wilds` actually benefits from spending meaningful time in first person during normal exploration, combat, looting, and interior play
- Evaluate whether `CFPAO` improves immersion enough to justify another animation layer in a list that is still primarily third-person-first
- Record any overlap between first-person animation changes and interaction, combat, or conditional packs already chosen in this section
- Check whether immersive camera use introduces clipping, weapon-position issues, or awkward transitions with the current skeleton and body pipeline

### Risks To Check

- First-person animation polish can become wasted complexity if the list rarely leaves third person
- Perspective-related mods can expose issues that are not obvious in third person, such as clipping, camera-body mismatch, or awkward weapon placement
- If too many systems try to react to viewpoint, it becomes harder to tell whether odd behavior comes from the camera layer, the first-person animation layer, OAR conditions, or broader gameplay frameworks
- This subsection can easily drift into duplicate decision-making with the later third-person camera section unless its scope stays narrow

### Acceptance Criteria

- Perspective changes feel coherent enough that first-person use does not immediately break the modlist's animation quality bar
- `Improved Camera SE`, if chosen, works cleanly with `Pandora`, `XPMSSE`, and the current animation stack
- `CFPAO`, if chosen, adds meaningful first-person polish rather than redundant complexity
- The camera-aware layer remains clearly separate from later third-person camera and gameplay framework decisions

## Creature Animations

### Core Idea

- This subsection covers the non-humanoid side of the animation stack: giants, falmer, werewolves, spiders, lurkers, and other creatures whose behavior and movement can otherwise feel much older than the humanoid combat package around them
- For `Elder Wilds`, creature animations matter because a modern third-person list feels uneven if the player and humanoid enemies move well but major wilderness threats still read as stiff, dated, or visually flat
- The right approach here is curated creature improvement, not a reckless attempt to patch every creature type at once before the rest of the animation stack is stable

### Suggested Options

- Curated high-impact route: evaluate selected entries from the `New Creature Animation` series where they improve important encounter types without forcing a giant debugging burden
- Known high-value candidates already verified:
  - `New Creature Animation - Giant` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/83317>
  - `New Creature Animation - Falmer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/83572>
  - `New Creature Animation - Werewolf` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/83806>
- Broad-coverage route: expand later into more creature-specific packs only after the main humanoid animation stack, combat layer, and testing workflow are already stable
- Conservative route: keep creature animation upgrades limited to enemies that appear often enough to justify the extra maintenance burden

### Recommendation

- Start with the curated wilderness-threat route
- Treat the `New Creature Animation` series as the main candidate family for creature upgrades rather than looking for one fictional universal creature-animation answer
- Prioritize `New Creature Animation - Giant` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/83317> and `New Creature Animation - Werewolf` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/83806> first because they affect memorable third-person encounters and can strongly shape combat readability
- Keep `New Creature Animation - Falmer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/83572> as a strong dungeon-focused follow-up once the baseline creature direction is proven
- Avoid turning creature animations into a completionist checkbox list before confirming that `Pandora`, the main combat stack, and encounter testing all remain stable

### Why This Is The Right Baseline

- Creature animation coverage in Skyrim is naturally fragmented, so a curated series-based approach is more realistic than pretending there is one clean all-in-one creature solution
- Giants and werewolves are visually prominent enough that improved creature motion can materially change how combat feels in third person
- Falmer are common enough in dungeon content to justify attention once the main wilderness-threat baseline is accepted
- Limiting the first pass to a few high-value creatures keeps the list aligned with the broader rule already established in this file: one owner per layer, one meaningful change at a time, and minimal debugging ambiguity

### Working Guidance For Elder Wilds

- Add creature animation packs only after humanoid locomotion, idles, combat animations, and conditional systems are already behaving predictably
- Introduce one creature family at a time and test in real encounters instead of assuming that multiple creature packs can be dropped in together safely
- Re-run `Pandora` after each creature-animation addition and keep generated output isolated in the same MO2 output workflow used for the rest of the animation stack
- Judge creature animations by encounter readability, timing, hit reaction clarity, and overall tone rather than by showcase clips alone
- Keep notes on which creature packs are worth retaining because they improve normal gameplay and which ones are only flashy one-off demonstrations

### What Elder Wilds Should Prioritize

- Better third-person readability for major wilderness and dungeon threats
- Creature motion that feels more dangerous and modern without drifting into overly flashy spectacle
- A small number of creature upgrades that actually matter in regular play
- Low conflict risk with the existing `Pandora` pipeline and later combat-system decisions

### Research Tasks

- Validate `New Creature Animation - Giant`, `New Creature Animation - Werewolf`, and `New Creature Animation - Falmer` against the current Steam `1.6.1170` setup and `Pandora` workflow
- Test whether improved creature animations change encounter readability, spacing, and perceived threat in real combat rather than only in preview clips
- Record which creature families appear often enough in the final list to justify dedicated animation support
- Check whether any chosen creature packs introduce behavior-generation issues, odd hit timing, or animation mismatch with collision and combat frameworks
- Keep the door open for later creature-specific additions only if the initial curated set proves stable and genuinely valuable

### Risks To Check

- Creature animation packs can create more debugging overhead than humanoid packs because encounter timing, collision readability, and behavior generation all matter at once
- It is easy to over-invest in rare or novelty creature types that add little value to ordinary play
- Mixing many creature-specific packs too early can make it unclear whether problems come from the pack itself, the generator output, combat collisions, or broader gameplay frameworks
- Creature animation upgrades may look impressive in isolation but still feel wrong if attack timing or visual clarity gets worse in actual encounters

### Acceptance Criteria

- Chosen creature animation packs noticeably improve important encounters in normal play
- `Pandora` continues to generate cleanly with the curated creature additions
- Creature motion feels more readable and modern without undermining combat clarity or stability
- The creature-animation layer stays small and intentional enough that later debugging remains manageable

## Animation Conflict Management

### Core Idea

- This subsection defines how `Elder Wilds` keeps the animation stack understandable once locomotion, idles, combat packs, interactions, conditional rules, camera-aware behavior, and creature animations all begin touching the same game states
- The goal is not to solve conflicts by piling on more helper mods, but to keep ownership explicit enough that problems can be traced back to one layer at a time
- For this modlist, animation stability depends more on disciplined layering, isolated generator output, and narrow testing loops than on adding extra technical band-aids

### Suggested Options

- Strict ownership route: keep one clear owner for each layer and reject overlapping packs unless they add obvious value
- Broad experimentation route: test many animation packs together early and sort out conflicts later once the full feel is visible
- Minimalist route: stop with the current high-value baseline and add very few situational packs beyond locomotion, idles, combat support, interactions, conditions, camera-aware support, and a curated creature set

### Recommendation

- Start with the strict ownership route
- Keep `Pandora` as the only behavior-generation owner, `XPMSSE` as the only skeleton owner, and `Open Animation Replacer` as the only conditional-selection owner
- Treat combat readability support such as `Precision` and NPC-side behavior support such as `SCAR` as adjacent systems, not replacements for generator or condition ownership
- Add only one meaningful animation variable at a time, regenerate, test, and document the result before stacking another pack on top
- Keep generated behavior output isolated in MO2 so source mods, generated files, and manual patches never blur together

### Why This Is The Right Baseline

- The fastest way to make Skyrim animation debugging miserable is to let multiple systems appear to own the same state without recording where their authority begins and ends
- `Elder Wilds` already has enough ambition in graphics, bodies, third-person gameplay, and world scale that the animation stack needs clarity more than maximum mod count
- A strict ownership model matches the decisions already made in this file: one generator, one skeleton baseline, one conditional framework, and carefully added content layers on top
- This approach also keeps future third-person gameplay work easier because camera, combat systems, and targeting changes will already have a disciplined animation foundation to build on

### Working Guidance For Elder Wilds

- Record a simple ownership map for each active layer: behavior generation, skeleton/body assumptions, locomotion, idles, combat attacks, interactions, conditions, camera-aware presentation, and creature-specific packs
- Change one category at a time and test it before moving to the next instead of batch-installing multiple animation families together
- Re-run `Pandora` after every meaningful animation change and keep its output in a dedicated MO2 output mod
- Use `SSEEdit` and MO2 file-overwrite visibility to track when a problem is really an animation conflict versus a plugin conflict, skeleton mismatch, or generated-output issue
- Test in repeatable scenarios: town walking, idle downtime, dungeon corridors, uneven outdoor combat, interaction-heavy interiors, and at least one creature encounter type whenever the stack changes meaningfully
- Remove low-value packs quickly if they create ownership ambiguity without delivering a clear improvement in normal play

### What Elder Wilds Should Prioritize

- Clear ownership boundaries across the whole animation stack
- Reproducible rebuild steps and isolated output handling
- Problems that can be diagnosed from normal gameplay testing instead of guesswork
- A smaller, cleaner stack over a larger but opaque one

### Research Tasks

- Build and maintain a simple conflict matrix covering who owns each layer of the current animation stack
- Record which selected mods rely on `Pandora` generation, which rely on `Open Animation Replacer`, and which are mostly presentation-side companions
- Verify that added combat, interaction, camera-aware, and creature packs are not silently duplicating each other's responsibilities
- Document rebuild triggers clearly: when `Pandora` must be re-run, when body or skeleton changes force revalidation, and when a pure OAR pack can be tested without full regeneration
- Keep notes on which combinations were actually tested together so later troubleshooting is based on evidence instead of memory

### Risks To Check

- Animation conflicts often look like camera bugs, combat bugs, or skeleton bugs until ownership is checked carefully
- Installing several showcase-friendly packs together can create a stack that looks impressive briefly but becomes almost impossible to maintain
- Generated output left mixed with source mods can hide whether a problem comes from the current load order or stale behavior files
- The more systems added later in `Third-Person Gameplay`, the more expensive it becomes to clean up unresolved animation ownership mistakes from this section

### Acceptance Criteria

- Every major part of the animation stack has a clear owner
- `Pandora` regeneration and MO2 output handling remain reproducible and easy to audit
- New animation issues can be narrowed down to one layer or one recent change without excessive guesswork
- The section is stable enough that `Animations and Movement` can be considered complete and future work can move into `Third-Person Gameplay`
