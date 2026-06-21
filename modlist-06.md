# Modernized UI

**MO2 Separator:** `06 UI` → `06a Framework & HUD`, `06b Inventory & Items`, `06c Map, Dialogue, Menus`

## UI Framework Prerequisites → `06a Framework & HUD`

### Core Idea

- This subsection owns the base menu and interface framework that the rest of the UI stack builds on.
- It should decide infrastructure first without collapsing HUD styling, inventory redesign, map replacements, or controller support into one giant UI choice.

### Options

- Core baseline route: `SkyUI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12604> → `06a`
- Support-framework route: `UIExtensions` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/17561> → `06a`
- Grim-dark visual overhaul: `Oathvein UI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/160916> → `06a`
- Modern-rustic visual overhaul: `Norden UI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/166086> → `06a`
- Next-gen web-UI framework branch: `Prisma UI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/148718> → `06a`

### Recommendation

- Start with `SkyUI` as the non-negotiable baseline. → `06a`
- Treat `UIExtensions` as support infrastructure where later chosen mods need it rather than as a competing UI identity. → `06a`
- Set `Oathvein UI` as the locked visual direction. Both `Oathvein UI` and `Norden UI` are by the same author (`Nithog`) and both are actively maintained, but `Oathvein` is the chosen path for `Elder Wilds`: its grim-dark presentation matches the project tone better, and its dependency chain is cleaner than `Norden UI`'s `Extended UI` requirement. → `06a`
- Keep `Prisma UI` as a documented next-gen framework comparison rather than the default choice. It is a web-UI framework that replaces `SkyUI` rather than extending it, which makes it incompatible with the `Oathvein UI` visual direction and with most UIExtensions-based mods from later subsections. Locked baseline stays `SkyUI` + `Oathvein UI`; `Prisma UI` is documented for projects that want to pursue the framework-replacement path instead of the visual-overhaul path. → `06a`
- Keep `TrueHUD` scoped to gameplay/UI boundary as a combat-feedback companion, not a framework decision. → `06a`
- Add `Constructible Object Custom Keyword System (COCKS)` as the crafting-menu category infrastructure baseline. It owns the keyword-based category structure that underpins the crafting-menu readability improvements in the Crafting Menu Improvements subsection. Locked alongside the other framework picks here rather than buried in the crafting subsection alone. → `06a`
- Add `MCM Helper` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/53000> as a UI framework prerequisite. It persists MCM settings across saves and new games, and is a hard dependency of `True Directional Movement`, `Compass Navigation Overhaul`, and several other mods already in the stack. → `06a`

### Risks & Compatibility

- Visual-theme choices can get mistaken for infrastructure requirements too early.
- `Norden UI`'s dependency on `Extended UI` adds a fragile third-party link with no official SE port. → `06a`
- A highly stylized framework can look distinctive while weakening readability in ordinary play.

### Acceptance Criteria

- `modlist-06.md` has one clear UI framework baseline: `SkyUI` + `Oathvein UI`. → `06a`
- The role of `UIExtensions` is explicit as support infrastructure rather than a competing full UI direction. → `06a`
- The visual baseline is narrowed to `Oathvein UI` with a clear rationale for why it fits `Elder Wilds` over `Norden UI`. → `06a`
- `COCKS` is locked as the crafting-menu category infrastructure baseline alongside the other framework picks. → `06a`

## HUD Overhaul → `06a Framework & HUD` → `06a`

### Core Idea

- This subsection owns the main on-screen HUD layer: health, stamina, magicka, target readability, and how much permanent interface structure should remain visible during ordinary play.
- It should improve readability and tone without absorbing the later compass, marker, or minimal-HUD question.

### Options

- Layout-control route: `SkyHUD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/463> → `06a`
- Feedback-companion route: `TrueHUD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/62775> → `06a`
- Framework-led route: let `Oathvein UI` carry most of the HUD styling identity. → `06a`
- Stats-overlay route: `Stats Tracker Menu - STM` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/180653> → `06a`

### Recommendation

