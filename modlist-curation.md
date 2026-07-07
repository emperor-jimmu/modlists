# Modlist Curation Rules and Testing Plan

**MO2 Separator:** `Testing & Curation`

All items in this section belong to the `Testing & Curation` MO2 separator.

---

## Curation Rules

Shared guardrails keeping individual picks consistent with the list's overall identity across every section.

### Visual Style Consistency
Every texture, mesh, and lighting mod must be evaluated for visual coherence. Don't mix low-resolution vanilla-retexture packs with high-end PBR material overhauls in the same category. Prefer grounded, weathered, northern, wilderness-first color palettes over clean, heroic, or high-fantasy.

### Lore Friendliness
New content must not contradict established Elder Scrolls lore (unless the contradiction is the deliberate point of a well-regarded quest mod). Cosmetics should respect setting: steel looks like steel, fur and leather dominate cold-region gear, architecture matches hold style. New content is welcome as long as it plausibly extends the existing world.

### Third-Person-First Design With Full Gamepad Support
Every gameplay, animation, UI, camera, and interaction mod must be evaluated for third-person usability and gamepad compatibility first. The list must never force switching to first-person or keyboard/mouse for any interaction — lockpicking, reading, menus, crafting, dialogue, container looting, and favouriting. A mod that breaks the third-person gamepad experience is a poor fit regardless of individual quality.

### Animation Quality Bar
Animations must meet the `Animations` baseline for blend smoothness, motion-capture fidelity, and weapon-type awareness. No clipping, snapping, floating, or poor foot-planting. The animation must look natural at standard gameplay speed in third-person, not only in slow-motion showcase clips.

### Performance Target And Hardware Assumptions
Target: mid-range modern GPU (roughly RTX 3060 / RX 6700 equivalent) at 1440p with a 60 FPS target in most outdoor scenes. Dense forests and major cities may drop below 60 FPS; acceptable if above 45 FPS. Mods requiring DLSS/framegen reach playable framerates on target baseline must be flagged optional.

### Preference For Lightweight Vs Feature-Rich Mods
When two mods solve the same goal, prefer the lighter option unless the feature-rich alternative brings a clearly measurable improvement. Lightweight: fewer deps, smaller plugin footprint, less script load, simpler patch requirements.

### Rules For Avoiding Overlapping Overhauls
No two mods should overhaul the same gameplay system unless one is explicitly a compatibility layer. Examples: two perk overhauls, two magic systems, two encounter-zone overhauls, two survival frameworks, two independent combat animation packs for the same attack sets. Alternatives in section files must clearly state whether they are compatible add-ons or exclusive branches.

---

## Testing Plan

Each stage targets a specific category of load-order risk, ordered so earlier stages catch common failures before later stages invest time in detailed playthrough evaluation.

### Fresh Game Startup Checklist
1. Skyrim launches from MO2 without crash or infinite load.
2. Main menu displays correctly with all UI mods active.
3. New game reaches the alternate-start character-generation flow without freezing.
4. Character-generation menu (races, presets, body, sliders) works with all body/appearance mods.
5. Clean character save saves and loads without corruption or missing-master warnings.
6. MCM registers all expected configuration menus.
7. Console commands and basic navigation work without error spam.

If any step fails, do not proceed to later tests.

### Character Creation Test
Verify: race/body preset/appearance sliders apply correctly; starting equipment/spells/inventory match alternate-start config; starting location loads without crashes, missing geometry, or broken lighting; perk/race/standing-stone overrides apply; first level-up triggers correctly; starting quest marker appears as expected.

### Third-Person Combat Test
Five encounter types: one-handed+shield vs humanoid; two-handed power attacks vs large target; archery/ranged magic vs distant target; dual-wield or spell-sword vs fast enemy; mounted combat if horse overhaul is active. Verify: stable camera (lock-on, shoulder switching, free-look); dodge/block/parry/stagger trigger correctly; hit reactions/impact VFX/sound feedback play without delay; no animation breaks/snapping/T-posing; UI elements display correctly.

### City Performance Test
Walk from gate to center in each major city (Whiterun, Solitude, Windhelm, Riften, Markarth). Record framerate range; note stutter/loading pauses/texture pop-in; check for missing objects, broken navmesh, stuck NPCs; verify city overhaul mods apply cleanly; confirm indoor cells load correct lighting. Fail if <45 FPS on target hardware or visual errors make area feel broken.

### Forest Traversal Test
Travel through dense pine (Falkreath), aspen/deciduous (The Rift), and tundra transition (Whiterun plains near forest edge). Record framerate with grass/tree/LOD active; check grass pop-in, tree LOD shimmer, distant-object flicker; verify soundscape mods change between biomes; confirm encounters/wildlife/patrols spawn at expected intervals; test grass cache without dead zones. Passes if traversal stays playable (no sustained drops below 45 FPS) and biome transitions feel organic.

### Dungeon Lighting Test
Enter Nordic ruin, cave/mine, Dwemer ruin. Verify: lighting overhaul produces readable contrast without crushing blacks; torch/magelight/candlelight illuminate correctly; interior acoustic changes match room size/material; no light bleed through walls, misaligned shadows, or fire flicker mismatch; enemy silhouettes visible enough for third-person targeting. Fail if any interior is unplayably dark or lighting errors break immersion in more than one room per dungeon.

### UI And Controller Test
Test full UI with KB+M and controller: inventory/magic/map/journal/crafting menus open/navigate/close without errors; item cards display correct info; map renders correctly with quest markers in right positions; dialogue menus show full text; controller button mappings match expected layout; HUD elements display at correct size/position for target resolution. Fail if any menu is unusable on either input method or controller support requires manual INI editing.

### Long-Session Stability Test
Play continuously for at least 2 hours: travel through 4+ worldspaces/holds including city-to-dungeon and fast-travel loads; complete 2 quest stages, 1 combat encounter, 1 menu-heavy activity; open/close MCM at least once; save/reload at least twice; check save file size and Papyrus log for accumulating errors. Passes if no crash, save remains loadable, no escalating error spam. Single crash = warning. Two crashes = failure requiring investigation.

---

## Post-Install Smoke Test

Run after completing any numbered section.

| # | Command | Location | Stress Profile |
|---|---------|----------|----------------|
| 1 | `coc Whiterun` | Whiterun | Major city — NPCs, shadows, architecture |
| 2 | `coc Solitude` | Solitude | Large city — water, long draw distances |
| 3 | `coc RiftenOrigin` | Riften | Canopy lighting, heavy NPC AI |
| 4 | `coc MarkarthOrigin` | Markarth | Dwemer stone, waterfalls, verticality |
| 5 | `coc Riverwood` | Riverwood | Forest exterior — grass, trees, landscape LOD |
| 6 | `coc BleakFallsBarrow01` | Bleak Falls Barrow | Interior dungeon — close-quarters lighting |
| 7 | `coc WhiterunBanneredMare` | Bannered Mare | Tavern interior — fire lighting, patron NPCs |

**Pass criteria:** No crash on load. No missing textures. Target: ≥60 FPS during graphics-heavy stages (sections 02+); ≥40 FPS acceptable during section 01. If any location fails, the most recently installed mod or generation step is the first suspect.
