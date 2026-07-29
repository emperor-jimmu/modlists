# Modlist Conflict Resolution — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Remove 13 conflicting/redundant mods from guide files and CKAN metapackages, fix stale cross-references, verify PDF build.

**Architecture:** Text removals and rewrites in 3 Typst guide files. Line deletions in 3 JSON CKAN metapackages. No new files. Build verification via `scripts/build.bat`.

**Spec:** `docs/superpowers/specs/2026-07-23-modlist-conflict-resolution-design.md`

---

### Task 1: Remove mod-entry blocks and fix cross-refs in wave-05-tools.typ

**Files:**

- Modify: `guide/wave-05-tools.typ`

**Read the file before editing.**

- [ ] **Step 1: Remove Astrogator mod-entry block**

```typ
oldString:
#mod-entry(
  name: [Astrogator],
  ckan_id: "Astrogator",
  url: "https://github.com/HebaruSan/Astrogator",
  description: [Alternative to Transfer Window Planner with a simplified, map-view-integrated workflow. Shows transfer options directly in the Tracking Station and Map view with one-click maneuver node creation. Prefer this if you find TWP's interface overwhelming.],
  dependencies: (),
  impact_types: (UI),
  impact_description: [Adds transfer planning tools integrated into the stock map and tracking station views. Generates single-click transfer nodes to any target. Simpler and more streamlined than TWP — choose whichever interface style you prefer.],
  conflicts: [Transfer Window Planner provides the same function with a more detailed porkchop-plot interface. Choose one — using both is redundant. TWP is the default for this modlist; install Astrogator if you prefer its simplicity.],
  version_pin: [Compatible with KSP 1.12.x. Choose either this or TWP — not both.],
)


newString: (empty string)
```

- [ ] **Step 2: Remove CommunityNavballDockingIndicator mod-entry block**

Read the file. Find the `#mod-entry(` block containing `name: [Community Navball Docking Alignment Indicator]`. Remove the entire block plus its trailing blank line. Pattern matches Step 1 — `#mod-entry(` to closing `)\n\n`.

- [ ] **Step 3: Fix TWP version_pin**

```
oldString: version_pin: [Compatible with KSP 1.12.x. For a simpler alternative, Astrogator integrates transfer planning directly into the map view.],
newString: version_pin: [Compatible with KSP 1.12.x.],
```

- [ ] **Step 4: Rename heading**

```
oldString: #section-heading([Transfer Window Planner & Astrogator])
newString: #section-heading([Transfer Window Planner])
```

- [ ] **Step 5: Rewrite paragraph after heading**

```
oldString: TWP and Astrogator solve the same problem — when to launch for another planet — with different interfaces. TWP gives you porkchop plots showing delta-v costs for every departure date. Astrogator skips the plot and generates transfer nodes directly from the map view. Try both early on; pick the one that makes more sense to you. You'll use it constantly once you go interplanetary in Wave 1.
newString: TWP shows you optimal departure windows via porkchop plots — color-coded charts of delta-v cost over time. Pick the most efficient window and TWP provides the ejection angle and burn parameters. You'll use it constantly once you go interplanetary in Wave 1.
```

- [ ] **Step 6: Fix "Use TWP or Astrogator" bullet**

Read the file. Find the bullet line containing `Use TWP or Astrogator`. Replace `TWP or Astrogator` with `TWP` in that line.

- [ ] **Step 7: Commit**

```bash
git add guide/wave-05-tools.typ
git commit -m "fix: drop Astrogator and Navball DAI from W0.5, fix TWP cross-refs"
```

---

### Task 2: Remove 10 mod-entry blocks from wave-1-going-further.typ

**Files:**

- Modify: `guide/wave-1-going-further.typ`

**Read the file before editing.** Each block starts with `#mod-entry(` and ends with `)\n\n` (closing paren, newline, blank line). Remove blocks for these mods by finding their name field:

- [ ] **Step 1: Remove PlanetShine** — find `name: [PlanetShine]`

