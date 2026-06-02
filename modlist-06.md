# Modernized UI

## UI Framework Prerequisites

### Core Idea

- This subsection owns the base menu and interface framework that the rest of the UI stack builds on.
- It should decide infrastructure first without collapsing HUD styling, inventory redesign, map replacements, or controller support into one giant UI choice.

### Options

- Core baseline route: `SkyUI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12604>
- Support-framework route: `UIExtensions` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/17561>
- Grim-dark visual overhaul: `Oathvein UI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/160916>
- Modern-rustic visual overhaul: `Norden UI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/166086>
- Next-gen web-UI framework branch: `Prisma UI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/148718>

### Recommendation

- Start with `SkyUI` as the non-negotiable baseline.
- Treat `UIExtensions` as support infrastructure where later chosen mods need it rather than as a competing UI identity.
- Set `Oathvein UI` as the preferred visual direction. Both `Oathvein UI` and `Norden UI` are by the same author (`Nithog`) and both are actively maintained — `Oathvein` last updated `20 May 2026`, `Norden` last updated `16 May 2026`. `Oathvein`'s description ("sleek, grim-dark interface overhaul") directly matches `Elder Wilds` tone, while `Norden` ("modern design with the rustic feel of the Nords") is the lighter comparison. `Norden` also requires `Extended UI` as a dependency, which has no official SE port and generates community friction; `Oathvein` has a more self-contained dependency chain.
- Keep `Prisma UI` as a documented next-gen framework comparison rather than the default choice. It is a web-UI framework that replaces `SkyUI` rather than extending it, which makes it incompatible with the `Oathvein UI` visual direction and with most UIExtensions-based mods from later subsections. Locked baseline stays `SkyUI` + `Oathvein UI`; `Prisma UI` is documented for projects that want to pursue the framework-replacement path instead of the visual-overhaul path.
- Keep `TrueHUD` scoped to gameplay/UI boundary as a combat-feedback companion, not a framework decision.

### Risks & Compatibility

- Visual-theme choices can get mistaken for infrastructure requirements too early.
- `Norden UI`'s dependency on `Extended UI` adds a fragile third-party link with no official SE port.
- A highly stylized framework can look distinctive while weakening readability in ordinary play.

### Acceptance Criteria

- `modlist-06.md` has one clear UI framework baseline (`Oathvein UI` preferred, `Norden UI` as documented lighter comparison).
- The role of `UIExtensions` is explicit as support infrastructure rather than a competing full UI direction.
- The visual baseline is narrowed to `Oathvein UI` with a clear rationale for why it fits `Elder Wilds` over `Norden UI`.

## HUD Overhaul

### Core Idea

- This subsection owns the main on-screen HUD layer: health, stamina, magicka, target readability, and how much permanent interface structure should remain visible during ordinary play.
- It should improve readability and tone without absorbing the later compass, marker, or minimal-HUD question.

### Options

- Layout-control route: `SkyHUD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/463>
- Feedback-companion route: `TrueHUD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/62775>
- Framework-led route: let `Oathvein UI` carry most of the HUD styling identity, with `Norden UI` as the lighter alternative.
- Stats-overlay route: `Stats Tracker Menu - STM` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/180653>

### Recommendation

