# Third-Person Gameplay

## Third-Person Camera Framework

### Core Idea

- This subsection is about the main third-person camera framework that defines how the player sees movement, combat spacing, and character presentation during normal play
- For `Elder Wilds`, the baseline needs to support a third-person-first experience that feels modern and readable without immediately locking the whole project into a pile of extra camera gimmicks
- Camera framework choice should stay separate from later decisions about presets, shoulder switching, targeting, and crosshair behavior so each layer can be judged on its own merits

### Suggested Options

- Modern modular route: use `SmoothCam` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/41252> as the primary third-person camera framework
- Leaner classic route: use `Customizable Camera` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12201> if the list wants a simpler configurable baseline with less emphasis on modern inertia and presentation features
- Mixed companion route: treat `True Directional Movement - Modernized Third Person Gameplay` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51614> and `Improved Camera SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/93962> as adjacent systems to compare later, not as the answer to the framework question itself

### Recommendation

- Start with the modern modular route
- Use `SmoothCam` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/41252> as the baseline framework for `Elder Wilds`
- Keep `Customizable Camera` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12201> as the leaner fallback comparison if `SmoothCam` ends up feeling overly elaborate for the final tone
- Keep `True Directional Movement - Modernized Third Person Gameplay` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51614> for the later movement/targeting subsections instead of letting it define the camera framework decision here
- Keep `Improved Camera SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/93962> adjacent as perspective support rather than treating it as the main third-person framework answer

### Why This Is The Right Baseline

- `SmoothCam` is the clearest modern baseline for a third-person-first Skyrim setup because it is built around camera feel, presentation, and readable movement rather than only exposing basic offsets
- `Customizable Camera` remains useful as a lower-complexity comparison point, but it is a less complete answer for the kind of modern third-person presentation `Elder Wilds` is aiming for
- Keeping `TDM` and `Improved Camera SE` adjacent but separate prevents the later gameplay and perspective decisions from getting collapsed into one oversized camera choice
- This baseline preserves flexibility: the list can still later decide how aggressive to be with shoulder switching, target lock, directional movement, and crosshair behavior without rewriting the entire camera answer

### Working Guidance For Elder Wilds

- Install and test the core camera framework before adding multiple companion systems that also react to movement, aiming, targeting, or viewpoint
- Judge camera feel in normal exploration, city traversal, horseback travel, and close combat spacing instead of only in open showcase areas
- Keep camera framework testing focused on readability, motion comfort, and character presentation before tuning shoulder-swaps or lock-on behavior
- If `SmoothCam` becomes the baseline, treat presets as a later tuning layer rather than proof that the framework itself is correct
- Record whether any later gameplay-side camera features actually belong to the framework or should stay in their own subsection

### What Elder Wilds Should Prioritize

- A readable third-person exploration and combat view
- Modern camera motion that supports the project's character-focused presentation
- Clear separation between framework choice and later tuning/targeting decisions
- A baseline that still leaves room for the rest of the third-person gameplay stack to evolve

### Research Tasks

- Validate `SmoothCam` and `Customizable Camera` against the current Steam `1.6.1170` setup and MO2 workflow
- Compare how each framework feels in wilderness travel, settlements, interiors, and combat approach distance
- Record which later desired features actually require a camera framework decision versus a separate gameplay or preset decision
- Check whether the chosen framework stays comfortable and readable with the animation stack already locked in `modlist-03.md`
- Keep notes on when the leaner route is sufficient and when the more modern modular route clearly pays off

### Risks To Check

- It is easy to mistake a good preset for a good framework, which can hide weak underlying camera behavior until much later
- Mixing several camera-reactive systems too early can make it hard to tell whether problems come from the framework, targeting logic, movement logic, or first-person support
- An over-tuned camera can feel impressive in screenshots or short clips while becoming tiring in normal play
- If the framework decision absorbs too many later concerns, the rest of `Third-Person Gameplay` becomes harder to reason about cleanly

### Acceptance Criteria

- The chosen framework makes third-person traversal and combat staging feel clearly more modern and readable than vanilla
- The camera baseline remains comfortable in longer normal play, not just short showcase testing
- Later subsections such as presets, shoulder switching, TDM, and targeting can build on the framework without redefining it
- The framework works cleanly with the current animation and perspective decisions already recorded elsewhere in the plan

## Camera Presets And Shoulder Switching

### Core Idea

- This subsection is about how the third-person camera should actually sit around the character once the framework is chosen, especially lateral offset, over-the-shoulder framing, and whether shoulder switching is a core expectation or just optional tuning
- For `Elder Wilds`, this layer should improve readability and character presentation without turning the camera into a constantly fussy system that the player has to fight during ordinary exploration or combat
- Presets belong to tuning, not to foundational ownership, so they should follow the framework decision instead of driving it

### Suggested Options

- Stable centered-to-light-offset route: keep the camera mostly disciplined, with only enough lateral framing to support better combat readability and character presence
- Strong over-the-shoulder route: push more aggressive side framing and rely on shoulder switching more actively to keep visibility usable in mixed terrain and combat angles
- Preset-heavy route: adopt a community `SmoothCam` preset early and treat that preset as the practical answer for framing, switching behavior, and feel

### Recommendation

