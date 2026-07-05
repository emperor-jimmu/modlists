# Modernized UI

**MO2 Separator:** `UI` → `UI - Framework & HUD`, `UI - Inventory & Items`, `UI - Map, Dialogue, Menus`

## UI Framework Prerequisites → `UI - Framework & HUD`

The base menu and interface framework that the rest of the UI stack builds on — infrastructure decisions are made here without collapsing HUD styling, inventory redesign, map replacements, or controller support into one giant UI choice.

### Baseline

- **SkyUI** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/12604)) — Non-negotiable baseline for the entire UI stack. → `UI - Framework & HUD`
- **Oathvein UI** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/160916)) — Locked visual direction. Grim-dark presentation matches the project tone; cleaner dependency chain than Norden UI (no Extended UI requirement); general-purpose dark fantasy fits Skyrim's identity better than Vel'dun UI's focused Morrowind-inspired Dunmer theming. → `UI - Framework & HUD`
- **UIExtensions** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/17561)) — Support infrastructure for later mods, not a competing UI identity. → `UI - Framework & HUD`
- **Constructible Object Custom Keyword System (COCKS)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/81409)) — Keyword-based category infrastructure for crafting-menu readability. Locked alongside framework picks. → `UI - Framework & HUD`
- **MCM Helper** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/53000)) — Persists MCM settings across saves and new games. Hard dependency of True Directional Movement, Compass Navigation Overhaul, and others. → `UI - Framework & HUD`
- **Stay At The System Page NG** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/76927)) — Keeps the System page open after loading a save so the player can continue navigating without reopening the menu. Most noticeable on gamepad. → `UI - Framework & HUD`

### Alternatives

- **Norden UI** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/166086)) — Modern-rustic visual overhaul by the same author (Nithog), but depends on Extended UI which has no official SE port. → `UI - Framework & HUD`
- **Vel'dun UI** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/176230)) — Morrowind-inspired dark-elven UI by Nithog; too narrow a thematic fit for Elder Wilds. → `UI - Framework & HUD`
- **Prisma UI** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/148718)) — Next-gen web-UI framework that replaces SkyUI rather than extending it. Incompatible with Oathvein UI and most UIExtensions-based mods. Documented for projects pursuing the framework-replacement path. → `UI - Framework & HUD`

### Notes

- Visual-theme choices get mistaken for infrastructure requirements too early.
- A highly stylized framework can look distinctive while weakening readability in ordinary play.
- TrueHUD is scoped to combat-feedback gameplay/UI boundary, not a framework decision.

## HUD Overhaul → `UI - Framework & HUD`

The main on-screen HUD layer: health, stamina, magicka, target readability, and permanent interface structure during ordinary play.

### Baseline

- **SkyHUD** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/463)) — Baseline HUD layout framework. Handles widget positioning, visibility control, and style consistency across screen sizes. → `UI - Framework & HUD`
- **TrueHUD** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/62775)) — Dedicated combat-feedback companion by the same author as True Directional Movement. Provides actor info bars, boss bars, player widgets, and recent-loot logging. Feature-complete (last updated December 2023). → `UI - Framework & HUD`
- **Casting Bar** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/80455)) — Focused cast-and-draw timing companion for spells, shouts, and bow draw. Solves a real readability gap without becoming another full HUD framework. → `UI - Framework & HUD`
- **Floating Damage** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/14332)) — Optional combat-feedback overlay for damage numbers above hit targets. Useful for build-testing but potentially at odds with minimal-HUD presentation. Install only after playtesting confirms acceptable visual noise. → `UI - Framework & HUD`

### Alternatives

- **Stats Tracker Menu - STM** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/180653)) — Stats-overlay companion. Brand new (v1.0.1, May 2026) with very low community signal. Lock only after playtesting confirms no conflict with SkyHUD widget positioning or TrueHUD combat feedback. → `UI - Framework & HUD`

### Notes

- Combat-feedback widgets can take over the whole HUD philosophy if not kept scoped.
- Avoid stacking too many narrow overlays until the screen feels busier instead of clearer.
- Compass density, marker philosophy, and minimal-HUD experimentation are deferred to the dedicated subsection.

## Inventory And Item Card Improvements → `UI - Inventory & Items`

Item lists, sorting, weight/value scanning, and item-card readability during ordinary looting and inventory management.

### Baseline

