# Performance Strategy

**MO2 Separator:** `Performance`

Part of the [`Performance and Technical Workflow`](modlist-performance.md) section. See also: `Optimization & Configuration`, `Tool Pipeline`, `Bashed Patch & Synthesis`, `Testing & Maintenance`.

## Performance Budgeting → `Performance`

This section does not replace the engine baseline from `modlist-foundations.md` or the graphics decisions from [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md). Its job is to decide how `Elder Wilds` measures performance, identifies bottlenecks, and keeps generated workflow sane once the list gets heavy.

### Baseline

- **Budgeted route** — Separate GPU, VRAM, CPU/script, and draw-call problems so fixes target the real cause.
- Treat performance as four different problems that can look similar in play: shader cost, VRAM pressure, CPU/script load, and exterior draw-call pressure.
- Keep one repeatable forest scene, one city scene, and one dungeon/interior scene for comparisons rather than testing in random places.
- Record baseline and post-change captures with `PresentMon` and review them in `CapFrameX` or an equivalent frame-time tool instead of trusting impressions. → `Performance`
- Prefer a stable frame-time target over chasing the highest uncapped number.

### Alternatives

- **Intuition-first route** — Change settings and mods by feel until the game seems stable enough.
- **Average-FPS route** — Judge the list mostly by headline FPS even if frame pacing and bottleneck type stay unclear.

### Notes

- A single bad scene can be CPU-bound, GPU-bound, or content-bound in different directions, so one "performance fix" can solve the wrong problem.
- Average FPS can improve while hitching and traversal smoothness still get worse.
- Measuring several categories at once makes later decisions impossible to trust.

## VRAM-Heavy Mod Review → `Performance`

VRAM pressure in this list will come mostly from texture resolution, PBR/parallax adoption, heavy shader features, and world coverage, not from one magic setting. The goal is to spend texture budget where it is visible in normal play instead of paying premium cost everywhere.

### Baseline

- **Selective route** — High resolution only for hero assets, creatures, architecture, or landscape layers that actually dominate the screen.
- Keep broad world textures disciplined and reserve heavier resolutions for assets the player repeatedly sees up close.
- When a visual pack offers multiple sizes, start below the maximum and only scale upward if testing proves the asset really earns it.
- Treat PBR/parallax conversions as a VRAM and maintenance choice, not just a screenshot upgrade.
- If a scene stutters, verify whether it is actual memory pressure before blaming scripts or AI.

### Alternatives

- **Max-detail route** — Broad `4K` coverage, frequent material upgrades, and little restraint on texture size. → `Performance`
- **Restraint-first route** — Mostly `2K` and below with only a few intentional exceptions. → `Performance`

### Notes

- High VRAM usage can look like generic stutter, but lowering unrelated gameplay mods will not fix it.
- Mixed-resolution stacks can still overload memory if too many wide-coverage packs are combined.
- Some landscape, architecture, and material upgrades cost more in aggregate than character textures ever will.

## CPU-Heavy Script Review → `Performance`

CPU and Papyrus pressure usually comes from layered systems, NPC density, polling scripts, and constant background updates rather than one dramatic offender. This section should keep the list from mistaking script delay for graphics trouble.

### Baseline

- **Moderated route** — Keep strong feature mods, but avoid stacking several background-heavy systems that solve similar jobs.
- Treat NPC expansion, survival layers, follower frameworks, reputation systems, defeat systems, and ambient event mods as cumulative load, not isolated decisions.
- Prefer one good system per gameplay problem instead of three lighter systems that all tick in the background.
- Keep diagnostic logging and troubleshooting-only settings off during normal play unless a bug actually needs them.
- Judge script health through sleeping, waiting, cell changes, combat cleanup, and long travel rather than standing still in one test spot.

### Alternatives

- **Permissive route** — Allow multiple overlapping always-on systems and troubleshoot only after instability appears.
- **Strict route** — Aggressively cut scripted features even when they materially help the list identity.

### Notes

- Script delay often gets misdiagnosed as low FPS or "Skyrim being Skyrim."
- Mid-save uninstall habits can create save instability that looks like performance decay.
- A list can feel fine in short tests and still degrade badly over longer sessions.
