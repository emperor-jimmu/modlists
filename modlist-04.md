# Third-Person Gameplay

## Third-Person Camera Framework

### Core Idea

- This subsection chooses the main on-foot third-person camera framework.
- The framework decision should stay separate from later tuning, target lock, crosshair behavior, and perspective support.

### Options

- Modern modular route: `SmoothCam` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/41252>
- Leaner fallback route: `Customizable Camera` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12201>
- Adjacent but separate systems: `True Directional Movement - Modernized Third Person Gameplay` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51614> and `Improved Camera SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/93962>

### Recommendation

- Use `SmoothCam` as the baseline third-person camera framework.
- Keep `Customizable Camera` as the leaner fallback comparison if `SmoothCam` feels too elaborate for the final tone.
- Keep `TDM` for later movement and targeting decisions instead of letting it answer the framework question.
- Keep `Improved Camera SE` scoped to perspective support rather than treating it as the main third-person framework answer.

### Risks & Compatibility

- It is easy to mistake a good preset for a good framework and hide weak underlying camera behavior.
- Mixing several camera-reactive systems too early makes it hard to tell whether problems come from the framework, targeting logic, movement logic, or first-person support.
- An over-tuned camera can look impressive in clips while becoming tiring in normal play.

### Acceptance Criteria

- The chosen framework makes third-person traversal and combat staging clearly more modern and readable than vanilla.
- The camera baseline remains comfortable in longer normal play.
- Later layers can build on the framework without redefining it.

## Camera Presets And Shoulder Switching

### Core Idea

- This subsection covers camera framing once the framework is chosen: lateral offset, over-the-shoulder bias, and whether shoulder switching is a core expectation or a support tool.
- Presets belong to tuning, not foundational ownership.

### Options

- Stable centered-to-light-offset route.
- Strong over-the-shoulder route.
- Preset-heavy route that adopts a community `SmoothCam` preset early.

### Recommendation

- Start with a restrained centered-to-light-offset baseline.
- Treat shoulder switching as a support feature that solves visibility problems when needed, not as the main camera identity.
- Treat community presets as reference material, not baseline recommendations, until the project has enough real play context to judge them properly.

### Risks & Compatibility

- Aggressive over-the-shoulder framing can create visibility issues in interiors, cluttered dungeons, and melee-heavy encounters.
- Shoulder switching that feels mandatory too often is usually a symptom of poor baseline framing.
- Preset imports can bundle many decisions together and make it hard to understand what is actually helping.

### Acceptance Criteria

- Framing improves readability and character presentation without creating constant visibility friction.
- Shoulder switching feels like a practical tool rather than a chore.
- Any preset influence remains understandable enough to tune manually later.

## True Directional Movement

### Core Idea

- This subsection decides whether third-person movement should follow a modern 360-degree character-relative model instead of the more rigid vanilla feel.
- It is a movement readability and control decision first, not a target-lock decision.

### Options

- Modern directional route: `True Directional Movement - Modernized Third Person Gameplay` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51614>
- Minimalist route: keep movement closer to the camera framework plus animation stack.
- Partial-adoption route: use `TDM` for movement modernization while staying disciplined about which adjacent features are enabled later.

### Recommendation

- Use `True Directional Movement` as the baseline directional movement layer.
- Treat freer facing, cleaner traversal, and better alignment with the animation stack as the core value here.
- Do not let target lock, boss framing, or crosshair behavior define this decision yet.

### Risks & Compatibility

- `TDM` is easy to treat as an all-in-one third-person answer too early.
- A movement layer that feels great in open traversal may still feel awkward in tight interiors, on stairs, or during precision positioning.
- The project can accidentally absorb targeting assumptions before those systems are judged separately.

### Acceptance Criteria

- Third-person movement feels clearly more natural and modern than vanilla in ordinary play.
- Character facing and traversal stay coherent with the animation stack from `modlist-03.md`.
- `TDM` remains understandable as one layer in the third-person stack rather than a catch-all answer.

## Target Lock And Targeting Behavior

### Core Idea

- This subsection decides how third-person combat identifies focus and whether lock-on should meaningfully shape combat rhythm.
- The goal is better targeting readability without turning Skyrim into a permanent boss-lock action game.

### Options

- Modern lock-on route: `True Directional Movement - Modernized Third Person Gameplay` as the targeting owner.
- Light-touch route: freer movement plus camera framing with only situational lock-on use.
- Feedback-enhanced route: pair the targeting baseline with `TrueHUD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/62775> for clearer target-state feedback.

### Recommendation

