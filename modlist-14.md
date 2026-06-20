# Modlist Curation Rules and Testing Plan

## Modlist Curation Rules

### Core Idea

These rules govern how `Elder Wilds` selects, evaluates, and curates mods across every section. They are not a substitute for section-level research, but a shared set of guardrails that keeps individual picks consistent with the list's overall identity.

### Visual Style Consistency

Every texture, mesh, and lighting mod must be evaluated for visual coherence with the rest of the stack. Do not mix low-resolution vanilla-retexture packs with high-end PBR material overhauls in the same category unless there is a clear reason the lower-resolution option fills a gap the high-end pack does not cover. When two texture mods cover the same material type, prefer the one whose colour palette, weathering style, and material interpretation best match the `Elder Wilds` atmosphere: grounded, weathered, northern, and wilderness-first rather than clean, heroic, or high-fantasy.

### Lore Friendliness

Mods that add new content must not contradict established `Elder Scrolls` lore unless the contradiction is the deliberate point of a well-regarded quest or world-space mod with its own narrative justification. Cosmetic overhauls should respect the setting's visual identity: steel should look like steel, fur and leather should dominate cold-region gear, and architecture should match the regional style of its hold. Lore-friendly does not mean lore-restricted: new content is welcome as long as it plausibly extends the existing world rather than replacing it.

### Third-Person-First Design With Full Gamepad Support

`Elder Wilds` is built to be completely played in third-person with a gamepad. Every gameplay, animation, UI, camera, and interaction mod must be evaluated for third-person usability and gamepad compatibility first. The list must never force the player to switch to first-person or keyboard/mouse for any interaction — including lockpicking, reading, menu navigation, crafting, dialogue, container looting, and favouriting. A mod that works well in first-person or with keyboard/mouse but breaks the third-person gamepad experience (broken camera transitions, missing third-person animations, UI elements only displayed in first person, aiming mechanics that assume a centred crosshair, menus that require mouse input, interaction prompts that assume keyboard keys) is a poor fit regardless of its individual quality. First-person parity and keyboard/mouse support are bonuses, not substitutes.

### Animation Quality Bar

All animation mods must meet the baseline established in `modlist-03.md` and `modlist-04.md` for blend smoothness, motion-capture fidelity, and weapon-type awareness. Animations that clip, snap, float, or lack proper foot-planting are not acceptable even if they cover a category the current list lacks. The bar is: the animation must look natural at standard gameplay speed in third-person view, not only in slow-motion showcase clips.

### Performance Target And Hardware Assumptions

The target hardware baseline is a mid-range modern GPU (roughly NVIDIA RTX 3060 / AMD RX 6700 equivalent or better) at 1440p with a 60 FPS target in most outdoor scenes. Dense forest areas and major cities may drop below 60 FPS during complex load conditions; that is acceptable as long as the drop stays above 45 FPS. Mods that require DLSS or framegen to reach playable framerates on the target baseline must be flagged as optional rather than mandatory.

### Preference For Lightweight Vs Feature-Rich Mods

When two mods solve the same design goal, prefer the lighter option unless the feature-rich alternative brings a clearly measurable improvement to usability, immersion, or gameplay depth that the lighter option cannot match. Lightweight means: fewer dependencies, smaller plugin footprint, less script load, simpler patch requirements, and easier conflict resolution. This rule exists because a 300-mod list built from individually lightweight picks is more maintainable than a 200-mod list where every pick brings heavy scripting, multiple masters, and complex compatibility overhead.

### Rules For Avoiding Overlapping Overhauls

No two mods in the final load order should attempt to overhaul the same gameplay system unless one is explicitly a compatibility layer or patch that reconciles them. Examples of forbidden overlaps: two perk overhauls, two magic system overhauls, two encounter-zone overhauls, two survival frameworks running simultaneously, or two independently authored combat animation packs that both replace the same attack animation sets. When a section file discusses alternatives, it must clearly state whether the alternatives are compatible add-ons or exclusive branches.

### Acceptance Criteria

- Every section file references these curation rules when evaluating mods, either explicitly or by following their logic.
- No two mods in the final list overlap on the same core system.
- Visual mods are chosen to form a coherent look rather than a collection of individually excellent but visually incompatible picks.
- Performance stays within the target envelope except in known stress areas.
- Animation quality never drops below the established bar.
- Third-person usability is verified before any gameplay, animation, camera, or UI mod is locked.

## Testing Plan

### Core Idea

This testing plan is the verification layer for `Elder Wilds`. Each test stage targets a specific category of load-order risk: startup crashes, character-flow regressions, combat feel, performance in heavy scenes, visual consistency, and long-session stability. Tests are ordered so that earlier stages catch the most common failure modes before later stages invest time in detailed playthrough evaluation.

### Fresh Game Startup Checklist

Before any gameplay testing begins, verify the following in order:

- Skyrim launches from `Mod Organizer 2` without a crash or infinite load screen.
- The main menu displays correctly with all UI mods active.
- A new game reaches the chosen alternate-start character-generation flow without freezing.
- The character-generation menu (races, presets, body, sliders) works with all body and appearance mods loaded.
- The game saves and loads a clean character save without corruption or missing-masters warnings.
- MCM registers all expected configuration menus.
- Console commands and basic navigation (movement, jumping, menu opening) work without error spam in the log.

If any step in this checklist fails, do not proceed to later tests. Fix the root cause first.

