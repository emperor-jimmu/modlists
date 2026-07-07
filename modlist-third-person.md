# Third-Person Gameplay

**MO2 Separators:** `Third-Person - Camera & Movement`, `Third-Person - Combat & Targeting`, `Third-Person - Mounted`

## Third-Person Camera Framework → `Third-Person - Camera & Movement`

### Baseline

- **SmoothCam** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/41252)) — Main third-person camera framework. → `Third-Person - Camera & Movement`

### Alternatives

- **Customizable Camera** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/12201)) — Leaner fallback if SmoothCam feels too elaborate. → `Third-Person - Camera & Movement`
- **True Directional Movement** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/51614)) — Governs movement and targeting, not the camera framework itself. → `Third-Person - Camera & Movement`
- **Improved Camera SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/93962)) — Perspective support, not the main third-person framework. → `Third-Person - Camera & Movement`

### Notes

- A good preset can hide weak underlying camera behavior — judge the framework, not the preset.
- Over-tuned cameras look impressive in clips but become tiring in normal play.
- Keep framework, targeting, movement, and perspective decisions separate.

## Camera Presets And Shoulder Switching → `Third-Person - Camera & Movement`

### Baseline

Restrained centered-to-light-offset baseline. Shoulder switching is a support feature for visibility problems, not the main camera identity.

### Notes

- Aggressive over-the-shoulder framing creates visibility issues in interiors, dungeons, and melee encounters.
- Shoulder switching that feels mandatory too often is a symptom of poor baseline framing.
- Community presets are reference material, not baseline recommendations — judge with real play context.

## True Directional Movement → `Third-Person - Camera & Movement`

### Baseline

- **True Directional Movement - Modernized Third Person Gameplay** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/51614)) — Modern 360-degree character-relative movement. → `Third-Person - Camera & Movement`

### Notes

- Core value: freer facing, cleaner traversal, better animation-stack alignment.
- Do not let target lock, boss framing, or crosshair behavior define this decision yet.
- Feels great in open traversal but may feel awkward in tight interiors, stairs, or precision positioning.

## Target Lock And Targeting Behavior → `Third-Person - Combat & Targeting`

### Baseline

- **TDM** as the targeting-behavior owner. Keep lock-on restrained — it's an optional combat-readability tool, not the permanent default. → `Third-Person - Combat & Targeting`
- **TrueHUD** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/62775)) — Optional feedback companion for target-state clarity. Add only if testing shows it materially helps. → `Third-Person - Combat & Targeting`

### Notes

- Overusing lock-on makes combat feel narrower and more repetitive.
- Weak target selection/switching makes even a good camera and movement baseline feel unreliable.
- TrueHUD can create the illusion of a solved targeting system when the underlying behavior is still awkward.

## Dodge, Sprint, And Movement Responsiveness → `Third-Person - Camera & Movement`

### Baseline

- **TK Dodge RE - Script Free** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/56956)) — First dodge candidate. Tactical repositioning tool, not the center of combat pacing. → `Third-Person - Camera & Movement`

### Alternatives

- **TK Dodge SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/15309)) — Legacy fallback reference only. → `Third-Person - Camera & Movement`
- **Dodge for all** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174544)) — Newer multi-author option (v1.1.2, May 2026). Too early for baseline — low community signal. Revisit when it has a real track record. → `Third-Person - Camera & Movement`

### Notes

- A dodge system can make combat feel twitchier and less grounded than intended.
- If dodge is too strong, it trivializes spacing and undermines other readability goals.
- The dodge ecosystem has overlapping variants — pick one owner and don't stack.

## Hit Reactions, Stagger, And Impact Feedback → `Third-Person - Combat & Targeting`

### Baseline

- **Valhalla Combat** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/64741)) — Main gameplay-side comparison point for hit feedback and stagger. → `Third-Person - Combat & Targeting`
- **Precision** (from `modlist-animations.md`) — Adjacent support layer for contact feel, not a full impact-readability answer.

### Notes

- Too much stagger flattens combat pacing; too little leaves even good animations unsatisfying.
- Camera, animation timing, collision, and gameplay rules all affect impact feel — ownership blurs quickly.
- Keep scoped to impact feel; deeper combat-rule decisions belong in the next subsection.

## Third-Person Combat Systems → `Third-Person - Combat & Targeting`

### Baseline

Balanced modern route: Valhalla Combat as the gameplay-rules framework. Keep MCO ADXP as the ambitious alternative to compare against, not an automatic lock.

- **Valhalla Combat** — Gameplay-rule framework. → `Third-Person - Combat & Targeting`
- **MCO ADXP - Modern Movement Combat Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/117115)) — Ambitious alternative. Re-evaluate deliberately. → `Third-Person - Combat & Targeting`
- **SCAR** (from `modlist-animations.md`) — NPC-side attack variety, tracked from the animation section.