- Use `TDM` as the main targeting-behavior owner, but keep lock-on restrained.
- Treat lock-on as an optional combat-readability tool, not the permanent default way every fight must be played.
- Keep `TrueHUD` as an optional feedback companion only if testing shows target-state clarity materially helps.

### Risks & Compatibility

- Overusing lock-on can make combat feel narrower and more repetitive than the rest of the stack intends.
- Weak target selection or target switching can make even a good movement and camera baseline feel unreliable.
- `TrueHUD` can create the illusion of a solved targeting system when the underlying behavior is still awkward.

### Acceptance Criteria

- Targeting is noticeably clearer and more usable than vanilla in normal third-person combat.
- Lock-on helps when it should and stays easy to ignore when freer movement is better.
- `TDM` remains the clear targeting owner without overlapping systems muddying responsibility.

## Dodge, Sprint, And Movement Responsiveness

### Core Idea

- This subsection covers how cleanly the player can reposition once combat starts, including whether a dedicated dodge mechanic belongs in the baseline.
- Dodge behavior, sprint feel, and general responsiveness are related, but they are not identical.

### Options

- Restrained modern dodge route: `TK Dodge RE - Script Free` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56956>
- Legacy fallback route: `TK Dodge SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/15309>
- No-baseline-dodge route: rely on movement, camera, animation, and later combat-rule layers unless testing proves a dedicated dodge is necessary.

### Recommendation

- Use `TK Dodge RE - Script Free` as the first serious dodge candidate.
- Treat dodge as a tactical repositioning tool, not the constant center of combat pacing.
- Keep `TK Dodge SE` only as a fallback reference point, not the preferred baseline direction.

### Risks & Compatibility

- A dodge system can make combat feel twitchier and less grounded than the rest of the list intends.
- If dodge is too strong or too convenient, it can trivialize spacing and undermine other readability goals.
- The dodge ecosystem has several overlapping variants and derivatives, so ownership gets messy quickly if multiple paths stay alive too long.

### Acceptance Criteria

- Repositioning feels more responsive and usable than vanilla without forcing a roll-centric combat identity.
- Dodge, sprint, and movement transitions stay readable with the existing camera, movement baseline, and animation choices.
- The chosen dodge layer remains understandable as one tool in the combat stack rather than the answer to every responsiveness problem.

## Hit Reactions, Stagger, And Impact Feedback

### Core Idea

- This subsection is about whether combat hits feel consequential in third person: readable reactions, believable stagger, and enough impact feedback that weapon contact feels meaningful.
- It should stay scoped to impact feel rather than absorb the whole combat-system decision.

### Options

- Balanced impact route: `Valhalla Combat` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/64741>
- Lighter feedback route: lean more on `Precision`, animation readability, and restrained combat rules.
- High-drama route: push harder on stagger and reaction systems, accepting a higher risk of overcorrection.

### Recommendation

- Use `Valhalla Combat` as the main gameplay-side comparison point for hit feedback and stagger behavior.
- Treat `Precision` from `modlist-03.md` as an adjacent support layer for contact feel, but not a full answer to impact readability.
- Aim for reactions and stagger that clarify combat outcomes rather than constantly interrupting movement flow.

### Risks & Compatibility

- Too much stagger can flatten combat pacing and make encounters feel repetitive or gamey.
- Weak impact feedback can leave even good animations and collision detection feeling unsatisfying.
- Camera, animation timing, collision, and gameplay rules all affect impact feel, so ownership can blur quickly.

### Acceptance Criteria

- Hits feel more readable and consequential than vanilla in ordinary third-person combat.
- Stagger and reaction feedback improve combat understanding without dominating every encounter.
- The subsection remains clearly scoped to impact feel, leaving deeper combat-rule decisions for the next section.

## Third-Person Combat Systems

### Core Idea

- This subsection decides how far `Elder Wilds` should push Skyrim toward a modern third-person combat framework instead of only improving presentation around mostly vanilla combat rules.
- It owns the gameplay-framework decision, not animation generation, skeleton ownership, or conditional logic.

### Options

- Vanilla-plus route: keep camera, movement, dodge, and impact layers relatively restrained.
- Balanced modern route: `Valhalla Combat` as the main gameplay-rules candidate while evaluating `MCO ADXP - Modern Movement Combat Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/117115> as the main ambitious combat direction.
- Full action route: commit strongly to the `MCO ADXP` ecosystem, `Valhalla Combat`, `SCAR`, dodge, lock-on, and related responsiveness layers together.

### Recommendation