```
oldString:
#mod-entry(
  name: [PlanetShine],
  ckan_id: "PlanetShine",
  url: "https://github.com/Gameslinx/PlanetShine",
  description: [Simulates reflected light from planets and moons onto your vessel. A ship orbiting Kerbin gets a blue-tinted glow from below; near the Mun, a gray reflection. Adds subtle but immersive ambient lighting.],
  dependencies: ("ModuleManager"),
  impact_types: (Graphics),
  impact_description: [Adds directional ambient light based on nearby celestial body color and distance. Redundant with Deferred (which handles this natively) — only install both if you prefer PlanetShine's specific look.],
  conflicts: [Deferred's built-in planet reflection system overlaps with PlanetShine's purpose. Use one or the other, or accept minor visual redundancy.],
  version_pin: [Compatible with KSP 1.12.x. Optional if using Deferred.],
)


newString: (empty string)
```

- [ ] **Step 2: Remove SpaceY-Lifters** — find `name: [SpaceY Heavy Lifters]`. Remove `#mod-entry(` block through `)\n\n`.

- [ ] **Step 3: Remove SpaceY-Expanded** — find `name: [SpaceY Expanded]`. Remove `#mod-entry(` block through `)\n\n`.

- [ ] **Step 4: Remove OrbitalSurveyPlus** — find `name: [Orbital Survey Plus]`. Remove `#mod-entry(` block through `)\n\n`.

- [ ] **Step 5: Remove ShuttleOrbiterConstructionKit** — find `name: [Shuttle Orbiter Construction Kit]`. Remove `#mod-entry(` block through `)\n\n`.

- [ ] **Step 6: Remove BuranOrbiterConstructionKit** — find `name: [Buran Orbiter Construction Kit]`. Remove `#mod-entry(` block through `)\n\n`.

- [ ] **Step 7: Remove PromisedWorlds** — find `name: [Promised Worlds]`. Remove `#mod-entry(` block through `)\n\n`.

- [ ] **Step 8: Remove CosmicSerenity** — find `name: [Cosmic Serenity]`. Remove `#mod-entry(` block through `)\n\n`.

- [ ] **Step 9: Remove ORANGES** — find `name: [ORANGES]`. Remove `#mod-entry(` block through `)\n\n`.

- [ ] **Step 10: Remove reDIRECT** — find `name: [reDIRECT]`. Remove `#mod-entry(` block through `)\n\n`.

- [ ] **Step 11: Commit**

```bash
git add guide/wave-1-going-further.typ
git commit -m "fix: drop 10 redundant mods from Wave 1"
```

---

### Task 3: Fix cross-references in wave-1-going-further.typ

**Files:**

- Modify: `guide/wave-1-going-further.typ`

**Read the file before editing.**

- [ ] **Step 1: Deferred conflicts → none**

```
oldString: conflicts: [PlanetShine is redundant with Deferred (Deferred handles planet reflections natively). Only install PlanetShine alongside Deferred if you specifically prefer its look.],
newString: conflicts: none,
```

- [ ] **Step 2: Artemis CK conflicts → none**

```
oldString: conflicts: [ReDIRECT and ORANGES are alternative SLS/shuttle-derived launcher mods. Artemis Construction Kit is the recommended choice for this modlist — it has the best CKAN support and active development. Use only one SLS mod.],
newString: conflicts: none,
```

- [ ] **Step 3: Fix Deferred troubleshooting line**

```
oldString: - Deferred: If the deferred renderer causes visual glitches or extreme slowdown, you can disable it in its config file. Deferred handles planet reflections, so *disable PlanetShine if you keep Deferred* — running both is redundant and costs performance.
newString: - Deferred: If the deferred renderer causes visual glitches or extreme slowdown, you can disable it in its config file. Deferred handles planet reflections natively, so no separate planet-lighting mod is needed.
```

- [ ] **Step 4: Delete "PlanetShine + Deferred = redundant" line**

```
oldString: - PlanetShine + Deferred = redundant planet lighting. Choose one.

newString: (empty string)
```

- [ ] **Step 5: Delete "Uninstall PlanetShine" line**

```
oldString: 4. *Uninstall PlanetShine* if using Deferred (redundant)

newString: (empty string)
```

- [ ] **Step 6: Commit**

```bash
git add guide/wave-1-going-further.typ
git commit -m "fix: remove stale cross-refs to dropped mods in Wave 1"
```

---

### Task 4: Remove KSPIE and fix cross-refs in wave-2-the-long-ascent.typ

**Files:**

- Modify: `guide/wave-2-the-long-ascent.typ`

