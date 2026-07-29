# Performance Methodology

This section documents the benchmark methodology used to evaluate the performance impact of the modlist. All figures are preliminary benchmarks collected on a single test system and are intended as a relative guide, not an absolute yardstick.

---

## Test System

| Component | Specification |
|-----------|---------------|
| **CPU** | [TBD] |
| **GPU** | RTX 4080 Super (16 GB VRAM) |
| **RAM** | 64 GB |
| **Storage** | [TBD] |
| **OS** | [TBD] |
| **Resolution** | 3840 × 2160 (4K) |
| **Game Version** | 1.60 |

The baseline profile targets **50-60 FPS at 4K with ultra settings** on this hardware. The mods in this guide are curated to fit within the 16 GB VRAM budget so that a full map combo (ProMods + addons) plus graphics/weather overhauls runs without swapping to system memory.

---

## Benchmark Route

All benchmarks run on a fixed route to ensure reproducibility:

1. **Start:** ProMods city of [TBD]
2. **End:** ProMods city of [TBD]
3. **Duration:** ~15 minutes of driving
4. **Time of day:** 12:00 noon (fixed via console `g_set_time 12`)
5. **Weather:** Clear (fixed via console `g_set_weather 0`)
6. **Traffic density:** Default (`g_traffic 1.0`)

Using the same route, time, and weather eliminates variables that skew FPS readings. Every test run starts from a fresh game load to avoid memory-state drift.

---

## Tools

### MSI Afterburner + RivaTuner Statistics Server

FPS and frame time data are logged using **MSI Afterburner** with the **RivaTuner Statistics Server** (RTSS) overlay. The following metrics are captured to a CSV log file at 1-second intervals:

- Framerate (FPS)
- 1% low framerate
- Frame time (ms)
- GPU utilisation (%)
- GPU temperature (°C)
- VRAM usage (MB)
- CPU utilisation (%)

### Log Processing

Raw CSV logs are processed using a Python script that discards the first 60 seconds (warm-up / asset streaming) and the last 30 seconds (cooldown) and calculates aggregate statistics from the remaining steady-state window.

---

## Metrics

| Metric | Definition |
|--------|------------|
| **Average FPS** | Mean framerate across the steady-state window. |
| **1% Low** | The average FPS of the slowest 1% of frames — a measure of stutter severity. |
| **Frame Time Variance** | Standard deviation of frame times (ms). Lower values indicate smoother delivery. |

A modlist that maintains average FPS above 50 at 4K with 1% lows above 35 is considered acceptable. Below those thresholds, the visual gain from the mod does not justify the performance cost. The baseline profile (RTX 4080 Super, 16 GB VRAM, 64 GB RAM) targets 50-60 FPS with the full modlist.

---

## Test Conditions

Each benchmark is run under five conditions:

1. **Vanilla (no mods):** Baseline — ETS2 1.60 with no mods active, default graphics, 4K 400% scaling.
2. **Full modlist:** All mods from this guide active in the recommended load order.
3. **Full modlist + 400% scaling:** Same as above with 400% scaling.
4. **Graphics-only:** Only graphics and weather mods active (Reshade, texture packs, weather).
5. **Maps-only:** Only map mods active (ProMods, RusMap, ROEX, connectors).

This breakdown isolates which category has the largest performance impact.

---

## Benchmark Tables

### Full Modlist vs Vanilla

| Test | Avg FPS | 1% Low | Frame Time |
|------|---------|--------|------------|
| Vanilla (no mods) | — | — | — |
| Full modlist | — | — | — |
| Full modlist + 4K 400% scaling | — | — | — |

### Per-Category Breakdown

| Test | Avg FPS | 1% Low | Frame Time |
|------|---------|--------|------------|
| Vanilla (no mods) | — | — | — |
| Graphics-only | — | — | — |
| Maps-only | — | — | — |
| Full modlist | — | — | — |

---

## Replicating the Benchmarks

To run the same benchmarks on your system:

1. Install **MSI Afterburner** and **RTSS** and configure them to log framerate and frame times to a CSV file using the hotkey toggle.
2. Set the game to 3840 × 2160 with scaling at 400% and all other settings matching the recommended configuration in Section 3.
3. Load the vanilla profile (no mods).
4. Teleport to the benchmark start city using the console: `goto [coordinates]`.
5. Press the MSI Afterburner logging hotkey to start recording.
6. Drive the fixed route at a consistent speed (~80 km/h on highways, ~50 km/h in cities).
7. After completing the route, press the logging hotkey again to stop.
8. Repeat steps 3–7 for each test condition.
9. Process the CSV logs using any spreadsheet or scripting tool — discard the first and last minute, compute the mean and 1% low from the remaining data.

Performance varies significantly between hardware configurations. The tables above are a reference point on a single test system. Your results will differ based on GPU, CPU, RAM, background processes, and driver version.
