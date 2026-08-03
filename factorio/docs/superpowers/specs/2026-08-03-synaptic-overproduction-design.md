# Synaptic Overproduction — Factorio Modlist & Guide Design

- **Date:** 2026-08-03 (rev. 1)
- **Game:** Factorio **2.0.77** (released May 21, 2026) — all mods must be compatible with this version; mods' portal-listed `factorio_version` / last-updated date is the compatibility heuristic. Space Age expansion **owned** (its 2.0 version line shares this release) — Space-Age-requiring mods are eligible.
- **Mod organizer:** Factorio's **built-in mod manager** (main menu → Mods). No third-party tool. No verification of the manager's exact UI flow required (user directive 2026-08-03).
- **Modlist name:** Synaptic Overproduction
- **Source:** official Factorio Mod Portal — https://mods.factorio.com/ (primary, authoritative for version compatibility).
- **Adult content policy:** N/A for Factorio — no thematically-relevant adult mods for a factory game; explicit porn is cut as usual. No asks required.

## 0. Definition of Done (Acceptance Criteria)

1. `build.bat` compiles `template.typ` → `output/synaptic-overproduction.pdf` with **zero errors/warnings** on Typst 0.15/0.15.1.
2. PDF is within the **40–60 page** range and contains: cover (logo + title + footer page numbers), top-level TOC, installation chapter, all 3 wave chapters, glossary.
3. **Every mod card has a verified URL** from the Factorio Mod Portal, with its last-update date and portal-listed compatible version recorded. No placeholder, lorem, empty, or unverifiable entries.
4. **Every mod's 2.0.77 compatibility is assessed and logged** (portal version field + last-update heuristic per item; anything uncertain is flagged in STATUS.md, not silently included).
5. **Conflict scan:** no two accepted mods conflict incompatibly; known conflicts live in `conflicts-mods.md`. Wave 1 content mods are NOT carried into Wave 2 (K2 rebalances recipes).
6. **Cut-list audit passes:** no meme, porn, cheat/overpowered, redundant, or unverifiable mods in the final list.
7. All wave chapters meet their **page budget** (Section 2) with complete RP backstories and guide content.
8. Mod-count floors are **guidance only, never padded** (user directive): W0 ~5–8, W1/W2 ~8–12 — quality over quantity.

## 1. Approach