### MCO Route Support (only if MCO is chosen)

- **Knockback SKSE (For BFCO and MCO Users)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171277)) — Physics-based knockback for power attacks. → `Third-Person - Combat & Targeting`

### Alternatives

- **RaySense - Cover Animation** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/175504)) — Wall-flatten animation during third-person sneaking. Add only if stealth is a meaningful playstyle. → `Third-Person - Combat & Targeting`
- **Fire Ignites Arrows (and Bolts)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/118544)) — Adds arrow ignition logic. Arrows fired near fire sources (torches, campfires, fire spells) ignite and deal fire damage. Works with crossbows. Third-person visible feedback. → `Third-Person - Combat & Targeting`
- **Poisoned Arrows and Bolts** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/123585)) — Adds poison application logic for arrows and bolts. Player can dip ammunition into poison sources for temporary poison effects. Third-person visible feedback. Complements Fire Ignites Arrows. → `Third-Person - Combat & Targeting`

### Advanced Collision Framework (Optional)

- **Variadic Collision Dynamics** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/183892)) — SKSE plugin for runtime collision-capsule adjustments. Defines different collision presets per actor state (player, NPC, guard, camera, transformations). Affects third-person gameplay feel — tighter collisions for interiors, broader for combat, camera-aware radius. → `Third-Person - Camera & Movement`
    - **Variadic Collision Dynamics - Resources** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/184110)) — Official preset pack with ready-to-use JSON configs for player, NPC, guard, camera, and creature presets. Extremely recommended alongside the base plugin. JSON-only, no ESP. → `Third-Person - Camera & Movement`

### Notes

- A full modern combat stack can pull the list toward aggressive action-game identity before the project is settled on tone.
- Overlapping combat layers become hard to debug once dodge, lock-on, stagger, collision, NPC behavior, and animation changes all land together.
- Carry forward MCO prerequisite/support context from `modlist-animations.md` rather than treating it as a standalone toggle.

## Crosshair And Aiming Behavior → `Third-Person - Combat & Targeting`

### Baseline

Disciplined aiming route: keep crosshair behavior restrained and readable. Camera framing is the baseline aiming context — poor framing masquerades as poor aiming.

### Alternatives

- **Better Third Person Selection - BTPS** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/64339)) — Optional companion if object-selection/interaction reliability is part of the usability problem. Not a combat-aiming fix. → `Third-Person - Combat & Targeting`
- **TrueHUD** — Optional clarity aid for aiming readability. Only if testing shows material improvement. → `Third-Person - Combat & Targeting`
- **Ricochet - Arrow Physics Framework** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/160603)) — Arrow ricochet/deflection physics. Lock in only if archery is a meaningful part of the combat style. → `Third-Person - Combat & Targeting`

### Notes

- Don't overcorrect weak aiming with HUD noise instead of fixing camera and targeting first.
- Crosshair tuning can inherit assumptions from the heavier combat route and feel wrong if the project later chooses a more grounded direction.
- Visual styling and broader HUD philosophy belong in `modlist-ui.md`.

## Horse Camera And Mounted Controls → `Third-Person - Mounted`

### Baseline

- **Press H to Horse** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/81195)) — Actively maintained modern horse overhaul (TateTaylorOH, updated May 2026). Few vanilla record edits, designed for compatibility. → `Third-Person - Mounted`
- **Horses Simply Turn Better** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/57790)) — Free add-on regardless of overhaul choice. Sharpens turning radius, designed for TDM. → `Third-Person - Mounted`

### Alternatives

- **Convenient Horses** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/9519)) — Broad overhaul but last updated Jan 2022 (3.5yr stale). No longer actively maintained. → `Third-Person - Mounted`
- **Simplest Horses (and other mounts)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/54225)) — Lightweight drop-in if full overhaul feels like scope creep. SPID+MCM, very compatible. → `Third-Person - Mounted`

### Notes

- Judge mounted play on travel readability, steering confidence, and camera coherence with the on-foot direction — not feature count.
- Horse overhauls can reach well beyond camera into followers, inventory, behavior, and immersion systems.
- Mounted play can feel improved in calm travel but break down during combat or cramped terrain.

## Candidate TODO Additions

### Combat Gameplay → `Third-Person - Combat & Targeting`

- `Eviscerate` — combat gore/dismemberment gameplay → `Third-Person - Combat & Targeting`
- `Cinema - Dynamic Combat Letterbox` — dynamic letterbox during combat → `Third-Person - Combat & Targeting`
- `Parry for All` — universal parry/block mechanic → `Third-Person - Combat & Targeting`
- `Deadly spell impact` — spell impact visual/audio feedback → `Third-Person - Combat & Targeting`

### Mounted → `Third-Person - Mounted`

- `HorsePower - Modernized horse riding` — modern horse riding overhaul → `Third-Person - Mounted`
