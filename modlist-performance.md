# Performance and Technical Workflow

**MO2 Separator:** `14 Performance`

## Overview

This section owns the performance budgeting, optimization discipline, generated-patch pipeline, and long-term maintenance workflow that keeps `Elder Wilds` stable as the load order grows. The section is split into five sub-files that each own a distinct concern:

- `14a` — **Performance Strategy**: budgeted performance analysis, VRAM-heavy mod review, CPU-heavy script review
- `14b` — **Optimization & Configuration**: shader impact, grass/tree/draw-call optimization, INI tuning (BethINI Pie baseline), save safety
- `14c` — **Tool Pipeline**: xEdit/Pandora/DynDOLOD/Synthesis workflow discipline, 4K LOD baseline (xLODGen/TexGen/DynDOLOD STEP config), optional diagnostics (Recursion Monitor, S.L.A.C.K.)
- `14d` — **Bashed Patch & Synthesis Configuration**: exact Wrye Bash tweak settings, Bash Tag per plugin, full Synthesis patcher pipeline (11 stages), build order and rebuild triggers
- `14e` — **Testing & Maintenance**: benchmark methodology and scenarios, tuning knobs, patcher revisit triggers, generator output order, change tracking, MCM recording, mod update workflow

## Sub-File Index

| File | Section |
|------|---------|
| [`modlist-14a.md`](modlist-14a.md) | Performance Strategy |
| [`modlist-14b.md`](modlist-14b.md) | Optimization & Configuration |
| [`modlist-14c.md`](modlist-14c.md) | Tool Pipeline |
| [`modlist-14d.md`](modlist-14d.md) | Bashed Patch & Synthesis Configuration |
| [`modlist-14e.md`](modlist-14e.md) | Testing & Maintenance |

## Key Principles

- Treat performance as four separate problems: shader cost, VRAM pressure, CPU/script load, and exterior draw-call pressure. A fix that targets the wrong category makes things worse.
- Use the disciplined route for all generated work: keep every output in its own dedicated MO2 mod, rebuild only when the owning category changes, and run tools in a repeatable order.
- The Bashed Patch and Synthesis pipeline is the single source of truth for conflict resolution. A tag or patcher exists only when a specific mod in the list requires it.
- The list's long-term health depends on disciplined rebuild habits, saved MCM profiles, and a documented changelog — not on any single mod pick.

## Related Sections

- `modlist-01.md` — engine baseline, SSE Display Tweaks config, core stability fixes
- `modlist-02b.md` — Community Shaders visual framework (performance envelope owned by `14b`)
- `modlist-13.md` — curation rules and testing methodology
