# Scars of the Horizon — Kenshi Modlist & Guide Design

- **Date:** 2026-08-03
- **Game:** Kenshi **1.0.68** (released April 1, 2024) — all mods must be compatible with this build.
- **Mod organizer:** KMM — Kenshi Mod Manager (Nexus mod 1765).
- **Modlist name:** Scars of the Horizon
- **Sources:** Steam Workshop (primary) + Nexus Mods (secondary, where the better/required mod lives).
- **Adult content policy:** full thematic adult content allowed where thematically relevant to the wasteland (skin/body mods, gritty retextures); explicit porn is forbidden. Nude-base mods are included only when a quality mod requires them as a dependency, and are clearly noted on the mod card.

## 1. Approach

Approach A — "Lifepath" progression. Five waves (0–4), each a distinct, progressively harder new-game setup with its own roleplay backstory. Waves mirror Kenshi's natural power curve: survival → settlement → tech → exploration → conquest. Each wave layers new mechanics and content on top of the previous baseline; no pure power spikes.

## 2. Wave Map & Roleplay Backstories

| Wave | Lifepath | Start & Premise | Guide focus | Mod philosophy |
|---|---|---|---|---|
| 0 | The Wanderer | Wake in The Hub, no memory, no coin. Only your will to survive the week. | Full how-to-play: controls, UI, hunger/stats, combat, mining copper for cats, first recruit, basic survival loop. | Vanilla + UI/QoL only. No content mods. |
| 1 | The Outlander | A refugee caravan's cast-off. Build a dusty first settlement that outlasts the next raid. | Base building, walls/gates, food production (farming/hunting), stone & iron logistics, defense-in-depth, first outpost layout. | Survival & settlement content + light mechanics (food, weather, building variety). No power spikes. |
| 2 | The Smith | A tech-hunter chasing a half-burned research ledger that promises lost weapons of the ancients. | Research tree mastery, weapon/armor crafting tiers, crossbows & turrets, hydroponics, material economy, smithing progression. | Production/crafting content + tech/research mechanics. Everything gated behind effort & materials. |
| 3 | The Expedition | A cartographer whose maps all end at a blank edge. Sell everything; the map's edge is a rumor. | Exploration: biome navigation, long-range expeditions, world states, unique recruits & ruins, caravans, map completion. | New lands/races/ruins + exploration mechanics (travel, camping, weather survival). |
| 4 | The Conqueror | A warlord with one ambition: the continent answers to you — or burns. | Faction relations, raids & sieges, defense, world conquest, endgame enemies, army management, the "end" of Kenshi. | Faction/warfare content + endgame mechanics. Keeps challenge honest — no god-armies. |

Wave 0 adds zero content. Waves 1–4 each layer mechanics and content, so replaying Wave 4 from scratch is a genuinely deeper game than Wave 1.

## 3. Mod Categories per Wave

Mods are curated by category. Specific mods are researched and URL-verified during implementation — never fabricated.

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

**Cut list (enforced):** meme/joke mods, explicit porn, redundant duplicates, cheat/overpowered/all-knowing mods, and anything unverifiable or incompatible with Kenshi 1.0.68 — all rejected mods logged in STATUS.md.

## 4. Mod Organizer — KMM Install & Config

