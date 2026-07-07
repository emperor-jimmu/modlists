# Animations and Movement

**MO2 Separators:** `Animations - Framework`, `Animations - Movement & Idles`, `Animations - Combat`, `Animations - Interactions & Traversal`, `Animations - Creatures`

All mods in this section belong to one of the five animation separators as noted per subsection.

---

## Pandora Framework And Prerequisites → separator: `Animations - Framework`

### Baseline
- **Pandora Behaviour Engine Plus** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/133232)) — Single behavior-generation owner. Register as MO2 executable; output to dedicated `Pandora Output` mod.
- **Universal Behaviour Runtime - Auto Skeleton Patch** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/176724)) — Runtime skeleton patching for XPMSSE. Do NOT tick Pandora XPMSSE patch checkbox.
- **A-Pose Bug Fix - Universal Behavior Runtime** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/168903)) — Runtime A-pose interception and LE animation backward compatibility.

### Notes
- Validate current Pandora install guide and requirements tab during setup.
- Leaving old generated output active or mixing generators makes debugging much harder.

---

## Skeleton And Behavior Prerequisites → separator: `Animations - Framework`

### Baseline
- **XP32 Maximum Skeleton Special Extended - XPMSSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1988)) — Single skeleton baseline.
- **CBPC - Physics with Collisions** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/21224)) — Default first-pass physics for CBBE 3BA.
- **FSMP - Faster HDT-SMP** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/57339)) — SMP coverage alongside CBPC. Required by OStim and some outfits.

### Alternatives
- **XPMSSE Fixed Scripts** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/44252)) — Companion script fix over XPMSSE.
- **ConsoleUtilSSE NG** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/76649)) — Keep available for script-dependent pieces.

---

## Parkour, Climbing, And Free-Form Movement → separator: `Animations - Interactions & Traversal`

### Baseline
- **SkyParkour v3 - Procedural Parkour and Climbing Framework (SPPF)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/132292)) — Vault, climb, traverse environmental geometry. 10,112 endorsements.

### Alternatives
- **SkyClimb** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/97253)) — Climbing-first alternative built around EVGAT. Pick one (not cumulative with SkyParkour).
- **Discipline-first route** — Vanilla climbing + TDM + sprint/jump only.

### Companion Candidates (evaluate after baseline is locked)
- **Beam Walking Assist** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/175511))
- **RaySense - Jumping over obstacles** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/175506))
- **RaySense - Edge Lookdown** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/175514))
- **Inertia - Physical Movement Response System** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/172783))

### Notes
- SkyClimb and SkyParkour are competing — not harmless companions.
- Parkour can expose navmesh gaps in older worldspaces.
- This subsection owns vertical/lateral movement; dodge, sprint, and camera belong in → `Third-Person`.

---

## Locomotion → separator: `Animations - Movement & Idles`

### Baseline
- **Leviathan Animations II - Male Idle Walk And Run** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/81463))
- **Leviathan Animations II - Female Idle Walk And Run** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/80760))

### Alternatives
- **Vanargand Animations II - Male Idle Walk And Run** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/99999)) — Main male alternative.
- **Conditional Armor Type Animations** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/51507)) — Add after base locomotion is accepted.
- **Dynamic Female Weather Idles** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/98493)) — OAR-based weather-aware idles. Complements survival/weather stack.
- **EVG Animated Traversal** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63232)) — Belongs in interaction/traversal bucket.
- **Goetia Animations** — Female ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/68005)) / Male ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/68625))

---

## Combat Animation Packs → separator: `Animations - Combat`

### Baseline
- **Precision - Accurate Melee Collisions** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/72347))
- **SCAR - Skyrim Combos AI Revolution** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/72014)) — Add after Precision is proven.
- **Animated Armoury - OAR** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/103577)) — 12 new weapon types. Requires **Animated Armoury - DAR Version** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/35978)) for meshes/collision/leveled lists. Install DAR first, then OAR overlay. Run Pandora after.
- **No Spinning Death Animation LITE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/33597))

### High-Commitment Route (evaluate later)
- **MCO ADXP - Modern Movement Combat Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/117115)) — System-level decision.
- **Animation Motion Revolution** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/50258)) and **Payload Interpreter** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/65089)) — Required MCO support.

### Support
- **IFrame Generator RE AE Support** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/82737)) — Install only when a pack explicitly lists it.

---

## Non-Combat Interaction Animations → separator: `Animations - Interactions & Traversal`

### Baseline
- **Immersive Interactions - Animated Actions** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/47670))
- **Go to bed** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/4224))

### Alternatives
- **Animated Interactions SKSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/143798)) — Can coexist only if overlapping actions are deliberately disabled.
- **Take a Seat** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/54193))
- **Immersive Hunting Animations** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/96961))
- **Immersive Carcass Carrying** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/99867))
- **Flute Animation Fix** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/69609))
- **Witcher Flute** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/144660))
- **EVG Animated Traversal** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/63232))
- **Beginner Bard Animations** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/130776)) — For Skyrim's Got Talent.

---

## Conditional Animation Systems → separator: `Animations - Framework`

### Baseline
- **Open Animation Replacer** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/92109)) — Single condition framework owner.

### Alternatives
- **EVG Conditional Idles** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/34006))
- **Conditional Armor Type Animations** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/51507))
- **Unique Jarl Throne Sitting Animation (OAR)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174752))

---

## Camera-Aware Animation Support → separator: `Animations - Framework`

- **Improved Camera SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/93962)) — Only if hybrid perspective is a real playstyle.
- **Comprehensive First Person Animation Overhaul - CFPAO** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/87169)) — Optional first-person polish.

---

## Creature Animations → separator: `Animations - Creatures`

### Baseline
- **New Creature Animation - Giant** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/83317))
- **New Creature Animation - Werewolf** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/83806))
- **New Creature Animation - Falmer** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/83572))

### Notes
- Validate per-pack combat-animation support individually. Keep layer small and intentional.

---

## Animation Conflict Management → separator: `Animations - Framework`

Strict ownership: one clear owner per layer.

### Owners
- **Behavior generation:** Pandora only
- **Skeleton:** XPMSSE only
- **Conditional selection:** Open Animation Replacer only

### Workflow
- Keep Pandora output isolated in dedicated MO2 output mod.
- Record which mods rely on generation, which on OAR, and which are pure presentation.
- Test in repeatable scenarios: town walking, idle downtime, dungeon corridors, uneven outdoor combat, interaction-heavy interiors, creature encounters.

### Notes
- Animation conflicts look like camera, combat, or skeleton bugs until ownership is checked.
- Mixed generated output hides whether a problem is from load order or stale behavior files.

---

## Candidate TODO Additions

### Idles & Expressions → separator: `Animations - Movement & Idles`
- `Poses, Actions and Musical`
- `More Tavern Idls - Immersive`
- `Headtracking and Emotions`

### Combat Animation → separator: `Animations - Combat`
- `Smooth block animation`
- `Weapon Trails`
- `Killmove fixes`
- `Goetia Animations - Magic Spell Casting` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/70204))
- `Diverse NPC Movesets` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/141893)) — Varied combat stances via SCAR/OAR.

### Movement & Parkour → separator: `Animations - Interactions & Traversal`
- `Smooth Jump animation`
- `Just Shields on your back / Weapons on Back AiO`
- `Walk Speed Tuner`
- `Dova Jump` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/125550))

### Creature Animation → separator: `Animations - Creatures`
- `Troll - MCO` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/175250))
