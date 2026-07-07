# LOD & Distant Detail

**MO2 Separator:** `Graphics` → `Graphics - LOD & Distant Detail`

## LOD Generation And Distant Detail → `Graphics - LOD & Distant Detail`

Distant detail determines whether `Elder Wilds` feels large and coherent during travel instead of collapsing into obvious pop-in and flat backgrounds. This section covers both the visual target and the practical generation workflow for terrain, trees, objects, town silhouettes, grass cache, and occlusion output.

### Baseline

- Use the balanced route: strong object and tree LOD quality with targeted support mods where they materially help.
- Make `DynDOLOD`-based distant detail the assumed standard. → `Graphics - LOD & Distant Detail`
- Add support mods only where they visibly improve the chosen tree and texture stack instead of collecting every possible LOD add-on.
- Judge distant detail from actual travel routes, mountain overlooks, and city approaches rather than static showcase shots.

### Alternatives

- Conservative route: clean functional distant detail with limited extra support layers.
- High-end route: aggressive polish with extra texture upgrades, tree-specific optimization, and stricter regeneration discipline.

### Required Tools And Dependencies

#### Core Support Mods

- **DynDOLOD Resources SE 3** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/52897)) → `Graphics - LOD & Distant Detail`
- **DynDOLOD DLL NG** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/97720)) → `Graphics - LOD & Distant Detail`

#### Optional Distant Detail Support

- **HD LODs Textures SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/3333)) → `Graphics - LOD & Distant Detail`
- **Skyfall's Sleeping Hist Tree Overhaul - DynDOLOD Add-On** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/169984)) — DynDOLOD billboard generation support for Skyfall's Sleeping Hist Tree. Required for correct distant-LOD display of the replaced tree when using DynDOLOD. → `Graphics - LOD & Distant Detail`
- **Happy Little Trees DynDOLOD Optimizations** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/158587)) → `Graphics - LOD & Distant Detail`

#### Core Workflow Dependencies

- **No Grass In Objects** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/42161)) → `Graphics - LOD & Distant Detail`
- **Worldspaces with Grass SSEEdit Script for No Grass In Objects** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/55152)) → `Graphics - LOD & Distant Detail`
- **Grass Cache Fixes** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/60891)) → `Graphics - LOD & Distant Detail`
- **xLODGen Resource - SSE Terrain Tamriel** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/54680)) → `Graphics - LOD & Distant Detail`

### Build Order And Configuration

#### DynDOLOD Setup And Configuration Instructions

- Install `DynDOLOD Resources SE 3` and `DynDOLOD DLL NG` as normal mods in MO2. → `Graphics - LOD & Distant Detail`
- Install `No Grass In Objects`, `Grass Cache Fixes`, and `xLODGen Resource - SSE Terrain Tamriel` as support content where applicable. → `Graphics - LOD & Distant Detail`
- Keep TexGen, DynDOLOD, and xLODGen registered as MO2 executables, not mixed into normal mod folders. → `Graphics - LOD & Distant Detail`
- Treat the Nexus-linked xLODGen Resource as support content; the actual xLODGen tool remains part of the external tools chain. → `Graphics - LOD & Distant Detail`
- Treat occlusion as generated output, not as a separate mod pick.
- Create dedicated MO2 output mods before generation begins:
  - `Grass Cache Output` → `Graphics - LOD & Distant Detail`
  - `Terrain LOD Output` → `Graphics - LOD & Distant Detail`
  - `TexGen Output` → `Graphics - LOD & Distant Detail`
  - `DynDOLOD Output` → `Graphics - LOD & Distant Detail`
  - `Occlusion Output` → `Graphics - LOD & Distant Detail`
- Keep generated outputs in the `Output` separator. → `Graphics - LOD & Distant Detail`
- Do not generate final outputs until the main tree, terrain, snow, flora, and large worldspace visual picks are mostly stable. → `Graphics - LOD & Distant Detail`

#### Run Order