Installation chapter covers, in order (exact steps verified against KMM's real behavior during implementation):

1. **Game prep:** Install Kenshi from Steam; confirm build **1.0.68 (Apr 1, 2024)**; advise disabling auto-updates after confirming so the modlist stays valid.
2. **Install KMM** (Nexus mod 1765): download, extract, run. Note runtime requirements and first-run setup.
3. **Point KMM at the game:** it detects the Steam install path; verify the Kenshi folder resolves correctly.
4. **Fetch mods:** Steam Workshop mods (subscribe in Steam; KMM detects them) and Nexus mods (download, drop into KMM's managed folder / KMM import).
5. **Load order:** explain Kenshi's load-order system (mods.cfg, later = higher priority) and how KMM reorders entries. Provide the canonical order per wave — base fixes/QoL first, content layered after.
6. **Launch & verify:** start game via KMM; confirm all mods report loaded in the in-game Mods menu; confirm no "mod has no .mod file" errors.
7. **Per-wave switching:** how to switch between wave modsets cleanly (each wave = its own new game + mod subset).

Kenshi reads both `<Kenshi>/mods/` and Steam Workshop's `workshop/content/233860/`; load order is editable in-game under Options → Mods. KMM manages both from one place.

## 5. Project Structure

```
kenshi/
├── AGENTS.md                     # project-specific agent instructions
├── README.md                     # overview + how to regenerate PDF
├── STATUS.md                     # live decision log (accepted/rejected/conflicts)
├── conflicts-mods.md             # known conflicts (excluded from PDF)
├── mod-ideas.md                  # future candidates (excluded from PDF)
├── assets/logo.jpg               # already present
├── build.bat                     # one-click Typst PDF generator
├── template.typ                  # master template (cover, TOC, palette, fonts)
├── .gitignore                    # ignore output/ generated PDF
├── guide/
│   ├── installation.typ          # KMM install + config + load order + per-wave switching
│   ├── glossary.typ              # Kenshi + KMM terms
│   ├── wave-0/  how-to-play.typ · modlist.typ · mechanics.typ
│   ├── wave-1/  strategy.typ · modlist.typ · mechanics.typ · content.typ · graphics.typ
│   ├── wave-2/  (same 5-file set)
│   ├── wave-3/  (same 5-file set)
│   └── wave-4/  (same 5-file set)
├── output/
│   └── scars-of-the-horizon.pdf  # generated PDF (gitignored)
└── docs/superpowers/specs/       # this spec + implementation plan
```

- `modlist.typ` = mod cards; `content.typ` = new-content mods; `graphics.typ` = visual mods; `mechanics.typ` = systems mods.
- `strategy.typ` = deepening guide content; `how-to-play.typ` = Wave 0's full beginner tutorial.
- PDF = cover → TOC → installation → 5 waves → glossary.

## 6. Mod Entry Format

Every mod card must contain, at minimum:

- Clickable name with a real, verified URL (HTTP-200 verified during implementation)
- Dependencies
- System / mechanic impact (and what it changes)
- Notes: load order, configuration, version/date, compatibility with 1.0.68

## 7. PDF Output

- **Location:** `kenshi/output/scars-of-the-horizon.pdf` (per-project output/ folder; repo-root output/ is unused; PDF is gitignored).
- **Page target:** ~60–80 pages (each wave = full chapter: backstory, strategy/how-to-play, mechanics, content, graphics, mod cards).
- **Palette (wasteland):** ash-dark text `#2b2622`, bone paper `#f2ead9`, rust-orange headings `#b3492e`, ember accent `#d97b3a`, blood-red highlights `#8c2b2b`. High contrast.
- **Fonts:** verify installed faces; reuse Cinzel (cover title) if available; headings Bahnschrift; body Georgia. Fallbacks if missing.
- **Layout:** cover with logo + title + footer page numbers; top-level TOC; tinted mod-card blocks (rust stroke on bone fill); per-wave color coding.
- **Generation:** Typst 0.15 / 0.15.1 via `build.bat` running `typst compile template.typ output/scars-of-the-horizon.pdf`. Use Context7 MCP for Typst API details as needed.

## 8. Verification Rules

- **No fabrication.** Only real, verified mods with working URLs (verified via tools/search/Playwright, including rate-limited or adult-mod details). Unverifiable or incompatible mods are logged in `mod-ideas.md` / `STATUS.md`, or flagged to the user — never guessed.
- Compatibility heuristic: if a specific mod version is unknown, use patch/release date against Kenshi 1.0.68 (Apr 1, 2024).
- Load-order and KMM behavior claims verified against KMM's real behavior, not assumed.