Approach A — "Shared-Base Three-Phase". Three waves (0–2), each a distinct, progressively harder new-game setup with its own roleplay backstory. A shared QoL base (Wave 0's UI/visual mods) carries into Waves 1–2 where the portal confirms compatibility; Wave 1 content mods are recipe-adjacent and are NOT carried into Wave 2 (K2 rebalances recipes). Waves mirror Factorio's natural curve: bootstrap → scale → overhaul.

**Operational definition of a "power spike" (used by the cut list):** any mod that raises output caps, resource throughput, machine efficiency, or craft speed **above vanilla caps** — or lowers costs/requirements/cooldowns **below vanilla** — is a power spike and is rejected **unless** it introduces a proportionate new challenge or cost elsewhere (harder biters, longer research, rarer materials). Every borderline mod gets a written verdict in STATUS.md.

## 2. Wave Map, Backstories & Page Budgets

| Wave | Title            | Start & Premise                                                                                                                                    | Guide focus                                                                                                                             | Mod philosophy                                                          | Budget   |
|------|------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|----------|
| 0    | The Castaway     | Survey ship shot down over Nauvis. All that survives is you, a hand-miner, and the engineer's instinct to bootstrap a factory from raw ore before the biters notice you. | Full how-to-play: interface & controls, mining/smelting, steam power, belts & inserters, automating the first science packs, oil, early rail, biters & turret defense, launching the rocket. | Vanilla + UI/QoL only. Nothing that changes recipes, balance, or content. | 13–15 pp |
| 1    | The Architect    | One rocket isn't an economy. A contractor drops you on a fresh site with a mandate: build a factory that *scales* — rail network, circuit logic, bot logistics, quality at volume. "Good enough" is a failure state. | Strategy & advanced systems: main bus vs spaghetti, rail blocks & train logic, circuit networks & combinators, logistics robots, modules & beacons, quality mechanics, rate mathematics, megabase block design. | Content + new mechanics that deepen systems. No pure power spikes.        | 10–12 pp |
| 2    | The Krastorio Prodigy | A declassified cache decodes Krastorio's legacy schematics: a world rebuilt around new ores, new intermediates, and a tech tree that doesn't end at the rocket. Every vanilla system must be relearned. | K2 overhaul systems: new ores & intermediates, new tech tiers, immersive production, adapting each vanilla system to K2's chains, endgame K2 challenges. | Krastorio 2 + compatible QoL base. Keeps challenge honest.               | 10–12 pp |

Non-wave pages: cover 1 + TOC 1 + installation 5–6 + glossary 3–4. **Total lands in 44–51 — inside the 40–60 budget. The guide is the primary deliverable; the modlist is embedded within it.**

## 3. Mod Categories per Wave

**Shared QoL base (Wave 0, carries into all waves where portal confirms compatibility):**
- UI/UX: crafting queues, machine-status indicators, recipe/tooltip readability, inventory & logistics visibility
- QoL: walking/clipping through buildings, even distribution of materials, faster interactions, calculator/planning aids
- Visual/atmosphere: lighting, decorative, terrain/water tweaks, map overlays
- Rule: nothing that alters recipes, balance, or adds content.

**Wave 1 — Content + new mechanics (deepens systems, no power spikes):**
- Logistics mechanics: trains, loaders, belts, warehouses/container expansion
- Circuit/combinator systems: signal processing, blueprint helpers, circuit-linked logistics
- Production depth: new intermediates or production chains gated behind real research + materials
- Combat/defense: biters/defense content that raises challenge rather than handing it
- Rule: anything that adds ore, machines, or recipes must be gated behind research + effort; nothing raises vanilla output caps for free.

**Wave 2 — Krastorio 2 capstone:**
- Krastorio 2 (the anchor overhaul) + its compatible support/QoL additions
- Compatibility check per candidate: K2 rebalances recipes, so every Wave 2 mod is verified on the portal for K2 compatibility before acceptance
- Rule: only mods explicitly compatible with K2's 2.0-era chain; anything conflicting goes to `conflicts-mods.md`.

**Cut list (enforced, with the operational power-spike test from Section 1):** meme/joke mods, explicit porn, redundant duplicates, cheat/overpowered/all-knowing mods, anything unverifiable or incompatible with 2.0.77. All rejected mods logged in STATUS.md with the reason.

## 4. Installation (Built-in Mod Organizer)

Installation chapter covers, in order:

1. **Game prep:** Factorio 2.0.77 (May 21, 2026) via Steam/standalone; confirm the exact build; Space Age DLC confirmed owned (its 2.0 version line shares the same release).
2. **Enable the built-in manager:** the in-game **Mods** menu (main menu → Mods), which syncs with the official portal — browse, search, install with one click, no manual zip-handling.
3. **Fetch mods:** per-mod cards give the exact portal URL; the built-in manager's search + Install flow puts each mod in `mods/`.
4. **Version compatibility:** the built-in manager flags incompatible mods; every card records the mod's portal-listed `factorio_version`/last-updated as the compatibility evidence.
5. **Launch & verify:** start the game, check the Mods menu shows everything enabled and loading; in-game mod state is the ground truth.
6. **Per-wave switching:** each wave = its own new game + mod subset; the shared QoL base persists, and disabling a wave's content mods between waves is a checkbox toggle in the built-in manager.

Per user directive (2026-08-03), the exact UI flow of the built-in manager is **not** verified; the chapter is written from established Factorio behavior without flagged UNVERIFIED items in this area.

## 5. Project Structure

```
factorio/
├── AGENTS.md                     # project-specific agent instructions
├── README.md                     # overview + how to regenerate PDF
├── STATUS.md                     # live decision log (accepted/rejected/conflicts/verifications)
├── conflicts-mods.md             # known conflicts (excluded from PDF)
├── mod-ideas.md                  # future candidates + UNVERIFIED (excluded from PDF)
├── assets/logo.jpg               # already present
├── build.bat                     # one-click Typst PDF generator
├── template.typ                  # master template (cover, TOC, palette, fonts)
├── guide/
│   ├── installation.typ          # built-in mod manager setup + per-wave switching
│   ├── glossary.typ              # ~30-40 player-facing + mod terms
│   ├── wave-0/  how-to-play.typ · modlist.typ · mechanics.typ · graphics.typ
│   ├── wave-1/  strategy.typ · modlist.typ · mechanics.typ · content.typ · graphics.typ
│   └── wave-2/  strategy.typ · modlist.typ · mechanics.typ · content.typ · graphics.typ
├── output/
│   └── synaptic-overproduction.pdf  # generated PDF (gitignored)
└── docs/superpowers/specs/       # this spec + implementation plan
```

- `modlist.typ` = mod cards; `content.typ` = new-content mods; `graphics.typ` = visual mods (incl. Wave 0's UI/visual QoL); `mechanics.typ` = systems mods.
- `strategy.typ` = deepening guide content; `how-to-play.typ` = Wave 0's full beginner tutorial.
- PDF = cover → TOC → installation → 3 waves → glossary.

## 6. Mod Entry Format

Every mod card must contain, at minimum:

- Clickable name with a real, verified URL (Factorio Mod Portal)
- **Verification date + last mod update date + portal-listed compatible version** (the compatibility heuristic)
- Dependencies (portal-listed dependencies)
- System / mechanic impact (and what it changes)
- Notes: load order, configuration, 2.0.77 compatibility assessment

## 7. PDF Output

- **Location:** `factorio/output/synaptic-overproduction.pdf` (per-project output/ folder; gitignored).
- **Page target:** 40–60 pages, budgeted per wave in Section 2 (target 44–51).
- **Palette (Factorio industrial):** ink `#232323`, blueprint-paper `#f2ede0`, signal-orange `#e8590c`, hazard-yellow `#f0a202`, copper-green `#2b7a42`. High contrast, factory HUD feel.
- **Fonts (pinned — same trio as the kenshi build rendered on this machine):** Cinzel (cover title), Bahnschrift (headings), Georgia (body). No availability hedging.
- **Layout:** cover with logo + title + footer page numbers; top-level TOC; tinted mod-card blocks (orange stroke on paper fill); per-wave color coding; callout boxes for keybind tables, warnings, and tips.
- **Visuals policy:** typographic only — no external screenshots/images. Visual load carried by callout boxes, tables, and layout color.
- **Generation:** Typst 0.15 / 0.15.1 via `build.bat` running `typst compile template.typ output/synaptic-overproduction.pdf`. Use Context7 MCP for Typst API details as needed.

## 8. Verification Rules (ordered, budgeted, fallback-defined)

1. **No fabrication.** Only real, verified mods with working URLs from the Factorio Mod Portal. Unverifiable or incompatible mods go to `mod-ideas.md` / `STATUS.md` as UNVERIFIED, or are flagged to the user — never guessed.
2. **Verification order per mod:** (a) fetch the Factorio Mod Portal page (title + last-updated + compatible version + dependencies); (b) if the portal page is rate-limited or JS-walled, use **Playwright** with a real browser; (c) if both fail, the mod is logged UNVERIFIED and excluded, or flagged to the user for manual verification. Portal rate limits are respected by batching fetches with bounded concurrency.
3. **Compatibility heuristic:** a mod is assumed 2.0.77-compatible if its portal page lists a 2.0.x compatible version and it was updated after Factorio 2.0's release (Oct 21, 2024). Pre-2.0 mods with no update and no version field are flagged for review. Last-update dates and version fields are recorded on every card and in STATUS.md.
4. **Built-in manager claims** are written from established Factorio behavior; per user directive no UI-flow verification is required and nothing in the installation chapter is flagged UNVERIFIED.
5. **Conflict detection:** mods that edit the same recipes/entities are cross-checked before acceptance; incompatible pairs go to `conflicts-mods.md` with mitigation or one is dropped. Krastorio 2's recipe rebalance is the dominant conflict axis: Wave 1 content mods are not carried into Wave 2.

## 9. Risk Register (Open Items)

| Risk                                                                 | Impact                             | Mitigation / Owner                                                                                                     |
|----------------------------------------------------------------------|------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| Krastorio 2's 2.0.77 compatibility not yet confirmed on the portal   | Wave 2 anchor unverifiable         | Verify K2 first (first implementation task); if the portal version field is stale, check author statements / last-update and log the verdict. |
| Portal rate limiting / JS wall blocks verification                    | Mods can't be verified → excluded  | Playwright fallback; batch with bounded concurrency; flag to user if manual verification needed.                       |
| Space Age-requiring mods misjudged as base-game compatible            | Cards break on base 2.0.77         | Record the portal's dependency field per mod; Space Age is owned, so such mods are eligible but the dependency is noted on the card. |
| Mod verified-on-paper but fails in-game (can't run the game to test)  | Card claims break                  | Rely on portal version field + last-update + community reports; mark as "reported compatible" not "tested" where appropriate. |
| Page budget drift (how-to-play ballooning)                            | PDF out of range                   | Budgets enforced per wave during writing; trim/expand before compile.                                                  |
| Glossary becomes an afterthought                                     | Weak deliverable                   | Fixed target of 30–40 terms, written per wave as terms are introduced.                                                 |
| Power-spike borderline mods                                          | Rule becomes mush                  | Written verdict required in STATUS.md per borderline mod (Section 1 test).                                             |