- Start with `SkyHUD` as the baseline HUD layout framework. It handles widget positioning, visibility control, and style consistency across screen sizes. → `06a`
- Add `TrueHUD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/62775> as the dedicated combat-feedback companion. `TrueHUD` is by the same author as `True Directional Movement` (already in `modlist-04.md`), has `59,281` endorsements and over `2 million` unique downloads, and provides actor info bars, boss bars, player widgets, and recent-loot logging. It was last updated `December 2023` (feature-complete). Keep `TrueHUD` scoped to combat-feedback additions only, not as a competing HUD framework. → `06a`
- Add `Casting Bar` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/80455> as a small, focused cast-and-draw timing companion. It solves a real readability gap for spells, shouts, and bow draw without trying to become another full HUD framework, so it fits naturally next to `SkyHUD` and `TrueHUD` rather than competing with them. → `06a`
- Keep `Stats Tracker Menu - STM` as a documented stats-overlay companion rather than a baseline. It is brand new (v1.0.1, May 2026) with very low community signal, so lock it in only after playtesting confirms it does not fight `SkyHUD` widget positioning or `TrueHUD` combat feedback. If accepted, it lives next to those two as a third scoped addition (stats display), not a replacement for either. → `06a`
- Add `Floating Damage` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/14332> as an optional combat-feedback overlay. Displays floating damage numbers above hit targets with configurable color, size, duration, and position via `FloatingDamage.ini`. Useful for build-testing and damage-visibility feedback but potentially at odds with the minimal-HUD presentation pillar. Keep optional — install only after playtesting confirms the visual noise level is acceptable alongside the chosen HUD stack. → `06a`
- Let the final visual tone come primarily from the chosen `Oathvein UI` direction. → `06a`
- Keep compass density, marker philosophy, and minimal-HUD experimentation for the later dedicated subsection.

### Risks & Compatibility

- Weak combat readability can tempt the section into solving everything with extra HUD noise.
- Combat-feedback widgets can quietly take over the whole HUD philosophy if not kept scoped.
- Smaller feedback widgets like `Casting Bar` are useful precisely because they are narrow; avoid stacking too many narrow overlays until the screen starts feeling busier instead of clearer. → `06a`
- `Stats Tracker Menu` is brand new with no community validation; if it breaks, the player loses a non-essential overlay. Keep it scoped to stats display only and verify it does not move `SkyHUD` widgets. → `06a`
- The HUD layer can drift into later compass and marker ownership if the boundary is not kept explicit.

### Acceptance Criteria

- `modlist-06.md` has `SkyHUD` as the HUD-layout baseline and `TrueHUD` as the combat-feedback companion, with clear role separation. → `06a`
- `Casting Bar` is documented as a narrow casting-and-draw readability companion, not as a second HUD framework. → `06a`
- `TrueHUD` is documented as a combat-feedback layer, not the whole HUD answer. → `06a`
- `Stats Tracker Menu` (if accepted) is documented as a stats-overlay companion, not a HUD-framework replacement. → `06a`
- Compass, markers, and minimal-HUD questions remain clearly deferred.

## Inventory And Item Card Improvements → `06b Inventory & Items`

### Core Idea

- This subsection owns how item lists, sorting, weight/value scanning, and item-card readability feel during ordinary looting and inventory management.
- It should make menu-heavy play cleaner and more informative without turning the whole stack into an endless pile of micro-fixes.

### Options

- General item-info route: `moreHUD SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12688> → `06b`
- Information-density route: `moreHUD Inventory Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/18619> → `06b`
- Clean-card route: `SkyUI Item Card Fixes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29116> → `06b`
- Sorting-and-icon route: `Aura's Inventory Tweaks (More SkyUI Icons Sorting Options and More)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/68557> → `06b`
- Weapon-stat overlay route: `Weapon Stat Viewer V2` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/127249> → `06b`
- Item-info injection route: `Inventory Interface Information Injector` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/85702> — a lightweight SKSE plugin by M8r98a4f2 (same author as moreHUD) that injects extra item information (value, weight, damage, armor rating, value-per-weight) directly into the inventory interface without altering the SkyUI layout or requiring a core UI framework change. Does not make any inventory list invalidation calls. → `06b`
- Enchantment-icon route: `Dynamic Inventory Icon Injector` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/174136> — a utility mod that dynamically loads custom icon textures for enchantment icons, acting as the dependency layer for `Enchanted Icon Overhaul`. → `06b`
- Optional enchantment-icon route: `Enchanted Icon Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/174246> — adds distinct icons for learned, artifact, and learnable enchantments so the player can visually distinguish them at a glance without opening the item card. Depends on `Dynamic Inventory Icon Injector`. → `06b`
- Icon-quality route: `I4 Armor Icons Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/119824> — replaces all armor icons in SkyUI with higher-fidelity, hand-crafted icons by komegaki. Covers light armor, heavy armor, clothing, shields, and jewelry categories. → `06b`
- Shout-icon route: `I4 Shout Icons Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/107334> — replaces all shout and dragon language icon textures with higher-fidelity versions by komegaki. Complements the I4 armor and weapon icon family. → `06b`
- Weapon-icon route: `I4 Weapon Icons Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/106432> — replaces all weapon category icons in SkyUI with hand-crafted icons by komegaki. Covers 30+ weapon categories including mod-added types (katana, gun, scythe, crossbow, etc.). Depends on `Inventory Interface Information Injector` for icon injection. → `06b`
- Comprehensive icon-collection route: `The Handy Icon Collection Collective (THICC)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/90508> — a large-scale icon resource providing thousands of high-fidelity icons for weapons, armor, potions, scrolls, ingredients, and misc items. Serves as an icon source for I4-based distribution; zero plugin overhead. Requires `Inventory Interface Information Injector` for standalone I4-based distribution. → `06b`