**Read the file before editing.**

- [ ] **Step 1: Remove KSPInterstellarExtended block**

```
oldString:
#mod-entry(
  name: [KSP Interstellar Extended],
  ckan_id: "KSPInterstellarExtended",
  url: "https://forum.kerbalspaceprogram.com/topic/173818-181-1122-ksp-interstellar-extended-1295-release-thread/",
  description: [The original comprehensive interstellar mod: fusion, antimatter, beamed power, warp drives, and ISRU resource chains spanning the entire solar system. Deeper and more complex than FFT with decades of development history and broad mod compatibility. Manual install only.],
  dependencies: ("ModuleManager"),
  impact_types: (Parts, Mechanics, Gameplay),
  impact_description: [Adds a complete interstellar technology tree: thermal rockets, fusion drives, antimatter reactors, alcubierre warp drives, and in-situ resource extraction for exotic fuels. Significantly more complex than FFT — includes waste heat management, reactor fuel reprocessing, and beamed power networks.],
  conflicts: [Far Future Technologies covers the same niche with simpler mechanics and better visuals. Choose one interstellar mod. KSPIE is deeper and more detailed; FFT is cleaner and better integrated with the Nertea ecosystem already in Wave 1.],
  version_pin: [Compatible with KSP 1.12.x. Manual install from SpaceDock or GitHub — not on CKAN. Sterling Systems adds complementary engine parts for both KSPIE and FFT.],
)


newString: (empty string)
```

- [ ] **Step 2: FFT conflicts → none**

```
oldString: conflicts: [KSP Interstellar Extended (KSPIE) is the competing interstellar mod. FFT is recommended — it has better model quality, fits the Nertea/Restock visual style already established in Wave 1, and is fully CKAN-supported. Choose one interstellar mod — not both.],
newString: conflicts: none,
```

- [ ] **Step 3: Rewrite Blueshift conflicts**

```
oldString: conflicts: [FFT and KSPIE provide their own interstellar propulsion (fusion torches, antimatter drives, alcubierre warp). Blueshift is a separate FTL approach — all three can coexist, but each represents a different interstellar philosophy. Blueshift = balanced progression FTL; FFT = near-future realistic propulsion; KSPIE = kitchen-sink interstellar.],
newString: conflicts: [Far Future Technologies provides sub-light interstellar propulsion (fusion torches, antimatter drives). Blueshift's FTL warp system is a complementary layer — use both for a complete interstellar progression: FFT engines to explore new stars, then deploy warp coils for fast travel between them.],
```

- [ ] **Step 4: Commit**

```bash
git add guide/wave-2-the-long-ascent.typ
git commit -m "fix: drop KSPIE from Wave 2, clean FFT/Blueshift conflicts"
```

---

### Task 5: Update CKAN metapackages

**Files:**

- Modify: `the-long-ascent-wave-05.ckan`
- Modify: `the-long-ascent-wave-1.ckan`
- Modify: `the-long-ascent.ckan`

**Read each file before editing.** All use JSON `{ "name": "CKAN-ID" }` entries with trailing commas.

- [ ] **Step 1: wave-05.ckan — remove Astrogator**

```
oldString:     { "name": "Astrogator" },

newString: (empty string)
```

- [ ] **Step 2: wave-05.ckan — remove CommunityNavballDockingIndicator**

```
oldString:     { "name": "CommunityNavballDockingIndicator" },

newString: (empty string)
```

- [ ] **Step 3: Commit wave-05.ckan**

```bash
git add the-long-ascent-wave-05.ckan
git commit -m "fix: remove Astrogator and Navball DAI from W0.5 CKAN"
```

- [ ] **Step 4: wave-1.ckan — remove 5 entries**

Remove each line (one edit per entry):

```
oldString:     { "name": "SpaceY-Lifters" },

newString: (empty string)
```

```
oldString:     { "name": "SpaceY-Expanded" },

newString: (empty string)
```

```
oldString:     { "name": "PlanetShine" },

newString: (empty string)
```

```
oldString:     { "name": "ShuttleOrbiterConstructionKit" },

newString: (empty string)
```

```
oldString:     { "name": "OrbitalSurveyPlus" },

newString: (empty string)
```

- [ ] **Step 5: Verify JSON**