- Start with the stable centered-to-light-offset route
- Use the chosen camera framework to build a restrained baseline before adding aggressive over-the-shoulder bias
- Treat shoulder switching as a support feature that should solve visibility problems when needed, not as the main identity of the camera
- Treat community presets as reference material and test inputs, not as baseline recommendations for `Elder Wilds` until the project has enough real play context to judge them properly
- Keep `Customizable Camera` in mind only as a fallback if the overall camera stack is intentionally simplified later

### Why This Is The Right Baseline

- A restrained baseline is easier to evaluate honestly because it reveals whether the camera framework itself is working instead of hiding problems behind a flashy preset
- Aggressive over-the-shoulder framing can look modern, but it also increases the chance of visibility issues in interiors, cluttered dungeons, and melee-heavy encounters
- Shoulder switching is valuable when it solves line-of-sight and environmental obstruction problems, but making it constantly central can make the whole camera feel performative rather than dependable
- Holding presets at arm's length protects the project from adopting someone else's showcase setup before `Elder Wilds` has finished defining its own movement, targeting, and combat feel

### Working Guidance For Elder Wilds

- Tune this layer only after the framework itself is comfortable in long play sessions
- Test light lateral offset first, then add stronger shoulder bias only if combat readability or world navigation clearly benefits
- Evaluate shoulder switching in interiors, near walls, on stairs, and during close-range circling rather than only in open fields
- If a preset is tested, document exactly what feels better and what feels worse instead of inheriting the whole preset as a black box
- Keep this tuning compatible with future decisions on target lock, crosshair behavior, and horse camera rather than solving each of those early through camera drift alone

### What Elder Wilds Should Prioritize

- Reliable visibility during ordinary movement and close combat
- Character framing that still feels grounded rather than overly cinematic
- Shoulder switching that is useful when needed and ignorable when not needed
- Camera tuning that can survive later gameplay-side additions without a full reset

### Research Tasks

- Determine the lightest camera offset that still improves third-person readability over a near-centered baseline
- Test whether shoulder switching materially helps with dungeon navigation, melee spacing, ranged aim setup, and environmental obstruction
- Compare a restrained in-house tuning pass against one or two well-regarded framework presets before promoting any preset direction
- Record which problems are truly camera-framing problems versus later targeting, crosshair, or movement problems
- Decide whether `Elder Wilds` should feel subtly character-focused or deliberately over-the-shoulder in its final tone

### Risks To Check

- Overcommitting to an aggressive preset too early can force later gameplay systems to work around the camera instead of the other way around
- Shoulder switching that feels mandatory too often can become a symptom of poor baseline framing rather than a sign of a sophisticated system
- Preset imports can bundle many small decisions together, making it hard to understand which changes are actually improving the experience
- Camera tuning that is comfortable in exploration may still fail once target lock, dodge behavior, or ranged aiming are introduced

### Acceptance Criteria

- The chosen framing improves readability and character presentation without creating constant visibility friction
- Shoulder switching feels like a practical tool, not a required chore
- Any preset influence remains understandable enough to tune manually later
- This subsection leaves the project better prepared for `True Directional Movement`, targeting, and crosshair decisions instead of pre-solving them poorly

## True Directional Movement

### Core Idea

- This subsection is about whether third-person movement should follow a modern 360-degree character-relative model instead of the more rigid vanilla feel
- For `Elder Wilds`, directional movement matters because the project already leans on a third-person-first presentation and a more expressive animation stack, so movement behavior needs to support that visual language instead of fighting it
- This is a movement readability and control decision first, not a target-lock decision, even though the same mod ecosystem often touches both

### Suggested Options

- Modern directional route: use `True Directional Movement - Modernized Third Person Gameplay` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51614> as the main movement modernization layer
- Minimalist route: keep movement closer to the camera framework plus animation stack, avoiding a dedicated directional gameplay layer unless the final feel still seems too stiff
- Partial-adoption route: use `TDM` for its movement improvements but stay disciplined about which of its adjacent features are actually enabled once targeting and crosshair decisions are made later

### Recommendation

- Start with the modern directional route
- Use `True Directional Movement - Modernized Third Person Gameplay` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51614> as the baseline directional movement layer for `Elder Wilds`
- Treat its movement modernization as the core value here: freer facing, cleaner third-person traversal, and better visual coherence with the animation work already established in `modlist-03.md`
- Do not let target-lock, boss framing, or crosshair behavior define the decision yet; those belong in their own later subsections
- If the final list tone unexpectedly shifts toward a simpler or more grounded camera-and-animation baseline, re-evaluate whether full `TDM` remains worth the added systems surface area

### Why This Is The Right Baseline

- `TDM` is the clearest modern answer for making Skyrim third-person movement feel contemporary rather than inherited from a first-person-dominant game
- The animation plan already favors readable locomotion, idles, combat presentation, and conditional behavior, so a modern directional movement layer fits that direction instead of leaving movement as the weak link
- Keeping `TDM` centered on movement for now avoids the common mistake of accepting an entire third-person gameplay bundle without evaluating its parts separately
- This approach also preserves room to say no later if a specific targeting or aiming behavior from the same ecosystem feels wrong for `Elder Wilds`

### Working Guidance For Elder Wilds

