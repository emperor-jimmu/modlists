# Modernized UI

## UI Framework Prerequisites

### Core Idea

This subsection owns the base menu and interface framework that the rest of the UI stack will build on. It should decide the essential foundation first, without collapsing HUD styling, inventory redesign, map replacements, or controller support into one giant UI choice.

### Suggested Options

- Core baseline route: use `SkyUI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12604> as the main modern UI foundation because it is still the clearest baseline for PC-oriented menu modernization and broad downstream UI compatibility.
- Support-framework route: add `UIExtensions` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/17561> where later UI mods actually depend on extra menu widgets and custom interface behavior.
- Styling-ready route: compare `Oathvein UI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/160916> and `Norden UI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/166086> as the two approved visual-direction candidates if `Elder Wilds` wants the UI foundation to carry a stronger bespoke identity beyond the base framework.

### Recommendation

Start with `SkyUI` as the non-negotiable baseline and treat `UIExtensions` as the most likely companion support layer. Keep the styling direction explicitly between `Oathvein UI` and `Norden UI`, but do not let that visual choice define the entire UI stack before later HUD, inventory, and journal subsections are tested.

### Why This Is The Right Baseline

`Elder Wilds` already leans toward a modernized but disciplined setup where systems are chosen in layers. `SkyUI` is the clearest UI equivalent of that approach: stable, well-understood, and broad enough to support later decisions without forcing a full visual identity too early. `UIExtensions` fits naturally as infrastructure where needed, while `Oathvein UI` and `Norden UI` matter because they represent the two approved stronger thematic directions the repo may want later. They are better treated as visual-framework candidates than as the whole UI answer on day one.

### Working Guidance For Elder Wilds

- Lock the base framework before judging HUD, inventory, map, journal, or dialogue redesigns.
- Treat `SkyUI` as the required baseline unless a later subsection presents an unusually strong reason to reject the modern UI ecosystem around it.
- Add `UIExtensions` only where later chosen mods clearly benefit from or require it; keep it as support infrastructure, not the headline UI identity.
- Evaluate `Oathvein UI` versus `Norden UI` as the foundational visual direction only after the base framework is stable and the project has a clearer preference for how bold or restrained the final UI should feel.
- Keep `TrueHUD` scoped to the already-written gameplay/UI boundary: it may remain a useful later HUD companion, but it is not the core UI framework answer.

### What Elder Wilds Should Prioritize

- A framework stack that is easy to explain and easy to build on in later UI subsections.
- Broad compatibility with the modern Skyrim UI ecosystem.
- Clear separation between interface infrastructure and later style choices.
- A UI foundation that still feels coherent with the project's modern third-person-first identity.

### Research Tasks

- Confirm `SkyUI`, `UIExtensions`, `Oathvein UI`, and `Norden UI` all behave cleanly on Steam `1.6.1170` with the current framework stack.
- Check which later UI candidates actually require `UIExtensions` instead of assuming it is mandatory everywhere.
- Test whether `Oathvein UI` or `Norden UI` better matches the project's desired blend of readability, atmosphere, and modern presentation before locking the visual baseline.
- Record where the chosen framework direction places pressure on controller support, ultrawide scaling, and accessibility decisions later in `modlist-06.md`.

### Risks To Check

- Letting visual theme choices get mistaken for infrastructure requirements too early.
- Treating every popular UI support mod as mandatory when some may add more complexity than value.
- Choosing a highly stylized framework direction that looks distinctive but weakens readability in ordinary play.
- Locking a foundation that fights later controller, scaling, or readability goals.

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred UI framework baseline.
- The role of `UIExtensions` is clear as support infrastructure rather than a competing full UI direction.
- The visual-direction choice is explicitly narrowed to `Oathvein UI` versus `Norden UI` without letting it absorb later HUD and menu subsections.
- The chosen foundation preserves room for later HUD, inventory, map, dialogue, controller, and accessibility decisions.

## HUD Overhaul

### Core Idea

This subsection owns the main on-screen HUD layer: health, stamina, magicka, target readability, and how much permanent interface structure should remain visible during ordinary play. It should improve readability and tone without collapsing into the later compass, marker, or minimal-HUD subsection.

### Suggested Options

- Layout-control route: use `SkyHUD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/463> as the main HUD-layout baseline if `Elder Wilds` wants a cleaner, more configurable presentation without tying the whole answer to one oversized UI replacement.
- Feedback-companion route: keep `TrueHUD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/62775> as the optional enhanced-feedback companion if combat readability, target state, or boss-style information genuinely improves the play experience rather than just adding more screen noise.
- Framework-led route: let the chosen visual direction between `Oathvein UI` and `Norden UI` carry most of the HUD styling identity, while using only restrained HUD-layer additions instead of chasing a separate heavy HUD stack.

### Recommendation

Start with `SkyHUD` as the strongest first-pass HUD baseline. Keep `TrueHUD` as an optional companion where testing shows it materially improves combat and target readability, but do not let it become the default answer to every HUD problem. Let the final visual tone still come primarily from the chosen `Oathvein UI` versus `Norden UI` direction.

### Why This Is The Right Baseline

`Elder Wilds` already favors layered decisions over giant all-in-one swings. `SkyHUD` fits that approach well: it gives the project a practical HUD foundation without pre-solving every stylistic choice or flooding the screen with information. `TrueHUD` remains valuable because it can solve real readability issues for a third-person-first combat setup, but keeping it secondary protects the UI section from turning into a combat-feedback arms race. The repo also already narrowed full visual identity to `Oathvein UI` or `Norden UI`, so the HUD subsection should support that decision, not replace it.

### Working Guidance For Elder Wilds

- Judge the HUD first by normal play rhythm: exploration, combat readability, looting pace, and whether the screen feels calm enough to live with for hours.
- Use `SkyHUD` as the main baseline for deciding how much persistent information should stay visible and how restrained the default layout should be.
- Treat `TrueHUD` as a targeted readability add-on, not a requirement, and only keep it if it clearly helps third-person combat flow.
- Let `Oathvein UI` or `Norden UI` determine the broader visual tone rather than trying to solve visual identity entirely through HUD widgets.
- Keep compass density, marker philosophy, and true minimal-HUD experimentation for the later dedicated subsection so this section stays about the core HUD layer.

### What Elder Wilds Should Prioritize

- A HUD that stays readable during third-person combat without constantly demanding attention.
- A presentation that feels modern and deliberate rather than noisy or overloaded.
- Clear separation between combat feedback, general HUD layout, and later compass/minimal-HUD choices.
- A HUD layer that still works with the final `Oathvein UI` or `Norden UI` visual direction.

### Research Tasks

- Confirm `SkyHUD` and the chosen `Oathvein UI` or `Norden UI` direction behave cleanly together on Steam `1.6.1170`.
- Test whether `TrueHUD` meaningfully improves target and combat readability or just adds visual clutter.
- Check whether the chosen HUD baseline remains readable during long exploration sessions, not just short combat testing.
- Record where the chosen HUD approach creates pressure on later compass, controller, ultrawide, and accessibility decisions.

### Risks To Check

- Solving weak combat readability by piling on more HUD noise instead of keeping the screen disciplined.
- Letting combat-feedback widgets quietly take over the whole HUD philosophy.
- Choosing a HUD layout that clashes with the eventual `Oathvein UI` or `Norden UI` visual direction.
- Blurring the ownership boundary between this subsection and the later compass/minimal-HUD subsection.

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred HUD-layout baseline.
- The role of `TrueHUD` is clear as an optional feedback companion rather than the whole HUD answer.
- The subsection preserves the repo's visual-direction choice between `Oathvein UI` and `Norden UI`.
- Compass, markers, and minimal-HUD questions remain clearly deferred to the later dedicated subsection.

## Inventory And Item Card Improvements

### Core Idea

This subsection owns how item lists, sorting, weight/value scanning, and item-card readability feel during ordinary looting and inventory management. It should make menu-heavy play cleaner and more informative without turning the whole UI stack into an endless pile of micro-fixes.

### Suggested Options

- General item-info route: use `moreHUD SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12688> if `Elder Wilds` wants richer contextual item information outside pure inventory-list browsing as part of the same broader readability push.
- Information-density route: use `moreHUD Inventory Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/18619> if `Elder Wilds` wants stronger at-a-glance item information inside inventory views without replacing the broader menu foundation.
- Clean-card route: use `SkyUI Item Card Fixes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29116> if the main problem is inconsistent or awkward item-card presentation rather than a lack of item details.
- Sorting-and-icon route: use `Aura's Inventory Tweaks (More SkyUI Icons Sorting Options and More)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/68557> if the project wants inventory browsing to feel more structured and visually scannable through stronger categorization and icon support.

### Recommendation

Start with `moreHUD Inventory Edition` as the strongest first-pass baseline because it improves day-to-day inventory readability in a way that is immediately visible during normal play. Keep `moreHUD SE` as the adjacent broader companion if the project wants the same readability philosophy to carry beyond inventory lists into general item inspection. Keep `SkyUI Item Card Fixes` as the cleaner, narrower comparison if the main pain point is item-card presentation discipline rather than more information. Keep `Aura's Inventory Tweaks` as the more organizational comparison if the final UI direction proves to need stronger sorting and icon structure rather than just clearer cards and details.