1. Confirm load order and conflict resolution first.
2. Generate grass cache through the No Grass In Objects workflow. → `Graphics - LOD & Distant Detail`
3. Install/update Grass Cache Output. → `Graphics - LOD & Distant Detail`
4. Run xLODGen for terrain LOD once terrain and snow are stable enough. → `Graphics - LOD & Distant Detail`
5. Install/update Terrain LOD Output. → `Graphics - LOD & Distant Detail`
6. Run TexGen. → `Graphics - LOD & Distant Detail`
7. Install/update TexGen Output. → `Graphics - LOD & Distant Detail`
8. Run DynDOLOD. → `Graphics - LOD & Distant Detail`
9. Install/update DynDOLOD Output. → `Graphics - LOD & Distant Detail`
10. Generate occlusion data near the end and keep it in Occlusion Output. → `Graphics - LOD & Distant Detail`
- Re-run relevant generated layers whenever a major tree overhaul, large architecture change, landscape shift, grass change, or LOD-relevant texture pack is replaced.

#### Recommended Starting DynDOLOD Configuration

- First pass target: balanced, stability-first output rather than maximum visual range.
- Use **High** as the starting preset if the setup is already graphics-heavy; move above only after checking travel performance and distant coherence. → `Graphics - LOD & Distant Detail`
- Generate both object and tree LOD on the first real pass so forest silhouette quality can be judged early.
- Keep large-reference and ultra-aggressive options off for the first pass unless a chosen mod explicitly requires them.
- Use the first pass to answer: do distant trees match the chosen overhaul, do mountain/road/city approach views feel coherent, and is the performance cost acceptable in real travel scenes?
- If using Happy Little Trees, test baseline output first, then compare Happy Little Trees DynDOLOD Optimizations. → `Graphics - LOD & Distant Detail`
- If using heavier tree overhauls (Ulvenwald, Fabled Forests, Nature of the Wild Lands), prioritize clean transitions and stable horizons before chasing longer range. → `Graphics - LOD & Distant Detail`

#### Baseline Starting Profile For Elder Wilds

- Preset target: **High** → `Graphics - LOD & Distant Detail`
- Quality target: balanced object and tree LOD with stable travel performance
- First-pass goal: believable distant forests, readable city approaches, clean mountain silhouettes
- Keep optional LOD texture upgrades and tree-specific optimization mods disabled at first

### Grass Cache And Occlusion Notes

- Use No Grass In Objects only after the main grass/flora direction is narrow enough that cache generation is not immediately obsolete.
- Keep Grass Cache Fixes as part of the serious grass-cache path. → `Graphics - LOD & Distant Detail`
- Use Worldspaces with Grass SSEEdit Script if the final setup needs tailored worldspace grass support. → `Graphics - LOD & Distant Detail`
- Treat grass cache as invalid whenever the winning grass combination, landscape coverage, or major worldspace edits change materially.
- Regenerate occlusion near the end of a major graphics pass, after grass, terrain LOD, and DynDOLOD inputs are stable.
- Keep occlusion output separate from all other generated mods so stale occlusion data is easy to identify and replace.

### Validation

- No missing distant objects, giant billboard errors, or broken tree lines
- Near and far tree silhouettes transition cleanly during normal travel
- City approaches, mountain overlooks, and forest horizons look coherent under the selected weather and lighting route
- Generated outputs are enabled in MO2 and load after the source mods they depend on
- Old generated outputs are replaced when the visual stack changes, rather than left active by accident

### Notes

- Strong near-field visuals can still look broken in motion if distant terrain and tree lines do not match them.
- Optional LOD texture and tree-optimization add-ons can create extra maintenance burden for limited payoff.
- Generating too early produces stale outputs that quietly poison later comparisons.
- Partial rebuild habits can leave mismatched terrain, tree, and occlusion outputs active at the same time.

### Rebuild Rules

- Rebuild grass cache if the grass baseline changes, major flora layering changes, or worldspace edits materially affect grass placement.
- Rebuild terrain LOD if landscape, snow, mountain, or terrain-color direction changes in a way that affects distant ground presentation.
- Rebuild TexGen and DynDOLOD if tree overhauls, large architecture changes, major LOD-support mods, or visual worldspace edits change. → `Graphics - LOD & Distant Detail`
- Refresh occlusion whenever major worldspace edits or the final distant-detail pass changes enough to affect visibility and culling behavior.
- If multiple major visual categories change together, prefer a clean full rebuild of generated outputs instead of partial guesswork.