- Evaluate directional movement in ordinary traversal first: towns, forests, dungeon corridors, slopes, and combat approach distance
- Pay attention to whether the player character's facing, strafe behavior, and animation readability feel naturally aligned with the camera and locomotion choices already made
- Keep early testing focused on movement comfort and legibility rather than flashy combat showcase clips
- Record which improvements genuinely come from directional movement versus improvements that were already delivered by camera framing or animation selection
- Add later TDM-adjacent features one by one so the project can still explain which layer owns each behavior

### What Elder Wilds Should Prioritize

- Movement that feels natural in third person during normal exploration
- Character facing and traversal that read clearly with the chosen animation stack
- A modern feel without turning the controls into an over-designed action-system imitation
- Clean separation between movement modernization and later targeting/combat decisions

### Research Tasks

- Validate `True Directional Movement` on the current Steam `1.6.1170` setup and MO2 workflow
- Compare exploration feel with and without `TDM` in dense settlements, open traversal, and interior navigation
- Test whether the current locomotion choices from `modlist-03.md` still read cleanly once freer directional control is active
- Record where `TDM` solves actual third-person problems versus where later subsystems may still be needed
- Keep notes on whether `Elder Wilds` wants a clearly modern action-RPG feel or a slightly more restrained directional baseline

### Risks To Check

- `TDM` can be treated as an all-in-one third-person answer too early, which makes later subsections harder to reason about individually
- A movement layer that feels great in open traversal may still feel awkward in tight interiors, on stairs, or during precision positioning
- If directional movement and animation style are not aligned, the character can look fluid in one context and strangely detached in another
- The project can accidentally absorb target-lock or aiming assumptions before those systems have been judged on their own merits

### Acceptance Criteria

- Third-person movement feels clearly more natural and modern than vanilla in ordinary play
- Character facing, traversal, and locomotion readability stay coherent with the animation stack already chosen
- The movement layer improves exploration and combat approach feel without forcing premature decisions about targeting or crosshair behavior
- `TDM` remains understandable as one layer in the third-person gameplay stack rather than becoming a vague catch-all answer

## Target Lock And Targeting Behavior

### Core Idea

- This subsection is about how third-person combat should decide what the player is meaningfully focused on, whether enemies can be tracked cleanly in motion, and how much lock-on behavior should shape combat rhythm
- For `Elder Wilds`, targeting needs to improve readability and intent without making Skyrim feel like it has been forced into a boss-lock action game at all times
- This is adjacent to UI feedback, but the core decision here is gameplay behavior first: who is targeted, when lock-on helps, and when free aiming or free movement should still win

### Suggested Options

- Modern lock-on route: use `True Directional Movement - Modernized Third Person Gameplay` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51614> as the main targeting and lock-on owner
- Light-touch route: keep targeting mostly soft and situational, using freer movement plus camera framing rather than relying heavily on lock-on behavior
- Feedback-enhanced route: pair the targeting baseline with `TrueHUD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/62775> for clearer target-state feedback while keeping actual HUD evaluation disciplined and later tied into the UI section

### Recommendation

- Start with the modern lock-on route, but keep it restrained
- Use `True Directional Movement - Modernized Third Person Gameplay` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51614> as the main targeting behavior owner
- Treat lock-on as an optional but important combat readability tool, not as the permanent default way every fight must be played
- Treat `TrueHUD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/62775> as an optional feedback companion if testing shows that target-state clarity materially helps, but do not let HUD presentation choices overtake the gameplay decision in this subsection
- Keep room for `Elder Wilds` to favor freer movement against weak enemies and more deliberate targeting against dangerous single targets, rather than forcing one combat cadence everywhere

### Why This Is The Right Baseline

- The chosen movement baseline already modernizes traversal, so letting it also own target-lock behavior keeps one coherent source of truth instead of stacking a second overlapping targeting system
- A restrained lock-on stance fits Skyrim better than a hard commitment to constant target fixation, especially in mixed melee, ranged, and multi-enemy encounters
- `TrueHUD` can improve readability, but keeping it secondary here prevents gameplay targeting from being mistaken for a UI styling question
- This baseline supports the modlist's broader goal: modern third-person readability without turning every subsystem into a maximalist action-game conversion

### Working Guidance For Elder Wilds

- Test lock-on in realistic scenarios: one-on-one duels, crowded melee fights, enemies at different elevations, ranged enemies, and creatures with larger body footprints
- Pay attention to when lock-on improves combat understanding versus when it causes tunnel vision, camera friction, or awkward target swaps
- Treat target lock as something the player should want in the right moments, not something they must constantly wrestle with to keep combat legible
- If `TrueHUD` is enabled, evaluate it as feedback only: does it clarify focus, enemy state, and combat rhythm, or does it just add visual noise before the UI section is even settled
- Keep notes on how target lock interacts with future dodge, crosshair, and combat-system decisions so the later subsections still have room to make independent calls

### What Elder Wilds Should Prioritize

- Clear target understanding during dangerous fights
- Freedom to move naturally in third person when lock-on is not helping
- A lock-on model that supports readability without overwhelming combat pacing
- Targeting behavior that works for both humanoids and larger enemies without feeling gimmicky

### Research Tasks

