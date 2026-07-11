# Performance Testing Methodology

## Goal

Measure the impact of RimWorld mods on game performance (TPS, RAM, load times) in a reproducible way.

## Baseline

- Vanilla RimWorld 1.6.4633 with all DLC
- New colony on "Temperate Forest, year-round growing"
- Default difficulty, Cassandra Classic
- 3 starting colonists (random, no re-rolls)
- 4K resolution

## Tools

- **[RimPy](https://github.com/rimpy-custom/RimPy/releases)** — mod management, load order
- **[RocketMan](https://steamcommunity.com/sharedfiles/filedetails/?id=2897983570)** — built-in TPS counter (or use Dev Mode → TPS display)
- **Task Manager** or **Process Explorer** — RAM usage
- **Stopwatch** — load time from "Launch" to main menu

## Procedure

1. **Establish baseline:** Run vanilla, record metrics (see template)
2. **Add mods by category** (one chapter at a time):
   - Add all mods from Chapter 03 (Framework)
   - Run for 30 in-game days on the same save
   - Record TPS (average + minimum)
   - Record RAM usage
   - Record main-menu load time
3. **Repeat** for each subsequent category
4. **Cumulative:** Track total impact as you stack categories

## Controlled Colony Save

Use the **same save file** for every test run. The save should:
- ~20 in-game days old
- 5-8 colonists
- Established base (power, food, basic defenses)
- No major events in progress

## Metrics

| Metric | How to Measure |
|--------|---------------|
| Avg TPS | Dev Mode → toggle TPS display, watch for 5 min, record average |
| Min TPS | Note the lowest TPS during the 5 min window |
| RAM (MB) | Task Manager → RimWorld process |
| Load Time (s) | Click "Play" in Steam, stopwatch until main menu appears |

## Template

Use [`template.ods`](template.ods) to record results. Columns:

| Test # | Category | Mod Count | Cumulative Count | Avg TPS | Min TPS | RAM (MB) | Load (s) | Notes |
|--------|----------|-----------|-----------------|---------|---------|----------|----------|-------|
| 0 | Vanilla | 0 | 0 | | | | | Baseline |
| 1 | Framework | X | X | | | | | |
| ... | ... | ... | ... | | | | | |

> ⚠ **Important:** Results in `performance/results/` are gitignored. Only commit aggregated findings or methodology improvements.
