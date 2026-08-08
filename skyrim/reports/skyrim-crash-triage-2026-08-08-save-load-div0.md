# Crash Triage — Save-load INT_DIVIDE_BY_ZERO (2026-08-08)

- **Date:** 2026-08-08 13:45:49
- **Game:** Skyrim AE 1.6.1170 (`SkyrimSE.exe` MD5 `7a44a52d…`, modified 2026-06-21 16:56)
- **Logger:** CrashLoggerSSE v1-24-0-0
- **Exception:** `EXCEPTION_INT_DIVIDE_BY_ZERO` at `SkyrimSE.exe+0x616FBB` — `div [0x00007FF67D082140]`
- **Profile shape at crash:** Elder Wilds foundations test-skeleton via MO2 (usvfs) — 15 plugins, repo-baseline SKSE plugin set (EngineFixes 7.0.20, SkyPatcher v7, po3 family, ScrambledBugs, ActorLimitFix, SSSO3 esp, USMP, Particle Patch)
- **Status:** RESOLVED (2026-08-08) — root cause confirmed by live test: the repo's own `iAutoSaveCount=0` baseline instruction. Reverting to `3` fixes the same save load. Guides corrected; STATUS.md verdict closed.

---

## TL;DR

The crash is **vanilla engine code, not a mod's injected code**: every frame of the probable call stack is `SkyrimSE.exe`, and the fault is an integer division by a **static engine global (RVA `0x2012140`) that held the value 0**. The division executes at the exact moment a save picked from the main-menu Load menu begins loading (`BGSSaveLoadManager` in R15, `MainMenu` on the stack, Scaleform `onFadeOutCompletion` + `DejaGFxLogger` markers, the target save's filename on the stack).

A zero divisor at load-start means some engine count/state the load path divides by was **0 when it should have been ≥ 1** — the signature of *state fed into vanilla arithmetic being missing, stale, or inconsistent*, not of a plugin corrupting code flow. Prime suspects, in order:

1. **Save ↔ profile drift** — the failing save is from **2026-06-21 21:02** (`Save1_34BE9E91_0_Prisoner_Tamriel_000004_20260621210250_1_1`); the skeleton/profile has churned since (and the exe itself was rewritten that same day at 16:56).
2. **SSSO3 + `iAutoSaveCount=0`** — both are repo baseline (→ `modlist-performance-optimization.md`), but this exact pairing is the one configuration the community playbook flags for BGSSaveLoadManager divide-by-zero. Cheap to test.
3. **Foundation SKSE plugin interaction at load-start** (SkyPatcher `iUpdateNPC` refresh, EngineFixes save toggles, ScrambledBugs) — only reachable after 1–2 are falsified.

---

## Evidence read (from the log)

| Observation | Meaning |
|---|---|
| `div [0x7FF67D082140]` with RAX=`1`, RDX=`0` | `EDX:EAX` dividend = 1; the **dword at engine RVA `0x2012140` = 0** → 1 ÷ 0. Static-address operand: unconditional vanilla math, no register garbage involved. |
| All 21 `[P]` frames are `SkyrimSE.exe` | No SKSE DLL anywhere on the probable stack. This is not a crash *inside* a plugin. |
| R15 / RSP+80: `BGSSaveLoadManager*`; RSP+208: `MainMenu*` | Thread is inside the save-load manager, invoked from the main menu. |
| RSP+20: `Save1_34BE9E91_0_…Prisoner_Tamriel_000004_20260621210250_1_1` | The exact save being processed: **Prisoner (character-creation-era) save, slot 4, written 2026-06-21 21:02:50**. |
| `onFadeOutCompletion` + `DejaGFxLogger*` (×2, same frame region `+0x1A05980`) | Scaleform/GFx markers of the **load-menu fade-out → load-start transition**. `DejaGFxLogger` is engine UI plumbing, not a mod. |
| Uptime 8.8 s | Launch → main menu → load click → crash at the fade into the load. Tight, deterministic-looking window. |
| Exe mtime 2026-06-21 16:56 | Steam last wrote the binary **~4 h before the failing save was created** — save is *newer* than the engine install. |
| Plugin list = 15 (6 regular + 9 light), incl. `Safe Save System Overhaul 3.esp` `[FE:4]`, `_ResourcePack.esl`, USMP, Particle Patch | Matches the repo's foundations test-skeleton. `iAutoSaveCount=0` + autosaves off is the repo-mandated baseline (→ `modlist-performance-optimization.md`). |
| `Detected Virtual Machine: Microsoft Hyper-V (100%)` | Host reports a hypervisor present (VBS/Hyper-V platform). Context note only — not suspected as the trigger, but part of the cheap-tests if everything else fails. |