- Validate `TDM` target-lock behavior on the current Steam `1.6.1170` setup and MO2 workflow
- Test lock-on usefulness across duels, mob fights, ranged pressure, and larger creature encounters
- Decide how often `Elder Wilds` should expect players to actively use lock-on versus treat it as a situational tool
- Test whether `TrueHUD` materially improves target readability or should stay deferred until the UI section is researched more fully
- Record where targeting problems are really camera, movement, or crosshair problems instead of true lock-on failures

### Risks To Check

- Overusing lock-on can make combat feel narrower and more repetitive than the rest of the third-person stack intends
- Weak target selection or target switching can make even a good movement/camera baseline feel unreliable
- HUD-side feedback can create the illusion of a solved targeting system when the underlying behavior is still awkward
- Large creatures, vertical fights, and crowded spaces can expose lock-on weaknesses that are easy to miss in simple duel testing

### Acceptance Criteria

- Targeting is noticeably clearer and more usable than vanilla in normal third-person combat
- Lock-on helps when it should and stays easy to ignore when freer movement is better
- `TDM` remains the clear targeting owner without overlapping systems muddying responsibility
- Any `TrueHUD` use improves target readability without preempting the later UI decisions

## Dodge, Sprint, And Movement Responsiveness

### Core Idea

- This subsection is about how quickly and cleanly the player can reposition in third person once combat starts, including whether a dedicated dodge mechanic belongs in the baseline and how sprinting/movement transitions should feel under pressure
- For `Elder Wilds`, responsiveness should make the character feel deliberate and modern without forcing the entire game into a nonstop roll-heavy combat identity
- Dodge behavior, sprint feel, and general responsiveness are related, but they are not identical: a good dodge system cannot compensate for weak combat timing, bad stamina rules, or clumsy movement transitions elsewhere in the stack

### Suggested Options

- Restrained modern dodge route: use `TK Dodge RE - Script Free` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56956> as the baseline dodge layer while keeping dodge frequency and combat identity disciplined
- Legacy dodge route: use older `TK Dodge SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/15309> only if the project ends up needing an older, more established fallback path
- No-baseline-dodge route: keep movement responsiveness focused on the existing movement, camera, animation, and later combat-rule layers unless testing proves a dedicated dodge is actually necessary for the final feel

### Recommendation

- Start with the restrained modern dodge route
- Use `TK Dodge RE - Script Free` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56956> as the first serious dodge candidate for `Elder Wilds`
- Treat dodge as a tactical repositioning tool, not the constant center of combat pacing
- Keep sprint and broader responsiveness evaluation tied to overall combat feel, stamina pressure, and animation commitment rather than expecting the dodge mod alone to define the entire movement experience
- Keep `TK Dodge SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/15309> only as a fallback reference point, not as the preferred baseline direction

### Why This Is The Right Baseline

- `TK Dodge RE - Script Free` is the clearest modern baseline among the verified dodge options because it directly represents the newer script-free route rather than a legacy implementation or a pile of derivative updates
- A restrained dodge baseline fits the broader `Elder Wilds` direction better than immediately committing to a hyper-mobile action conversion
- This preserves room for later combat-system decisions to determine how important dodge should actually feel instead of letting the first installed dodge mod set the whole tone
- Keeping sprint and responsiveness conceptually separate from dodge helps the project avoid over-crediting one subsystem for problems that really belong to stamina rules, animation commitment, or combat pacing

### Working Guidance For Elder Wilds

- Test dodge in tight dungeons, open traversal combat, uneven terrain, stairs, and fights against both humanoids and larger enemies
- Pay attention to whether dodge feels like a useful answer to spacing problems or just an always-on panic button that flattens combat texture
- Evaluate sprint responsiveness both in and out of combat so the list does not accidentally optimize only for duel scenarios
- Watch how dodge transitions interact with the current animation stack, especially locomotion readability and any later hit-reaction/combat-system changes
- Keep notes on whether responsiveness problems are really dodge problems or whether they stem from target lock, camera friction, stamina tuning, or attack commitment elsewhere

### What Elder Wilds Should Prioritize

- Responsive repositioning that still feels grounded in Skyrim's pace
- A dodge tool that adds tactical clarity rather than visual spam
- Sprint and movement transitions that remain readable under combat pressure
- A movement-response model that supports the animation stack instead of fighting it

### Research Tasks

- Validate `TK Dodge RE - Script Free` on the current Steam `1.6.1170` setup and MO2 workflow
- Compare dodge feel in one-on-one fights, crowded melee, creature encounters, and confined spaces
- Test whether a dedicated dodge materially improves `Elder Wilds` or whether directional movement plus camera clarity already carries most of the needed responsiveness
- Record how sprint responsiveness changes once later combat-rule choices are introduced
- Keep fallback notes on `TK Dodge SE` only if the modern route exposes concrete compatibility or feel problems

### Risks To Check

- A dodge system can make combat feel twitchier and less grounded than the rest of the list intends
- If dodge is too strong or too convenient, it can trivialize spacing and undermine other combat readability goals
- Sprint responsiveness can feel good in isolation but still break once stamina pressure, target lock, and hit reactions are layered on top
- The dodge ecosystem has several overlapping variants and derivatives, so ownership can get messy quickly if the project keeps multiple paths alive too long

### Acceptance Criteria