### Why This Is The Right Baseline

`Elder Wilds` already leans toward interface decisions that materially help ordinary play instead of chasing novelty for its own sake. `moreHUD Inventory Edition` fits that philosophy well because it improves the usefulness of existing inventory interaction without demanding a whole new visual direction. `moreHUD SE` belongs in the same conversation because it extends that general item-information philosophy beyond the inventory list itself, making it a legitimate companion rather than an unrelated extra. `SkyUI Item Card Fixes` is valuable because item-card cleanliness matters, but by itself it is a narrower quality pass than a full inventory-readability answer. `Aura's Inventory Tweaks` may end up being attractive if the project wants stronger menu structure, yet it is more of an organizational style choice and should not be assumed necessary before the basic readability baseline is judged.

### Working Guidance For Elder Wilds

- Judge this subsection by ordinary play rhythm: looting dungeons, comparing gear, checking alchemy ingredients, selling clutter, and managing carry weight without friction.
- Use `moreHUD Inventory Edition` as the first test for whether richer item details noticeably improve menu pace and decision clarity.
- Add `moreHUD SE` if the project wants that same richer-information approach to remain visible outside the inventory list rather than treating inventory readability as an isolated case.
- Treat `SkyUI Item Card Fixes` as the more disciplined fallback if the project mainly wants cleaner presentation instead of more information density.
- Treat `Aura's Inventory Tweaks` as the more structured organizational branch if the final UI direction benefits from stronger sorting, icons, and category scanning.
- Keep map, journal, magic-menu, crafting-menu, and dialogue decisions out of this subsection so inventory ownership stays clear.

### What Elder Wilds Should Prioritize

- Faster, clearer item decisions during normal play rather than flashy menu complexity.
- Better scanning of loot, gear, ingredients, and consumables without constant hovering confusion.
- An inventory layer that complements the chosen `Oathvein UI` or `Norden UI` direction rather than fighting it.
- A menu baseline that still leaves room for later crafting, accessibility, and controller-friendly decisions.

### Research Tasks

- Confirm `moreHUD SE`, `moreHUD Inventory Edition`, `SkyUI Item Card Fixes`, and `Aura's Inventory Tweaks` all behave cleanly with `SkyUI` on Steam `1.6.1170`.
- Test whether richer item details improve real looting and selling flow or just add menu density.
- Check whether the chosen `Oathvein UI` or `Norden UI` direction already solves some item-card readability problems before stacking too many extra fixes.
- Record what pressure the chosen inventory route places on later crafting-menu, controller, and accessibility decisions.

### Risks To Check

- Solving weak inventory readability by stacking too many overlapping micro-fixes.
- Choosing an information-heavy route that slows scanning instead of speeding it up.
- Letting icon and sorting customization become a substitute for clear baseline menu readability.
- Blurring ownership between inventory/item cards and later crafting, map, or journal sections.

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred inventory-readability baseline.
- The difference between broader item information, inventory-list information density, cleaner item cards, and stronger inventory organization is explicit.
- The subsection preserves room for later magic/menu, crafting, controller, and accessibility decisions.
- The chosen inventory direction remains visually compatible with the repo's `Oathvein UI` versus `Norden UI` choice.

## Map Improvements

### Core Idea

