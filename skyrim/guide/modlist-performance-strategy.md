# Performance Strategy

**MO2 Separators:** `Performance` → `Performance - Strategy`

All items in this section belong to the `Performance` MO2 separator.

Part of the [`Performance and Technical Workflow`](modlist-performance.md) section.

---

## Performance Budgeting
How `Elder Wilds` measures performance, identifies bottlenecks, and keeps generated workflow sane once the list gets heavy.

### Baseline
- **Budgeted route** — Separate GPU, VRAM, CPU/script, and draw-call problems so fixes target the real cause.
- Treat performance as four different problems that can look similar: shader cost, VRAM pressure, CPU/script load, and exterior draw-call pressure.
- Keep one repeatable forest scene, one city scene, and one dungeon/interior scene for comparisons.
- Record baseline and post-change captures with `PresentMon` and review in `CapFrameX`.
- Prefer a stable frame-time target over chasing the highest uncapped number.

### Alternatives
- **Intuition-first route** — Change settings/mods by feel.
- **Average-FPS route** — Judge by headline FPS even if frame pacing and bottleneck type stay unclear.

### Risks & Compatibility
- A single bad scene can be CPU-bound, GPU-bound, or content-bound in different directions.
- Average FPS can improve while hitching and traversal smoothness get worse.

---

## VRAM-Heavy Mod Review
Texture resolution, PBR/parallax adoption, heavy shader features, and world coverage drive VRAM pressure. Spend texture budget where visible in normal play.

### Baseline
- **Selective route** — High resolution only for hero assets, creatures, architecture, or landscape layers dominating the screen.
- Start below maximum resolution when a visual pack offers multiple sizes; scale up only if testing proves the asset earns it.
- Treat PBR/parallax conversions as a VRAM and maintenance choice, not just a screenshot upgrade.
- If a scene stutters, verify actual memory pressure before blaming scripts or AI.

### Alternatives
- **Max-detail route** — Broad 4K coverage, frequent material upgrades.
- **Restraint-first route** — Mostly 2K and below with few exceptions.

### Risks & Compatibility
- High VRAM usage can look like generic stutter, but lowering unrelated gameplay mods won't fix it.
- Some landscape/architecture/material upgrades cost more in aggregate than character textures ever will.

---

## CPU-Heavy Script Review
CPU and Papyrus pressure comes from layered systems, NPC density, polling scripts, and constant background updates.

### Baseline
- **Moderated route** — Keep strong feature mods, but avoid stacking several background-heavy systems solving similar jobs.
- Treat NPC expansion, survival layers, follower frameworks, reputation systems, defeat systems, and ambient event mods as cumulative load.
- Prefer one good system per gameplay problem instead of three lighter systems all ticking in the background.
- Keep diagnostic logging off during normal play unless a bug needs it.
- Judge script health through sleeping, waiting, cell changes, combat cleanup, and long travel.

### Alternatives
- **Permissive route** — Allow multiple overlapping always-on systems.
- **Strict route** — Aggressively cut scripted features even when they materially help list identity.

### Risks & Compatibility
- Script delay often misdiagnosed as low FPS or "Skyrim being Skyrim."
- Mid-save uninstalls can create save instability looking like performance decay.
- A list can feel fine in short tests and still degrade over longer sessions.
