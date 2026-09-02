# Streams Reflowing Adoption — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Adopt Streams Reflowing 2.13.1 into Wave 2 — Overworld Worldgen of the Driftwood modpack (NeoForge 1.21.1), restoring hydrology (carved streams, elevation lakes, directional river currents, ambience) as the successor role to Dynamic Waters, with a curated config override and full STATUS/GUIDE bookkeeping.

**Architecture:** One new zero-dep mod (counts +1 everywhere) + one launch-test unit. The mod seeds its config on first launch into the instance's `config/streamsreflowing/`; the override is captured from there after the launch test (intent-first — keys are NOT authored blind), curated per spec §4, then committed to `config/streamsreflowing/`. GUIDE.md gains a table row + blurb + new-world note + After First Launch note + Mod Count Summary updates. STATUS.md gets a dated entry with the instance action + rollback path. One docs commit per house style; PDF regenerated after GUIDE changes.

**Tech Stack:** Markdown (GUIDE.md, STATUS.md), TOML/JSON config capture from XMCL instance, Typst PDF pipeline (`generate-pdf.ps1`), git.

**Spec:** `docs/superpowers/specs/2026-09-02-streams-reflowing-design.md`

## Global Constraints

- **Pinned build**: `StreamsReflowing-1.21.1-neoforge-2.13.1.jar` (Modrinth `streams-reflowing`, version id `5STkQGAk`, 2.66 MB, published 2026-08-27). Zero dependencies. ARR license — link + XMCL install only, never redistribute the jar in this repo.
- **Instance paths** (verified 2026-09-02): XMCL root `C:\Users\nimro\.minecraftx`; instance `Driftwood` at `C:\Users\nimro\.minecraftx\instances\Driftwood`; mods in `<instance>\mods\`, config in `<instance>\config\`. **No `dynamicwaters*.jar` is currently present** — the Aug 27 removal instance action is moot; do not add one.
- **Mod Count Summary deltas**: Wave 2 `36 | 7 | 44` → `37 | 7 | 45`; Total `180 | 43 | 223` → `181 | 43 | 224` (mods +1, deps unchanged). Verify exact arithmetic against the live table rows before editing; append changelog annotations, change only the numbers specified.
- **Table rows use exactly one leading pipe** (cmarker/Typst renders `||` as literal text — known 2026-08-28 bug class).
- **STATUS.md**: newest batch at the TOP, `- [x]` done items, `- [ ]` instance action, trailing `- [x] DRIFTWOOD-GUIDE.pdf regenerated`.
- **Commit style**: `docs(driftwood): ...`
- **Dynamic Waters is NOT re-adopted** — its codebase stays removed; Streams Reflowing is an independent project in the same role lane only. Do not re-add any Dynamic Waters reference as "installed".
- **Config override is intent-first** (spec §4): capture the real generated files after first launch, then apply only the documented posture; never invent config keys. Anything not listed in spec §4 stays at default.

---

### Task 1: GUIDE.md — Wave 2 Overworld Worldgen table row + blurb + new-world note

**Files:**
- Modify: `minecraft/GUIDE.md:1258` (after the Tectonic row in the Overworld Worldgen table)

- [ ] **Step 1: Add the table row after the Tectonic row (~line 1258)**

Current (verbatim, line 1258):
```markdown
| [Tectonic](https://www.curseforge.com/minecraft/mc-mods/tectonic) v9.0+                   | Terrain overhaul — deeper oceans, abyssal trenches, taller mountains, cave/noise tuning. Requires TerraBlender |
```
Insert a new row directly after it (before the blank line + `### Environment`):
```markdown
| [Streams Reflowing](https://modrinth.com/mod/streams-reflowing) 2.13.1 | Hydrology — terrain-following carved streams, lakes at varying elevations, directional river currents draining to oceans; ambience (spray, whitewater, debris, bank flora) |
```

- [ ] **Step 2: Add the blurb + new-world note after the table (before `### Environment`)**

The Overworld Worldgen table ends at the Tectonic/Streams rows and is followed by a blank line then `### Environment` (~line 1260). Insert between them:
```markdown
**Streams Reflowing** carves terrain-following streams, lakes at varying elevations, and gives natural rivers a directional current that drains to the sea — boats, items, and Create water wheels ride the flow. Built for worldgen compatibility: Terralith and Tectonic terrain are first-class (Terralith's Yellowstone is carve-blacklisted by default), carved banks use biome-native materials, and structures (YUNG's, villages) are stepped around rather than cut through. Every feature is independently configurable. Zero dependencies.

> **⚠️ New world recommended**: hydrology is worldgen — streams/lakes appear in newly generated chunks only, and network-shaping settings are best chosen *before* creating a world. Existing explored terrain keeps what it already has.
```

- [ ] **Step 3: Update the After First Launch bullet (~line 3137)**

Current (verbatim):
```markdown
1. First world load takes a few extra minutes while Terralith, Tectonic, and YUNG's generate the initial chunks — that's normal.
```
Replace with:
```markdown
1. First world load takes a few extra minutes while Terralith, Tectonic, YUNG's, and Streams Reflowing generate the initial chunks — that's normal. On world creation, Streams Reflowing queries terrain height across the spawn area first; the loading bar may sit at 0% for up to ~1 minute — normal, not a hang. Chunk loading may also be slower for the first couple minutes of play while height data settles.
```

- [ ] **Step 4: Verify**

```bash
grep -n "Streams Reflowing" minecraft/GUIDE.md   # expect: 3 hits (table row, blurb heading text, After First Launch bullet)
```

---

### Task 2: GUIDE.md — Mod Count Summary updates

**Files:**
- Modify: `minecraft/GUIDE.md:3149` (Wave 2 row)
- Modify: `minecraft/GUIDE.md:3155` (Total row)

- [ ] **Step 1: Update the Wave 2 row**

Locate the row starting `| Wave 2 — Exploration       | 36      | 7      | 44      |`. Change `36` → `37`, keep `7`, change `44` → `45`. Append to the notes cell (after `Bumblezone (bee dimension) + Resourceful Lib`): `, Streams Reflowing (hydrology — carved streams/lakes + river currents, Terralith/Tectonic first-class; restores the Dynamic Waters role removed Aug 27)`.

- [ ] **Step 2: Update the Total row**

Locate the row starting `| **Total**                  | **180** | **43** | **223** |`. Change `180` → `181`, keep `43`, change `223` → `224`. Append to the changelog notes cell: `; +Streams Reflowing (Sep 2026 — Wave 2 hydrology, zero deps)`.

- [ ] **Step 3: Verify arithmetic and annotations**

```bash
grep -n "Wave 2 — Exploration" minecraft/GUIDE.md    # row shows 37 | 7 | 45
grep -n "^\| \*\*Total\*\*" minecraft/GUIDE.md       # row shows 181 | 43 | 224
```
Both annotations present at the end of their respective notes cells.

---

### Task 3: STATUS.md decision entry

**Files:**
- Modify: `minecraft/STATUS.md:1` (insert at very top, before `### Tyz's Skills → Improvable Skills Swap`)

- [ ] **Step 1: Insert the entry**

```markdown
### Streams Reflowing Adopted — Wave 2 Hydrology (Sep 2, 2026)

- [x] **User request**: review [Streams Reflowing](https://modrinth.com/mod/streams-reflowing) for the guide — "will it fit?" Fit confirmed: restores the flowing-water *capability* lost with Dynamic Waters (removed Aug 27 — world-breaking river-carve bug) without re-adopting that codebase. Successor role in Wave 2 — Overworld Worldgen (Terralith + Tectonic keep their lanes; nothing else does hydrology).
- [x] **Pinned 2.13.1** (`StreamsReflowing-1.21.1-neoforge-2.13.1.jar`, 2.66 MB, Aug 27 2026, release; Modrinth API verified — version id `5STkQGAk`, `dependencies: []`). One NeoForge jar covers 1.21.1–1.21.5. ARR license — link + XMCL install only (same class as Improvable Skills). Project active (~2 releases/week Jul–Aug 2026), 160.8K DL.
- [x] **What it does** (project body + 2.9–2.13.1 changelog, read in full): terrain-following carved streams, lakes at varying elevations (dryness-scaled), directional river currents draining to oceans (boats/items bob downstream), boat-friendly upstream navigation, biome-aware carved banks, bank flora + fallen-log features, whitewater/spray/stream audio, floating debris. Worldgen is server-side; fine for this pack's strict single-player.
- [x] **Compatibility evidence** (mod's own changelog): Terralith Yellowstone blacklisted by default + granite/basalt cliff banks; Tectonic fast-terrain path + featured-gallery combo; Serene Seasons colour-resolver stutter fixed (2.12.1); Create water wheels + hose-pulley fluid identity fixed (2.13.1/2.12.8); carve steps around structures + villages never in lakes + compasses agree (2.12.9+); underground river stretches keep flowing (2.13.0); `rebiomeStreams=1` default marks streams as river for fish/mob spawns (aquatic stack compat); `waterMobsIgnoreFlow` keeps aquatic mobs swimming. Addresses the crash families that killed Dynamic Waters (unsafe terrain reads, chunk-border artifacts, multithreaded worldgen crash).
- [x] **Pack-rule checks**: no spawned vehicles · no hostile/grief/decay mechanics (chill rule) · survival-only · zero deps · no duplication with any Wave 2 mod.
- [x] **Risk posture (user-approved)**: standard wave discipline — own launch-tested unit + documented rollback (remove jar + delete `config/streamsreflowing/`; carved terrain is baked into chunks and survives; runtime currents stop; fresh world = clean rollback target, already the testing norm).
- [ ] **Config override** (spec §4 intent, captured from first launch): `config/streamsreflowing/` committed to the repo after Task 4's launch — streams/lakes ON, river currents ON, `rebiomeStreams` default, quality preset default-or-one-notch-down (decided at launch), particle budget tuned only if frames hurt under DH+Iris, Terralith Yellowstone carve-blacklist confirmed present, chat welcome message OFF.
- [ ] **Instance action (XMCL)**: add `StreamsReflowing-1.21.1-neoforge-2.13.1.jar` from Modrinth (`streams-reflowing`) to `<instance>\mods\` — instance `Driftwood` at `C:\Users\nimro\.minecraftx\instances\Driftwood`. No `dynamicwaters*.jar` present (Aug 27 removal action moot — do not add). [VERIFY] at next launch (fresh world): no missing-dependency errors; streams/lakes generate following terrain; natural rivers flow one direction to the sea; Create water wheel in a stream turns; boat drifts downstream and can move against the current; no unsafe-terrain-read log spam; no chunk-border artifacts; Terralith Yellowstone has no carved streams.
- [x] DRIFTWOOD-GUIDE.pdf regenerated
```

- [ ] **Step 2: Verify**

`head -3 minecraft/STATUS.md` shows the new entry first; the entry ends with the PDF-regen line.

---

### Task 4: Launch test (user/instance gate) + capture generated config

This task requires the user — it runs in XMCL on the actual instance. The agent prepares, the user executes, then reports back so the config can be captured. **Do not skip or fake this gate.**

**Files (after user launch):**
- Read: `C:\Users\nimro\.minecraftx\instances\Driftwood\config\streamsreflowing\` (generated on first launch — worldgen/gameplay file, client file, `bank_features/`, README, examples)

- [ ] **Step 1 (user): Install and launch-test**

In XMCL → instance **Driftwood**: add `StreamsReflowing-1.21.1-neoforge-2.13.1.jar` from Modrinth (project `streams-reflowing`) to the mods list. Create a fresh test world and verify per the STATUS entry checklist: streams/lakes generate; rivers flow one direction to the sea; a Create water wheel placed in a stream turns; a boat drifts downstream and moves against the current; no unsafe-terrain-read spam in the log; no chunk-border artifacts; Terralith Yellowstone has no carved streams. Report results (pass/fail per item) back to the agent.

- [ ] **Step 2: Locate the generated config**

After launch, confirm the config exists:
```bash
ls "C:/Users/nimro/.minecraftx/instances/Driftwood/config/streamsreflowing/"
```
Expected: the worldgen/gameplay file + client file + `bank_features/` + README + examples. Record the exact file names — they become the committed override paths.

- [ ] **Step 3: Note the generated default values for the curated keys**

Read the generated files and record the actual key names + default values for: stream generation on/off, lake generation on/off, river current toggles, `rebiomeStreams` (expect 1), quality/terrain-accuracy preset, particle density/count ceilings, `streamBiomeBlacklist` (confirm Terralith `yellowstone` entry present), welcome/chat message toggle. These are the inputs to Task 5. If any key is named differently than the changelog implies, use the actual generated name — never invent one.

---

### Task 5: Commit curated config override to the repo

**Files:**
- Create: `minecraft/config/streamsreflowing/` (mirror of the instance files with spec §4 posture applied)

- [ ] **Step 1: Copy + curate the generated config into the repo**

Copy the generated files from `C:\Users\nimro\.minecraftx\instances\Driftwood\config\streamsreflowing\` into `minecraft/config/streamsreflowing/` (create the folder). Then apply spec §4 posture by editing the copied files — full files with comments intact, never partial/guessed keys:
1. Stream generation + lake generation: **on** (confirm, don't flip).
2. River currents (natural + carved): **on**.
3. `rebiomeStreams`: keep default (1 — mark as river, keep biome water colour).
4. Terrain accuracy / quality preset: keep default if the Task 4 launch was smooth; lower one notch only if the user reported hitches. Record the decision + why in STATUS.md.
5. Particle/ambience budget: tune down from default ONLY if the user reported frame drops under DH+Iris; otherwise leave. Record.
6. `streamBiomeBlacklist`: confirm the Terralith Yellowstone entry is present (add only if the generated default lacks it — verify against the changelog claim before adding).
7. Chat welcome message: **off** (pack disables chat feedback; the one-time in-chat notice is noise).

- [ ] **Step 2: Verify the override files parse**

Config is TOML (or the format the mod generated) — validate with the mod's own loader at next launch; statically confirm the files are non-empty, well-formed text, and the edited keys match the pattern of neighboring keys in the same file.

```bash
git -C H:/Projects/modlists status --short   # shows only minecraft/config/streamsreflowing/ as untracked (+ nothing unexpected)
```

- [ ] **Step 3: Update STATUS.md entry**

Flip the `- [ ] **Config override**` line to `- [x] **Config override**` and append the concrete decisions from Steps 1–5 (quality preset kept/lowered, particle budget kept/tuned, Yellowstone blacklist confirmed present, welcome message off, actual file names committed). Flip the `- [ ] **Instance action (XMCL)**` line to `- [x]` and paste the user's Task 4 verification results beneath it.

---

### Task 6: Regenerate PDF and commit

- [ ] **Step 1: Regenerate the PDF**

```powershell
powershell -ExecutionPolicy Bypass -File minecraft/generate-pdf.ps1
```
Expected: `[OK] DRIFTWOOD-GUIDE.pdf -> .../rendered/DRIFTWOOD-GUIDE.pdf (… KB)` and no FAIL lines.

- [ ] **Step 2: Check what git tracks**

```bash
git -C H:/Projects/modlists status --short
```
Note whether `rendered/DRIFTWOOD-GUIDE.pdf` is tracked or ignored; commit whatever the house pattern commits (matches prior adoption commits).

- [ ] **Step 3: Final verification**

```bash
grep -rn "dynamicwaters" minecraft/   # expect: only the historical removal references in STATUS.md — never as installed/current
grep -n "Streams Reflowing" minecraft/GUIDE.md   # expect: 3 hits (row, blurb, After First Launch)
grep -n "Wave 2 — Exploration" minecraft/GUIDE.md # expect: 37 | 7 | 45
grep -n "^\| \*\*Total\*\*" minecraft/GUIDE.md    # expect: 181 | 43 | 224
git -C H:/Projects/modlists diff --stat
```

- [ ] **Step 4: Commit**

```bash
cd H:/Projects/modlists
git add minecraft/GUIDE.md minecraft/STATUS.md minecraft/config/streamsreflowing/ [rendered/DRIFTWOOD-GUIDE.pdf]
git commit -m "docs(driftwood): adopt Streams Reflowing (Wave 2 hydrology)"
```