This subsection owns the world-map framework and the actual map art layered on top of it. The goal is to make travel planning and geographic readability feel deliberate and attractive without collapsing the answer into journal, dialogue, or controller support.

### Suggested Options

- Framework route: use `Flat World Map Framework (FWMF)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29932> as the required flat-map foundation if the project is committing to a modern paper-map direction rather than a 3D vanilla-style world map.
- Balanced paper route: use `Skyrim and Solstheim Paper Maps by Mirhayasu for FWMF` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/53788> if `Elder Wilds` wants a clean, readable paper-map presentation that feels broadly usable as a baseline.
- Richly styled route: use `Immersive Paper Map (3rd Edition)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/54710> if the world map should lean harder into handcrafted atmosphere and stronger old-world texture.
- Cartography-focused route: use `Skyrim Paper Map by FreelanceCartography for FWMF` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/78995> if the list wants a more explicit cartographic-paper identity built on the same framework.

### Recommendation

Start with the framework-plus-one-map route. `Flat World Map Framework (FWMF)` should be treated as the non-negotiable map foundation for this direction, and `Skyrim and Solstheim Paper Maps by Mirhayasu for FWMF` is the strongest first-pass companion because it looks purposeful without making the map harder to read. Keep `Immersive Paper Map (3rd Edition)` as the moodier, more stylized comparison and `Skyrim Paper Map by FreelanceCartography for FWMF` as the more explicitly cartographic comparison. The key decision is not whether to use `FWMF`, but which map layered on top of it best fits `Elder Wilds`.

### Why This Is The Right Baseline

You already narrowed the direction to `FWMF`, which is a strong structural choice because it cleanly separates the framework question from the art-style question. That lets `Elder Wilds` compare actual map identities instead of re-deciding the entire map system every time. `Mirhayasu` is the safest first baseline because it appears directly in the FWMF ecosystem, covers Skyrim and Solstheim, and reads like a practical baseline rather than a novelty showcase. The other two options stay useful because they give the project clearer visual comparisons without forcing a different framework.

### Working Guidance For Elder Wilds

- Treat `Flat World Map Framework (FWMF)` as the base map platform, not as an optional extra.
- Compare map choices by ordinary play loops: route planning, reading roads and terrain, orienting around cities and landmarks, and long-session comfort.
- Start with one main paper-map mod on top of `FWMF` rather than stacking multiple competing map styles.
- Use `Mirhayasu` first if the goal is a disciplined baseline, then compare `Immersive Paper Map (3rd Edition)` or `FreelanceCartography` only if you want a stronger visual identity.
- Keep this subsection focused on map framework and map art. Do not let it absorb journal-reading, dialogue, or compass/minimal-HUD ownership.

### What Elder Wilds Should Prioritize

- A map that is easy to trust during normal exploration and travel planning.
- One clear map-art direction on top of `FWMF`, not several half-adopted styles.
- Visual coherence with the chosen `Oathvein UI` versus `Norden UI` direction.
- Better geographic readability without turning the map into pure decoration.

### Research Tasks

- Confirm `Flat World Map Framework (FWMF)` and the chosen FWMF-based map behave cleanly on Steam `1.6.1170` with the current UI stack.
- Test whether `Mirhayasu`, `Immersive Paper Map (3rd Edition)`, or `FreelanceCartography` is easiest to live with during real travel planning.
- Check whether the chosen paper-map direction remains readable across Skyrim and Solstheim, not just in screenshots.
- Record what pressure the chosen map route places on later compass, marker, ultrawide, and accessibility decisions.

### Risks To Check

- Choosing map art purely for style while losing navigational readability.
- Treating `FWMF` as if it already answers which actual map style belongs in the list.
- Keeping multiple paper-map directions alive too long instead of choosing one.
- Picking a map style that clashes with the repo's `Oathvein UI` versus `Norden UI` direction.

### Acceptance Criteria

- `modlist-06.md` has `Flat World Map Framework (FWMF)` established as the map foundation.
- One clearly preferred FWMF-based map direction exists, with at least two meaningful comparison routes documented.
- The difference between framework choice and map-art choice is explicit.
- The subsection preserves room for later compass, marker, dialogue, and accessibility decisions.

## Magic And Journal Improvements

### Core Idea

This subsection owns reading comfort, text-heavy menu flow, and spell-adjacent menu usability outside the world map. The goal is to make books, journals, and configuration-heavy menu use feel cleaner and calmer without pretending every menu issue is really a map problem.

### Suggested Options

- Reading comfort route: use `Convenient Reading UI - SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/50202> if book-style reading, text sizing, and calmer text-heavy interaction flow need direct quality-of-life improvement.
- Menu-width support route: use `Wider MCM Menu for SkyUI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22825> if the growing MCM stack becomes cramped enough that menu width and text clipping start damaging normal configuration workflow.

### Recommendation

Start with the reading comfort route. `Convenient Reading UI - SE` is the strongest first-pass baseline because it improves the part of this subsection that is most likely to be felt in normal play without overcommitting to speculative spell-menu surgery. Keep `Wider MCM Menu for SkyUI` as the practical support fix if the expanding UI and gameplay stack makes configuration menus feel cramped, but do not mistake that narrower MCM answer for the whole journal and reading direction.

### Why This Is The Right Baseline

Once map ownership is split out, the remaining high-value pain points here are reading comfort and text-heavy menu width. `Convenient Reading UI - SE` is a clean fit because it improves book and reading flow directly. `Wider MCM Menu for SkyUI` also belongs here as the configuration-readability fix that becomes more valuable as this modlist accumulates more systems. Spell-menu-specific improvements remain intentionally conservative here because the current repo state still does not justify locking a weak or poorly scoped candidate just to force symmetry.

### Working Guidance For Elder Wilds

- Judge this subsection by ordinary play loops: reading books, checking notes, sitting in menus for configuration work, and using text-heavy interfaces during long sessions.
- Add `Convenient Reading UI - SE` if longer reading sessions, books, journals, or other text-heavy interactions feel more awkward than immersive.
- Use `Wider MCM Menu for SkyUI` if the growing settings stack becomes visibly cramped or clipped during normal configuration work.
- Keep this subsection focused on reading, journal flow, and spell-adjacent menu clarity. Do not let it absorb dialogue ownership, crafting-menu ownership, or controller remapping concerns.
- Revisit spell-menu-specific improvements later only if playtesting reveals a clear unresolved pain point that is still not covered by the base UI stack.

