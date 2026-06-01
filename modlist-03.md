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

- Non-combat interaction animations
- Conditional animation systems
- Camera-aware animation support
- Creature animations
- Animation conflict management
