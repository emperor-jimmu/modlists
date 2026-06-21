# Third-Person Gameplay

**MO2 Separator:** `04 Third Person` → `04a Camera & Movement`, `04b Combat & Targeting`, `04c Mounted`

## Third-Person Camera Framework → `04a Camera & Movement`

### Core Idea

- This subsection chooses the main on-foot third-person camera framework.
- The framework decision should stay separate from later tuning, target lock, crosshair behavior, and perspective support.

### Options

- Modern modular route: `SmoothCam` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/41252> → `04a`
- Leaner fallback route: `Customizable Camera` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12201> → `04a`
- Adjacent but separate systems: `True Directional Movement - Modernized Third Person Gameplay` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51614> and `Improved Camera SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/93962> → `04a`

### Recommendation

- Use `SmoothCam` as the baseline third-person camera framework. → `04a`
- Keep `Customizable Camera` as the leaner fallback comparison if `SmoothCam` feels too elaborate for the final tone. → `04a`
- Keep `TDM` for later movement and targeting decisions instead of letting it answer the framework question. → `04a`
- Keep `Improved Camera SE` scoped to perspective support rather than treating it as the main third-person framework answer. → `04a`

### Risks & Compatibility

- It is easy to mistake a good preset for a good framework and hide weak underlying camera behavior.
- Mixing several camera-reactive systems too early makes it hard to tell whether problems come from the framework, targeting logic, movement logic, or first-person support.
- An over-tuned camera can look impressive in clips while becoming tiring in normal play.

### Acceptance Criteria

- The chosen framework makes third-person traversal and combat staging clearly more modern and readable than vanilla.
- The camera baseline remains comfortable in longer normal play.
- Later layers can build on the framework without redefining it.

## Camera Presets And Shoulder Switching → `04a Camera & Movement`

### Core Idea

- This subsection covers camera framing once the framework is chosen: lateral offset, over-the-shoulder bias, and whether shoulder switching is a core expectation or a support tool.
- Presets belong to tuning, not foundational ownership.

### Options

- Stable centered-to-light-offset route.
- Strong over-the-shoulder route.
- Preset-heavy route that adopts a community `SmoothCam` preset early. → `04a`

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

## True Directional Movement → `04a Camera & Movement` → `04a`

### Core Idea

- This subsection decides whether third-person movement should follow a modern 360-degree character-relative model instead of the more rigid vanilla feel.
- It is a movement readability and control decision first, not a target-lock decision.

### Options

- Modern directional route: `True Directional Movement - Modernized Third Person Gameplay` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51614> → `04a`
- Minimalist route: keep movement closer to the camera framework plus animation stack.
- Partial-adoption route: use `TDM` for movement modernization while staying disciplined about which adjacent features are enabled later. → `04a`

### Recommendation

- Use `True Directional Movement` as the baseline directional movement layer. → `04a`
- Treat freer facing, cleaner traversal, and better alignment with the animation stack as the core value here.
- Do not let target lock, boss framing, or crosshair behavior define this decision yet.

### Risks & Compatibility

- `TDM` is easy to treat as an all-in-one third-person answer too early. → `04a`
- A movement layer that feels great in open traversal may still feel awkward in tight interiors, on stairs, or during precision positioning.
- The project can accidentally absorb targeting assumptions before those systems are judged separately.

### Acceptance Criteria

- Third-person movement feels clearly more natural and modern than vanilla in ordinary play.
- Character facing and traversal stay coherent with the animation stack from `modlist-03.md`. → `04a`
- `TDM` remains understandable as one layer in the third-person stack rather than a catch-all answer. → `04a`

## Target Lock And Targeting Behavior → `04b Combat & Targeting`

### Core Idea

- This subsection decides how third-person combat identifies focus and whether lock-on should meaningfully shape combat rhythm.
- The goal is better targeting readability without turning Skyrim into a permanent boss-lock action game.

### Options

- Modern lock-on route: `True Directional Movement - Modernized Third Person Gameplay` as the targeting owner. → `04b`
- Light-touch route: freer movement plus camera framing with only situational lock-on use.
- Feedback-enhanced route: pair the targeting baseline with `TrueHUD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/62775> for clearer target-state feedback. → `04b`

### Recommendation

- Use `TDM` as the main targeting-behavior owner, but keep lock-on restrained. → `04b`
- Treat lock-on as an optional combat-readability tool, not the permanent default way every fight must be played.
- Keep `TrueHUD` as an optional feedback companion only if testing shows target-state clarity materially helps. → `04b`