### What Elder Wilds Should Prioritize

- Reading and journal flow that feels calmer and less fussy during long sessions.
- Text-heavy menu readability that scales with the list's growing complexity.
- A restrained approach to spell-menu changes unless there is a clear real-use problem.
- Compatibility with the chosen `Oathvein UI` versus `Norden UI` visual direction.

### Research Tasks

- Confirm `Convenient Reading UI - SE` and `Wider MCM Menu for SkyUI` behave cleanly on Steam `1.6.1170` with the current `SkyUI`-based framework.
- Test whether reading comfort is important enough in actual play to justify `Convenient Reading UI - SE`.
- Check whether MCM width becomes a real usability problem once more UI and gameplay systems are installed.
- Record what pressure the chosen route places on later dialogue, controller, ultrawide, crafting, and accessibility decisions.
- Revisit spell-menu-specific improvements later only if real playtesting shows a clear unresolved pain point that this subsection still does not cover.

### Risks To Check

- Treating MCM support fixes as if they solve broader journal or spell-menu design.
- Overlapping too much with later dialogue, controller, or accessibility subsections.
- Choosing a reading layer that clashes with the repo's `Oathvein UI` versus `Norden UI` direction.
- Padding this subsection with weak or poorly scoped spell-menu picks just to make the category look more complete.

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred reading/journal usability baseline.
- The difference between reading comfort and MCM support is explicit.
- The subsection preserves room for later dialogue, controller, ultrawide, crafting, and accessibility decisions.
- Any magic-menu follow-up remains intentionally scoped rather than guessed.
- The chosen direction remains visually compatible with the repo's `Oathvein UI` versus `Norden UI` decision.

## Dialogue UI Improvements

### Core Idea

This subsection owns conversation readability, response selection clarity, and the overall feel of moment-to-moment dialogue interaction. The goal is to make talking to people feel cleaner and less fussy without collapsing this answer into controller-input handling, subtitle bugfixes, or broader journal/menu ownership.

### Suggested Options