- Start with the balanced modern route.
- Treat `Valhalla Combat` as the main gameplay-rule framework to judge here.
- Treat `MCO ADXP` as the main ambitious combat-style route to compare against a lighter baseline, not as an automatic lock.
- Keep `SCAR` as the already-tracked NPC-side support layer from `modlist-03.md` once the list is ready to judge richer enemy attack behavior in real encounters.
- If the list moves to `MCO`, carry forward the prerequisite/support context already recorded in `modlist-03.md` rather than treating `MCO` as a standalone toggle.

### Risks & Compatibility

- A full modern combat stack can pull the whole modlist toward a more aggressive action-game identity than the rest of the project actually wants.
- Overlapping combat layers become difficult to debug once dodge, lock-on, stagger, collision, NPC behavior, and animation changes all land together.
- A system that looks impressive in duels can still feel messy, tiring, or unfair in crowded real-world encounters.

### Acceptance Criteria

- The chosen combat direction clearly improves third-person readability, encounter flow, and player control over vanilla.
- The final system works coherently with the camera, targeting, dodge, impact, and animation decisions already recorded in the plan.
- Enemy behavior and player-side combat rules feel intentional rather than like a pile of overlapping modern-combat mods.

## Crosshair And Aiming Behavior

### Core Idea

- This subsection covers how third-person aiming should feel in play: when the crosshair should be trusted, how readable ranged and spell aiming are, and how much feedback is appropriate for the list's tone.
- It is the bridge between camera framing, target feedback, and combat usability, not a license to solve every interface problem through bigger widgets or more clutter.

### Options

- Disciplined aiming route: keep crosshair behavior restrained and readable.
- Selection-utility route: `Better Third Person Selection - BTPS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/64339>
- Feedback-supported route: `TrueHUD` as a limited clarity companion where it genuinely helps aiming readability.

### Recommendation

- Start with the disciplined aiming route.
- Treat camera framing as the baseline aiming context, because poor framing can masquerade as poor aiming behavior.
- Treat `BTPS` as a strong optional companion if real third-person play shows that selection and interaction reliability are part of the usability problem, but do not confuse object-selection fixes with combat-aiming fixes.
- Keep `TrueHUD` only as an optional clarity aid if testing shows it materially improves third-person targeting and aim readability.
- Defer visual styling and broader HUD philosophy to `modlist-06.md`.

### Risks & Compatibility

- It is easy to overcorrect weak third-person aiming with too much HUD noise instead of fixing camera and targeting behavior first.
- `BTPS` can help object interaction without answering combat-aiming problems.
- Crosshair tuning can quietly inherit assumptions from the heavier combat route and feel wrong if the project later chooses a more grounded direction.

### Acceptance Criteria

- Third-person aiming feels reliable enough that ranged and spell use remain practical in normal play.
- Third-person object interaction feels reliable enough that normal looting and activation do not constantly fight the camera perspective.
- Camera, targeting, and aiming each remain understandable as separate layers in the stack.

## Horse Camera And Mounted Controls

### Core Idea

- This subsection covers whether mounted play should feel like a supported third-person activity instead of a neglected edge case.
- The goal is mounted readability and control clarity, not a second giant gameplay framework.

### Options

- Broad mounted usability route: `Convenient Horses` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/9519>
- Restrained immersion route: `Immersive Horses` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/13402>
- Minimalist route: keep horse behavior close to vanilla and solve only obvious mounted usability pain points.

### Recommendation

- Start with a restrained mounted-support route rather than assuming horseback play needs a giant overhaul.
- Treat `Convenient Horses` as the main broad candidate to evaluate because it is the clearest all-in-one mounted usability reference point.
- Keep `Immersive Horses` as the grounded comparison if `Convenient Horses` feels too system-heavy or too opinionated for the final tone.
- Judge mounted play primarily on travel readability, steering confidence, and coherence with the chosen third-person camera philosophy rather than feature count alone.

### Risks & Compatibility

- Horse overhauls can reach well beyond camera and controls into followers, inventory, behavior, and immersion systems that may be outside the real need here.
- Mounted play can feel improved in calm travel but still break down during combat, in cramped spaces, or in rough terrain.
- A broad horse mod may solve several annoyances while quietly adding complexity the rest of the modlist has to carry forever.

### Acceptance Criteria

- Horseback travel feels meaningfully better in third person than vanilla in the exploration scenarios that actually matter.
- Mounted controls and camera behavior remain coherent with the chosen on-foot third-person direction.
- The final horse solution improves usability without introducing a sprawling side system that clashes with the rest of the list.