### Risks & Compatibility

- Overusing lock-on can make combat feel narrower and more repetitive than the rest of the stack intends.
- Weak target selection or target switching can make even a good movement and camera baseline feel unreliable.
- `TrueHUD` can create the illusion of a solved targeting system when the underlying behavior is still awkward. → `04b`

### Acceptance Criteria

- Targeting is noticeably clearer and more usable than vanilla in normal third-person combat.
- Lock-on helps when it should and stays easy to ignore when freer movement is better.
- `TDM` remains the clear targeting owner without overlapping systems muddying responsibility. → `04b`

## Dodge, Sprint, And Movement Responsiveness → `04a Camera & Movement`

### Core Idea

- This subsection covers how cleanly the player can reposition once combat starts, including whether a dedicated dodge mechanic belongs in the baseline.
- Dodge behavior, sprint feel, and general responsiveness are related, but they are not identical.

### Options

- Restrained modern dodge route: `TK Dodge RE - Script Free` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56956> → `04a`
- Legacy fallback route: `TK Dodge SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/15309> → `04a`
- No-baseline-dodge route: rely on movement, camera, animation, and later combat-rule layers unless testing proves a dedicated dodge is necessary.
- Newer multi-author branch: `Dodge for all` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/174544> → `04a`

### Recommendation

- Use `TK Dodge RE - Script Free` as the first serious dodge candidate. → `04a`
- Treat dodge as a tactical repositioning tool, not the constant center of combat pacing.
- Keep `TK Dodge SE` only as a fallback reference point, not the preferred baseline direction. → `04a`
- Keep `Dodge for all` as a documented newer multi-author comparison rather than a baseline. It is brand new (v1.1.2, May 2026) with very low community signal, so it cannot be locked in as the main baseline yet. Watch for endorsement growth and bug reports; revisit this subsection once the mod has a real community track record. → `04a`

### Risks & Compatibility

- A dodge system can make combat feel twitchier and less grounded than the rest of the list intends.
- If dodge is too strong or too convenient, it can trivialize spacing and undermine other readability goals.
- The dodge ecosystem has several overlapping variants and derivatives, so ownership gets messy quickly if multiple paths stay alive too long.
- `Dodge for all` is brand new with no community validation. Locking it in early risks a mod that breaks under updates or a behavior profile that does not match the rest of the combat stack. → `04a`

### Acceptance Criteria

- Repositioning feels more responsive and usable than vanilla without forcing a roll-centric combat identity.
- Dodge, sprint, and movement transitions stay readable with the existing camera, movement baseline, and animation choices.
- The chosen dodge layer remains understandable as one tool in the combat stack rather than the answer to every responsiveness problem.
- If `Dodge for all` is added later, it replaces `TK Dodge RE` cleanly rather than being stacked on top.

## Hit Reactions, Stagger, And Impact Feedback → `04b Combat & Targeting`

### Core Idea

- This subsection is about whether combat hits feel consequential in third person: readable reactions, believable stagger, and enough impact feedback that weapon contact feels meaningful.
- It should stay scoped to impact feel rather than absorb the whole combat-system decision.

### Options

- Balanced impact route: `Valhalla Combat` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/64741> → `04b`
- Lighter feedback route: lean more on `Precision`, animation readability, and restrained combat rules. → `04b`
- High-drama route: push harder on stagger and reaction systems, accepting a higher risk of overcorrection.

### Recommendation

- Use `Valhalla Combat` as the main gameplay-side comparison point for hit feedback and stagger behavior. → `04b`
- Treat `Precision` from `modlist-03.md` as an adjacent support layer for contact feel, but not a full answer to impact readability. → `04b`
- Aim for reactions and stagger that clarify combat outcomes rather than constantly interrupting movement flow.

### Risks & Compatibility

- Too much stagger can flatten combat pacing and make encounters feel repetitive or gamey.
- Weak impact feedback can leave even good animations and collision detection feeling unsatisfying.
- Camera, animation timing, collision, and gameplay rules all affect impact feel, so ownership can blur quickly.

### Acceptance Criteria

- Hits feel more readable and consequential than vanilla in ordinary third-person combat.
- Stagger and reaction feedback improve combat understanding without dominating every encounter.
- The subsection remains clearly scoped to impact feel, leaving deeper combat-rule decisions for the next section.

## Third-Person Combat Systems → `04b Combat & Targeting`

### Core Idea

- This subsection decides how far `Elder Wilds` should push Skyrim toward a modern third-person combat framework instead of only improving presentation around mostly vanilla combat rules. → `04b`
- It owns the gameplay-framework decision, not animation generation, skeleton ownership, or conditional logic.

### Options

- Vanilla-plus route: keep camera, movement, dodge, and impact layers relatively restrained.
- Balanced modern route: `Valhalla Combat` as the main gameplay-rules candidate while evaluating `MCO ADXP - Modern Movement Combat Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/117115> as the main ambitious combat direction. → `04b`
- Stealth-animation route: `RaySense - Cover Animation` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/175504> — triggers a flatten-against-wall animation when the player sneaks near a wall. Requires `Open Animation Replacer` (already the baseline in `modlist-03.md`). OAR-based, companion to the `RaySense` parkour pair. → `04b`
- Full action route: commit strongly to the `MCO ADXP` ecosystem, `Valhalla Combat`, `SCAR`, dodge, lock-on, and related responsiveness layers together. → `04b`

