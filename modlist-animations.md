# Animations and Movement

**MO2 Separators:** `Animations - Framework`, `Animations - Movement & Idles`, `Animations - Combat`, `Animations - Interactions & Traversal`, `Animations - Creatures`

## Pandora Framework And Prerequisites → `Animations - Framework`

### Baseline

- **Pandora Behaviour Engine Plus** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/133232)) — Single behavior-generation owner. Register as dedicated MO2 executable; keep generated output in a separate mod (e.g., `Pandora Output`). → `Animations - Framework`
- **Universal Behaviour Runtime - Auto Skeleton Patch** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/176724)) — Runtime skeleton patching for XPMSSE. Do NOT tick the Pandora XPMSSE patch checkbox; the runtime patch is more stable. → `Animations - Framework`
- **A-Pose Bug Fix - Universal Behavior Runtime** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/168903)) — Runtime A-pose interception and LE animation backward compatibility via JIT HKX conversion. Protects against animation-loading edge cases. → `Animations - Framework`

### Notes

- Validate the current Pandora install guide and requirements tab during setup.
- Skipping `Auto Skeleton Patch` with XPMSSE causes skeleton blending issues (casting, blocking, bow, freezing, CTDs).
- Leaving old generated output active or mixing generators makes debugging much harder.
- Validate generator baseline before adding large locomotion, combat, or creature packs.

## Skeleton And Behavior Prerequisites → `Animations - Framework`

### Baseline

- **XP32 Maximum Skeleton Special Extended - XPMSSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1988)) — Single skeleton baseline. → `Animations - Framework`
- **CBPC - Physics with Collisions** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/21224)) — Default first-pass physics for CBBE 3BA. → `Animations - Framework`
- **FSMP - Faster HDT-SMP** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/57339)) — SMP coverage alongside CBPC. Running both layers is standard for 3BA: CBPC handles broad collision, SMP handles finer mesh deformation. Required by OStim and some outfits/creature features. → `Animations - Framework`

### Alternatives

- **XPMSSE Fixed Scripts** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/44252)) — Companion script fix applied over XPMSSE. → `Animations - Framework`
- **ConsoleUtilSSE NG** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/76649)) — Keep available for script-dependent ecosystem pieces that still expect it. → `Animations - Framework`

### Notes

- Body, outfit, and animation mods can appear clean while disagreeing on skeleton assumptions underneath.
- Locking into SMP-first too early adds performance cost before the payoff is proven.

## Parkour, Climbing, And Free-Form Movement → `Animations - Interactions & Traversal`

### Baseline

- **SkyParkour v3 - Procedural Parkour and Climbing Framework (SPPF)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/132292)) — Procedural parkour and climbing: vault, climb, traverse environmental geometry. Most-endorsed parkour framework on Nexus (10,112 endorsements, v3.5.4). → `Animations - Interactions & Traversal`

### Alternatives

- **SkyClimb** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/97253)) — Climbing-first alternative built around EVG Animated Traversal. Narrower scope, but not cumulative with SkyParkour — pick one. → `Animations - Interactions & Traversal`
- **Discipline-first route** — Rely on vanilla climbing + TDM + sprint/jump only, no dedicated parkour framework.
- **Deferred high-commitment branch** — Adopt parkour only after the movement and animation stack is stable.

### Companion Candidates (evaluate after baseline is locked)

- **Beam Walking Assist** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/175511)) — Balance assist for narrow beams/ledges. Add only if real traversal testing shows beam-walking is annoying. → `Animations - Interactions & Traversal`
- **RaySense - Jumping over obstacles** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/175506)) — Contextual jump-over triggered by obstacle height. Complementary to SkyParkour, not competing. Limited community track record (901 endorsements). → `Animations - Interactions & Traversal`
- **RaySense - Edge Lookdown** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/175514)) — Look-down animation at cliff edges. Add only if edge-drop moments are a noticeable part of travel. → `Animations - Interactions & Traversal`
- **Inertia - Physical Movement Response System** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/172783)) — Body lean, momentum, weight for third-person movement. Evaluate after core movement baseline is locked. → `Animations - Interactions & Traversal`

### Notes

- SkyClimb and SkyParkour are competing traversal owners, not harmless companions.
- Parkour can expose navmesh gaps in older worldspace content — test against locked worldspace picks.
- Tune MCM to match survival/travel pacing so parkour doesn't trivialize early exploration.
- This subsection owns vertical/lateral movement; dodge, sprint, and camera belong in `modlist-third-person.md`.

## Locomotion → `Animations - Movement & Idles`

### Baseline

- **Leviathan Animations II - Male Idle Walk And Run** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/81463)) — Grounded third-person male locomotion. → `Animations - Movement & Idles`
- **Leviathan Animations II - Female Idle Walk And Run** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/80760)) — Grounded third-person female locomotion. → `Animations - Movement & Idles`

### Alternatives