- Repositioning feels clearly more responsive and usable than vanilla without forcing a roll-centric combat identity
- Dodge, sprint, and movement transitions stay readable with the existing camera, movement baseline, and animation choices
- The chosen dodge layer remains understandable as one tool in the combat stack rather than the main answer to every responsiveness problem
- This subsection leaves later hit-reaction and combat-system work easier to judge instead of preempting it

## Hit Reactions, Stagger, And Impact Feedback

### Core Idea

- This subsection is about whether combat hits actually feel consequential in third person: readable reactions, believable stagger, and enough impact feedback that weapon contact looks and feels meaningful
- For `Elder Wilds`, this layer should make combat easier to read and more satisfying without turning every hit into exaggerated crowd-control spam
- Animation presentation, collision feel, and gameplay-side stagger rules all contribute here, so this subsection needs to stay disciplined about what belongs to impact feedback versus what belongs to the broader combat-system decision later

### Suggested Options

- Balanced impact route: use `Valhalla Combat` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/64741> as the main gameplay-side candidate for stronger hit feedback and stagger discipline, while relying on already-established animation and collision layers to carry presentation
- Lighter feedback route: keep impact feel mostly dependent on `Precision`, animation readability, sound/visual feedback, and restrained combat rules instead of adding a heavier stagger identity early
- High-drama route: push harder on stagger and reaction systems so combat becomes visibly punchier, accepting the risk of overcorrection and reduced encounter texture

### Recommendation

- Start with the balanced impact route
- Treat `Valhalla Combat` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/64741> as the main gameplay-side comparison point for hit feedback and stagger behavior in `Elder Wilds`
- Keep `Precision - Accurate Melee Collisions` as an adjacent already-chosen support layer for contact feel, but do not pretend collision accuracy alone solves impact readability
- Aim for reactions and stagger that clarify combat outcomes rather than constantly interrupting movement flow
- Leave room for the later `Third-Person Combat Systems` subsection to decide how deeply `Elder Wilds` wants to commit to a more systemic action-combat identity

### Why This Is The Right Baseline

- `Valhalla Combat` is already the main gameplay-side combat companion tracked elsewhere in the repo, so this is the right place to judge whether its impact and stagger feel actually improve the third-person experience
- A balanced route fits the project's broader direction better than either flat vanilla-style weak impact or exaggerated hitstop-heavy spectacle
- The existing animation work in `modlist-03.md` and the earlier `Precision` decision already cover a large part of combat readability, so this subsection should focus on the remaining gameplay-side impact question rather than duplicating those layers
- Keeping this scoped prevents the later combat-systems subsection from being pre-solved by a vague desire for "more impact" that was never clearly defined

### Working Guidance For Elder Wilds

- Test impact feel in normal melee exchanges, multi-enemy pressure, creature fights, and uneven terrain rather than only in staged duels
- Watch whether stagger communicates meaningful advantage or just repeatedly breaks combat rhythm
- Judge hit reactions by readability, pacing, and satisfaction together, not by visual drama alone
- Compare how much of the improved feel comes from collision accuracy, animation timing, camera framing, and actual stagger rules so the project keeps clean ownership of the result
- Keep notes on whether specific enemies become too easy, too annoying, or too interruption-heavy once stronger impact feedback is layered in

### What Elder Wilds Should Prioritize

- Clear combat readability when hits land
- Enough stagger and reaction feedback to make weapon contact feel meaningful
- Combat pacing that remains grounded rather than constantly stun-driven
- Impact feedback that works on both humanoids and larger enemies without becoming cartoonish

### Research Tasks

- Revisit `Valhalla Combat` specifically for hit feedback, stagger feel, and overall combat readability on the current Steam `1.6.1170` setup and MO2 workflow
- Compare combat feel with the current animation-plus-`Precision` baseline before attributing every improvement to a gameplay mod
- Test whether stronger impact feedback improves ordinary encounters or only makes showcase fights look better
- Record which reaction/stagger behaviors help readability versus which ones simply increase interruption frequency
- Keep notes ready for the later combat-systems subsection so that impact feedback and overall combat rules do not get collapsed together

### Risks To Check

- Too much stagger can flatten combat pacing and make encounters feel repetitive or gamey
- Weak impact feedback can leave even good animations and collision detection feeling unsatisfying
- It is easy to misattribute improvements to one system when camera, animation timing, collision, and gameplay rules are all changing together
- Creature fights and crowded melee encounters can expose impact-balance problems that do not show up in simple one-on-one testing

### Acceptance Criteria

- Hits feel more readable and consequential than vanilla in ordinary third-person combat
- Stagger and reaction feedback improve combat understanding without dominating every encounter
- The section remains clearly scoped to impact feel, leaving deeper combat-rule decisions for the next subsection
- `Valhalla Combat` is evaluated as a concrete gameplay-side candidate without muddying ownership of animation or collision layers

## Third-Person Combat Systems

### Core Idea

- This subsection is where `Elder Wilds` decides how far to push Skyrim toward a modern third-person combat framework instead of only improving presentation around mostly vanilla combat rules
- It should answer the overall combat identity question: lighter vanilla-plus modernization, or a more deliberate action-combat stack with clearer commitments around stamina, attack flow, dodge, targeting, and enemy behavior
- This section owns the gameplay framework decision, not the underlying animation generation, skeleton, or condition-selection ownership already settled in `modlist-03.md`