### Character Creation Test

Create a character using the chosen alternate-start method. Verify:

- Race selection, body preset, and appearance sliders all apply correctly in-game.
- Starting equipment, spells, and inventory match the alternate-start configuration.
- The starting location loads without crashes, missing geometry, or broken lighting.
- Perk, race, and standing-stone overrides apply their intended starting effects.
- The first level-up triggers the correct perk menu or notification without errors.
- Starting quest or directional marker appears as expected.

Do not skip this test when changing race, body, perk, or alternate-start mods.

### Third-Person Combat Test

Fight at least five encounters covering different enemy types and weapon configurations:

- One-handed with shield against a humanoid opponent (bandit or soldier).
- Two-handed power attacks against a single large target.
- Archery or ranged magic against a distant or moving target.
- Dual-wielding or spell-sword loadout against a faster enemy (wolf, spider).
- Mounted combat if a horse overhaul is active, against a roadside enemy.

For each encounter, verify:

- Camera behaviour (lock-on, shoulder switching, free-look) is stable and responsive.
- Dodge, block, parry, and stagger mechanics trigger correctly.
- Hit reactions, impact effects, and sound feedback play without delay.
- No animation breaks, snapping, or T-posing occur.
- UI elements (health bars, stamina, enemy lock indicators) display correctly and update in real time.

### City Performance Test

Fast-travel to or enter each major city (Whiterun, Solitude, Windhelm, Riften, Markarth) and walk from the city gate to the central market or keep. For each city:

- Record framerate range during the walk.
- Note any stutter, loading pauses, or texture pop-in.
- Check for missing objects, broken navmesh paths, or NPCs stuck in geometry.
- Verify city overhaul mods apply their changes without gaps or clipping.
- Confirm that indoor cells connected to the city (temple, inn, keep) load their correct lighting.

A city test fails if framerate drops below 45 FPS on the target hardware baseline or if visual errors make an area feel broken rather than lived-in.

### Forest Traversal Test

Travel on foot through at least three distinct wooded areas: a dense pine forest (Falkreath hold), an aspen or deciduous woodland (The Rift), and a tundra transition zone (Whiterun plains near the forest edge). For each area:

- Record framerate during traversal with grass, tree, and LOD mods active.
- Check for grass pop-in, tree LOD shimmer, or distant-object flicker.
- Verify soundscape mods (bird calls, wind, ambient tracks) change appropriately between biomes.
- Confirm that random encounters, wildlife, and patrols spawn at expected intervals.
- Test that No Grass In Objects caches and grass precaching work without visible dead zones.

The forest test passes if traversal stays playable (no sustained drops below 45 FPS) and the visual transition between biomes feels organic.

### Dungeon Lighting Test

Enter at least three dungeons: one Nordic ruin, one cave or mine, and one Dwemer ruin. For each:

- Verify that the chosen lighting overhaul produces readable contrast without crushing shadows to pure black or washing out all atmosphere.
- Check that torch, magelight, and candlelight spells illuminate correctly under the current weather and lighting stack.
- Confirm that interior acoustic changes (reverb, ambient loops) match the room size and material type.
- Look for light-bled through walls, misaligned shadow meshes, or fire-flicker that does not match the flame source.
- Test combat in low-light conditions to ensure enemy silhouettes are visible enough for third-person targeting.

The dungeon test fails if any interior is unplayably dark (unable to navigate without a light source even with brightness at default) or if lighting errors break immersion in more than one room per dungeon.

### UI And Controller Test

Test the entire UI surface with both keyboard-and-mouse and a controller (Xbox or PlayStation layout):

- Inventory, magic, map, journal, and crafting menus open, navigate, and close without errors.
- Item cards display correct information (name, weight, value, enchantment, crafting recipe).
- The map renders correctly and quest markers appear in the right world-space positions.
- Dialogue menus show full text without clipping and respond to input without delay.
- Controller button mappings match the expected layout and all shortcuts (favourites, quick save, journal) work.
- HUD elements (compass, health/stamina/magica bars, enemy health, quest tracker) display at the correct size and position for the target resolution.

The UI test fails if any menu is unusable on either input method or if controller support requires manual INI editing to work at all.

### Long-Session Stability Test

Play continuously for at least two hours using a character that has completed the basic tests above. During the session:

- Travel through at least four different worldspaces or holds, including at least one city-to-dungeon transition and one fast-travel load.
- Complete at least two quest stages, one combat encounter, and one menu-heavy activity (crafting, perk selection, inventory sorting).
- Open and close the MCM at least once to force a full UI reflow.
- Save and reload from the save at least twice during the session.
- After two hours, check the save file size and Papyrus log for accumulating errors, stack dumps, or script-instance leaks.

The long-session test passes if the game does not crash, the save remains loadable, and the Papyrus log does not show escalating error spam. A single crash is a warning. Two crashes in separate two-hour sessions is a failure that must be investigated before the modlist is considered stable.

### Acceptance Criteria

- All test stages must pass before a category is considered locked for the final build.
- Regression testing is required after any change to a foundational, gameplay, or world-content mod.
- City and forest performance benchmarks must be recorded per hardware target so future mod additions can be evaluated against known baselines.
- Long-session stability tests must be repeated after any SKSE plugin, script-heavy mod, or worldspace edit is added to the final load order.
- Testing results should be noted in the repo so that troubleshooting later does not start from zero knowledge.