### Recommendation

- Start with the balanced modern route.
- Treat `Valhalla Combat` as the main gameplay-rule framework to judge here. → `04b`
- Treat `MCO ADXP` as the main ambitious combat-style route to compare against a lighter baseline, not as an automatic lock. → `04b`
- Keep `SCAR` as the already-tracked NPC-side support layer from `modlist-03.md` once the list is ready to judge richer enemy attack behavior in real encounters. → `04b`
- Keep `RaySense - Cover Animation` as a documented stealth-animation companion rather than a baseline. It adds a wall-flatten animation during third-person sneaking that reinforces the embodied stealth feel without adding gameplay rules. Add it only if sneaking and stealth are a meaningful part of the intended playstyle. → `04b`
- If the list moves to `MCO`, carry forward the prerequisite/support context already recorded in `modlist-03.md` rather than treating `MCO` as a standalone toggle. → `04b`

### Risks & Compatibility

- A full modern combat stack can pull the whole modlist toward a more aggressive action-game identity than the rest of the project actually wants.
- Overlapping combat layers become difficult to debug once dodge, lock-on, stagger, collision, NPC behavior, and animation changes all land together.
- A system that looks impressive in duels can still feel messy, tiring, or unfair in crowded real-world encounters.

### Acceptance Criteria

- The chosen combat direction clearly improves third-person readability, encounter flow, and player control over vanilla.
- The final system works coherently with the camera, targeting, dodge, impact, and animation decisions already recorded in the plan.
- Enemy behavior and player-side combat rules feel intentional rather than like a pile of overlapping modern-combat mods.

## Crosshair And Aiming Behavior → `04b Combat & Targeting`

### Core Idea

- This subsection covers how third-person aiming should feel in play: when the crosshair should be trusted, how readable ranged and spell aiming are, and how much feedback is appropriate for the list's tone.
- It is the bridge between camera framing, target feedback, and combat usability, not a license to solve every interface problem through bigger widgets or more clutter.

### Options

- Disciplined aiming route: keep crosshair behavior restrained and readable.
- Selection-utility route: `Better Third Person Selection - BTPS` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/64339> → `04b`
- Feedback-supported route: `TrueHUD` as a limited clarity companion where it genuinely helps aiming readability. → `04b`
- Arrow-physics route: `Ricochet - Arrow Physics Framework` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/160603> → `04b`

### Recommendation

- Start with the disciplined aiming route.
- Treat camera framing as the baseline aiming context, because poor framing can masquerade as poor aiming behavior.
- Treat `BTPS` as a strong optional companion if real third-person play shows that selection and interaction reliability are part of the usability problem, but do not confuse object-selection fixes with combat-aiming fixes. → `04b`
- Keep `TrueHUD` only as an optional clarity aid if testing shows it materially improves third-person targeting and aim readability. → `04b`
- Keep `Ricochet - Arrow Physics Framework` as a documented arrow-physics companion rather than a baseline. It adds realistic arrow ricochet, deflection, and stick-physics behavior that makes third-person archery feel more grounded. Lock it in only if archery is a meaningful part of the locked combat style in `modlist-04.md` and `modlist-05.md`; pure-melee or pure-magic builds can skip it without losing value. → `04b`
- Defer visual styling and broader HUD philosophy to `modlist-06.md`. → `04b`