### Recommendation

- Make both `moreHUD SE` and `moreHUD Inventory Edition` mandatory baseline picks for the UI stack. → `06b`
- `moreHUD SE` handles the broader item-information layer outside pure inventory lists, while `moreHUD Inventory Edition` extends that same readability philosophy into the inventory views used constantly during normal play. → `06b`
- Keep `SkyUI Item Card Fixes` as the cleaner, narrower comparison if the main pain point is item-card presentation discipline rather than more information. → `06b`
- Keep `Aura's Inventory Tweaks` as the more organizational comparison if the final UI direction proves to need stronger sorting and icon structure rather than just clearer cards and details. → `06b`
- Keep `Weapon Stat Viewer V2` as a documented weapon-stat overlay companion rather than a baseline. It surfaces weapon damage numbers in real time (so the player can compare weapons without opening menus), and it is more useful than the other options here for the combat-experience pillar. Lock it in only if the chosen UI framework (`SkyUI` + `Oathvein UI`) renders it cleanly; verify it before treating it as part of the locked inventory stack. → `06b`
- Add `Inventory Interface Information Injector` as a lightweight data-fill companion alongside the moreHUD baseline. By the same author (M8r98a4f2), it adds value, weight, and stat-per-weight columns to inventory views without touching SkyUI layout records or making invalidation calls — zero compatibility risk with `moreHUD`, `Weapon Stat Viewer V2`, or the `Oathvein UI` visual direction. → `06b`
- Keep `Dynamic Inventory Icon Injector` as the mandatory utility dependency if `Enchanted Icon Overhaul` is selected. It provides the icon-injection infrastructure and has been stable as of mid-2025. → `06b`
- Add `Enchanted Icon Overhaul` as the optional icon-enhancement branch. It is not part of the mandatory inventory-readability baseline, but it adds genuine scannability value for enchantment-heavy play styles by making the enchantment type visible at a glance. Evaluate after the core inventory stack is stable. → `06b`
- Add the `I4` icon family (`I4 Armor Icons Overhaul`, `I4 Shout Icons Overhaul`, `I4 Weapon Icons Overhaul`) as the visual icon-quality upgrade. The I4 family replaces the stock SkyUI icons with higher-fidelity hand-crafted assets across armor, shout, and weapon categories. `I4 Weapon Icons Overhaul` depends on `Inventory Interface Information Injector` (already a baseline pick). Add them as the icon-pipeline counterpart to the information-density layer, not as a substitute for readability mods. → `06b`
- Add `The Handy Icon Collection Collective (THICC)` as an optional icon-depth layer. It provides thousands of icons for weapons, armor, potions, ingredients, scrolls, and misc items as a resource the I4 ecosystem can distribute. Treat it as optional icon variety on top of the I4 family — zero plugin overhead, zero compatibility risk, purely additive visual variety. → `06b`
- Keep map, journal, magic-menu, crafting-menu, and dialogue decisions out of this subsection so inventory ownership stays clear.

### Risks & Compatibility

- Inventory readability can be over-solved by stacking too many overlapping micro-fixes.
- A more information-heavy route can slow scanning instead of speeding it up.
- Icon and sorting customization can become a substitute for clear baseline menu readability.
- `Weapon Stat Viewer V2` is a relatively new mod with low endorsement count (447). Verify it does not conflict with the chosen UI framework, and treat it as opt-in until the project has tested it. → `06b`