- **Vanargand Animations II - Male Idle Walk And Run** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/99999)) — Main male-side alternative if Leviathan reads too heavy for the final travel tone. Pick one after real travel testing. → `Animations - Movement & Idles`
- **Conditional Armor Type Animations** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/51507)) — Armor-state variation. Add only after base locomotion feel is accepted. → `Animations - Movement & Idles`
- **EVG Animated Traversal** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63232)) — Belongs in the interaction/traversal bucket, not core locomotion. → `Animations - Movement & Idles`

### Notes

- A locomotion set can look good in isolation but feel heavy/floaty/theatrical during long play sessions.
- Pick one male locomotion owner after testing — mixing Leviathan and Vanargand II without a clear winner makes the stack feel stitched together.

## Idle Animations → `Animations - Movement & Idles`

### Baseline

Keep idle posture aligned with the Leviathan locomotion choice. Conservative route: let locomotion carry most of the movement identity.

### Alternatives

- **Goetia Animations - Female Idle Walk And Run** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/68005)) — Lighter female locomotion alternative if Leviathan reads too heavy. → `Animations - Movement & Idles`
- **Dynamic Female Weather Idles** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/98493)) — OAR-based idle replacer for female characters. Adds weather-aware idle animations: shivering in cold rain/snow, shielding eyes from bright sun, wiping sweat in heat. Pure visual flavor, no gameplay impact. Complements the survival/weather stack by making the player character react believably to the environment. → `Animations - Movement & Idles`
    - **Main file:** `Dynamic Female Weather Idles` (OAR condition-based). Download the main file; supports all weather mods.

- **Goetia Animations - Male Idle Walk And Run** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/68625)) — Broader locomotion alternate, not an idle-only pick. → `Animations - Movement & Idles`
- **Conditional Armor Type Animations** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/51507)) — Equipment-conditional variation; add only after base stance is accepted. → `Animations - Movement & Idles`

### Notes

- Separate idle packs can drift from the locomotion tone and make the stack feel stitched together.
- Female-focused idle mods can overcorrect into posed behavior that fights the grounded direction.

## Combat Animation Packs → `Animations - Combat`

### Baseline

- **Precision - Accurate Melee Collisions** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/72347)) — Accurate melee collision detection. → `Animations - Combat`
- **SCAR - Skyrim Combos AI Revolution** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/72014)) — NPC-side attack variety. Add after Precision baseline is proven. → `Animations - Combat`
- **Animated Armoury - OAR** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/103577)) — 12 new weapon types with attack animations. Requires **Animated Armoury - DAR Version** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/35978)) for meshes/collision/leveled lists. Install DAR first, then OAR overlay. Run Pandora after. → `Animations - Combat`
- **No Spinning Death Animation LITE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/33597)) — Replaces spinning death with simple ragdoll. Compatible with all packs. → `Animations - Combat`

### High-Commitment Route (evaluate later)

- **MCO ADXP - Modern Movement Combat Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/117115)) — Full MCO route. Treat as a system-level decision, not a standalone mod. → `Animations - Combat`
- **Animation Motion Revolution** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/50258)) and **Payload Interpreter** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/65089)) — Required MCO support mods. → `Animations - Combat`

### Support Mods (install per-package as needed)

- **IFrame Generator RE AE Support** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/82737)) — Iframe utility for advanced combat animation packs. Install only when a pack explicitly lists it. → `Animations - Combat`

### Notes

- Valhalla Combat belongs in `modlist-third-person.md`, not here — keep animation and gameplay-rule decisions separate.
- MCO can pull the list toward action-combat identity before the gameplay plan is settled. Evaluate deliberately.
- SCAR and attack-framework layering complicate debugging if the baseline animation stack is unstable.

## Non-Combat Interaction Animations → `Animations - Interactions & Traversal`

### Baseline

- **Immersive Interactions - Animated Actions** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/47670)) — Everyday contextual actions baseline. → `Animations - Interactions & Traversal`
- **Go to bed** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/4224)) — Sleep-focused companion for survival/camping/roleplay bed-use. → `Animations - Interactions & Traversal`

### Alternatives

- **Animated Interactions SKSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/143798)) — Higher-fidelity pickups, looting, doors. Can coexist with Immersive Interactions only if overlapping actions are deliberately disabled. → `Animations - Interactions & Traversal`
- **Take a Seat - New Sitting Animations** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/54193)) — OAR-based sitting variety for chairs/benches/beds. Add after Go to bed is proven. → `Animations - Interactions & Traversal`
- **EVG Animated Traversal** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63232)) — Curated expansion; must justify marker coverage and complexity. → `Animations - Interactions & Traversal`
- **Beginner Bard Animations** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/130776)) — Skill-based playing animations for Skyrim's Got Talent. Requires OAR. → `Animations - Interactions & Traversal`

### Notes

- Contextual interaction mods can become repetitive if triggers are too slow or too frequent.
- Animated Interactions SKSE overlaps enough with Immersive Interactions that it needs conscious tradeoff documentation, not silent stacking.
- Sleeping/interaction animations feel out of place if the list doesn't emphasize downtime/camping/taverns.