- Control-sanity baseline: use `Better Dialogue Controls` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1429> if the main problem is unreliable dialogue option selection and awkward keyboard or mouse behavior.
- Message-box support route: use `Better MessageBox Controls` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1428> if confirmation prompts and other message-box interactions need the same kind of control cleanup.
- Visual dialogue refresh route: use `Dialogue Interface ReShaped` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/46546> if the list wants a more modern-looking dialogue presentation on top of the base framework.
- Cleaner dialogue presentation route: use `Convenient Dialogue UI - SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/57943> if the priority is calmer, more streamlined dialogue presentation rather than only control fixes.

### Recommendation

Start with the control-sanity baseline. `Better Dialogue Controls` is the strongest first-pass pick because it addresses the most fundamental dialogue friction without forcing a large stylistic commitment. Treat `Better MessageBox Controls` as the natural companion if the same interaction awkwardness also shows up in message boxes. Keep `Dialogue Interface ReShaped` and `Convenient Dialogue UI - SE` as the more presentation-forward comparison routes if testing shows the bigger problem is visual dialogue flow rather than basic control reliability.

### Why This Is The Right Baseline

`Elder Wilds` already has a strong UI direction forming around `SkyUI`, `SkyHUD`, `Oathvein UI`, and `Norden UI`. That makes it smarter to solve basic dialogue usability first before piling on another heavy presentation layer. `Better Dialogue Controls` earns that role because it is easy to explain and directly tied to ordinary play. `Better MessageBox Controls` belongs in the same conversation because message boxes often feel like the exact same family of friction. The more presentation-forward options still matter, but they should win only if they improve actual conversation flow instead of just looking newer in screenshots.

### Working Guidance For Elder Wilds

- Judge this subsection by ordinary play loops: talking to quest givers, exhausting dialogue trees, confirming prompts, trading with NPCs, and spending time in longer conversation chains.
- Start by testing whether dialogue-option selection feels reliable and calm with `Better Dialogue Controls` in place before assuming a larger dialogue redesign is necessary.
- Add `Better MessageBox Controls` if the same usability cleanup is clearly needed for prompts and confirmations.
- Compare `Dialogue Interface ReShaped` and `Convenient Dialogue UI - SE` only after the control baseline is understood, so visual preference does not get mistaken for fundamental usability.
- Keep subtitle safety and unvoiced-dialogue handling in `modlist-15.md` with `Fuz Ro D-oh - Silent Voice`; that is a bugfix concern, not the UI framework answer here.
- Keep controller-specific input comfort for the next subsection so dialogue ownership stays focused on conversation flow itself.

### What Elder Wilds Should Prioritize

- Dialogue choices that feel reliable and easy to read during normal play.
- Conversation flow that stays compatible with the chosen broader UI direction.
- Improvements that help both short NPC interactions and longer quest dialogue chains.
- A clear distinction between control cleanup, message-box cleanup, and presentation-layer redesign.

### Research Tasks

- Confirm `Better Dialogue Controls`, `Better MessageBox Controls`, `Dialogue Interface ReShaped`, and `Convenient Dialogue UI - SE` all behave cleanly on Steam `1.6.1170` with the chosen UI stack.
- Test whether `Better Dialogue Controls` plus `Better MessageBox Controls` already solve most real dialogue friction.
- Test whether `Dialogue Interface ReShaped` or `Convenient Dialogue UI - SE` materially improve conversation flow or mostly change appearance.
- Record what pressure the chosen dialogue route places on the later controller-support, accessibility, and readability subsections.
- Check whether any presentation-layer dialogue choice clashes with the final `Oathvein UI` versus `Norden UI` direction.

### Risks To Check

- Mistaking visual novelty for actual dialogue usability.
- Solving dialogue awkwardness with a larger redesign when simple control fixes would have been enough.
- Overlapping too much with the later controller-support subsection.
- Choosing a dialogue layer that clashes with the broader UI tone.
- Letting subtitle bugfix ownership drift out of `modlist-15.md` and into this section by accident.

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred dialogue usability baseline.
- The distinction between dialogue-option control fixes, message-box fixes, and presentation-layer redesign is explicit.
- The subsection preserves room for later controller, accessibility, and readability decisions.
- The chosen direction remains compatible with the repo's `Oathvein UI` versus `Norden UI` decision.
- Any subtitle or silent-voice safety remains explicitly outside this subsection.

## Controller-Friendly UI Support

### Core Idea

This subsection owns how comfortable the UI stack feels on a gamepad once the base framework, HUD, inventory, map, journal, and dialogue layers are in place. The goal is to reduce controller friction without pretending every controller problem requires a total menu redesign.

### Suggested Options

- Base controller-fix route: use `Skyrim SE Controller Interface Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1147> if the main need is cleaner controller behavior with the existing menu stack.
- Expanded gamepad-mapping route: use `Gamepad Plus Plus` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/27007> if the project wants a broader controller-input layer instead of only a light interface fix.
- Quick-access wheel route: use `Wheeler - Quick Action Wheel Of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/97345> if controller-first play would benefit from a faster, more deliberate radial-style access layer for common actions and equipment.

### Recommendation

Start with the base controller-fix route. `Skyrim SE Controller Interface Fix` is the strongest first-pass baseline because it improves controller friendliness without forcing the whole UI stack to reorganize itself around one larger system. Keep `Gamepad Plus Plus` as the broader comparison if testing shows the list needs a more assertive controller-input answer. Keep `Wheeler` as the deliberate quick-access branch if controller play clearly benefits from a radial interaction layer rather than only better menu navigation.

### Why This Is The Right Baseline

`Elder Wilds` is building a modern third-person-first setup, so controller comfort matters. But the repo has already been careful about keeping UI ownership split into understandable pieces. `Skyrim SE Controller Interface Fix` fits that discipline because it targets controller friction without pre-solving dialogue, inventory, map, and crafting through one oversized gamepad philosophy. `Gamepad Plus Plus` and `Wheeler` still matter because they represent two genuinely different escalations: broader remapping and faster radial access. They should be compared deliberately, not assumed by default.

### Working Guidance For Elder Wilds

- Judge this subsection by ordinary controller play loops: looting, opening favorites, navigating menus, talking to NPCs, checking the map, and handling combat-adjacent quick access.
- Start by testing whether `Skyrim SE Controller Interface Fix` already removes enough friction from the current UI stack before escalating to heavier controller solutions.
- Compare `Gamepad Plus Plus` only if the project clearly needs a broader controller-input layer rather than a lighter compatibility-minded fix.
- Compare `Wheeler` only if quick-access flow is a real pain point and not just a novelty add-on.
- Keep dialogue readability, inventory clarity, and map/journal ownership in their already-written subsections; this section should answer controller comfort across those layers, not replace their underlying decisions.
- Keep ultrawide scaling and accessibility adjustments for the later dedicated subsections so controller support stays focused on input comfort and menu usability.

### What Elder Wilds Should Prioritize

- Controller play that feels stable and understandable during normal use.
- Less friction moving across the already-chosen UI layers.
- A clear distinction between light controller cleanup, broader remapping, and radial quick-access philosophy.
- Support for third-person exploration and combat pacing without turning the UI stack into a controller-only design.

### Research Tasks

- Confirm `Skyrim SE Controller Interface Fix`, `Gamepad Plus Plus`, and `Wheeler - Quick Action Wheel Of Skyrim` all behave cleanly on Steam `1.6.1170` with the chosen UI stack.
- Test whether the light controller-fix baseline already solves most real friction.
- Test whether `Gamepad Plus Plus` adds meaningful controller value or just more configuration overhead.
- Test whether `Wheeler` materially improves real quick-access flow or mainly adds a new interaction style.
- Record what pressure the chosen controller route places on the later ultrawide, compass/minimal-HUD, crafting-menu, and accessibility subsections.

### Risks To Check

- Solving controller awkwardness by stacking too many overlapping input layers.
- Choosing a heavier controller route that fights the rest of the UI stack.
- Letting radial quick-access design substitute for fixing ordinary menu friction.
- Overlapping too much with earlier dialogue, inventory, and map ownership.
- Treating a controller-first branch as mandatory before normal play shows it is needed.

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred controller-support baseline.
- The distinction between light controller cleanup, broader remapping, and radial quick-access support is explicit.
- The subsection preserves room for later ultrawide, compass, crafting, and accessibility decisions.
- The chosen route remains compatible with the repo's `Oathvein UI` versus `Norden UI` direction.
- Controller support improves the existing UI layers instead of replacing their ownership boundaries.

## UI Scaling For Ultrawide And High Resolution

### Core Idea

This subsection owns how well the chosen UI stack holds up on large modern displays, with `16:9` `4K HDR` as the actual baseline target for `Elder Wilds` and ultrawide support treated as a secondary compatibility branch rather than the primary design center.

### Suggested Options

- High-resolution readability route: use `Sovngarde - Mist's Font Replacer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/386> if the main problem on a `4K` display is text presence, menu legibility, and overall UI readability at desktop viewing distance.
- Ultrawide compatibility route: use `Complete Widescreen Fix for Vanilla and SkyUI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1778> if the UI stack later needs a dedicated fix branch for non-`16:9` aspect ratios.
- Discipline-first route: keep the chosen `Oathvein UI` or `Norden UI` direction, `SkyHUD`, inventory improvements, and dialogue/map changes restrained enough that the UI remains readable on `4K` without immediately reaching for multiple scaling fixes.

### Recommendation

Start with the readability-first route. For this project, `16:9` `4K HDR` is the real target, so `Sovngarde - Mist's Font Replacer` is the stronger first-pass candidate because it directly addresses large-display text readability without pretending the main problem is ultrawide support. Keep `Complete Widescreen Fix for Vanilla and SkyUI` as the secondary compatibility branch if the list later needs to support ultrawide layouts too, but do not let that branch define the subsection.

### Why This Is The Right Baseline

`Elder Wilds` already has a layered UI plan: framework, HUD, inventory, map, journal, dialogue, and controller support each have their own ownership. On a `16:9` `4K HDR` monitor, the most immediate risk is not that the interface becomes too wide, but that text and visual hierarchy stop feeling comfortably readable from normal play distance. `Sovngarde` matters because it addresses that directly. `Complete Widescreen Fix for Vanilla and SkyUI` is still worth documenting, but as a compatibility-minded branch for aspect-ratio edge cases rather than the baseline answer for this setup.