- Start with `SkyHUD` as the baseline HUD layout framework. It handles widget positioning, visibility control, and style consistency across screen sizes.
- Add `TrueHUD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/62775> as the dedicated combat-feedback companion. `TrueHUD` is by the same author as `True Directional Movement` (already in `modlist-04.md`), has `58,848` endorsements and over `2 million` unique downloads, and provides actor info bars, boss bars, player widgets, and recent-loot logging. It was last updated `December 2023` (feature-complete). Keep `TrueHUD` scoped to combat-feedback additions only, not as a competing HUD framework.
- Keep `Stats Tracker Menu - STM` as a documented stats-overlay companion rather than a baseline. It is brand new (v1.0.1, May 2026) with very low community signal, so lock it in only after playtesting confirms it does not fight `SkyHUD` widget positioning or `TrueHUD` combat feedback. If accepted, it lives next to those two as a third scoped addition (stats display), not a replacement for either.
- Let the final visual tone come primarily from the chosen `Oathvein UI` direction.
- Keep compass density, marker philosophy, and minimal-HUD experimentation for the later dedicated subsection.

### Risks & Compatibility

- Weak combat readability can tempt the section into solving everything with extra HUD noise.
- Combat-feedback widgets can quietly take over the whole HUD philosophy if not kept scoped.
- `Stats Tracker Menu` is brand new with no community validation; if it breaks, the player loses a non-essential overlay. Keep it scoped to stats display only and verify it does not move `SkyHUD` widgets.
- The HUD layer can drift into later compass and marker ownership if the boundary is not kept explicit.

### Acceptance Criteria

- `modlist-06.md` has `SkyHUD` as the HUD-layout baseline and `TrueHUD` as the combat-feedback companion, with clear role separation.
- `TrueHUD` is documented as a combat-feedback layer, not the whole HUD answer.
- `Stats Tracker Menu` (if accepted) is documented as a stats-overlay companion, not a HUD-framework replacement.
- Compass, markers, and minimal-HUD questions remain clearly deferred.

## Inventory And Item Card Improvements

### Core Idea

- This subsection owns how item lists, sorting, weight/value scanning, and item-card readability feel during ordinary looting and inventory management.
- It should make menu-heavy play cleaner and more informative without turning the whole stack into an endless pile of micro-fixes.

### Options

- General item-info route: `moreHUD SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12688>
- Information-density route: `moreHUD Inventory Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/18619>
- Clean-card route: `SkyUI Item Card Fixes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29116>
- Sorting-and-icon route: `Aura's Inventory Tweaks (More SkyUI Icons Sorting Options and More)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/68557>
- Weapon-stat overlay route: `Weapon Stat Viewer V2` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/127249>

### Recommendation

- Start with `moreHUD Inventory Edition` as the strongest first-pass baseline because it improves day-to-day inventory readability in a way that is immediately visible during normal play.
- Keep `moreHUD SE` as the adjacent broader companion if the project wants that same readability philosophy outside inventory lists too.
- Keep `SkyUI Item Card Fixes` as the cleaner, narrower comparison if the main pain point is item-card presentation discipline rather than more information.
- Keep `Aura's Inventory Tweaks` as the more organizational comparison if the final UI direction proves to need stronger sorting and icon structure rather than just clearer cards and details.
- Keep `Weapon Stat Viewer V2` as a documented weapon-stat overlay companion rather than a baseline. It surfaces weapon damage numbers in real time (so the player can compare weapons without opening menus), and it is more useful than the other options here for the combat-experience pillar. Lock it in only if the chosen UI framework (`SkyUI` + `Oathvein UI`) renders it cleanly; verify it before treating it as part of the locked inventory stack.
- Keep map, journal, magic-menu, crafting-menu, and dialogue decisions out of this subsection so inventory ownership stays clear.

### Risks & Compatibility

- Inventory readability can be over-solved by stacking too many overlapping micro-fixes.
- A more information-heavy route can slow scanning instead of speeding it up.
- Icon and sorting customization can become a substitute for clear baseline menu readability.
- `Weapon Stat Viewer V2` is a relatively new mod with low endorsement count (432). Verify it does not conflict with the chosen UI framework, and treat it as opt-in until the project has tested it.

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred inventory-readability baseline.
- The difference between broader item information, inventory-list information density, cleaner item cards, and stronger inventory organization is explicit.
- The subsection still leaves room for later crafting, controller, and accessibility decisions.

## Map Improvements

### Core Idea

- This subsection owns the world-map framework and the actual map art layered on top of it.
- The goal is deliberate travel planning and geographic readability without collapsing the answer into journal, dialogue, or controller support.

### Options

- Framework route: `Flat World Map Framework (FWMF)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29932>
- Balanced paper route: `Skyrim and Solstheim Paper Maps by Mirhayasu for FWMF` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/53788>
- Richly styled route: `Immersive Paper Map (3rd Edition)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/54710>
- Cartography-focused route: `Skyrim Paper Map by FreelanceCartography for FWMF` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/78995>

### Recommendation

- Treat `Flat World Map Framework (FWMF)` as the non-negotiable foundation for this direction.
- Start with `Skyrim and Solstheim Paper Maps by Mirhayasu for FWMF` as the strongest first-pass companion because it looks purposeful without making the map harder to read.
- Keep `Immersive Paper Map (3rd Edition)` as the moodier, more stylized comparison and `FreelanceCartography` as the more explicitly cartographic comparison.
- Keep the key question focused on which map art belongs on top of `FWMF`, not whether the project still needs to re-decide the framework.