- **moreHUD SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/12688)) — Mandatory baseline. Broader item-information layer outside pure inventory lists. → `UI - Inventory & Items`
- **moreHUD Inventory Edition** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/18619)) — Mandatory baseline alongside moreHUD SE. Extends readability into inventory views used constantly during normal play. → `UI - Inventory & Items`
- **Inventory Interface Information Injector** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/85702)) — Lightweight SKSE plugin by M8r98a4f2 (same author as moreHUD). Adds value, weight, and stat-per-weight columns to inventory views without touching SkyUI layout or making invalidation calls. → `UI - Inventory & Items`
- **I4 Weapon Icons Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/106432)) — Replaces all weapon category icons with hand-crafted icons by komegaki. Covers 30+ categories including mod-added types. Depends on Inventory Interface Information Injector. → `UI - Inventory & Items`
- **I4 Armor Icons Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/119824)) — Replaces armor icons with higher-fidelity hand-crafted icons by komegaki. Covers light armor, heavy armor, clothing, shields, and jewelry. → `UI - Inventory & Items`
- **I4 Shout Icons Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/107334)) — Replaces shout and dragon language icon textures with higher-fidelity versions by komegaki. → `UI - Inventory & Items`
- **The Handy Icon Collection Collective (THICC)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/90508)) — Large-scale icon resource with thousands of high-fidelity icons. Optional icon variety on top of the I4 family — zero plugin overhead, purely additive. → `UI - Inventory & Items`

### Alternatives

- **SkyUI Item Card Fixes** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/29116)) — Cleaner, narrower comparison if the main pain point is item-card presentation rather than more information. → `UI - Inventory & Items`
- **Aura's Inventory Tweaks** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/68557)) — Organizational comparison if the final UI direction needs stronger sorting and icon structure. → `UI - Inventory & Items`
- **Weapon Stat Viewer V2** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/127249)) — Weapon-stat overlay companion. Surfaces weapon damage numbers in real time for comparing without opening menus. Lock only if SkyUI + Oathvein UI renders it cleanly. → `UI - Inventory & Items`
- **Enchanted Icon Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174246)) — Adds distinct icons for learned, artifact, and learnable enchantments. Depends on Dynamic Inventory Icon Injector. Evaluate after core inventory stack is stable. → `UI - Inventory & Items`

### Notes

- Inventory readability can be over-solved by stacking too many overlapping micro-fixes; more information can slow scanning instead of speeding it up.
- Weapon Stat Viewer V2 (447 endorsements) is relatively new — verify it does not conflict with the chosen UI framework before treating it as locked.
- Dynamic Inventory Icon Injector ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174136)) is the mandatory utility dependency if Enchanted Icon Overhaul is selected.

## Map Improvements → `UI - Map, Dialogue, Menus`

World-map framework and the map art layered on top of it — deliberate travel planning and geographic readability.

### Baseline

- **Flat World Map Framework (FWMF)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/29932)) — Non-negotiable foundation for the map direction. → `UI - Map, Dialogue, Menus`
- **Local Map Upgrade** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/129756)) — Local-map companion for interior and close-range navigation. → `UI - Map, Dialogue, Menus`
- **Skyrim and Solstheim Paper Maps by Mirhayasu for FWMF** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/53788)) — Strongest first-pass paper-map art. Looks purposeful without making the map harder to read. → `UI - Map, Dialogue, Menus`

### Alternatives

- **Immersive Paper Map (3rd Edition)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/54710)) — Moodier, more stylized paper-map comparison. → `UI - Map, Dialogue, Menus`
- **Skyrim Paper Map by FreelanceCartography for FWMF** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/78995)) — More explicitly cartographic comparison. → `UI - Map, Dialogue, Menus`

### Notes

- Easy to choose map art for style while losing navigational readability.
- FWMF is the framework; the key question is which world-map art sits on top of it.
- Local-map improvements and world-map overhaul solve different problems — keep them distinct.

## Magic And Journal Improvements → `UI - Map, Dialogue, Menus`

Reading comfort, text-heavy menu flow, and spell-adjacent menu usability outside the world map.

### Baseline

- **Convenient Reading UI - SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/50202)) — Start here. Improves the reading-comfort part most likely to be felt in normal play without overcommitting to speculative spell-menu surgery. → `UI - Map, Dialogue, Menus`
- **Wider MCM Menu for SkyUI** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/22825)) — Practical support fix if the expanding UI and gameplay stack makes configuration menus feel cramped. → `UI - Map, Dialogue, Menus`

### Notes

- MCM support fixes can be mistaken for broader journal or spell-menu design answers.
- Revisit spell-menu-specific improvements only if playtesting reveals a clear unresolved pain point.

## Dialogue UI Improvements → `UI - Map, Dialogue, Menus`

Conversation readability, response selection clarity, and the overall feel of moment-to-moment dialogue interaction.

### Baseline