```bash
node -e "JSON.parse(require('fs').readFileSync('the-long-ascent-wave-1.ckan','utf8')); console.log('OK')"
```

Expected: `OK`

- [ ] **Step 6: Commit wave-1.ckan**

```bash
git add the-long-ascent-wave-1.ckan
git commit -m "fix: remove dropped mods from W1 CKAN"
```

- [ ] **Step 7: the-long-ascent.ckan — remove 6 entries**

```
oldString:     { "name": "Astrogator" },

newString: (empty string)
```

```
oldString:     { "name": "SpaceY-Lifters" },

newString: (empty string)
```

```
oldString:     { "name": "SpaceY-Expanded" },

newString: (empty string)
```

```
oldString:     { "name": "PlanetShine" },

newString: (empty string)
```

```
oldString:     { "name": "ShuttleOrbiterConstructionKit" },

newString: (empty string)
```

```
oldString:     { "name": "OrbitalSurveyPlus" },

newString: (empty string)
```

**Do NOT remove** `CommunityNavballDockingIndicator` from combined — it stays from Wave 2.

- [ ] **Step 8: Verify JSON**

```bash
node -e "JSON.parse(require('fs').readFileSync('the-long-ascent.ckan','utf8')); console.log('OK')"
```

Expected: `OK`

- [ ] **Step 9: Commit**

```bash
git add the-long-ascent.ckan
git commit -m "fix: remove dropped mods from combined CKAN"
```

---

### Task 6: Build verification

**Files:**

- No changes

- [ ] **Step 1: Pre-check Typst is installed**

```bash
where typst
```

Expected: Prints `C:\...\typst.exe` or similar path. If not found, install Typst 0.13+ from <https://github.com/typst/typst/releases>.

- [ ] **Step 2: Run the build**

```bash
scripts/build.bat
```

Expected: Build succeeds with `=== Build complete ===` and PDF written to `output/the-long-ascent.pdf`. Zero errors.

If build fails, Typst reports file + line number. Common causes:

- Unbalanced brackets from block removal
- A removed `#section-heading` still referenced elsewhere
- Fix the error, re-run, re-commit

- [ ] **Step 3: Confirm PDF exists**

```bash
node -e "const s=require('fs').statSync('output/the-long-ascent.pdf'); console.log('PDF:', (s.size/1024).toFixed(0), 'KB'); console.log(s.size > 10000 ? 'PASS' : 'FAIL: too small')"
```

Expected: `PASS` with PDF > 10KB.

---

### Task 7: Final review

**Files:**

- No changes

- [ ] **Step 1: Search for stale references**

```bash
node -e "const fs=require('fs');const dropped=['Astrogator','PlanetShine','ORANGES','reDIRECT','OrbitalSurveyPlus','SpaceY-Lifters','SpaceY-Expanded','ShuttleOrbiterConstructionKit','BuranOrbiterConstructionKit','PromisedWorlds','CosmicSerenity','KSPInterstellarExtended'];const files=fs.readdirSync('guide').filter(f=>f.endsWith('.typ'));let hits=0;files.forEach(f=>{const c=fs.readFileSync('guide/'+f,'utf8');c.split('\\n').forEach((l,i)=>{dropped.forEach(d=>{if(l.includes(d)&&!l.includes('dropped')){console.log(f+':'+(i+1)+' ['+d+'] '+l.trim().substring(0,100));hits++}})})});console.log(hits===0?'PASS: no stale refs':'FAIL: '+hits+' refs remaining')"
```

Expected: `PASS: no stale refs`

- [ ] **Step 2: Review diff**

```bash
git diff --stat HEAD~5..HEAD
```

Expected: ~7 files, ~160 lines removed, ~15 lines added.

- [ ] **Step 3: Spot-check the PDF**

Open `output/the-long-ascent.pdf` and verify:

- Wave 0.5: No Astrogator entry. No Navball DAI entry. TWP heading says just "Transfer Window Planner"
- Wave 1: No PlanetShine, SpaceY, SOCK, Buran, ORANGES, reDIRECT, OSP, Promised Worlds, Cosmic Serenity entries. Deferred and Artemis CK show `conflicts: none`
- Wave 2: No KSPIE entry. FFT shows `conflicts: none`. Blueshift conflicts mention only FFT.
- No visible gaps, broken formatting, or missing section headings
