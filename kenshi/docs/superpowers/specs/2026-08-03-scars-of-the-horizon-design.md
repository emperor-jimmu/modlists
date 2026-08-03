# Scars of the Horizon — Kenshi Modlist & Guide Design

- **Date:** 2026-08-03 (rev. 2)
- **Game:** Kenshi **1.0.68** (released April 1, 2024) — all mods must be compatible with this build. This is the current/final stable build of Kenshi; mods whose pages do not state a lower max version are treated as targeting it.
- **Mod organizer:** KMM — Kenshi Mod Manager (Nexus mod 1765). *Compatibility with 1.0.68 is an open risk to verify (see Risk Register).*
- **Modlist name:** Scars of the Horizon
- **Sources:** Steam Workshop (primary) + Nexus Mods (secondary, where the better/required mod lives).
- **Adult content policy (matches user choice — "Full thematic adult content"):** quality nude/skin mods may be included **as their own entries** where thematically relevant to the wasteland setting; explicit porn is forbidden. Nude-base mods required as dependencies are always permitted, with a note on the mod card.

## 0. Definition of Done (Acceptance Criteria)

The project is done when all of the following hold:

1. `build.bat` compiles `template.typ` → `output/scars-of-the-horizon.pdf` with **zero errors/warnings** on Typst 0.15/0.15.1.
2. PDF is within the **60–80 page** range and contains: cover (logo + title + footer page numbers), top-level TOC, installation chapter, all 5 wave chapters, glossary.
3. **Every mod card has a verified URL** with its last-update date recorded in STATUS.md. No placeholder, lorem, empty, or unverifiable entries.
4. **Every mod's 1.0.68 compatibility is assessed and logged** (release-date heuristic per item; anything uncertain is flagged in STATUS.md, not silently included).
5. **Conflict scan:** no two accepted mods edit the same game files incompatibly; known conflicts live in `conflicts-mods.md`.
6. **KMM behavior claims** (load-order direction, Steam folder detection, launch flow) are **verified before** being written into `installation.typ`, and logged as verified in STATUS.md.
7. **Cut-list audit passes:** no meme, porn, cheat/overpowered, redundant, or unverifiable mods in the final list.
8. All wave chapters meet their **page budget** (Section 7) with complete RP backstories and guide content.

## 1. Approach

Approach A — "Lifepath" progression. Five waves (0–4), each a distinct, progressively harder new-game setup with its own roleplay backstory. Waves mirror Kenshi's natural power curve: survival → settlement → tech → exploration → conquest. Each wave layers new mechanics and content on top of the previous baseline.

**Operational definition of a "power spike" (used by the cut list):** any mod that raises character stats, damage, armor values, or item quality **above vanilla caps** — or lowers costs/requirements/cooldowns **below vanilla** — is a power spike and is rejected **unless** it introduces a proportionate new challenge or cost elsewhere (stronger enemies, higher prices, rarer materials). Every borderline mod gets a written verdict in STATUS.md.

## 2. Wave Map, Backstories & Page Budgets

| Wave | Lifepath | Start & Premise | Guide focus | Mod philosophy | Budget |
|---|---|---|---|---|---|
| 0 | The Wanderer | Wake in The Hub, no memory, no coin. Only your will to survive the week. | Full how-to-play: controls, UI, hunger/stats, combat, mining copper for cats, first recruit, basic survival loop. | Vanilla + UI/QoL only. No content mods. | 12–14 pp |
| 1 | The Outlander | A refugee caravan's cast-off. Build a dusty first settlement that outlasts the next raid. | Base building, walls/gates, food production (farming/hunting), stone & iron logistics, defense-in-depth, first outpost layout. | Survival & settlement content + light mechanics. No power spikes. | 10–12 pp |
| 2 | The Smith | A tech-hunter chasing a half-burned research ledger that promises lost weapons of the ancients. | Research tree mastery, weapon/armor crafting tiers, crossbows & turrets, hydroponics, material economy, smithing progression. | Production/crafting content + tech/research mechanics. Everything gated behind effort & materials. | 10–12 pp |
| 3 | The Expedition | A cartographer whose maps all end at a blank edge. Sell everything; the map's edge is a rumor. | Exploration: biome navigation, long-range expeditions, world states, unique recruits & ruins, caravans, map completion. | New lands/races/ruins + exploration mechanics (travel, camping, weather survival). | 10–12 pp |
| 4 | The Conqueror | A warlord with one ambition: the continent answers to you — or burns. | Faction relations, raids & sieges, defense, world conquest, endgame enemies, army management, the "end" of Kenshi. | Faction/warfare content + endgame mechanics. Keeps challenge honest — nothing that hands victory away. | 10–12 pp |

Non-wave pages: cover 1 + TOC 1 + installation 6–8 + glossary 4–5. Total lands in the 60–80 range. **The guide is the primary deliverable; the modlist is embedded within it.** Budget drift must be corrected during writing, not after.