- **Better Dialogue Controls** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1429)) — Strongest first-pass pick. Addresses the most fundamental dialogue friction without forcing a large stylistic commitment. → `UI - Map, Dialogue, Menus`
- **Better MessageBox Controls** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1428)) — Natural companion if the same interaction awkwardness shows up in message boxes. → `UI - Map, Dialogue, Menus`

### Alternatives

- **Dialogue Interface ReShaped** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/46546)) — Presentation-forward route if testing shows visual dialogue flow is the bigger problem. → `UI - Map, Dialogue, Menus`
- **Convenient Dialogue UI - SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/57943)) — Cleaner dialogue presentation route, same conditions as above. → `UI - Map, Dialogue, Menus`

### Notes

- Subtitle safety and unvoiced-dialogue handling belong in `modlist-foundations.md` (Targeted Bugfix Mods) with `Fuz Ro D-oh - Silent Voice`.
- Visual novelty can be mistaken for actual dialogue usability.

## Controller-Friendly UI Support → `UI - Framework & HUD`

How comfortable the UI stack feels on a gamepad once the base framework, HUD, inventory, map, journal, and dialogue layers are in place.

### Baseline

- **Skyrim SE Controller Interface Fix** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1147)) — Strongest first-pass baseline. Improves controller friendliness without forcing the stack to reorganize around a larger system. → `UI - Framework & HUD`
- **Show Player In Menus** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/122648)) — Locked third-person-UI companion. Renders the player character in inventory, magic, and crafting menus for real-time gear change previews. Essential for the full third-person gamepad parity pillar. → `UI - Framework & HUD`

### Alternatives

- **Gamepad Plus Plus** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/27007)) — Broader comparison if testing shows the list needs a more assertive controller-input answer. → `UI - Framework & HUD`
- **Wheeler - Quick Action Wheel Of Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/97345)) — Deliberate quick-access branch if controller play benefits from a radial interaction layer. → `UI - Framework & HUD`

### Notes

- Dialogue readability, inventory clarity, and map/journal ownership are owned by their own subsections; this section answers controller comfort across those layers, not replacing their decisions.
- Controller awkwardness can be over-solved by stacking too many overlapping input layers.

## UI Scaling For Ultrawide And High Resolution → `UI - Framework & HUD`

How well the chosen UI stack holds up on large modern displays — 16:9 4K HDR is the actual baseline target, with ultrawide as secondary.

### Baseline

- **Sovngarde - Mist's Font Replacer** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/386)) — Stronger first-pass candidate. Directly addresses large-display text readability without pretending the main problem is ultrawide support. → `UI - Framework & HUD`

### Alternatives

- **Complete Widescreen Fix for Vanilla and SkyUI** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1778)) — Secondary compatibility branch if the list later needs ultrawide layouts. → `UI - Framework & HUD`

### Notes

- Ultrawide support can be treated as the default problem when the actual baseline display is 16:9 4K.
- Font or scaling adjustments can fight the chosen Oathvein UI tone if not judged in context.
- Keep the chosen Oathvein UI direction, SkyHUD, inventory improvements, and dialogue/map changes restrained enough that the UI remains readable at 4K without immediately stacking scaling fixes.

## Compass, Markers, And Minimal HUD Options → `UI - Framework & HUD`

How much navigational information stays on screen during ordinary play: compass behavior, marker density, and whether the HUD fades away unless needed.

### Baseline

- **Compass Navigation Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/74484)) — Strongest first-pass baseline. Answers the actual navigational layer directly instead of jumping to a hide-the-HUD philosophy. → `UI - Framework & HUD`
- **CoMAP - Common Marker Addon Project** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/56123)) — Natural marker-side companion for cleaner marker consistency across the FWMF paper-map ecosystem. → `UI - Framework & HUD`

### Alternatives

- **Immersive HUD - iHUD Special Edition** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/12440)) — Deliberate minimal-HUD branch. Only add if testing shows reduced on-screen persistence materially improves exploration tone. → `UI - Framework & HUD`
- **MiniMap** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/49490)) — Very optional. Minimaps reduce the need to read the environment (at odds with the grim-dark exploration pillar); low endorsement count (7,761), last updated May 2021, with occasional crash reports on 1.6.1170. Test before locking. → `UI - Framework & HUD`

### Notes

- Minimalism itself can be mistaken for better usability.
- Stacking a minimap alongside Compass Navigation Overhaul creates redundant navigation information on screen.
- Existing ownership boundaries with SkyHUD (HUD layout), FWMF (map), and TrueHUD (gameplay feedback layer) remain intact.

## Crafting Menu Improvements → `UI - Inventory & Items`

The UI side of crafting: category clarity, menu scan speed, recipe browsing, and whether crafting stations feel readable and organized during normal use.

### Baseline