### Acceptance Criteria

- `modlist-06.md` treats `moreHUD SE` plus `moreHUD Inventory Edition` as the mandatory inventory-readability baseline. → `06b`
- The difference between broader item information, inventory-list information density, cleaner item cards, and stronger inventory organization is explicit.
- The subsection still leaves room for later crafting, controller, and accessibility decisions.

## Map Improvements → `06c Map, Dialogue, Menus` → `06c`

### Core Idea

- This subsection owns the world-map framework and the actual map art layered on top of it.
- The goal is deliberate travel planning and geographic readability without collapsing the answer into journal, dialogue, or controller support.

### Options

- Framework route: `Flat World Map Framework (FWMF)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29932> → `06c`
- Local-map companion route: `Local Map Upgrade` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/129756> → `06c`
- Balanced paper route: `Skyrim and Solstheim Paper Maps by Mirhayasu for FWMF` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/53788> → `06c`
- Richly styled route: `Immersive Paper Map (3rd Edition)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/54710> → `06c`
- Cartography-focused route: `Skyrim Paper Map by FreelanceCartography for FWMF` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/78995> → `06c`

### Recommendation

- Treat `Flat World Map Framework (FWMF)` as the non-negotiable foundation for this direction. → `06c`
- Add `Local Map Upgrade` as the local-map-side companion. It improves the interior and close-range navigation layer without replacing the world-map framework, so it fits under the same map-ownership decision rather than competing with the paper-map art choice. → `06c`
- Start with `Skyrim and Solstheim Paper Maps by Mirhayasu for FWMF` as the strongest first-pass companion because it looks purposeful without making the map harder to read. → `06c`
- Keep `Immersive Paper Map (3rd Edition)` as the moodier, more stylized comparison and `FreelanceCartography` as the more explicitly cartographic comparison. → `06c`
- Keep the key question focused on which world-map art belongs on top of `FWMF`, not whether the project still needs to re-decide the framework. → `06c`

### Risks & Compatibility

- It is easy to choose map art for style while losing navigational readability.
- `FWMF` can be treated as if it already answers the map-art decision when it does not. → `06c`
- Local-map improvements can get conflated with the world-map overhaul choice even though they solve different problems.
- Keeping several paper-map directions alive too long creates avoidable ambiguity.

### Acceptance Criteria

- `Flat World Map Framework (FWMF)` is established as the map foundation. → `06c`
- `Local Map Upgrade` is documented as the local-map companion rather than as a replacement for `FWMF` or the paper-map art choice. → `06c`
- One clearly preferred FWMF-based map direction exists, with at least two meaningful comparison routes documented.
- The distinction between world-map framework, local-map improvements, and map-art selection stays explicit.

## Magic And Journal Improvements → `06c Map, Dialogue, Menus`

### Core Idea

- This subsection owns reading comfort, text-heavy menu flow, and spell-adjacent menu usability outside the world map.
- The goal is calmer, cleaner reading and configuration flow without pretending every menu issue is really a map problem.

### Options

- Reading comfort route: `Convenient Reading UI - SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/50202> → `06c`
- Menu-width support route: `Wider MCM Menu for SkyUI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22825> → `06c`

### Recommendation

- Start with the reading-comfort route.
- Treat `Convenient Reading UI - SE` as the strongest first-pass baseline because it improves the part of this subsection most likely to be felt in normal play without overcommitting to speculative spell-menu surgery. → `06c`
- Keep `Wider MCM Menu for SkyUI` as the practical support fix if the expanding UI and gameplay stack makes configuration menus feel cramped, but do not mistake that narrower MCM answer for the whole journal and reading direction. → `06c`
- Revisit spell-menu-specific improvements later only if playtesting reveals a clear unresolved pain point that the base UI stack still does not cover.

### Risks & Compatibility

- MCM support fixes can be mistaken for broader journal or spell-menu design answers.
- The subsection can overlap too much with later dialogue, controller, or accessibility work.
- Weak spell-menu candidates can get added just to make the category look more complete.

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred reading and journal usability baseline. → `06c`
- The difference between reading comfort and MCM support is explicit.
- Any magic-menu follow-up remains intentionally scoped rather than guessed.