## Conditional Animation Systems → `Animations - Framework`

### Baseline

- **Open Animation Replacer** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/92109)) — Single condition framework owner for the animation stack. → `Animations - Framework`

### Alternatives

- **EVG Conditional Idles** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/34006)) — Let it prove condition-driven flavor value before layering additional situational packs. → `Animations - Framework`
- **Conditional Armor Type Animations** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/51507)) — Armor-state variation. Add only after locomotion/idle baseline is stable. → `Animations - Framework`
- **Unique Jarl Throne Sitting Animation (OAR)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174752)) — Per-Jarl sitting animation. Clean add-on once OAR baseline is proven. → `Animations - Framework`

### Notes

- Older DAR assumptions are legacy compatibility context, not the framework direction for Elder Wilds.
- Conditional systems become hard to reason about if multiple packs try to own similar states (injured, relaxed, weapon-drawn).
- Keep ownership disciplined: the more conditional logic added, the more important clear ownership becomes.

## Camera-Aware Animation Support → `Animations - Framework`

### Baseline

Keep perspective support minimal unless the list expects meaningful hybrid-perspective play. Broad camera framework decisions belong in `modlist-third-person.md`.

### Alternatives

- **Improved Camera SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/93962)) — Animation-side perspective foundation. Use only if hybrid perspective is a real part of the playstyle. → `Animations - Framework`
- **Comprehensive First Person Animation Overhaul - CFPAO** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/87169)) — Optional first-person polish. Only if testing shows meaningful time in first person. → `Animations - Framework`

### Notes

- First-person polish is wasted complexity if the list rarely leaves third person.
- Perspective mods can expose clipping, weapon-position, and camera-body mismatches not visible in third person.

## Creature Animations → `Animations - Creatures`

### Baseline

Curated wilderness-threat route. Prioritize memorable encounters over completeness.

- **New Creature Animation - Giant** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/83317)) — Shapes third-person combat readability. → `Animations - Creatures`
- **New Creature Animation - Werewolf** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/83806)) — Memorable encounter impact. → `Animations - Creatures`
- **New Creature Animation - Falmer** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/83572)) — Dungeon-focused follow-up once baseline direction is proven. → `Animations - Creatures`

### Notes

- Creature packs create more debugging overhead than humanoid packs — validate individually.
- Validate per-pack combat-animation support dependencies rather than assuming baseline-safe.
- Keep layer small and intentional; don't over-invest in rare/novelty types.

## Animation Conflict Management → `Animations - Framework`

Strict ownership route: one clear owner per layer, change one category at a time, regenerate, test, document.

### Owners

- **Behavior generation:** Pandora only.
- **Skeleton:** XPMSSE only.
- **Conditional selection:** Open Animation Replacer only.

### Workflow

- Keep Pandora output isolated in a dedicated MO2 output mod.
- Record which mods rely on generation, which on OAR, and which are pure presentation-side companions.
- Test changes in repeatable scenarios: town walking, idle downtime, dungeon corridors, uneven outdoor combat, interaction-heavy interiors, at least one creature encounter.

### Notes

- Animation conflicts often look like camera, combat, or skeleton bugs until ownership is checked.
- Mixed generated output hides whether a problem is from load order or stale behavior files.
- The more systems added in `Third-Person Gameplay`, the more expensive it is to clean up unresolved ownership mistakes from this section.

## Candidate TODO Additions

### Idles & Expressions → `Animations - Movement & Idles`

- `Poses, Actions and Musical` — idle/pose animation pack → `Animations - Movement & Idles`
- `More Tavern Idls - Immersive` — tavern idle animation additions → `Animations - Movement & Idles`
- `Headtracking and Emotions` — NPC headtracking and facial expression improvements → `Animations - Movement & Idles`

### Combat Animation → `Animations - Combat`

- `Smooth block animation` — block animation replacer → `Animations - Combat`
- `Weapon Trails` — weapon trail VFX → `Animations - Combat`
- `Killmove fixes` — killmove camera/animation fix → `Animations - Combat`
- `Goetia Animations - Magic Spell Casting` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/70204>) — magic cast animation pack → `Animations - Combat`
- `Diverse NPC Movesets` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/141893>) — gives NPCs varied combat stances, movesets, and animations based on their class, skills, and faction. Uses SCAR and OAR conditions. → `Animations - Combat`

### Movement & Parkour → `Animations - Interactions & Traversal`

- `Smooth Jump animation` — jump animation replacer → `Animations - Interactions & Traversal`
- `Just Shields on your back / Weapons on Back AiO` — shield/weapon placement (choose one) → `Animations - Interactions & Traversal`
- `Walk Speed Tuner` — movement speed adjustment → `Animations - Interactions & Traversal`
- `Dova Jump` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/125550>) — jump height/behavior tweak → `Animations - Interactions & Traversal`

### Creature Animation → `Animations - Creatures`

- `Troll - MCO` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/175250>) — troll MCO animation → `Animations - Creatures`