### Risks & Compatibility

- It is easy to overcorrect weak third-person aiming with too much HUD noise instead of fixing camera and targeting behavior first.
- `BTPS` can help object interaction without answering combat-aiming problems. → `04b`
- Crosshair tuning can quietly inherit assumptions from the heavier combat route and feel wrong if the project later chooses a more grounded direction.

### Acceptance Criteria

- Third-person aiming feels reliable enough that ranged and spell use remain practical in normal play.
- Third-person object interaction feels reliable enough that normal looting and activation do not constantly fight the camera perspective.
- Camera, targeting, and aiming each remain understandable as separate layers in the stack.

## Horse Camera And Mounted Controls → `04c Mounted`

### Core Idea

- This subsection covers whether mounted play should feel like a supported third-person activity instead of a neglected edge case.
- The goal is mounted readability and control clarity, not a second giant gameplay framework.

### Options

- Broad overhaul route: `Convenient Horses` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/9519> — heavy scripting, all-in-one mounted usability, but last updated Jan 2022 (3.5yr stale) → `04c`
- Actively maintained overhaul route: `Press H to Horse` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/81195> — reworks AE/CC horse mechanics, MCM, horse calling/naming/inventory/follower riding, updated May 2026 → `04c`
- Lightweight route: `Simplest Horses (and other mounts)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/54225> — single hotkey does everything (inventory, follow/wait, teleport, rename), SPID+MCM, very compatible, last updated Dec 2022 → `04c`
- Handling fix (complementary, works with any of the above): `Horses Simply Turn Better` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/57790> — sharpens turning radius, designed for TDM → `04c`
- Minimalist route: keep horse behavior close to vanilla and solve only obvious mounted usability pain points.

### Recommendation

- `Convenient Horses` (last updated Jan 2022) is no longer actively maintained. Prefer one of the newer alternatives. → `04c`
- `Press H to Horse` is the strongest candidate for an actively maintained, modern horse overhaul — by TateTaylorOH (Keizaal author), updated May 2026, edits few vanilla records, designed for compatibility. → `04c`
- `Simplest Horses` is the drop-in lightweight choice if the full overhaul feels like scope creep. → `04c`
- `Horses Simply Turn Better` should be considered a free add-on regardless of which overhaul is chosen — it only touches turning variables and makes mounted combat in TDM feel dramatically better. → `04c`
- Judge mounted play primarily on travel readability, steering confidence, and coherence with the chosen third-person camera philosophy rather than feature count alone.

### Risks & Compatibility

- Horse overhauls can reach well beyond camera and controls into followers, inventory, behavior, and immersion systems that may be outside the real need here.
- Mounted play can feel improved in calm travel but still break down during combat, in cramped spaces, or in rough terrain.
- A broad horse mod may solve several annoyances while quietly adding complexity the rest of the modlist has to carry forever.

### Acceptance Criteria

- Horseback travel feels meaningfully better in third person than vanilla in the exploration scenarios that actually matter.
- Mounted controls and camera behavior remain coherent with the chosen on-foot third-person direction.
- The final horse solution improves usability without introducing a sprawling side system that clashes with the rest of the list.

## Post-Install Smoke Test

After completing this section, verify stability with the coc console command at these 6 locations:

| # | Command | Location | Stress Profile |
|---|---------|----------|----------------|
| 1 | `coc Whiterun` | Whiterun | Major city — NPCs, shadows, architecture density |
| 2 | `coc Solitude` | Solitude | Large city — water reflections, long draw distances |
| 3 | `coc RiftenOrigin` | Riften | Canopy lighting, heavy NPC AI packages |
| 4 | `coc MarkarthOrigin` | Markarth | Dwemer stone, waterfalls, extreme verticality |
| 5 | `coc Riverwood` | Riverwood | Forest exterior — grass, trees, landscape LOD |
| 6 | `coc BleakFallsBarrow01` | Bleak Falls Barrow | Interior dungeon — close-quarters lighting |
| 7 | `coc WhiterunBanneredMare` | Bannered Mare (Whiterun) | Tavern interior — fire lighting, patron NPCs, confined space |

**Pass criteria:** No crash on load. No missing textures. ≥60 FPS maintained (uncap framerate, use `tgm` for god mode if needed).

If any location fails, the most recently installed mod or generation step is the first suspect.