### Suggested Options

- Vanilla-plus route: keep the current camera, movement, dodge, and impact layers relatively restrained, using them to modernize feel without fully adopting a heavier combat-system stack
- Balanced modern route: treat `Valhalla Combat` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/64741> as the main gameplay-rules candidate while evaluating `MCO ADXP - Modern Movement Combat Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/117115> as the main high-commitment player/NPC combat direction already tracked from the animation side
- Full action route: commit strongly to the `MCO ADXP` ecosystem, `Valhalla Combat`, `SCAR - Skyrim Combos AI Revolution`, dodge, lock-on, and related responsiveness layers as a cohesive action-oriented combat conversion

### Recommendation

- Start with the balanced modern route
- Treat `Valhalla Combat` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/64741> as the main gameplay-rule framework to judge here
- Treat `MCO ADXP - Modern Movement Combat Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/117115> as the main ambitious combat-style route to compare against a lighter baseline, not as an automatic lock
- Keep `SCAR - Skyrim Combos AI Revolution` as the already-tracked NPC-side support layer once the list is ready to judge richer enemy attack behavior in real encounters
- Keep collision, movement, dodge, and hit-feedback work as adjacent support systems that feed into the combat framework, but do not let any one of them impersonate the combat-system decision by itself

### Why This Is The Right Baseline

- The repo already established `MCO ADXP` as the main high-commitment combat route to revisit later, and this is the correct place to judge whether that ambition is actually right for `Elder Wilds`
- `Valhalla Combat` is the clearest gameplay-side comparison point because it meaningfully changes combat feel without being merely cosmetic
- A balanced modern route keeps the project honest: it can still land on a more grounded vanilla-plus outcome if the full action stack proves too heavy, too patch-hungry, or simply wrong for the intended tone
- This structure also preserves clean ownership: `modlist-03.md` owns animation foundations and presentation layers, while this section owns the broader combat-rules commitment

### Working Guidance For Elder Wilds

- Compare lighter and heavier combat directions in real play, not just showcase clips or training-yard duels
- Test combat systems across humanoids, creatures, groups, interiors, open-world encounters, and mixed melee-ranged pressure
- Pay attention to whether the full modern stack actually improves readability and decision-making or just increases system density and player workload
- Record which parts of the improved feel come from combat rules versus movement, targeting, dodge, impact, or animation presentation so the project can still explain its final design clearly
- Keep the fallback vanilla-plus path alive long enough to make a real comparison, but do not leave multiple full combat directions half-adopted for too long

### What Elder Wilds Should Prioritize

- Combat that feels modern and readable in third person without becoming exhausting or over-engineered
- A ruleset that supports the chosen camera, targeting, dodge, and animation layers instead of constantly conflicting with them
- Enemy behavior that remains threatening and legible rather than simply faster or busier
- A final combat identity that fits the broader modlist tone instead of chasing action-game spectacle for its own sake

### Research Tasks

- Revisit `Valhalla Combat` as the main gameplay-rule candidate on the current Steam `1.6.1170` setup and MO2 workflow
- Compare a lighter vanilla-plus stack against a fuller `MCO ADXP`-driven route in normal gameplay, not just isolated combat tests
- Test when `SCAR` meaningfully improves enemy pressure and readability versus when it only adds more moving parts
- Record whether the heavier route improves ordinary play enough to justify the extra complexity, patching, and tuning overhead
- Keep explicit notes on where `Elder Wilds` wants to sit on the spectrum between grounded modernization and full action-combat conversion

### Risks To Check

- A full modern combat stack can pull the entire modlist toward a more aggressive action-game identity than the rest of the project actually wants
- Overlapping combat layers can become difficult to debug once dodge, lock-on, stagger, collision, NPC behavior, and animation changes all land together
- A system that looks impressive in duels can still feel messy, tiring, or unfair in crowded real-world encounters
- If the combat-system choice is not kept distinct from presentation layers, it becomes hard to explain what is actually improving the experience and what is just adding complexity

### Acceptance Criteria

- The chosen combat direction clearly improves third-person readability, encounter flow, and player control over vanilla
- The final system works coherently with the camera, targeting, dodge, impact, and animation decisions already recorded in the plan
- Enemy behavior and player-side combat rules feel intentional rather than like a pile of overlapping modern-combat mods
- The section leaves only crosshair/aiming and mounted-camera questions unresolved in `modlist-04.md`

## Crosshair And Aiming Behavior

### Core Idea

- This subsection is about how third-person aiming should actually feel in play: when the crosshair should be trusted, how readable ranged and spell aiming are, and how much aim assistance or HUD feedback is appropriate for the modlist's tone
- For `Elder Wilds`, aiming needs to be reliable enough that third-person combat does not feel like a visual compromise, but it should not drag the project into a separate HUD-overhaul decision before the UI section is reached
- This is the bridge between camera framing, target feedback, and combat usability, not a license to solve every interface problem through bigger widgets or more visual clutter

### Suggested Options