## Dialogue UI Improvements → `06c Map, Dialogue, Menus`

### Core Idea

- This subsection owns conversation readability, response selection clarity, and the overall feel of moment-to-moment dialogue interaction.
- The goal is cleaner dialogue flow without collapsing the answer into controller handling, subtitle bugfixes, or broader journal/menu ownership.

### Options

- Control-sanity baseline: `Better Dialogue Controls` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1429> → `06c`
- Message-box support route: `Better MessageBox Controls` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1428> → `06c`
- Visual dialogue refresh route: `Dialogue Interface ReShaped` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/46546> → `06c`
- Cleaner dialogue presentation route: `Convenient Dialogue UI - SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/57943> → `06c`

### Recommendation

- Start with `Better Dialogue Controls` as the strongest first-pass pick because it addresses the most fundamental dialogue friction without forcing a large stylistic commitment. → `06c`
- Treat `Better MessageBox Controls` as the natural companion if the same interaction awkwardness also shows up in message boxes. → `06c`
- Keep `Dialogue Interface ReShaped` and `Convenient Dialogue UI - SE` as the more presentation-forward comparison routes only if testing shows the bigger problem is visual dialogue flow rather than basic control reliability. → `06c`
- Keep subtitle safety and unvoiced-dialogue handling in `modlist-01.md` (Targeted Bugfix Mods) with `Fuz Ro D-oh - Silent Voice`; that is a bugfix concern, not the UI framework answer here. → `06c`

### Risks & Compatibility

- Visual novelty can be mistaken for actual dialogue usability.
- A larger redesign can be chosen when simple control fixes would have solved the problem.
- Dialogue ownership can drift into controller or subtitle-bugfix territory if the boundary is not kept explicit.

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred dialogue-usability baseline. → `06c`
- The distinction between dialogue-option control fixes, message-box fixes, and presentation-layer redesign is explicit.
- Subtitle and silent-voice safety remains explicitly outside this subsection.

## Controller-Friendly UI Support → `06a Framework & HUD`

### Core Idea

- This subsection owns how comfortable the UI stack feels on a gamepad once the base framework, HUD, inventory, map, journal, and dialogue layers are in place.
- The goal is to reduce controller friction without pretending every controller problem requires a total menu redesign.

### Options

- Base controller-fix route: `Skyrim SE Controller Interface Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1147> → `06a`
- Expanded gamepad-mapping route: `Gamepad Plus Plus` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/27007> → `06a`
- Quick-access wheel route: `Wheeler - Quick Action Wheel Of Skyrim` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/97345> → `06a`

### Recommendation

- Start with `Skyrim SE Controller Interface Fix` as the strongest first-pass baseline because it improves controller friendliness without forcing the whole stack to reorganize itself around one larger system. → `06a`
- Keep `Gamepad Plus Plus` as the broader comparison if testing shows the list needs a more assertive controller-input answer. → `06a`
- Keep `Wheeler` as the deliberate quick-access branch if controller play clearly benefits from a radial interaction layer rather than only better menu navigation. → `06a`
- Keep dialogue readability, inventory clarity, and map/journal ownership in their already-written subsections; this section should answer controller comfort across those layers, not replace their underlying decisions.

### Risks & Compatibility

- Controller awkwardness can be over-solved by stacking too many overlapping input layers.
- A heavier controller route can fight the rest of the UI stack.
- Radial quick-access design can become a substitute for fixing ordinary menu friction.

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred controller-support baseline. → `06a`
- The distinction between light controller cleanup, broader remapping, and radial quick-access support is explicit.
- Controller support improves the existing UI layers instead of replacing their ownership boundaries.

## UI Scaling For Ultrawide And High Resolution → `06a Framework & HUD`

### Core Idea

- This subsection owns how well the chosen UI stack holds up on large modern displays, with `16:9` `4K HDR` as the actual baseline target and ultrawide support treated as a secondary compatibility branch. → `06a`
- The goal is readability and clarity, not a drift into generic display-calibration advice.

### Options

- High-resolution readability route: `Sovngarde - Mist's Font Replacer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/386> → `06a`
- Ultrawide compatibility route: `Complete Widescreen Fix for Vanilla and SkyUI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/1778> → `06a`
- Discipline-first route: keep the chosen `Oathvein UI` direction, `SkyHUD`, inventory improvements, and dialogue/map changes restrained enough that the UI remains readable at `4K` without immediately stacking scaling fixes. → `06a`