- **Constructible Object Custom Keyword System** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/81409)) — Strongest first-pass baseline. Directly improves the Constructible Object Menu and is built to support a broader modded crafting ecosystem. → `UI - Inventory & Items`

### Alternatives

- **SkyUI - Vanilla Crafting menu** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/18717)) — Meaningful fallback only if the project prefers vanilla-style split categories and is not using a heavier recipe footprint that benefits from stronger category handling. → `UI - Inventory & Items`

### Notes

- Keep this subsection focused on menu structure and readability; crafting balance, enchanting rules, and NPC-crafting philosophy belong in `modlist-expanded-systems.md`.
- A vanilla-style fallback can pair poorly with a large recipe footprint.

## Loading Screens → `UI - Map, Dialogue, Menus`

What players see during area transitions — purely cosmetic, no scripts or worldspace edits.

### Baseline

- **The Elder Scrolls Legends - Loading Screens** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/37929)) — Locked baseline. 110 high-quality lore-friendly artworks from TES: Legends. Purely asset-based with zero compatibility concerns — no vanilla records touched. Install at 100% frequency in 16:9 with Fixed Height border setting. → `UI - Map, Dialogue, Menus`

### Notes

- At 100% frequency, vanilla lore loading tips are suppressed. The text variant includes lore-friendly descriptions alongside the art.
- Some Legends artworks are wider than 16:9; the Fixed Height border setting crops sides but no critical content is lost.
- The text-free variant removes Legends card-game UI text for players who want only the artwork.

## Accessibility And Readability Improvements → `UI - Framework & HUD`

Final pass on general UI legibility and comfort: readable text, sane menu density, configuration clarity, and ease of use over long sessions.

### Baseline

- **Sovngarde - Mist's Font Replacer** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/386)) — Strongest first-pass accessibility candidate for the 16:9 4K HDR target. Prefer Bold V8.9 first, fall back to the light variant only if bold feels too heavy in the Oathvein UI direction. → `UI - Framework & HUD`
- **Wider MCM Menu for SkyUI** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/22825)) — Narrower support answer when the main friction lives in configuration readability rather than ordinary in-game interface. → `UI - Framework & HUD`

### Notes

- Start with the discipline-first route (current SkyUI + Oathvein UI stack) and apply targeted readability support only where playtesting shows a real weakness.
- A final accessibility pass should not relitigate decisions earlier UI subsections already settled.
- Subtitle safety and unvoiced-dialogue handling stay in `modlist-foundations.md` (Targeted Bugfix Mods) with Fuz Ro D-oh - Silent Voice.

## Optional HUD → `UI - Framework & HUD`

Experimental or unproven UI mods tracked for potential inclusion if playtesting validates them.

### Baseline

- **Skyrim Party Sheet - Follower and Player HUD** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/167538)) — Persistent HUD overlay for player attributes and active follower info. Active development (v2.7, updated June 2026) with 1,084 endorsements. Keep as "very optional — research before installing." → `UI - Framework & HUD`

### Notes

- Do not include in the locked modlist until playtesting confirms no conflict with TrueHUD widget positioning, Oathvein UI visual styling, or Nether's Follower Framework.
- Overlapping HUD widgets can create visual conflicts with TrueHUD, SkyHUD, and Floating Damage.
- If accepted later, place in HUD Overhaul subsection as a companion to TrueHUD for follower-status visibility.

## Candidate TODO Additions

### Framework & System UI → `UI - Framework & HUD`

- `Character Menu SE` — character appearance menu enhancer → `UI - Framework & HUD`
- `Kill feed` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/179053)) — enemy kill notification feed → `UI - Framework & HUD`
- `SKSE Menu Framework` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/120352)) — menu framework SKSE plugin → `UI - Framework & HUD`
- `Auto Input Switch` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/54309)) — auto-detect controller vs KB+M input → `UI - Framework & HUD`

### Inventory → `UI - Inventory & Items`

- `Unread books glow redone` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/138451)) — unread book visual highlight → `UI - Inventory & Items`
- `Show Player In Inventory` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/178689)) — player model in inventory menu → `UI - Inventory & Items`

### HUD, Map & Dialogue → `UI - Map, Dialogue, Menus`

- `Pastel Map Markers (?)` — optional map marker recolor → `UI - Map, Dialogue, Menus`
- `Smart Talk (Dialogue Menu Enhancer)` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171449)) — dialogue menu categorization → `UI - Map, Dialogue, Menus`
- `Quest Journal Overhaul` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/172488)) — quest journal visual overhaul → `UI - Map, Dialogue, Menus`
- `Even Better Quest Objectives SE - EBQO SE` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/159)) — quest objective clarity → `UI - Map, Dialogue, Menus`