### Risks & Compatibility

- It is easy to choose map art for style while losing navigational readability.
- `FWMF` can be treated as if it already answers the map-art decision when it does not.
- Keeping several paper-map directions alive too long creates avoidable ambiguity.

### Acceptance Criteria

- `Flat World Map Framework (FWMF)` is established as the map foundation.
- One clearly preferred FWMF-based map direction exists, with at least two meaningful comparison routes documented.
- The framework-versus-map-art distinction stays explicit.

## Magic And Journal Improvements

### Core Idea

- This subsection owns reading comfort, text-heavy menu flow, and spell-adjacent menu usability outside the world map.
- The goal is calmer, cleaner reading and configuration flow without pretending every menu issue is really a map problem.

### Options

- Reading comfort route: `Convenient Reading UI - SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/50202>
- Menu-width support route: `Wider MCM Menu for SkyUI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22825>

### Recommendation

- Start with the reading-comfort route.
- Treat `Convenient Reading UI - SE` as the strongest first-pass baseline because it improves the part of this subsection most likely to be felt in normal play without overcommitting to speculative spell-menu surgery.
- Keep `Wider MCM Menu for SkyUI` as the practical support fix if the expanding UI and gameplay stack makes configuration menus feel cramped, but do not mistake that narrower MCM answer for the whole journal and reading direction.
- Revisit spell-menu-specific improvements later only if playtesting reveals a clear unresolved pain point that the base UI stack still does not cover.

### Risks & Compatibility

- MCM support fixes can be mistaken for broader journal or spell-menu design answers.
- The subsection can overlap too much with later dialogue, controller, or accessibility work.
- Weak spell-menu candidates can get added just to make the category look more complete.

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred reading and journal usability baseline.
- The difference between reading comfort and MCM support is explicit.
- Any magic-menu follow-up remains intentionally scoped rather than guessed.

## Dialogue UI Improvements

### Core Idea

- This subsection owns conversation readability, response selection clarity, and the overall feel of moment-to-moment dialogue interaction.
- The goal is cleaner dialogue flow without collapsing the answer into controller handling, subtitle bugfixes, or broader journal/menu ownership.

### Options