### Recommendation

- Start with the readability-first route, because `16:9` `4K HDR` is the real target for this project. → `06a`
- Treat `Sovngarde - Mist's Font Replacer` as the stronger first-pass candidate because it directly addresses large-display text readability without pretending the main problem is ultrawide support. → `06a`
- Keep `Complete Widescreen Fix for Vanilla and SkyUI` as the secondary compatibility branch if the list later needs to support ultrawide layouts too, but do not let that branch define the subsection. → `06a`
- Keep HDR concerns practical: this subsection should stay about readability, clarity, and screen-space behavior.

### Risks & Compatibility

- Ultrawide support can be treated as the default problem when the actual baseline display is `16:9` `4K`.
- High-resolution readability can be over-solved by stacking too many unrelated UI tweaks at once.
- Font or scaling adjustments can fight the chosen `Oathvein UI` tone if they are not judged in context. → `06a`

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred high-resolution readability baseline for the actual `16:9` `4K` target. → `06a`
- The distinction between `4K` readability work and ultrawide compatibility support is explicit. → `06a`
- UI scaling guidance improves readability without collapsing into a generic display-settings subsection.

## Compass, Markers, And Minimal HUD Options → `06a Framework & HUD`

### Core Idea

- This subsection owns how much navigational information stays on screen during ordinary play: compass behavior, marker density, and whether the HUD should fade away unless it is actually needed.
- The goal is cleaner exploration without undoing the broader HUD, map, or controller decisions already in place.

### Options