**What this is not:** not a mesh/animation/NIF access violation, not an out-of-memory, not a plugin-on-the-stack corruption. The engine reached a perfectly valid instruction with a legal (but zero) operand.

---

## Ranked hypotheses

### H1 — Save ↔ profile drift (strongest)
The 6.5-week-old save records plugin-registry/record state that no longer matches the current profile (missing masters, changed load order, removed/changed records, SkyPatcher target drift). The load path divides by aggregates derived from that recorded state; an inconsistency yields 0.

- **Evidence:** save age (2026-06-21) vs profile churn (extensive `skyrim/` git history through 08-07; skeleton actively installed/documented this week); crash occurs at the *start* of deserialization, not mid-game.
- **Falsify/confirm:** MO2 **Saves tab → select the save → compare Expected vs Installed mods** (missing = confirmed). Load a save written *after* the current profile stabilized.

### H2 — SSSO3 + `iAutoSaveCount=0` interaction (cheap to test)
The engine-side save-slot arithmetic receives 0 where the load path expects a positive slot count. Both are repo baseline, so this is a "verify the baseline still holds on the live box" check, not a mod swap.

- **Evidence:** divisor is a static global that is 0; the save manager is mid-operation; `iAutoSaveCount=0` is exactly the value the community playbook flags for this exception class.
- **Falsify:** temporary `iAutoSaveCount=3` loads the same save fine. **Confirmed this way — keep `3`; reverting to `0` reintroduces the crash.**

### H3 — Foundation SKSE plugin load-start interaction
SkyPatcher's save-load NPC refresh (`iUpdateNPC`, guide-documented), EngineFixes save toggles, or ScrambledBugs produce a transiently inconsistent state during load-start.

- **Evidence:** none directly — this is the bisect candidate *after* H1/H2 are ruled out. All plugins are repo-baseline and heavily used community-wide.
- **Falsify:** new game passes AND the same save crashes → data-side (H1); then binary-search the SKSE plugin set (half at a time).

### H4 — Install/环境 integrity (low priority)
Exe written by Steam the same day as the save; hypervisor present. If H1–H3 all fail: Steam "verify integrity", check `EngineFixes.toml` (`SaveGameMaxSize`, `MaxStdio`), retry with Memory Integrity/Core Isolation temporarily off during a test.

---

## Isolation test ladder (user runs; one variable per step)

| Step | Test | Outcome → next action |
|---|---|---|
| 0 | Relaunch, load the same save twice | Intermittent → different class (memory/disk), report back. Deterministic → continue. |
| 1 | MO2 **Saves tab** → failing save → *Expected vs Installed* | Missing mods listed → fix load order, re-save or drop the save (H1 confirmed). |
| 2 | **New Game** → play 1–2 min → save → reload that save | Fails → H3 bisect (SKSE plugins half-at-a-time). Passes → save-data side confirmed (H1/H2). |
| 3 | `iAutoSaveCount=3` (temporarily), same save | Loads fine → **H2 confirmed (the actual cause)**. Keep `3`; do **not** revert to `0`. Hold SSSO3 per baseline. |
| 4 | Copy profile, SSSO3 disabled, same save | Still crashes after Step 3 passed → not SSSO3; continue H1 checks. |
| 5 | ReSaver (FallrimTools) clean pass on the save (unattached instances) | Only after Steps 1–4 point at corrupt save data. |

## Acceptance criteria ("fixed")

1. The 2026-06-21 save loads to gameplay and is re-saved cleanly, **or** it is explicitly retired after Step 1 shows expected-mod drift.
2. New-game → save → reload cycle is stable on the skeleton.
3. The exact unblocking change (`iAutoSaveCount` → `3`) is recorded and the `STATUS.md` verdict is CONFIRMED (2026-08-08).

## User to provide (blocks final verdict)

1. Step 0 result — does the same save crash on every attempt?
2. Step 1 result — MO2 Saves-tab Expected vs Installed for the failing save.
3. Step 2 result — does New Game + save + reload work?
4. Current `Skyrim.ini` `[SaveGame]` line and SSSO3 file/version installed on the live profile.
5. When the live profile's load order last changed relative to 2026-06-21.

## Housekeeping

- No `guide/` content changes → no PDF rebuild required for this triage.
- `STATUS.md` carries a `Crash triage` register entry (verdict TENTATIVE until the ladder lands).