- Control-sanity baseline: `Better Dialogue Controls` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1429>
- Message-box support route: `Better MessageBox Controls` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1428>
- Visual dialogue refresh route: `Dialogue Interface ReShaped` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/46546>
- Cleaner dialogue presentation route: `Convenient Dialogue UI - SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/57943>

### Recommendation

- Start with `Better Dialogue Controls` as the strongest first-pass pick because it addresses the most fundamental dialogue friction without forcing a large stylistic commitment.
- Treat `Better MessageBox Controls` as the natural companion if the same interaction awkwardness also shows up in message boxes.
- Keep `Dialogue Interface ReShaped` and `Convenient Dialogue UI - SE` as the more presentation-forward comparison routes only if testing shows the bigger problem is visual dialogue flow rather than basic control reliability.
- Keep subtitle safety and unvoiced-dialogue handling in `modlist-12.md` with `Fuz Ro D-oh - Silent Voice`; that is a bugfix concern, not the UI framework answer here.

### Risks & Compatibility

- Visual novelty can be mistaken for actual dialogue usability.
- A larger redesign can be chosen when simple control fixes would have solved the problem.
- Dialogue ownership can drift into controller or subtitle-bugfix territory if the boundary is not kept explicit.

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred dialogue-usability baseline.
- The distinction between dialogue-option control fixes, message-box fixes, and presentation-layer redesign is explicit.
- Subtitle and silent-voice safety remains explicitly outside this subsection.

## Controller-Friendly UI Support

### Core Idea

- This subsection owns how comfortable the UI stack feels on a gamepad once the base framework, HUD, inventory, map, journal, and dialogue layers are in place.
- The goal is to reduce controller friction without pretending every controller problem requires a total menu redesign.

### Options

- Base controller-fix route: `Skyrim SE Controller Interface Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1147>
- Expanded gamepad-mapping route: `Gamepad Plus Plus` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/27007>
- Quick-access wheel route: `Wheeler - Quick Action Wheel Of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/97345>

### Recommendation

- Start with `Skyrim SE Controller Interface Fix` as the strongest first-pass baseline because it improves controller friendliness without forcing the whole stack to reorganize itself around one larger system.
- Keep `Gamepad Plus Plus` as the broader comparison if testing shows the list needs a more assertive controller-input answer.
- Keep `Wheeler` as the deliberate quick-access branch if controller play clearly benefits from a radial interaction layer rather than only better menu navigation.
- Keep dialogue readability, inventory clarity, and map/journal ownership in their already-written subsections; this section should answer controller comfort across those layers, not replace their underlying decisions.

### Risks & Compatibility

- Controller awkwardness can be over-solved by stacking too many overlapping input layers.
- A heavier controller route can fight the rest of the UI stack.
- Radial quick-access design can become a substitute for fixing ordinary menu friction.

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred controller-support baseline.
- The distinction between light controller cleanup, broader remapping, and radial quick-access support is explicit.
- Controller support improves the existing UI layers instead of replacing their ownership boundaries.

## UI Scaling For Ultrawide And High Resolution

### Core Idea

- This subsection owns how well the chosen UI stack holds up on large modern displays, with `16:9` `4K HDR` as the actual baseline target and ultrawide support treated as a secondary compatibility branch.
- The goal is readability and clarity, not a drift into generic display-calibration advice.

### Options

- High-resolution readability route: `Sovngarde - Mist's Font Replacer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/386>
- Ultrawide compatibility route: `Complete Widescreen Fix for Vanilla and SkyUI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1778>
- Discipline-first route: keep the chosen `Oathvein UI` direction (or `Norden UI` if testing prefers it), `SkyHUD`, inventory improvements, and dialogue/map changes restrained enough that the UI remains readable at `4K` without immediately stacking scaling fixes.

### Recommendation

- Start with the readability-first route, because `16:9` `4K HDR` is the real target for this project.
- Treat `Sovngarde - Mist's Font Replacer` as the stronger first-pass candidate because it directly addresses large-display text readability without pretending the main problem is ultrawide support.
- Keep `Complete Widescreen Fix for Vanilla and SkyUI` as the secondary compatibility branch if the list later needs to support ultrawide layouts too, but do not let that branch define the subsection.
- Keep HDR concerns practical: this subsection should stay about readability, clarity, and screen-space behavior.

### Risks & Compatibility

- Ultrawide support can be treated as the default problem when the actual baseline display is `16:9` `4K`.
- High-resolution readability can be over-solved by stacking too many unrelated UI tweaks at once.
- Font or scaling adjustments can fight the chosen `Oathvein UI` tone if they are not judged in context.

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred high-resolution readability baseline for the actual `16:9` `4K` target.
- The distinction between `4K` readability work and ultrawide compatibility support is explicit.
- UI scaling guidance improves readability without collapsing into a generic display-settings subsection.

## Compass, Markers, And Minimal HUD Options

### Core Idea

- This subsection owns how much navigational information stays on screen during ordinary play: compass behavior, marker density, and whether the HUD should fade away unless it is actually needed.
- The goal is cleaner exploration without undoing the broader HUD, map, or controller decisions already in place.

### Options

- Navigation-first compass route: `Compass Navigation Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/74484>
- Map-aware marker route: `CoMAP - Common Marker Addon Project` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56123>
- Dynamic minimal-HUD route: `Immersive HUD - iHUD Special Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12440>

### Recommendation

- Start with the navigation-first route plus explicit marker discipline.
- Treat `Compass Navigation Overhaul` as the strongest first-pass baseline because it answers the actual navigational layer directly instead of jumping immediately to a hide-the-HUD philosophy.
- Treat `CoMAP` as the natural marker-side companion when the project wants cleaner marker consistency across the chosen `FWMF` paper-map ecosystem.
- Keep `Immersive HUD - iHUD Special Edition` as the deliberate minimal-HUD branch only if testing shows that reduced on-screen persistence materially improves exploration tone rather than making the paper-map-and-compass loop less readable.
- Keep `SkyHUD` as the broader HUD-layout owner, `FWMF` plus map-art choices as the map owner, and gameplay-side `TrueHUD` as a separate feedback layer.

### Risks & Compatibility

