# STATUS — GRID Control (Motorsport Manager Modlist)

## Legend

- [x] = completed
- [ ] = pending
- [!] = blocked

## Completed

### Project Setup
- [x] Project skeleton created (guide/, templates/, output/, docs)
- [x] AGENTS.md written with vision, rules, and conventions
- [x] VERSION set to 0.1.0
- [x] .gitignore created
- [x] Game identified from assets/logo.jpg: "GRID Control" branding → target game is **Motorsport Manager** (Playsport, Steam 415200) — confirmed by user decision
- [x] Final version verified via Steam news: **Patch 1.6 (2026-02-10)** — fixed black screen on boot, Unity updated to 5.5.6f1, minimap/UI fixes; initially shipped on the beta branch; 1.53 = previous version
- [x] All five DLCs verified via Steam API: Livery Pack (2016-12-01), Create Your Own Team (2017-02-23), GT Series (2017-02-23), Challenge Pack (2017-08-21), Endurance Series (2017-11-01)

### Mod Manager Decision
- [x] **F1M24 Mod Manager REJECTED** — verified it is the community manager for *F1 Manager 2024* (TheFir3Nexus, OverTake.gg; manages .pak + UE4SS). It does not support Motorsport Manager. User confirmed target game = Motorsport Manager; documented alternative toolchain (Steam Workshop + Unity Mod Manager) instead.

### Mod Research (all verified live 2026-08-11)
- [x] Profile A — "2026 Season": jojorso's **2026 mod** (Workshop 3679864343) adopted as flagship
- [x] Profile A alt: Djangles LeVaughn's **2026 Season (Vanilla Overhaul)** (Workshop 3682708186) + **Vanilla Retro/Fantasy Livery Pack** (1249691137)
- [x] Graphics: **Djangles Single Seater Car Pack for 1.6** (3668727211), **Enhanced Graphics** (Nexus 3), **Extended Camera** (Nexus 1)
- [x] Profile B — "Rebirth": **Rebirth: Redux** (Nexus 11, vn23) + **Derivitas** (Workshop 3147853996) + **Rebirth: Logo Pack** (1188384463)
- [x] Rejected list recorded (see below) with reasons

### Guide & PDF
- [x] Setup + modlist guide written (part-1, part-2)
- [x] How-to-play guide written (part-3)
- [x] Personas section written (part-4)
- [x] conflicts-mods.md and mod-ideas.md created
- [x] Typst templates written (style.typ, guide.typ)
- [x] generate-pdf.ps1 written with PDF verification
- [x] GUIDE.md compiled from guide/ sources
- [x] PDF compiles cleanly and passes header/size verification

## Pending

### Verification
- [ ] Cross-check how-to-play mechanics against actual in-game screens (race controls, CYOT flow, HQ menus) — content written from Motorsport Manager knowledge, needs in-game pass
- [ ] Confirm current Steam branch status of Patch 1.6 (live vs beta) at next session; update guide wording if changed

## Decisions

### Game & Version
- [x] Logo "GRID CONTROL — MOTORSPORT MANAGEMENT" is the modlist brand; underlying game = **Motorsport Manager** (Playsport Games / Miniclip), released 9 Nov 2016
- [x] Modlist targets **Patch 1.6** (last version created for the game, 2026-02-10). 1.53-only mods (Ultimate F1 Manager Mod Series, 2026 F1 Car) are out of scope
- [x] Mods must deepen/modernize/improve graphics/add detail; **nothing that makes the game easier** (rejected: Better Sponsors, Max Fuel, Auto Setup, Assistant)

### Mod Ecosystem Notes
- [x] Season/database mods are mutually exclusive — pick ONE "New Game Mod" profile at a time
- [x] 3D-model mods are version-locked: 1.6-native models crash on 1.53 and vice versa (per mod author warnings)
- [x] Rebirth: Redux replaces vanilla race AI wholesale and is incompatible with other data/logic mods; graphical UMM plugins (Enhanced Graphics, Extended Camera) are render-level and used across profiles

## Skipped / Rejected

| Mod | Source | Reason |
|-----|--------|--------|
| F1M24 Mod Manager | OverTake.gg | F1 Manager 2024 tool — does not support Motorsport Manager |
| Better Sponsors Mod (2385038162) | Workshop | Increases sponsor payments — makes the game easier (forbidden) |
| Max Fuel (Nexus 13) | Nexus | More fuel = easier races |
| Auto Setup (Nexus 6) / Assistant (Nexus 7) | Nexus | Automates setup/staff — reduces challenge |
| Ultimate F1 Manager Mod Series 2026–2023 (3412517225), 2003–2012 (3722953668), Retro (Nexus 12) | Workshop/Nexus | Requires game version **1.53** — out of scope for the 1.6 baseline |
| 2026 F1 Car (3306027055) | Workshop | 1.53-only |
| 2022-2025 F1 Car (1868327022) | Workshop | Popular (27k subs) but last updated 2025-12-10, before Patch 1.6; 3D models are version-locked — 1.6 compatibility unverified |
| RealMM F1-F2-F3 2023 (2980404559) | Workshop | 2023-era, unmaintained since 2023-12 — superseded by 2026 season mods |
| 2025 mod F1+WEC (3436218577) | Workshop | Superseded by the author's 2026 mod |
| Sponsor Mod 4 (1310437762) | Workshop | 987 real sponsors, but conflicts with season DB mods; kept as alternative only |
| BraveNewMotorworld (3351585173), Quantum Fantasy (3607612115) | Workshop | Full fantasy database reworks — change the experience rather than deepening it |
| FIRE Mod / FIRE Fantasy series | Workshop | Fantasy, 1.3x-era, not 1.6-native |
| Skip Intro (Nexus 20) | Nexus | Conflicts with the 2026 mod's official intros |

## Next Session
- [ ] In-game verification pass of guide mechanics (race weekend, CYOT, HQ, politics)
- [ ] Optional: investigate weather/media detail mods compatible with 1.6