- Disciplined aiming route: keep crosshair behavior restrained and readable, relying on the current camera and movement baselines plus careful tuning rather than chasing heavy aim-assist or HUD-heavy solutions
- Third-person selection utility route: use `Better Third Person Selection - BTPS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/64339> if ordinary third-person looting and object interaction feel unreliable enough to need a dedicated selection fix
- Feedback-supported route: use `TrueHUD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/62775> as a limited clarity companion where target-state or focus feedback genuinely helps aiming readability
- Aggressive assist route: push harder on crosshair-centric play, aim helpers, or more forceful feedback layers so third-person ranged play feels easier immediately, accepting a greater risk of UI and gameplay overlap

### Recommendation

- Start with the disciplined aiming route
- Treat the chosen camera framing as the baseline aiming context, because poor framing can masquerade as poor aiming behavior
- Treat the movement-and-targeting baseline as something aiming behavior must cooperate with, not override
- Treat `Better Third Person Selection - BTPS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/64339> as a strong optional companion if real third-person play shows that selection and interaction reliability are part of the usability problem, but do not confuse object-selection fixes with combat aiming fixes
- Keep `TrueHUD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/62775> only as an optional clarity aid if testing shows it materially improves third-person targeting and aim readability
- Defer visual styling, widget design, and broader HUD philosophy to `modlist-06.md` so this section stays focused on usability rather than presentation taste

### Why This Is The Right Baseline

- Third-person aiming problems are often really camera or targeting problems first, so a restrained approach prevents the project from "fixing" the wrong layer
- `BTPS` is relevant because unreliable third-person object selection can make the whole crosshair feel worse than it really is, but it solves a narrower interaction problem than actual combat aim behavior
- The current stack already has the main building blocks in place: a modern camera framework, stronger movement/targeting, optional target feedback, and a clearer combat identity under evaluation
- Keeping HUD choices secondary protects the later UI section from being pre-solved accidentally by combat frustration
- This baseline fits the project tone better than turning the crosshair into the main star of the experience; `Elder Wilds` wants readable third-person combat, not a permanently over-instrumented screen

### Working Guidance For Elder Wilds

- Test aiming in real play loops: bows, spells, mixed melee-ranged encounters, elevation changes, moving targets, and close-to-mid-range transitions
- Separate problems carefully: note whether misses or awkward shots come from camera angle, target behavior, projectile feel, crosshair placement, or simple player adaptation
- Test ordinary third-person interaction too: looting, picking up small items, activating cluttered objects, and checking whether selection reliability needs `BTPS`
- Judge crosshair behavior by reliability and confidence, not by how much extra visual information it can display
- If the optional target-feedback layer is enabled, evaluate whether it genuinely helps aiming decisions or whether it mainly adds combat-state information that belongs to the UI section later
- Keep this layer compatible with both a restrained vanilla-plus combat route and a heavier modern combat route so the crosshair does not have to be reinvented after the combat-system choice settles

### What Elder Wilds Should Prioritize

- Third-person aiming that feels trustworthy in ordinary play
- Crosshair behavior that supports ranged and spell use without dominating the screen
- A clean relationship between camera framing, target feedback, and aiming confidence
- Usability improvements that do not prematurely lock the UI philosophy

### Research Tasks

- Test bows, spells, and mixed combat with the current camera and movement baseline on the Steam `1.6.1170` setup and MO2 workflow
- Record whether aiming issues are mostly camera-position problems, target-feedback problems, or true crosshair-behavior problems
- Check whether third-person object selection is weak enough in ordinary play to justify `BTPS`, or whether the base camera/crosshair setup is already sufficient
- Check whether `TrueHUD` materially improves aiming clarity enough to justify its use beyond target-lock feedback
- Compare third-person aiming feel across restrained and more action-oriented combat configurations before locking final expectations
- Keep notes ready for `modlist-06.md` so UI styling decisions stay grounded in actual usability findings

### Risks To Check

- It is easy to overcorrect weak third-person aiming with too much HUD noise instead of fixing camera and targeting behavior first
- It is also easy to conflate interaction-selection problems with combat-aiming problems; `BTPS` can help the former without answering the latter
- Aiming that feels acceptable in open areas can still break down badly in interiors, on stairs, or against fast-moving targets
- Crosshair tuning can quietly inherit assumptions from the heavier combat route and feel wrong if the project later chooses a more grounded final direction
- If this subsection drifts too far into widget design, the later UI section loses a clear boundary

### Acceptance Criteria

- Third-person aiming feels reliable enough that ranged and spell use remain practical in normal play
- Third-person object interaction feels reliable enough that normal looting and activation do not constantly fight the camera perspective
- Crosshair behavior improves usability without turning the screen into a combat HUD experiment
- Camera, targeting, and aiming each remain understandable as separate layers in the third-person stack
- After this section, only mounted-camera and horse-control questions remain unresolved in `modlist-04.md`

## Horse Camera And Mounted Controls

### Core Idea

- This subsection is about whether mounted play in `Elder Wilds` should feel like a supported third-person activity instead of a neglected edge case, with camera behavior, responsiveness, and control clarity that hold up during normal travel and occasional mounted combat
- For this modlist, horse gameplay does not need to become a full mounted-combat identity of its own, but it does need to avoid feeling awkward enough that players immediately dismount whenever terrain, camera angle, or combat pressure rises
- The goal is to make horseback travel compatible with the broader third-person baseline without letting horse overhauls quietly become a second gameplay framework that drags in too many unrelated systems