## 3. Mod Categories per Wave & Count Floors

Mods are curated by category; specific mods are researched and URL-verified during implementation — never fabricated. **Mod-count floors per wave:** Wave 0 = 5–8 (UI/QoL/performance only); Waves 1–4 = 8–12 each.

**Wave 0 — Vanilla + UI/QoL only:**
- UI/UX: inventory, map, crosshair/targeting clarity, tooltip readability
- Performance & stability: optimization fixes, loading speed
- QoL: sound rebalancing, camera behavior, hotkey/control improvements
- Rule: nothing that changes game balance or adds content.

**Wave 1 — Survival & Settlement:**
- Food/agriculture (crops, livestock, cooking)
- Weather/climate (dust storms, rain, fog effects)
- Building variety (new buildings, furniture, wall types)
- Light survival mechanics (hunger pacing, injuries)
- Rule: content that aids survival/settling, not combat power.

**Wave 2 — Smithing & Production:**
- Crafting expansion (weapons, armor, crossbows, turrets)
- Tech/research tree expansion (new unlock tiers, gated behind real research time)
- Material economy (new ore/materials, smelting/refining)
- Production automation/helpers (gated, effort-based)
- Rule: everything gated behind materials + research time — no free power.

**Wave 3 — Exploration & New Lands:**
- New zones/biomes, expanded world or new ruins
- New races/factions for encounters
- Travel/camping/caravan mechanics
- Unique recruits & legendary items (rare, earned)
- Rule: content that expands the map and journey, not raw stats.

**Wave 4 — Warfare & Endgame:**
- Faction expansion (new factions, wars, world states)
- Raids/sieges & garrison/defense content
- Endgame enemy scaling (honest difficulty, no cheese)
- Army/formation management
- Rule: keeps challenge high — nothing that hands victory away.

**Cut list (enforced, with the operational power-spike test from Section 1):** meme/joke mods, explicit porn, redundant duplicates, cheat/overpowered/all-knowing mods, anything unverifiable or incompatible with Kenshi 1.0.68. All rejected mods logged in STATUS.md with the reason.

## 4. Mod Organizer — KMM Install & Config

Installation chapter covers, in order. Steps are **written from KMM's verified behavior**, not assumptions:

1. **Game prep:** Install Kenshi from Steam; confirm build **1.0.68 (Apr 1, 2024)**; advise disabling auto-updates after confirming so the modlist stays valid.
2. **Install KMM** (Nexus mod 1765): download, extract, run. Note runtime requirements and first-run setup. *(Verify: does KMM still run on current Windows + 1.0.68? See Risk Register.)*
3. **Point KMM at the game:** it detects the Steam install path; verify the Kenshi folder resolves correctly. *(Verify the detection claim before writing it.)*
4. **Fetch mods:** Steam Workshop mods (subscribe in Steam; KMM detects them) and Nexus mods (download, drop into KMM's managed folder / KMM import).
5. **Load order:** explain Kenshi's load-order system and how KMM reorders entries. *(Load-order direction — "later = higher priority" — is a to-verify claim, confirmed against KMM/in-game behavior before it appears in the guide.)* Provide the canonical order per wave — base fixes/QoL first, content layered after.
6. **Launch & verify:** start game via KMM; confirm all mods report loaded in the in-game Mods menu; confirm no "mod has no .mod file" errors.
7. **Per-wave switching:** how to switch between wave modsets cleanly (each wave = its own new game + mod subset).

**Contingency (Plan B):** if KMM proves incompatible with 1.0.68, the installation chapter pivots to Kenshi's **built-in mod manager** (Options → Mods in-game, Steam Workshop auto-managed + `<Kenshi>/mods/` for Nexus drops). The guide's load-order and per-wave-switching instructions are written to be manager-agnostic so the swap is a section edit, not a rewrite.

Kenshi reads both `<Kenshi>/mods/` and Steam Workshop's `workshop/content/233860/`; load order is editable in-game under Options → Mods. *(Both facts to verify.)*

## 5. Project Structure

```
kenshi/
├── AGENTS.md                     # project-specific agent instructions
├── README.md                     # overview + how to regenerate PDF
├── STATUS.md                     # live decision log (accepted/rejected/conflicts/verifications)
├── conflicts-mods.md             # known conflicts (excluded from PDF)
├── mod-ideas.md                  # future candidates + unverified-but-promising (excluded from PDF)
├── assets/logo.jpg               # already present
├── build.bat                     # one-click Typst PDF generator
├── template.typ                  # master template (cover, TOC, palette, fonts)
├── .gitignore                    # ignore output/ generated PDF
├── guide/
│   ├── installation.typ          # KMM install + config + load order + per-wave switching
│   ├── glossary.typ              # ~40–60 player-facing + KMM terms
│   ├── wave-0/  how-to-play.typ · modlist.typ · mechanics.typ · graphics.typ
│   ├── wave-1/  strategy.typ · modlist.typ · mechanics.typ · content.typ · graphics.typ
│   ├── wave-2/  (same 5-file set)
│   ├── wave-3/  (same 5-file set)
│   └── wave-4/  (same 5-file set)
├── output/
│   └── scars-of-the-horizon.pdf  # generated PDF (gitignored)
└── docs/superpowers/specs/       # this spec + implementation plan
```

- `modlist.typ` = mod cards; `content.typ` = new-content mods; `graphics.typ` = visual mods (incl. Wave 0's UI/visual QoL); `mechanics.typ` = systems mods.
- `strategy.typ` = deepening guide content; `how-to-play.typ` = Wave 0's full beginner tutorial.
- PDF = cover → TOC → installation → 5 waves → glossary.

## 6. Mod Entry Format

Every mod card must contain, at minimum:

- Clickable name with a real, verified URL
- **Verification date + last mod update date** (the compatibility heuristic)
- Dependencies
- System / mechanic impact (and what it changes)
- Notes: load order, configuration, 1.0.68 compatibility assessment

## 7. PDF Output

- **Location:** `kenshi/output/scars-of-the-horizon.pdf` (per-project output/ folder; repo-root output/ is unused; PDF is gitignored).
- **Page target:** 60–80 pages, budgeted per wave in Section 2.
- **Palette (wasteland):** ash-dark text `#2b2622`, bone paper `#f2ead9`, rust-orange headings `#b3492e`, ember accent `#d97b3a`, blood-red highlights `#8c2b2b`. High contrast.
- **Fonts (pinned — this machine already rendered Steel Genesis with them):** Cinzel (cover title), Bahnschrift (headings), Georgia (body). No "if available" hedging.
- **Layout:** cover with logo + title + footer page numbers; top-level TOC; tinted mod-card blocks (rust stroke on bone fill); per-wave color coding; callout boxes for keybind tables, warnings, and tips.
- **Visuals policy:** typographic only — no external screenshots/images (keeps scope and fabrication risk in check). Visual load carried by callout boxes, tables, and layout color.
- **Generation:** Typst 0.15 / 0.15.1 via `build.bat` running `typst compile template.typ output/scars-of-the-horizon.pdf`. Use Context7 MCP for Typst API details as needed.

## 8. Verification Rules (ordered, budgeted, fallback-defined)

1. **No fabrication.** Only real, verified mods with working URLs. Unverifiable or incompatible mods go to `mod-ideas.md` / `STATUS.md` as UNVERIFIED, or are flagged to the user — never guessed.
2. **Verification order per mod:** (a) Steam Workshop page fetch (title + last-updated + existence); (b) Nexus page (Cloudflare-walled — try fetch first, then **Playwright** with a real browser); (c) if both fail, the mod is logged UNVERIFIED and excluded, or flagged to the user for manual verification. Nexus/Steam rate limits are respected by batching fetches with bounded concurrency.
3. **Compatibility heuristic:** a mod is assumed 1.0.68-compatible unless its page states a lower max version or it predates ~2019 with no updates (EA-era assumptions are flagged for review). Last-update dates are recorded on every card and in STATUS.md.
4. **KMM behavior** (load order direction, folder detection, launch flow, runtime requirements) is verified from real sources before it enters `installation.typ`; each verified claim is logged in STATUS.md.
5. **Conflict detection:** mods that edit the same game files are cross-checked before acceptance; incompatible pairs go to `conflicts-mods.md` with mitigation or one is dropped.

## 9. Risk Register (Open Items)

| Risk | Impact | Mitigation / Owner |
|---|---|---|
| KMM (Nexus 1765) incompatible with 1.0.68 / current Windows | Installation chapter unusable | Verify early (first implementation task). Contingency = built-in mod manager (Section 4, Plan B). |
| Nexus Cloudflare wall / rate limiting blocks verification | Mods can't be verified → excluded | Playwright fallback; batch with bounded concurrency; flag to user if manual verification needed. |
| Adult/nude mod pages are rate-limited or hard to fetch | Thematic content can't be verified | Playwright; if still blocked, log UNVERIFIED and ask the user. |
| Mod verified-on-paper but fails in-game (can't run the game to test) | Card claims break | Rely on community-reported compatibility + update dates; mark as "reported compatible" not "tested" where appropriate. |
| Page budget drift (how-to-play ballooning) | PDF out of range | Budgets enforced per wave during writing; trim/expand before compile. |
| Glossary becomes an afterthought | Weak deliverable | Fixed target of 40–60 terms, written per wave as terms are introduced. |
| Power-spike borderline mods | Rule becomes mush | Written verdict required in STATUS.md per borderline mod (Section 1 test). |
