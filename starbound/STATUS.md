# Aetherbound STATUS

## Decisions Made
- [2026-07-31] **Frackin Universe adopted as anchor mod.** *Reasoning:* User directive. FU is the central mod around which the entire list is built.
- [2026-07-31] **OpenStarbound adopted as hard requirement.** *Reasoning:* 10+ mods in the collection require OSB's Lua API. OSB also fixes vanilla bugs and improves performance. Functions like SKSE for Skyrim.
- [2026-07-31] **Single-wave structure.** *Reasoning:* FU is a one-way trip — no "Wave 0" vanilla experience possible. Replaced with a single modlist + a "Getting Started" primer.
- [2026-07-31] **Elithian Races and Avali (Triage) adopted.** *Reasoning:* Well-established race mods with FU patches. Save-dependent, but FU already makes this a one-way commitment.
- [2026-07-31] **Two-wave structure (superseded).** Replaced by single-wave design on 2026-07-31.
- [2026-07-31] **Typst for PDF generation.** *Reasoning:* Modern, fast, professional. No markdown conversion needed.
- [2026-07-31] **Steam Workshop as primary mod source.** *Reasoning:* Largest Starbound mod collection.
- [2026-07-31] **SBMM by korsir as mod manager.** *Reasoning:* User-specified.
- [2026-07-31] **H2 for mod categories, H1 for prose chapters.** *Reasoning:* Avoids unwanted page breaks. Template controls layout.
- [2026-07-31] **Text labels (TIP/CONCEPT/WARNING) instead of emoji in callouts.** *Reasoning:* Emoji font coverage unreliable in PDF.
- [2026-07-31] **--font-path in build script.** *Reasoning:* Ensures bundled fonts load regardless of system state.

## Adopted Mods (57 total)

### Foundations (4)
- Starbound Patch Project (1543219534)
- Anter583's Utility Library (2144215143)
- Smart drops objects (3720232044)
- Bench Platform Collision (3377663311)

### UI & QoL (20)
- Extended GUI (729426797)
- Extended Songbook (729427264)
- Food Stack (729427436)
- Enhanced Storage (731220462)
- [OSB] Enhanced Storage Cumulative Patch (3432475751)
- Alternative Mods Menu Button (744929741)
- What Menu? (1421523226)
- More Planet Info (1117007107)
- [More Planet Info] 1.4 Quest Marker Fix (1772643711)
- Frackin Universe: More Planet Info Official Patch (2141522956)
- Flight Path (3698077233)
- Redone Ship Encounters (1974816168)
- Frackin Interface (1264107917)
- Frackin Stations Interface (1988654567)
- [OSB] Universal Instant Crafting (3251274439)
- [OSB] Automatically Scan Objects! (3545869822)
- MM Keybinds [OpenSB] (3266061335)
- Save Inventory Position [OpenSB] (3331093074)
- [OSB] [FU] Space Station Terminal Quick Sell (3723886096)

### Graphics (8)
- nuggubs' Vanilla Texture Tweak Pack (3242163103)
- nVTTP - Mod Compat Patch (3277732237)
- TV's Story Resprites (3630819794)
- TV's Neo Peacekeeper Uniform (3637990388)
- Racial AI Restorer (729801206)
- Outpost Nebula - Pillars of Creation (957095453)
- Taehl's Teleport Beams (1301992771)
- Eld'uukhar flight icon replacement (2863590234)

### Audio (2)
- Frackin Music (729492703)
- Outpost Music Replacer - Tranquility Base (1826459917)

### Races (9)
- Elithian Races Mod (850109963)
- Elithian Races: FU Patch (1429652829)
- FU - Elithian BYOS Ships (2375270402)
- Avali (Triage) Race Mod (729558042)
- FU + Avali Triage Patch (2052758462)
- Avali Restored Tunics (1778990370)
- Avali SpecOp Armor (738313096)
- avali camps on frackin planets (1432794738)
- Crafting Menu AvaliDebloat (3048481945)

### Content (6)
- Frackin Universe (729480149) — anchor
- Miniknog Rearmed (2435665276)
- Anom's Outpost Overhaul (2468903056)
- Anom's Outpost Overhaul - Scrap Vendor Addon (2478120319)
- Anom's Outpost Overhaul - Gunsmith Shop Addon (2478119400)
- More Outpost Objects (1635522739)

### Mechanics (5)
- Omnicrafter! (2844996935)
- [OSB] Wall-Mounted Omnicrafter (3488372244)
- Better Crew (3031599475)
- Universal Wardrobe (3492414889)
- Recipe Adjustment: Campfire to Kitchen (756729190)

### Ships (3)
- [OSB] Universal BYOS Patcher (3648814036)
- [OpenSB] Ztarbound S.A.I.L. All-in-One Race Support (3506162421)
- More Teleportz (1543782525)

### Building (1)
- Plushbound (2959854988)

## Rejected Mods
- **[Enhanced Storage Simplified](https://steamcommunity.com/sharedfiles/filedetails/?id=3430660057):** Redundant — Enhanced Storage with the [OSB] Cumulative Patch provides the same benefit.
- **[More Planet Info - FU Patch (old)](https://steamcommunity.com/sharedfiles/filedetails/?id=1639501560):** Superseded by the official FU team patch (2141522956).
- **[Remnants of the Protectorate (0.1.1)](https://steamcommunity.com/sharedfiles/filedetails/?id=3670091917):** Pre-alpha (v0.1.1). Too early-stage for a curated modlist. Revisit when stable.
- **[Remnants Addon: Assorted Crew Changes](https://steamcommunity.com/sharedfiles/filedetails/?id=3670172245):** Depends on rejected Remnants of the Protectorate.
- **[Remnants x Better Crew Patch](https://steamcommunity.com/sharedfiles/filedetails/?id=3677854700):** Depends on rejected Remnants of the Protectorate.
- **I Want to Drive That Van series (×4):** Joke mods. Not appropriate for a curated modlist.
- **[Drop pixels on death](https://steamcommunity.com/sharedfiles/filedetails/?id=3350355857):** Reduces death penalty — against the "no cheating" rule.
- **[Gardenbot2: Reboot Edition](https://steamcommunity.com/sharedfiles/filedetails/?id=729428280) + MP Friendly:** Skipped per user decision.
- **[Player Voice](https://steamcommunity.com/sharedfiles/filedetails/?id=2608061089):** Dropped per user decision.
- **[The Eld'uukhar Speak!](https://steamcommunity.com/sharedfiles/filedetails/?id=3543183658):** Dropped per user decision.
- **[Hop On Shops](https://steamcommunity.com/sharedfiles/filedetails/?id=960708990):** Dropped per user decision.
- **[$99.99 Blocks](https://steamcommunity.com/sharedfiles/filedetails/?id=1474034898):** Dropped per user decision.

## Source Collection
- **Reference:** [Starbound: Frackin' Universe Edition](https://steamcommunity.com/sharedfiles/filedetails/?id=3418162394) by Zenny (73 mods, last updated 2026-07-08)
- **Adopted:** 57 of 73 mods
- **Rejected/dropped:** 16 of 73 mods

## Open Questions
- **SBMM exact GitHub URL?** TBD during research.
- **Remnants of the Protectorate — revisit when stable?** Check again after v1.0 release.
- **Adult content mods?** Section reserved but unpopulated. User to decide direction.

## Version Notes
- Target: Starbound 1.4.4 (August 2019)
- Engine: OpenStarbound (separate install, requires copying packed.pak)
- SBMM version: TBD
- Typst version: 0.15.1