- Navigation-first compass route: `Compass Navigation Overhaul` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/74484> → `06a`
- Map-aware marker route: `CoMAP - Common Marker Addon Project` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/56123> → `06a`
- Dynamic minimal-HUD route: `Immersive HUD - iHUD Special Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/12440> → `06a`
- Optional minimap route: `MiniMap` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/49490> — adds a fully configurable corner minimap to the screen with zoom levels, toggle support, and map-style customization. Useful for players who prefer persistent local navigation context, but potentially redundant with `Compass Navigation Overhaul` and visually distracting with the minimal-HUD philosophy. → `06a`

### Recommendation

- Start with the navigation-first route plus explicit marker discipline.
- Treat `Compass Navigation Overhaul` as the strongest first-pass baseline because it answers the actual navigational layer directly instead of jumping immediately to a hide-the-HUD philosophy. → `06a`
- Treat `CoMAP` as the natural marker-side companion when the project wants cleaner marker consistency across the chosen `FWMF` paper-map ecosystem. → `06a`
- Keep `Immersive HUD - iHUD Special Edition` as the deliberate minimal-HUD branch only if testing shows that reduced on-screen persistence materially improves exploration tone rather than making the paper-map-and-compass loop less readable. → `06a`
- Keep `MiniMap` as a very optional side addition. Minimaps are not aligned with the grim-dark exploration pillar (they reduce the need to read the environment), and the mod's low endorsement count (7,761, last updated May 2021 — stale by current standards) and occasional crash reports on 1.6.1170 make it a high-risk low-return addition. Document it as "very optional — test before locking." → `06a`
- Keep `SkyHUD` as the broader HUD-layout owner, `FWMF` plus map-art choices as the map owner, and gameplay-side `TrueHUD` as a separate feedback layer. → `06a`

### Risks & Compatibility

- Minimalism itself can be mistaken for better usability.
- Uneven marker language can trigger too many overlapping compass and HUD layers at once.
- A dynamic-HUD route can look immersive while slowing ordinary navigation.
- `MiniMap` on Steam runtime `1.6.1170` has occasional crash reports; verify stability before treating it as part of the locked stack. Stacking a minimap alongside `Compass Navigation Overhaul` creates redundant navigation information on screen. → `06a`

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred compass and navigation baseline. → `06a`
- The distinction between compass behavior, FWMF-friendly marker support, minimap addition, and minimal-HUD philosophy is explicit.
- Existing ownership boundaries with `SkyHUD`, `FWMF`, and gameplay-side `TrueHUD` remain intact. → `06a`

## Crafting Menu Improvements → `06b Inventory & Items`

### Core Idea

- This subsection owns the UI side of crafting: category clarity, menu scan speed, recipe browsing, and whether crafting stations feel readable and organized during normal use.
- It should improve crafting-menu navigation without re-deciding the broader crafting-system philosophy that belongs to `modlist-05.md`. → `06b`

### Options

- Keyword-category route: `Constructible Object Custom Keyword System` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/81409> → `06b`
- Vanilla-category fallback: `SkyUI - Vanilla Crafting menu` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/18717> → `06b`
- Discipline-first route: keep the current `SkyUI` crafting presentation if real playtesting shows the menu is already readable enough. → `06b`

### Recommendation

- Start with the keyword-category route.
- Treat `Constructible Object Custom Keyword System` as the strongest first-pass baseline because it directly improves the usability of the Constructible Object Menu and is built to support a broader, modded crafting ecosystem. → `06b`
- Keep `SkyUI - Vanilla Crafting menu` as the meaningful fallback only if the project still prefers vanilla-style split categories and is not relying on a heavier `CACO`-style recipe footprint that benefits from stronger category handling. → `06b`
- Keep this subsection focused on menu structure and readability; do not let it absorb smithing progression, crafting balance, enchanting rules, or NPC-crafting philosophy from `modlist-05.md`. → `06b`

### Risks & Compatibility

- Crafting frustration can be blamed on the menu layer when the real issue lives in gameplay-side crafting rules.
- A familiar vanilla-style fallback can be chosen just because it feels familiar rather than because it is more readable in real play.
- A vanilla-style fallback can pair poorly with a large `CACO` recipe footprint and create avoidable friction. → `06b`

### Acceptance Criteria

- `modlist-06.md` has one clearly preferred crafting-menu usability baseline. → `06b`
- The difference between a more extensible category system and a vanilla-style category fallback is explicit.
- The ownership boundary with gameplay-side crafting decisions in `modlist-05.md` remains clear.

## Loading Screens → `06c Map, Dialogue, Menus` → `06c`

### Core Idea

- This subsection owns the loading screen layer: what players see during area transitions, how the visual presentation connects to the game's tone, and whether loading feels like part of the game world or a dead pause.
- It is purely cosmetic — no scripts, no worldspace edits, no gameplay hooks.

### Options

- Art-replacer route: `The Elder Scrolls Legends - Loading Screens` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/37929>. Adds 110 high-quality lore-friendly artworks from The Elder Scrolls: Legends card game as loading screens. Works as a vanilla replacer and alongside vanilla loading screens. Supports 16:9, 16:10, 21:9, and 4:3 aspect ratios. Version 2.1.1, last updated June 2023. 10,632 endorsements, 725k unique downloads. → `06c`
- Vanilla discipline route: keep default Skyrim loading screens and let the rest of the UI stack define the visual identity.

### Recommendation

- Set `The Elder Scrolls Legends - Loading Screens` as the locked baseline. The artwork matches the grim-dark fantasy tone of `Elder Wilds` and the mod is purely asset-based with zero compatibility concerns — no vanilla records are touched. → `06c`
- Install at 100% frequency to fully replace vanilla loading screens. This eliminates the jarring shift from a modernized UI stack to dated vanilla loading art.
- Select the 16:9 aspect ratio variant to match the `4K` display target, and use the `Fixed Height` border setting to avoid black bars on the 16:9 display. → `06c`
- The optional text-free variant removes the Legends card-game UI text for players who want only the artwork. The default text variant includes lore-friendly messages alongside the art.

### Risks & Compatibility

- Compatible with all mods — no vanilla records changed.
- At 100% frequency, vanilla lore loading tips (some of which provide useful gameplay hints) are suppressed. Players new to Skyrim may miss these tips. Mitigation: the text variant includes lore-friendly descriptions alongside the art.
- Some Legends artworks are wider than 16:9 (designed for 21:9). The `Fixed Height` border setting crops the sides on ultra-wide images, which may cut off edges. The mod author selected images so no critical content is lost in the crop. → `06c`

### Acceptance Criteria

- `modlist-06.md` has one locked loading screen baseline: `The Elder Scrolls Legends - Loading Screens`. → `06c`
- The choice of 100% frequency and 16:9 aspect ratio is documented.
- The decision between text and text-free variant is left to install-time preference.

## Accessibility And Readability Improvements → `06a Framework & HUD`

### Core Idea

- This subsection owns the final pass on general UI legibility and comfort: readable text, sane menu density, configuration clarity, and whether the full UI stack remains easy to live with over long sessions.
- It should improve everyday usability without re-deciding dialogue, map, controller, crafting, or HUD philosophy that earlier subsections already own.

### Options

- High-resolution text route: `Sovngarde - Mist's Font Replacer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/386>. Recommended file: `Sovngarde - Mist's Font Replacer Bold V8.9`. → `06a`
- Configuration-readability route: `Wider MCM Menu for SkyUI` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22825> → `06a`
- Discipline-first route: keep the current `SkyUI` plus `Oathvein UI` stack with the already-chosen inventory, dialogue, map, and crafting improvements if real playtesting shows the UI is already readable enough. → `06a`

### Recommendation

- Start with the discipline-first route, then apply targeted readability support only where the current stack still shows a real weakness.
- `Sovngarde - Mist's Font Replacer` remains the strongest first-pass accessibility candidate because the repo already identified `16:9` `4K HDR` readability as a practical concern and font presence is one of the clearest ways to improve long-session comfort without redesigning the whole interface. → `06a`
- For this display target, prefer `Sovngarde - Mist's Font Replacer Bold V8.9` first, then fall back to the light variant only if the bold face feels too heavy in the chosen `Oathvein UI` direction. → `06a`
- Keep `Wider MCM Menu for SkyUI` as the narrower support answer when the main friction lives in configuration readability rather than in the ordinary in-game interface itself. → `06a`
- Leave subtitle safety and unvoiced-dialogue handling in `modlist-01.md` (Targeted Bugfix Mods) with `Fuz Ro D-oh - Silent Voice`; that remains a bugfix boundary, not the main UI accessibility answer here. → `06a`