### Working Guidance For Elder Wilds

- Judge this subsection on real `16:9` `4K` play first: inventory scanning, map reading, dialogue readability, MCM comfort, and long-session eye fatigue.
- Start by testing whether the existing UI stack is already readable enough at `4K` before layering on extra scaling fixes out of habit.
- Compare `Sovngarde - Mist's Font Replacer` if text density, menu legibility, or visual hierarchy still feel too fine on a high-resolution screen.
- Keep `Complete Widescreen Fix for Vanilla and SkyUI` documented as the secondary branch for ultrawide compatibility instead of treating it as the default answer for this monitor setup.
- Keep HDR concerns practical: this subsection should focus on readability, clarity, and screen-space behavior, not drift into post-processing or display-calibration territory.
- Preserve ownership boundaries with controller support, compass/minimal-HUD decisions, and later accessibility work.

### What Elder Wilds Should Prioritize

- Comfortable text readability and menu clarity on a `16:9` `4K` display.
- A UI stack that still feels clean after long play sessions instead of only looking stylish in screenshots.
- A clear distinction between high-resolution readability improvements and true ultrawide compatibility fixes.
- Compatibility with the chosen `Oathvein UI` or `Norden UI` direction without forcing a separate visual identity.

### Research Tasks

- Confirm `Sovngarde - Mist's Font Replacer` behaves cleanly with `SkyUI`, the chosen `Oathvein UI` or `Norden UI` direction, and the current dialogue/journal/map stack.
- Confirm `Complete Widescreen Fix for Vanilla and SkyUI` remains the correct documented branch if ultrawide support later matters.
- Test whether `4K` readability issues are real enough to justify a font/scaling adjustment rather than just slightly refining the existing UI stack.
- Record what pressure the chosen readability branch places on later compass/minimal-HUD, crafting-menu, and accessibility decisions.

### Risks To Check

- Treating ultrawide support as the default problem when the actual baseline display is `16:9` `4K`.
- Solving high-resolution readability by stacking too many unrelated UI tweaks at once.
- Choosing a font or scaling adjustment that fights the tone of `Oathvein UI` or `Norden UI`.
- Letting HDR discussion drift into graphics/display calibration instead of UI readability.
- Blurring the line between this subsection and later accessibility work.

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred high-resolution readability baseline for the actual `16:9` `4K` target.
- The distinction between `4K` readability work and ultrawide compatibility support is explicit.
- The subsection preserves room for later compass, crafting, and accessibility decisions.
- The chosen route remains compatible with the repo's `Oathvein UI` versus `Norden UI` direction.
- UI scaling guidance improves readability without collapsing into a generic display-settings subsection.

## Compass, Markers, And Minimal HUD Options

### Core Idea

This subsection owns how much navigational information stays on screen during ordinary play: compass behavior, marker density, and whether the HUD should fade away unless it is actually needed. The goal is to make exploration cleaner and more intentional without undoing the broader HUD, map, or controller decisions that are already in place.

### Suggested Options

- Navigation-first compass route: use `Compass Navigation Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/74484> if the main goal is a smarter, more purposeful compass layer with better navigational behavior rather than simply showing less UI.
- Map-aware marker route: use `CoMAP - Common Marker Addon Project` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56123> if the bigger need is cleaner marker consistency and broader map-and-compass marker support across locations and systems on top of the chosen `FWMF` direction.
- Dynamic minimal-HUD route: use `Immersive HUD - iHUD Special Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12440> only if the project wants the screen to stay calm most of the time and reveal interface elements when they are useful without undermining the readability of the chosen paper-map navigation style.

### Recommendation

Start with the navigation-first route plus explicit marker discipline. `Compass Navigation Overhaul` is still the strongest first-pass baseline because it answers the actual navigational layer directly instead of jumping immediately to a full hide-the-HUD philosophy. `CoMAP` fits the chosen `FWMF` map direction well because it is specifically about map and compass marker design, assignment, and consistency, so it is the natural marker-side companion when the project wants a cleaner paper-map ecosystem instead of a looser vanilla marker language. Keep `Immersive HUD - iHUD Special Edition` as the deliberate minimal-HUD branch only if testing shows that reduced on-screen persistence materially improves exploration tone rather than making the paper-map-and-compass loop less readable.

### Why This Is The Right Baseline

`Elder Wilds` already has separate owners for framework, HUD layout, map, dialogue, controller support, and `4K` readability. That makes it important to keep this subsection focused on the navigational layer itself. `Compass Navigation Overhaul` fits that need best because it improves the compass as a tool instead of assuming the right answer is always to hide more of the UI. `CoMAP` is more than a generic extra here: because it explicitly supports custom map and compass marker designs and assignments, it is well suited to a curated `FWMF` paper-map direction where marker language should stay coherent with the chosen map framework. `iHUD` still belongs here, but as the most conditional option of the three, because it changes how often the player sees UI at all instead of directly strengthening the paper-map navigation layer.

### Working Guidance For Elder Wilds

- Judge this subsection by ordinary exploration loops: walking through cities, traveling across wilderness, approaching objectives, checking nearby points of interest, and deciding whether the screen feels informative without feeling crowded.
- Start by testing whether `Compass Navigation Overhaul` already gives enough navigational clarity before assuming the right answer is a more aggressive minimal-HUD approach.
- Compare `CoMAP` early if marker consistency or marker language starts to feel uneven across the growing mod stack, especially once the chosen `FWMF` map art and map framework are locked in.
- Compare `Immersive HUD - iHUD Special Edition` only after the paper-map-plus-compass loop already feels readable, because hiding UI more aggressively is less valuable if it makes the chosen `FWMF` direction harder to use in normal exploration.
- Keep `SkyHUD` as the broader HUD-layout owner, `FWMF` plus map-art choices as the map owner, and `TrueHUD` as the already-scoped gameplay feedback companion rather than letting this subsection absorb those jobs.
- Preserve room for the later crafting-menu and accessibility subsections so marker density and visibility choices do not pre-solve those concerns by accident.

### What Elder Wilds Should Prioritize

