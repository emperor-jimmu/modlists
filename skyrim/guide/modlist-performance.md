# Performance and Technical Workflow

## Overview

This section owns the performance budgeting, optimization discipline, generated-patch pipeline, and long-term maintenance workflow that keeps `Elder Wilds` stable as the load order grows. The section is split into five sub-files that each own a distinct concern:

- **Performance Strategy**: budgeted performance analysis, VRAM-heavy mod review, CPU-heavy script review
- **Optimization & Configuration**: shader impact, grass/tree/draw-call optimization, INI tuning (BethINI Pie baseline), save safety
- **Tool Pipeline**: xEdit/Pandora/DynDOLOD/Synthesis workflow discipline, 4K LOD baseline (xLODGen/TexGen/DynDOLOD STEP config), optional diagnostics (Recursion Monitor, S.L.A.C.K.)
- **Bashed Patch & Synthesis Configuration**: exact Wrye Bash tweak settings, Bash Tag per plugin, full Synthesis patcher pipeline (11 stages), build order and rebuild triggers
- **Testing & Maintenance**: benchmark methodology and scenarios, tuning knobs, patcher revisit triggers, generator output order, change tracking, MCM recording, mod update workflow

## Sub-File Index

| File | Section |
|------|---------|
| [`modlist-performance-strategy.md`](modlist-performance-strategy.md) | Performance Strategy |
| [`modlist-performance-optimization.md`](modlist-performance-optimization.md) | Optimization & Configuration |
| [`modlist-performance-tools.md`](modlist-performance-tools.md) | Tool Pipeline |
| [`modlist-performance-patches.md`](modlist-performance-patches.md) | Bashed Patch & Synthesis Configuration |
| [`modlist-performance-testing.md`](modlist-performance-testing.md) | Testing & Maintenance |

## Key Principles

- Treat performance as four separate problems: shader cost, VRAM pressure, CPU/script load, and exterior draw-call pressure. A fix that targets the wrong category makes things worse.
- Use the disciplined route for all generated work: keep every output in its own dedicated MO2 mod, rebuild only when the owning category changes, and run tools in a repeatable order.
- The Bashed Patch and Synthesis pipeline is the single source of truth for conflict resolution. A tag or patcher exists only when a specific mod in the list requires it.
- The list's long-term health depends on disciplined rebuild habits, saved MCM profiles, and a documented changelog — not on any single mod pick.

## Related Sections

- `modlist-foundations.md` — engine baseline, SSE Display Tweaks config, core stability fixes
- `modlist-graphics-textures.md` — Community Shaders visual framework and texture/mesh asset stack (performance envelope owned by `modlist-performance-optimization.md`)
- `modlist-curation.md` — curation rules and testing methodology