- Minimalism itself can be mistaken for better usability.
- Uneven marker language can trigger too many overlapping compass and HUD layers at once.
- A dynamic-HUD route can look immersive while slowing ordinary navigation.

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred compass and navigation baseline.
- The distinction between compass behavior, FWMF-friendly marker support, and minimal-HUD philosophy is explicit.
- Existing ownership boundaries with `SkyHUD`, `FWMF`, and gameplay-side `TrueHUD` remain intact.

## Crafting Menu Improvements

### Core Idea

- This subsection owns the UI side of crafting: category clarity, menu scan speed, recipe browsing, and whether crafting stations feel readable and organized during normal use.
- It should improve crafting-menu navigation without re-deciding the broader crafting-system philosophy that belongs to `modlist-05.md`.

### Options

- Keyword-category route: `Constructible Object Custom Keyword System` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/81409>
- Vanilla-category fallback: `SkyUI - Vanilla Crafting menu` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/18717>
- Discipline-first route: keep the current `SkyUI` crafting presentation if real playtesting shows the menu is already readable enough.

### Recommendation

- Start with the keyword-category route.
- Treat `Constructible Object Custom Keyword System` as the strongest first-pass baseline because it directly improves the usability of the Constructible Object Menu and is built to support a broader, modded crafting ecosystem.
- Keep `SkyUI - Vanilla Crafting menu` as the meaningful fallback only if the project still prefers vanilla-style split categories and is not relying on a heavier `CACO`-style recipe footprint that benefits from stronger category handling.
- Keep this subsection focused on menu structure and readability; do not let it absorb smithing progression, crafting balance, enchanting rules, or NPC-crafting philosophy from `modlist-05.md`.

### Risks & Compatibility

- Crafting frustration can be blamed on the menu layer when the real issue lives in gameplay-side crafting rules.
- A familiar vanilla-style fallback can be chosen just because it feels familiar rather than because it is more readable in real play.
- A vanilla-style fallback can pair poorly with a large `CACO` recipe footprint and create avoidable friction.

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred crafting-menu usability baseline.
- The difference between a more extensible category system and a vanilla-style category fallback is explicit.
- The ownership boundary with gameplay-side crafting decisions in `modlist-05.md` remains clear.

## Accessibility And Readability Improvements

### Core Idea

- This subsection owns the final pass on general UI legibility and comfort: readable text, sane menu density, configuration clarity, and whether the full UI stack remains easy to live with over long sessions.
- It should improve everyday usability without re-deciding dialogue, map, controller, crafting, or HUD philosophy that earlier subsections already own.

### Options

- High-resolution text route: `Sovngarde - Mist's Font Replacer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/386>. Recommended file: `Sovngarde - Mist's Font Replacer Bold V8.9`.
- Configuration-readability route: `Wider MCM Menu for SkyUI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22825>
- Discipline-first route: keep the current `SkyUI` plus `Oathvein UI` stack (with `Norden UI` as the available lighter alternative) with the already-chosen inventory, dialogue, map, and crafting improvements if real playtesting shows the UI is already readable enough.

### Recommendation

- Start with the discipline-first route, then apply targeted readability support only where the current stack still shows a real weakness.
- `Sovngarde - Mist's Font Replacer` remains the strongest first-pass accessibility candidate because the repo already identified `16:9` `4K HDR` readability as a practical concern and font presence is one of the clearest ways to improve long-session comfort without redesigning the whole interface.
- For this display target, prefer `Sovngarde - Mist's Font Replacer Bold V8.9` first, then fall back to the light variant only if the bold face feels too heavy in the chosen `Oathvein UI` direction.
- Keep `Wider MCM Menu for SkyUI` as the narrower support answer when the main friction lives in configuration readability rather than in the ordinary in-game interface itself.
- Leave subtitle safety and unvoiced-dialogue handling in `modlist-12.md` with `Fuz Ro D-oh - Silent Voice`; that remains a bugfix boundary, not the main UI accessibility answer here.

### Risks & Compatibility

- A final accessibility pass can turn into relitigating decisions that earlier UI subsections already settled.
- Stacking too many small readability tweaks can create an incoherent visual hierarchy.
- MCM comfort can be mistaken for a full ordinary-play readability solution.

### Acceptance Criteria

- `modlist-06.md` finishes with one clear readability-first fallback and one clear configuration-readability support route.
- The distinction between general `4K` readability and MCM readability is explicit.
- Earlier ownership boundaries for dialogue, map, crafting, controller support, and subtitle bugfixes remain preserved.
