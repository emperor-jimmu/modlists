# LOD & Distant Detail

**MO2 Separator:** `Graphics` → `Graphics - LOD & Distant Detail`

All items in this section belong to the `Graphics - LOD & Distant Detail` MO2 separator unless noted.

## LOD Generation And Distant Detail → separator: `Graphics - LOD & Distant Detail`

Distant detail determines whether `Elder Wilds` feels large and coherent during travel instead of collapsing into obvious pop-in and flat backgrounds.

### Baseline
- `DynDOLOD`-based distant detail is the assumed standard.
- Use the balanced route: strong object and tree LOD quality with targeted support mods.
- Add support mods only where they visibly improve the chosen tree and texture stack.
- Judge distant detail from actual travel routes, mountain overlooks, and city approaches — not static showcase shots.

### Required Tools And Dependencies

#### Core Support Mods

| Mod | Nexus |
| --- | --- |
| DynDOLOD Resources SE 3 | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/52897) |
| DynDOLOD DLL NG | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/97720) |

#### Optional Distant Detail Support

| Mod | Notes | Nexus |
| --- | --- | --- |
| HD LODs Textures SE | | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/3333) |
| Skyfall's Sleeping Hist Tree Overhaul — DynDOLOD Add-On | Billboard generation for replaced tree. Required for correct distant-LOD display. | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/169984) |
| Happy Little Trees DynDOLOD Optimizations | | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/158587) |

#### Core Workflow Dependencies

| Mod | Nexus |
| --- | --- |
| No Grass In Objects | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/42161) |
| Worldspaces with Grass SSEEdit Script | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/55152) |
| Grass Cache Fixes | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/60891) |
| xLODGen Resource — SSE Terrain Tamriel | [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/54680) |

---

### Build Order And Configuration

#### Setup
- Install `DynDOLOD Resources SE 3` and `DynDOLOD DLL NG` as normal mods in MO2.
- Install `No Grass In Objects`, `Grass Cache Fixes`, and `xLODGen Resource` as support content.
- Register **TexGen**, **DynDOLOD**, and **xLODGen** as MO2 executables, not mixed into mod folders.
- Treat occlusion as generated output, not as a separate mod pick.

#### Dedicated MO2 Output Mods (create before generation)
| Output Folder | Purpose |
|--------------|---------|
| `Grass Cache Output` | Generated grass cache |
| `Terrain LOD Output` | xLODGen terrain output |
| `TexGen Output` | Generated billboards |
| `DynDOLOD Output` | DynDOLOD output |
| `Occlusion Output` | Occlusion data |

Keep generated outputs in the `Output` separator. Do not generate final outputs until tree, terrain, snow, flora, and large worldspace picks are mostly stable.

#### Run Order
1. Confirm load order and conflict resolution first.
2. Generate grass cache (No Grass In Objects workflow).
3. Install/update `Grass Cache Output`.
4. Run **xLODGen** for terrain LOD (once terrain and snow are stable).
5. Install/update `Terrain LOD Output`.
6. Run **TexGen**.
7. Install/update `TexGen Output`.
8. Run **DynDOLOD**.
9. Install/update `DynDOLOD Output`.
10. Generate **occlusion data** near the end, keep in `Occlusion Output`.

Re-run relevant generated layers when a major tree overhaul, architecture change, landscape shift, grass change, or LOD-relevant texture pack is replaced.

#### Recommended Starting DynDOLOD Configuration
- **First-pass preset: High** — start here even if the setup is graphics-heavy. Move above only after checking travel performance and distant coherence.
- Generate both object and tree LOD on the first real pass to judge forest silhouette quality early.
- Keep large-reference and ultra-aggressive options off for the first pass.
- First-pass questions: do distant trees match the overhaul? Do mountain/road/city approach views feel coherent? Is performance acceptable in real travel?
- If using **Happy Little Trees**, test baseline output first, then compare DynDOLOD Optimizations.
- If using heavier tree overhauls (**Ulvenwald**, **Fabled Forests**, **Nature of the Wild Lands**), prioritize clean transitions and stable horizons before longer range.

#### Baseline Starting Profile For Elder Wilds
- **Preset:** High
- **Quality target:** Balanced object and tree LOD with stable travel performance
- **First-pass goal:** Believable distant forests, readable city approaches, clean mountain silhouettes
- Keep optional LOD texture upgrades and tree-specific optimization mods disabled at first

---

### Grass Cache And Occlusion
- Use No Grass In Objects only after the main grass/flora direction is narrow enough that cache generation isn't immediately obsolete.
- Keep Grass Cache Fixes as part of the serious grass-cache path.
- Use Worldspaces with Grass SSEEdit Script if the final setup needs tailored worldspace grass support.
- Treat grass cache as invalid whenever the winning grass combination, landscape coverage, or major worldspace edits change materially.
- Regenerate occlusion near the end of a major graphics pass, after grass, terrain LOD, and DynDOLOD inputs are stable.
- Keep occlusion output separate from all other generated mods for easy identification and replacement.

### Validation
- No missing distant objects, giant billboard errors, or broken tree lines
- Near and far tree silhouettes transition cleanly during normal travel
- City approaches, mountain overlooks, and forest horizons look coherent under selected weather/lighting
- Generated outputs are enabled in MO2 and load after source mods
- Old generated outputs are replaced when the visual stack changes, not left active by accident

### Risks & Compatibility
- Strong near-field visuals can still look broken in motion if distant terrain and tree lines don't match.
- Optional LOD texture and tree-optimization add-ons create extra maintenance for limited payoff.
- Generating too early produces stale outputs that quietly poison later comparisons.
- Partial rebuild habits leave mismatched terrain, tree, and occlusion outputs active simultaneously.

### Rebuild Rules
- **Grass cache:** Rebuild if grass baseline, major flora layering, or worldspace edits change.
- **Terrain LOD:** Rebuild if landscape, snow, mountain, or terrain-color direction changes.
- **TexGen + DynDOLOD:** Rebuild if tree overhauls, large architecture, major LOD-support mods, or visual worldspace edits change.
- **Occlusion:** Refresh when major worldspace edits or the distant-detail pass changes enough to affect visibility/culling.
- If multiple major visual categories change together, prefer a clean full rebuild over partial guesswork.