- Cleaner exploration readability without turning navigation into guesswork.
- A clear distinction between compass behavior, FWMF-friendly marker support, and true minimal-HUD philosophy.
- A navigational layer that works with the chosen `Oathvein UI` or `Norden UI` direction rather than fighting it.
- Normal-play usability over screenshot-driven minimalism.

### Research Tasks

- Confirm `Compass Navigation Overhaul`, `CoMAP - Common Marker Addon Project`, and `Immersive HUD - iHUD Special Edition` all behave cleanly on Steam `1.6.1170` with the current `SkyUI`-based stack.
- Test whether `Compass Navigation Overhaul` already provides enough directional clarity and compass discipline for normal exploration.
- Test whether `CoMAP` materially improves marker consistency across the chosen `FWMF` map direction and the growing modlist or mainly adds ecosystem complexity that is not yet needed.
- Test whether `Immersive HUD - iHUD Special Edition` improves exploration tone without hiding too much useful information during ordinary play.
- Record what pressure the chosen route places on later crafting-menu and accessibility decisions.

### Risks To Check

- Treating minimalism itself as proof of better usability.
- Solving uneven marker language by stacking too many compass and HUD layers at once.
- Choosing a dynamic-HUD route that looks immersive but slows ordinary navigation.
- Letting this subsection overlap too heavily with the already-set HUD, map, or gameplay-feedback boundaries.
- Choosing a marker ecosystem because it is broad rather than because the chosen `FWMF` direction and actual modlist need it.

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred compass/navigation baseline.
- The distinction between compass behavior, FWMF-friendly marker support, and minimal-HUD philosophy is explicit.
- The subsection preserves the existing ownership boundaries with `SkyHUD`, `FWMF`, and gameplay-side `TrueHUD` usage.
- The chosen route remains compatible with the repo's `Oathvein UI` versus `Norden UI` direction.
- The subsection preserves room for later crafting-menu and accessibility decisions.

## Crafting Menu Improvements

### Core Idea

This subsection owns the user-interface side of crafting: category clarity, menu scan speed, recipe browsing, and whether crafting stations feel readable and organized during normal use. It should improve how the player navigates crafting menus without re-deciding the broader crafting-system philosophy that already belongs to `modlist-05.md`.

### Suggested Options

- Keyword-category route: use `Constructible Object Custom Keyword System` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/81409> if the main goal is a cleaner, more extensible crafting menu with better category structure for `SkyUI`-based crafting stations.
- Vanilla-category fallback: use `SkyUI - Vanilla Crafting menu` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/18717> if the main problem is that `SkyUI`'s crafting layout feels worse than vanilla and the project would rather restore familiar split categories than build a more system-aware menu layer. Treat this as a weaker fit if the gameplay-side route leans into `Complete Alchemy and Cooking Overhaul`, because a larger added recipe ecosystem benefits more from structured category support than from a simple return to vanilla-style presentation.
- Discipline-first route: keep the current `SkyUI` crafting presentation if real playtesting shows the menu is already readable enough and the bigger problems live in crafting rules, progression, or item balance rather than in the menu itself.

### Recommendation

Start with the keyword-category route. `Constructible Object Custom Keyword System` is the strongest first-pass baseline because it directly improves the usability of the Constructible Object Menu and is built to support a broader, modded crafting ecosystem without collapsing back to a more limited layout. Keep `SkyUI - Vanilla Crafting menu` as the meaningful fallback only if the project still prefers vanilla-style split categories and is not relying on a heavier content-expansion route like `Complete Alchemy and Cooking Overhaul` to carry a lot of extra crafting and cooking complexity. Keep the discipline-first route alive long enough to confirm the menu is actually the problem before layering on a UI answer by default.

### Why This Is The Right Baseline

`modlist-05.md` already chose to compare crafting philosophies through `Ars Metallica`, `Complete Crafting Overhaul Remastered`, and `Honed Metal`, while the alchemy subsection separately keeps `Complete Alchemy and Cooking Overhaul` alive as a larger consumables-system branch. That means this subsection should stay focused on menu usability, not on changing smithing rules through the back door. `Constructible Object Custom Keyword System` fits that boundary well because it is explicitly about improving the `SkyUI` constructible-object menu with a more usable category system and is better aligned with a modlist that may accumulate many added recipes. `SkyUI - Vanilla Crafting menu` still matters as a real comparison because some players genuinely prefer vanilla's split-category logic over `SkyUI`'s denser list format, but it becomes a weaker match if `Elder Wilds` leans hard into `CACO` and its broader cooking/alchemy recipe footprint. Comparing those two routes gives `Elder Wilds` a clear UI choice: more structured `SkyUI` crafting or a cleaner return to vanilla-style category behavior.

### Working Guidance For Elder Wilds

- Judge this subsection by ordinary crafting loops: forging gear, tempering, tanning, smelting, cooking, and checking mod-added crafting stations during real play.
- Start by testing whether `Constructible Object Custom Keyword System` meaningfully improves category clarity and browsing speed once the modlist has more recipes and crafting stations installed.
- Compare `SkyUI - Vanilla Crafting menu` only if the main complaint is that `SkyUI`'s crafting view feels too list-heavy and less readable than vanilla's split categories, and only if the gameplay-side route is not depending on a large `CACO`-style recipe expansion that would benefit from stronger category handling.
- Keep this subsection focused on menu structure and readability. Do not let it absorb smithing progression, crafting balance, enchanting rules, or NPC-crafting philosophy from `modlist-05.md`.
- If the current crafting menus are already readable enough, prefer not to add extra UI complexity just for symmetry with other subsections.

### What Elder Wilds Should Prioritize

- Faster recipe scanning and cleaner category logic during ordinary crafting use.
- A crafting-menu direction that still works once mod-added recipes and stations accumulate.
- Clear separation between UI-side crafting usability and gameplay-side crafting systems.
- Compatibility with the chosen `Oathvein UI` versus `Norden UI` direction and the existing `SkyUI`-based stack.

### Research Tasks

- Confirm `Constructible Object Custom Keyword System` and `SkyUI - Vanilla Crafting menu` both behave cleanly on Steam `1.6.1170` with the chosen `SkyUI`-based UI stack.
- Test whether `Constructible Object Custom Keyword System` materially improves browsing speed and category clarity once the modlist's crafting ecosystem grows.
- Test whether `SkyUI - Vanilla Crafting menu` is genuinely easier to live with in practice or mainly a preference-based reversion.
- Check whether a `CACO`-heavy gameplay route makes the vanilla-category fallback less attractive than a more extensible category system.
- Check whether either route causes visual or usability friction with the chosen `Oathvein UI` or `Norden UI` direction.
- Record what pressure the chosen crafting-menu route places on the final accessibility and readability subsection.