### Suggested Options

- Full mounted usability route: use `Convenient Horses` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/9519> as the broad mounted-control and horse-handling candidate, accepting that it touches more than just camera behavior
- Restrained immersion route: use `Immersive Horses` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/13402> as the comparison point if the project wants horse interaction improvements with a somewhat more grounded feel
- Minimalist route: keep horse behavior close to vanilla and solve only obvious camera or usability pain points through careful testing, accepting weaker mounted support in exchange for lower system density

### Convenient Horses Vs. Immersive Horses

- `Convenient Horses` pros: broader mounted usability package, clearer all-in-one baseline for testing, likely to expose quickly whether `Elder Wilds` actually wants a substantial horse-support layer
- `Convenient Horses` cons: larger systems footprint, greater risk of dragging in horse-side features beyond the camera/control problem, and a higher chance of feeling too heavy or too opinionated for a disciplined list
- `Immersive Horses` pros: more grounded comparison point, better fit if the goal is to improve mounted feel without turning horse support into its own mini-framework, easier to justify if the final list wants restrained immersion over feature breadth
- `Immersive Horses` cons: may not solve enough of the practical usability pain if vanilla mounted play still feels clumsy, and may leave more of the burden on camera tuning and player tolerance

### Recommendation

- Start with the restrained mounted-support route rather than assuming horseback play needs a giant overhaul
- Treat `Convenient Horses` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/9519> as the main broad candidate to evaluate because it is the clearest all-in-one mounted usability reference point
- Keep `Immersive Horses` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/13402> as the grounded comparison if `Convenient Horses` feels too system-heavy or too opinionated for the final list tone
- Judge horse camera and mounted controls primarily on travel readability, steering confidence, and whether mounted play feels coherent with the chosen third-person camera framework rather than on feature count alone
- Avoid locking a mounted overhaul until the ordinary on-foot third-person stack is already stable enough that horse-specific problems are easy to identify cleanly

### Why This Is The Right Baseline

- Mounted play matters enough in Skyrim travel that ignoring it would leave a visible quality gap in a third-person-first list, especially once exploration tone and world scale become more important later in the project
- `Convenient Horses` is a useful baseline candidate precisely because it is a known broad solution; it gives the project something concrete to test against rather than hand-waving mounted controls as a future problem
- Keeping `Immersive Horses` in view preserves a lower-intensity comparison so the project does not mistake "more features" for "better fit"
- This recommendation keeps the subsection focused on actual mounted usability instead of letting it drift into horse-content, stable-management, or roleplay feature accumulation for its own sake

### Working Guidance For Elder Wilds

- Test horseback travel in the places where third-person camera problems actually show up: roads, forest paths, bridges, cities, uneven terrain, and sudden combat transitions
- Pay close attention to whether mounted camera issues are really camera-framework problems, horse-control problems, animation problems, or simple vanilla horse limitations
- Compare how mounted play feels with the same general camera philosophy already chosen for on-foot play; horseback travel should feel like part of the same modlist, not a separate game mode
- If `Convenient Horses` is trialed, note which improvements are genuinely valuable to `Elder Wilds` and which feel like extra system surface area the list does not need
- If both main candidates feel too heavy or too awkward, prefer a smaller mounted-support expectation over forcing a horse overhaul into the list just to say the category was covered

### What Elder Wilds Should Prioritize

- Horseback travel that is readable and comfortable in third person
- Mounted controls that do not fight the chosen camera direction
- A horse-improvement layer that fits the list tone without becoming a sprawling side system
- Clear testing discipline so mounted frustrations are not misdiagnosed as general camera or combat failures

### Research Tasks

- Test `Convenient Horses` on the Steam `1.6.1170` setup and MO2 workflow with the current third-person baseline, focusing on travel usability first
- Compare `Immersive Horses` against that baseline as the more grounded alternative rather than assuming the broader feature set is automatically better
- Evaluate mounted camera behavior in ordinary travel, terrain transitions, and light combat pressure before making any final horse-framework decision
- Record whether mounted issues are important enough in actual play to justify a dedicated overhaul or whether lighter expectations are sufficient for the final list
- Keep notes on any overlap with later world-scale, survival, or immersion decisions so horse support does not get evaluated in isolation

### Risks To Check

- Horse overhauls can reach beyond camera and controls into ownership, followers, inventory, behavior, or immersion systems that may be outside the real need here
- Mounted play can feel improved in calm travel but still break down during combat, in cramped spaces, or in rough terrain where third-person readability matters most
- A broad horse mod may solve several annoyances while quietly adding complexity the rest of the modlist then has to carry forever
- If mounted usability is not tested separately from the on-foot stack, the project can misattribute horse problems to camera, movement, or combat systems that are not actually at fault

### Acceptance Criteria

- Horseback travel feels meaningfully better in third person than vanilla in the scenarios that actually matter for exploration
- Mounted controls and camera behavior remain coherent with the chosen on-foot third-person direction
- The final horse solution improves usability without introducing a sprawling side system that clashes with the rest of the list
- `modlist-04.md` can be considered complete after this subsection, with the next expansion moving to `modlist-05.md`
