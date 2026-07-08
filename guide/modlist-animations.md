# Animations and Movement

**MO2 Separators:** `Animations - Framework`, `Animations - Movement & Idles`, `Animations - Combat`, `Animations - Interactions & Traversal`, `Animations - Creatures`

All mods in this section belong to one of the five animation separators as noted per subsection.

---

## Pandora Framework And Prerequisites → separator: `Animations - Framework`

| Mod                                                                                                             | Type     | Notes                                                                                                   |
|-----------------------------------------------------------------------------------------------------------------|----------|---------------------------------------------------------------------------------------------------------|
| [Pandora Behaviour Engine Plus](https://www.nexusmods.com/skyrimspecialedition/mods/133232)                     | Baseline | Single behavior-generation owner. Register as MO2 executable; output to dedicated `Pandora Output` mod. |
| [Universal Behaviour Runtime — Auto Skeleton Patch](https://www.nexusmods.com/skyrimspecialedition/mods/176724) | Baseline | Runtime skeleton patching for XPMSSE. Do NOT tick Pandora XPMSSE patch checkbox.                        |
| [A-Pose Bug Fix — Universal Behavior Runtime](https://www.nexusmods.com/skyrimspecialedition/mods/168903)       | Baseline | Runtime A-pose interception and LE animation backward compatibility.                                    |

### Notes

- Validate current Pandora install guide and requirements tab during setup.
- Leaving old generated output active or mixing generators makes debugging much harder.

---

## Skeleton And Behavior Prerequisites → separator: `Animations - Framework`

| Mod                                                                                                         | Type        | Notes                                                            |
|-------------------------------------------------------------------------------------------------------------|-------------|------------------------------------------------------------------|
| [XP32 Maximum Skeleton Special Extended — XPMSSE](https://www.nexusmods.com/skyrimspecialedition/mods/1988) | Baseline    | Single skeleton baseline.                                        |
| [CBPC — Physics with Collisions](https://www.nexusmods.com/skyrimspecialedition/mods/21224)                 | Baseline    | Default first-pass physics for CBBE 3BA.                         |
| [FSMP — Faster HDT-SMP](https://www.nexusmods.com/skyrimspecialedition/mods/57339)                          | Baseline    | SMP coverage alongside CBPC. Required by OStim and some outfits. |
| [XPMSSE Fixed Scripts](https://www.nexusmods.com/skyrimspecialedition/mods/44252)                           | Alternative | Companion script fix over XPMSSE.                                |
| [ConsoleUtilSSE NG](https://www.nexusmods.com/skyrimspecialedition/mods/76649)                              | Alternative | Keep available for script-dependent pieces.                      |

---

## Parkour, Climbing, And Free-Form Movement → separator: `Animations - Interactions & Traversal`

| Mod                                                                                                                            | Type        | Notes                                                                                     |
|--------------------------------------------------------------------------------------------------------------------------------|-------------|-------------------------------------------------------------------------------------------|
| [SkyParkour v3 - Procedural Parkour and Climbing Framework (SPPF)](https://www.nexusmods.com/skyrimspecialedition/mods/132292) | Baseline    | Vault, climb, traverse environmental geometry. 10,112 endorsements.                       |
| [EVG CLAMBER - Slope Animations](https://www.nexusmods.com/skyrimspecialedition/mods/114753)                                   | Baseline    | Character posture adjusts dynamically on slopes and stairs. Complements SkyParkour.       |
| [Feminine EVG Clamber Stair Animations](https://www.nexusmods.com/skyrimspecialedition/mods/148067)                            | Baseline    | Female-specific stair animations for EVG CLAMBER.                                         |
| [SkyClimb](https://www.nexusmods.com/skyrimspecialedition/mods/97253)                                                          | Alternative | Climbing-first alternative built around EVGAT. Pick one (not cumulative with SkyParkour). |
| Discipline-first route                                                                                                         | Alternative | Vanilla climbing + TDM + sprint/jump only.                                                |

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

| Mod                                                                                                                                                         | Type        | Notes                                                              |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|--------------------------------------------------------------------|
| [Leviathan Animations II - Male Idle Walk And Run](https://www.nexusmods.com/skyrimspecialedition/mods/81463)                                               | Baseline    | Male locomotion.                                                   |
| [Leviathan Animations II - Female Idle Walk And Run](https://www.nexusmods.com/skyrimspecialedition/mods/80760)                                             | Baseline    | Female locomotion.                                                 |
| [Vanargand Animations II - Male Idle Walk And Run](https://www.nexusmods.com/skyrimspecialedition/mods/99999)                                               | Alternative | Main male alternative.                                             |
| [Vanargand Animations II - Female Idle Walk And Run](https://www.nexusmods.com/skyrimspecialedition/mods/100000)                                             | Alternative | Main female alternative.                                           |
| [NPC Animation Remix (OAR)](https://www.nexusmods.com/skyrimspecialedition/mods/63471)                                                                      | Alternative | NPC-specific movement and idle animation remix.                    |
| [Arm Movement Animations (OAR)](https://www.nexusmods.com/skyrimspecialedition/mods/62849)                                                                  | Alternative | Hand and arm idle animation variations.                            |
| [Conditional Armor Type Animations](https://www.nexusmods.com/skyrimspecialedition/mods/51507)                                                              | Alternative | Add after base locomotion is accepted.                             |
| [Dynamic Female Weather Idles](https://www.nexusmods.com/skyrimspecialedition/mods/98493)                                                                   | Alternative | OAR-based weather-aware idles. Complements survival/weather stack. |
| [EVG Animated Traversal](https://www.nexusmods.com/skyrimspecialedition/mods/63232)                                                                         | Alternative | Belongs in interaction/traversal bucket.                           |
| [Goetia Animations](https://www.nexusmods.com/skyrimspecialedition/mods/68005) — Female / [Male](https://www.nexusmods.com/skyrimspecialedition/mods/68625) | Alternative | Animation pack for both genders.                                   |

---

## Combat Animation Packs → separator: `Animations - Combat`

| Mod                                                                                                                                                                         | Type            | Notes                                                                                                                                      |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------|
| [Precision - Accurate Melee Collisions](https://www.nexusmods.com/skyrimspecialedition/mods/72347)                                                                          | Baseline        | Accurate melee collision detection.                                                                                                        |
| [SCAR - Skyrim Combos AI Revolution](https://www.nexusmods.com/skyrimspecialedition/mods/72014)                                                                             | Baseline        | Add after Precision is proven.                                                                                                             |
| [Animated Armoury - OAR](https://www.nexusmods.com/skyrimspecialedition/mods/103577)                                                                                        | Baseline        | 12 new weapon types. Requires [DAR Version](https://www.nexusmods.com/skyrimspecialedition/mods/35978) for meshes/collision/leveled lists. |
| [No Spinning Death Animation LITE](https://www.nexusmods.com/skyrimspecialedition/mods/33597)                                                                               | Baseline        | Prevents spinning death animations.                                                                                                        |
| [MCO ADXP - Modern Movement Combat Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/117115)                                                                    | High-Commitment | System-level decision. Evaluate later.                                                                                                     |
| [Animation Motion Revolution](https://www.nexusmods.com/skyrimspecialedition/mods/50258) + [Payload Interpreter](https://www.nexusmods.com/skyrimspecialedition/mods/65089) | High-Commitment | Required MCO support.                                                                                                                      |
| [IFrame Generator RE AE Support](https://www.nexusmods.com/skyrimspecialedition/mods/82737)                                                                                 | Support         | Install only when a pack explicitly lists it.                             |
| [BFCO - Attack Behavior Framework](https://www.nexusmods.com/skyrimspecialedition/mods/117052)                                                                             | High-Commitment | System-level framework competing with MCO/ADXP. Mutually exclusive.      |
| [Elden Ring DLC Light Greatsword Moveset](https://www.nexusmods.com/skyrimspecialedition/mods/122800)                                                                      | Alternative     | Requires MCO or BFCO framework. 1H and 2H moveset.                       |
| [Vindictus Fiona Moveset BFCO](https://www.nexusmods.com/skyrimspecialedition/mods/183971)                                                                                 | Alternative     | BFCO-specific moveset. Requires BFCO framework.                          |
| [Vindictus Delia Animation Remake](https://www.nexusmods.com/skyrimspecialedition/mods/104717)                                                                             | Alternative     | Combat animation pack.                                                    |
| [MCO / BFCO / SCAR WoLong QuarterStaffs](https://www.nexusmods.com/skyrimspecialedition/mods/128749)                                                                       | Alternative     | Works with MCO, BFCO, or SCAR. Quarterstaff moveset.                     |
| [Dynamic Killmove - Pike](https://www.nexusmods.com/skyrimspecialedition/mods/103707)                                                                                      | Alternative     | Killmove animation for pike/spear weapons.                                |
| [For Honor in Skyrim](https://www.nexusmods.com/skyrimspecialedition/mods/151478)                                                                                          | High-Commitment | Comprehensive combat overhaul. Competing with MCO/BFCO and Valhalla.     |


---

## ADXP/MCO Install Workflow Reference → separator: `Animations - Combat`

External tutorial baseline: [Capt. Panda — STEP BY STEP GUIDE on How to Install ADXP MCO for Skyrim SE and AE (MO2)](https://www.youtube.com/watch?v=YeS6Pwnv3b8). Captures the canonical ADXP/MCO install flow; references below use the Elder Wilds stack (Pandora for behaviour generation, OAR for conditional selection).

### Tutorial Mod List — Elder Wilds Status

| Mod                                                                | Tutorial role             | Elder Wilds status                                                                                         |
|--------------------------------------------------------------------|---------------------------|------------------------------------------------------------------------------------------------------------|
| ADXP / MCO — Modern Movement Combat Overhaul (`modding-guild.com`) | Core combat overhaul      | Listed in `Combat Animation Packs` as High-Commitment; adoption is a system-level decision, not a drop-in. |
| Animation Motion Revolution (AMR)                                  | MCO motion support        | Listed in `Combat Animation Packs`.                                                                        |
| Payload Interpreter                                                | AMR dependency            | Listed in `Combat Animation Packs`.                                                                        |
| Separate Power Attacks (reza9892, AE build)                        | Power-attack input scheme | Not yet adopted. Nexus page requires verification before listing.                                          |
| ADXP/MCO — Valhalla Nordic Animation Reworked (Very Mingming)      | Recommended moveset       | Not yet adopted. Nexus page requires verification before listing.                                          |
| Elden Ring Inspired Movesets (Black)                               | Recommended moveset       | Not yet adopted. Nexus page requires verification before listing.                                          |

### Install Flow (Pandora/OAR)

1. Download ADXP/MCO, AMR, and Payload Interpreter from their canonical pages; match SE vs AE builds to the Skyrim build (Elder Wilds targets AE 1.6.1170).
2. In MO2, group these under the `Animations - Combat` separator (3-dot menu → Create separator). Order between the three is not load-order-sensitive.
3. Install ADXP/MCO, Animation Motion Revolution, and Payload Interpreter as separate MO2 mods.
4. Open Animation Replacer covers conditional selection across the whole stack (→ `Conditional Animation Systems`).
5. Optionally install a moveset (Very Mingming's Valhalla Nordic, or Black's Elden Ring Inspired) under `Animations - Combat` — only after its Nexus page has been verified.
6. Create a dedicated empty MO2 mod named `Pandora Output` to receive generated behaviour files (→ `Pandora Framework And Prerequisites`).
7. Configure Pandora to write into `Pandora Output` (set output target to that empty mod, not to overwrite).
8. In Pandora, tick ADXP/MCO, Payload Interpreter, and any power-attack mod once adopted. Tick every other behaviour-requiring mod present in the load order.
9. Run Pandora: Update Engine → Launch. Keep antivirus off during generation; re-enable afterwards.
10. On generation error, exit Pandora, reopen, repeat Update Engine → Launch.
11. Launch Skyrim and verify: separate power-attack input and weapon-sheathe behaviour intact.

### Risks & Compatibility

- The tutorial's `Separate Power Attacks` choice overrides one-click/`custom OCPA`. Third-person gamepad parity depends on the bound input (see → `Third-Person Gameplay`) and has not yet been evaluated.
- The IFrame Generator entry in `Combat Animation Packs` is only relevant when a pack explicitly lists it — do not install speculatively.

### Acceptance Criteria

- ADXP/MCO, AMR, and Payload Interpreter install cleanly under `Animations - Combat`.
- Pandora generation completes with ADXP/MCO and Payload Interpreter ticked; output lands in `Pandora Output`.
- Power-attack and weapon-sheathe inputs work end-to-end in third-person gamepad, validated against → `Third-Person Gameplay`.
- Any added moveset or power-attack mod has its Nexus page verified before being formally added to `Combat Animation Packs`.

### Research Tasks

- Verify Nexus pages for `Separate Power Attacks` (reza9892), `ADXP/MCO — Valhalla Nordic Animation Reworked` (Very Mingming), and `Elden Ring Inspired Movesets` (Black). The tutorial's description links are truncated and these mods are not currently in the modlist.
- Cross-check `r/skyrimmods` signal for ADXP/MCO on AE 1.6.1170 with Pandora before locking or removing the High-Commitment stamp.
- Confirm the `Separate Power Attacks` input scheme's behaviour in third-person gamepad (potential collision with dodge or block inputs) before adoption.

---

## Non-Combat Interaction Animations → separator: `Animations - Interactions & Traversal`

| Mod                                                                                                                                   | Type        | Notes                                                              |
|---------------------------------------------------------------------------------------------------------------------------------------|-------------|--------------------------------------------------------------------|
| [Immersive Interactions - Animated Actions](https://www.nexusmods.com/skyrimspecialedition/mods/47670)                                | Baseline    | Core interaction animation framework.                              |
| [Go to bed](https://www.nexusmods.com/skyrimspecialedition/mods/4224)                                                                 | Baseline    | Bed interaction animations.                                        |
| [Animated Interactions SKSE](https://www.nexusmods.com/skyrimspecialedition/mods/143798)                                              | Alternative | Can coexist only if overlapping actions are deliberately disabled. |
| [Take a Seat](https://www.nexusmods.com/skyrimspecialedition/mods/54193)                                                              | Alternative | Sitting interaction animations.                                    |
| [Immersive Hunting Animations](https://www.nexusmods.com/skyrimspecialedition/mods/96961)                                             | Alternative | Hunting-related animations.                                        |
| [Immersive Carcass Carrying](https://www.nexusmods.com/skyrimspecialedition/mods/99867)                                               | Alternative | Carcass carrying animations.                                       |
| [Flute Animation Fix](https://www.nexusmods.com/skyrimspecialedition/mods/69609)                                                      | Alternative | Flute playing animation fix.                                       |
| [Witcher Flute](https://www.nexusmods.com/skyrimspecialedition/mods/144660)                                                           | Alternative | Witcher-style flute animation.                                     |
| [EVG Animated Traversal](https://www.nexusmods.com/skyrimspecialedition/mods/63232)                                                   | Alternative | Environment traversal animations.                                  |
| [Beginner Bard Animations](https://www.nexusmods.com/skyrimspecialedition/mods/130776)                                                | Alternative | For Skyrim's Got Talent.                                           |
| [Immersive Interactions - Eating ingredients and apply poison animations](https://www.nexusmods.com/skyrimspecialedition/mods/117983) | Add-on      | Eating and poison-apply animations for II.                         |
| [Dynamic Crafting Animations](https://www.nexusmods.com/skyrimspecialedition/mods/116422)                                             | Add-on      | Crafting-station interaction animations.                           |
| [Dynamic Looting and Harvesting Animations](https://www.nexusmods.com/skyrimspecialedition/mods/114547)                               | Add-on      | Looting and harvesting interaction animations.                     |
| [Dynamic Horse Petting Animations for Immersive Interactions](https://www.nexusmods.com/skyrimspecialedition/mods/111767)             | Add-on      | Horse interaction animations for II.                               |
| [HSF Male Furniture Idles](https://www.nexusmods.com/skyrimspecialedition/mods/155228)                                                   | Alternative | Male idle animations for furniture interactions.                    |
| [Modern Female Sitting Animations Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/85599)                                   | Alternative | Female sitting animation replacements.                             |
| [Paired Animation Improvements](https://www.nexusmods.com/skyrimspecialedition/mods/99621)                                               | Alternative | Improved paired NPC interaction animations.                        |

---

## Conditional Animation Systems → separator: `Animations - Framework`

| Mod                                                                                                      | Type        | Notes                                 |
|----------------------------------------------------------------------------------------------------------|-------------|---------------------------------------|
| [Open Animation Replacer](https://www.nexusmods.com/skyrimspecialedition/mods/92109)                     | Baseline    | Single condition framework owner.     |
| [EVG Conditional Idles](https://www.nexusmods.com/skyrimspecialedition/mods/34006)                       | Alternative | Idle animation conditional framework. |
| [Conditional Armor Type Animations](https://www.nexusmods.com/skyrimspecialedition/mods/51507)           | Alternative | Armor-type-based animation switching. |
| [Unique Jarl Throne Sitting Animation (OAR)](https://www.nexusmods.com/skyrimspecialedition/mods/174752) | Alternative | Throne sitting animation for Jarls.   |
| [Malignis Animations - Conditions](https://www.nexusmods.com/skyrimspecialedition/mods/132028)              | Alternative | OAR condition pack for animation variety. Personal favourite. |

---

## Camera-Aware Animation Support → separator: `Animations - Framework`

| Mod                                                                                                                | Notes                                           |
|--------------------------------------------------------------------------------------------------------------------|-------------------------------------------------|
| [Improved Camera SE](https://www.nexusmods.com/skyrimspecialedition/mods/93962)                                    | Only if hybrid perspective is a real playstyle. |
| [Comprehensive First Person Animation Overhaul - CFPAO](https://www.nexusmods.com/skyrimspecialedition/mods/87169) | Optional first-person polish.                   |

---

## Equipment Display Framework → separator: `Animations - Framework`

Equipment visibility, sheathing positions, and draw-sheathe animations. Builds on XPMSSE for third-person gamepad parity.

| Mod                                                                                                                  | Type        | Notes                                                                                           |
|----------------------------------------------------------------------------------------------------------------------|-------------|-------------------------------------------------------------------------------------------------|
| [Immersive Equipment Displays (IED)](https://www.nexusmods.com/skyrimspecialedition/mods/62001)                      | Baseline    | Equipment visibility and positioning framework.                                                 |
| [Simple Dual Sheath](https://www.nexusmods.com/skyrimspecialedition/mods/50049)                                      | Baseline    | Dual-sheathed weapon support. Requires IED.                                                     |
| [Weapon Styles - Draw-Sheathe animations for IED](https://www.nexusmods.com/skyrimspecialedition/mods/85085)         | Addon       | Conditional draw/sheathe animations per weapon type. Requires IED.                              |
| [Walking Stick - Walk with staves or polearms - IED-OAR](https://www.nexusmods.com/skyrimspecialedition/mods/120966) | Addon       | Staff/polearm walking animation support. Requires IED.                                          |
| [Ready to Play IED](https://www.nexusmods.com/skyrimspecialedition/mods/158531)                                      | Alternative | Pre-configured IED preset. Evaluate only if manual IED configuration proves too time-consuming. |

---

## Creature Animations → separator: `Animations - Creatures`

| Mod                                                                                            | Notes                                          |
|------------------------------------------------------------------------------------------------|------------------------------------------------|
| [New Creature Animation - Giant](https://www.nexusmods.com/skyrimspecialedition/mods/83317)    | Giant animation replacer.                      |
| [New Creature Animation - Werewolf](https://www.nexusmods.com/skyrimspecialedition/mods/83806) | Werewolf animation replacer.                   |
| [New Creature Animation - Falmer](https://www.nexusmods.com/skyrimspecialedition/mods/83572)   | Falmer animation replacer.                     |
| [DCA - Dragon Combat Animations](https://www.nexusmods.com/skyrimspecialedition/mods/123113)   | Dragon combat animation replacer.              |
| [Draugr Greatsword Animation](https://www.nexusmods.com/skyrimspecialedition/mods/114721)      | Greatsword-wielding draugr animation replacer. |

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