### Risks To Check

- Solving crafting frustration with a menu layer when the actual issue lives in gameplay-side crafting rules.
- Choosing a fallback reversion route simply because it feels familiar rather than because it is more readable in real play.
- Pairing a vanilla-style fallback with a large `CACO` recipe footprint and then blaming the UI for friction that really comes from the mismatch.
- Letting crafting-menu tweaks drift into broader inventory, controller, or accessibility ownership.
- Adding menu complexity that is unnecessary if the current `SkyUI` crafting presentation is already good enough.

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred crafting-menu usability baseline.
- The difference between a more extensible category system and a vanilla-style category fallback is explicit.
- The subsection preserves the ownership boundary with gameplay-side crafting decisions in `modlist-05.md`.
- The chosen route remains compatible with the repo's `Oathvein UI` versus `Norden UI` direction.
- The subsection preserves room for the final accessibility and readability work.

## Accessibility And Readability Improvements

### Core Idea

This subsection owns the final pass on general UI legibility and comfort: readable text, sane menu density, configuration clarity, and whether the full UI stack remains easy to live with over long sessions. It should improve everyday usability without re-deciding dialogue, map, controller, crafting, or HUD philosophy that earlier subsections already own.

### Suggested Options

- High-resolution text route: use `Sovngarde - Mist's Font Replacer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/386> if the main remaining pain point is text presence, menu legibility, and visual hierarchy on the actual `16:9` `4K HDR` target. Recommended file: `Sovngarde - Mist's Font Replacer Bold V8.9`.
- Configuration-readability route: use `Wider MCM Menu for SkyUI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22825> if the growing settings stack becomes cramped enough that configuration itself is harder to read than the in-game UI.
- Discipline-first route: keep the current `SkyUI` + `Oathvein UI` or `Norden UI` stack with the already-chosen inventory, dialogue, map, and crafting improvements if real playtesting shows the UI is already readable enough and the remaining issues are too minor to justify another layer.

### Recommendation

Start with the discipline-first route, then apply targeted readability support only where the current stack still shows a real weakness. `Sovngarde - Mist's Font Replacer` remains the strongest first-pass accessibility candidate because the repo already identified `16:9` `4K HDR` readability as a practical concern, and font presence is one of the clearest ways to improve long-session comfort without redesigning the entire interface. For this display target, prefer the file `Sovngarde - Mist's Font Replacer Bold V8.9` first, then fall back to the light variant only if the bold face feels too heavy in the chosen `Oathvein UI` or `Norden UI` direction. Keep `Wider MCM Menu for SkyUI` as the narrower support answer when the main friction lives in configuration readability rather than in the ordinary in-game interface itself.

### Why This Is The Right Baseline

`modlist-06.md` already has separate owners for framework, HUD, inventory, map, journal, dialogue, controller support, high-resolution scaling, compass behavior, and crafting-menu usability. That means the final subsection should not hunt for a brand-new subsystem just to feel complete. The highest-value accessibility work here is to make the existing stack more comfortable to read and live with. `Sovngarde - Mist's Font Replacer` still fits because it directly supports the project's `4K` readability needs, while `Wider MCM Menu for SkyUI` remains the specific configuration-readability answer as the list grows more complex. Anything beyond that should clear a high bar and not just duplicate fixes already covered elsewhere.

### Working Guidance For Elder Wilds

- Judge this subsection by long-session comfort: reading inventory details, scanning map labels, reading books, using MCMs, checking dialogue text, and browsing crafting menus after hours of play.
- Start by testing the current UI stack as-is before assuming another fix is necessary.
- Keep `Sovngarde - Mist's Font Replacer` in play if text still feels too fine or visually weak at the actual `16:9` `4K HDR` setup, starting with `Sovngarde - Mist's Font Replacer Bold V8.9`.
- Keep `Wider MCM Menu for SkyUI` focused on configuration readability; do not mistake it for a full accessibility solution.
- Leave subtitle safety and unvoiced-dialogue handling in `modlist-15.md` with `Fuz Ro D-oh - Silent Voice`; that is still a bugfix boundary, not the main UI accessibility answer here.
- Avoid stacking readability tweaks simply because each one seems individually reasonable. The final UI pass should reduce friction, not create another layer of visual inconsistency.

### What Elder Wilds Should Prioritize

- Comfortable text readability across long play sessions on the real `16:9` `4K HDR` baseline.
- Clear separation between ordinary interface readability and MCM/configuration readability.
- A final UI stack that remains coherent with `Oathvein UI` or `Norden UI` instead of fighting that visual direction.
- Practical usability improvements that are obvious during normal play, not only during static menu inspection.

### Research Tasks

- Confirm whether the current `SkyUI` + `Oathvein UI` or `Norden UI` stack is already readable enough in real `4K` play before locking additional support.
- Re-check `Sovngarde - Mist's Font Replacer` against the full UI stack once the final visual direction is chosen.
- Re-check `Wider MCM Menu for SkyUI` once more gameplay systems are installed and the MCM load is closer to final reality.
- Record which remaining readability issues are truly general accessibility concerns versus issues already owned by dialogue, map, inventory, crafting, or controller subsections.

### Risks To Check

- Using a final accessibility pass to relitigate decisions that earlier UI subsections already settled.
- Stacking too many small readability tweaks and ending up with an incoherent visual hierarchy.
- Treating MCM comfort as if it automatically solves ordinary gameplay readability.
- Choosing fixes because they are famous rather than because the current UI stack still has a clear unresolved problem.

### Acceptance Criteria

- `modlist-06.md` finishes with one clear readability-first fallback and one clear configuration-readability support route.
- The distinction between general `4K` readability and MCM readability is explicit.
- The subsection preserves earlier ownership boundaries for dialogue, map, crafting, controller support, and subtitle bugfixes.
- The final UI stack remains coherent with the chosen `Oathvein UI` versus `Norden UI` direction.
- `modlist-06.md` can be considered fully expanded once this subsection is complete.