### Risks & Compatibility

- A final accessibility pass can turn into relitigating decisions that earlier UI subsections already settled.
- Stacking too many small readability tweaks can create an incoherent visual hierarchy.
- MCM comfort can be mistaken for a full ordinary-play readability solution.

### Acceptance Criteria

- `modlist-06.md` finishes with one clear readability-first fallback and one clear configuration-readability support route. → `06a`
- The distinction between general `4K` readability and MCM readability is explicit. → `06a`
- Earlier ownership boundaries for dialogue, map, crafting, controller support, and subtitle bugfixes remain preserved.

## Optional HUD → `06a` Additions
### Core Idea

- This subsection holds experimental or unproven UI mods that are not part of the locked UI stack but are tracked for potential inclusion if playtesting validates them.
- The goal is to keep these picks visible and documented without letting them drift into the mandatory baseline by default.

### Options

- Follower-and-player stats overlay: `Skyrim Party Sheet - Follower and Player HUD` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/167538> — adds a persistent HUD overlay showing player attributes (Health, Magicka, Stamina) alongside active follower information in a party-sheet format. Potentially useful for third-person gameplay where the player wants quick follower-status visibility without opening menus. Still fairly new (first released 2025) but has seen active development — now at v2.7 (updated June 2026) with 1,084 endorsements and growing community adoption. Compatibility with `TrueHUD`, `Oathvein UI`, `moreHUD`, and `Nether's Follower Framework` remains unverified. Keep as "very optional — research before installing." → `06a`

### Recommendation

- Keep `Skyrim Party Sheet` in this optional tracking section only. Do not include it in the locked modlist until playtesting confirms it does not fight `TrueHUD` widget positioning, `Oathvein UI` visual styling, or `Nether's Follower Framework` follower management. Its compatibility on 1.6.1170 with the full UI stack is still unproven, and its active development pace means the mod may change meaningfully between planning and installation. → `06a`
- If accepted later, place it in the HUD Overhaul subsection as a companion to `TrueHUD` for follower-status visibility. → `06a`

### Risks & Compatibility

- Overlapping HUD widgets can create visual conflicts with `TrueHUD`, `SkyHUD`, and `Floating Damage`. → `06a`
- Unknown compatibility with `Nether's Follower Framework` — if Party Sheet tries to manage followers that NFF controls, there may be state conflicts. → `06a`
- Unknown performance overhead from a persistent follower-status polling loop.
- Not suitable for modlist inclusion until tested on Steam `1.6.1170` with the full UI stack. → `06a`

### Acceptance Criteria

- `Skyrim Party Sheet` stays in the optional tracking section until playtesting confirms stability and compatibility. → `06a`
- The UI stack does not adopt experimental mods as baselines by default.

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
