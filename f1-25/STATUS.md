# STATUS — Apex Alchemy (F1 25)

## Legend

- [x] = completed
- [ ] = pending
- [!] = blocked

## Completed

### Project Setup
- [x] Project skeleton created with all directories and files
- [x] AGENTS.md written with vision, rules, and conventions
- [x] VERSION set to 0.1.0
- [x] .gitignore created (excludes generated PDFs)
- [x] Simplified Launcher v3.2.10 verified on OverTake.gg
- [x] Typst theme verified with test compilation

### Wave 0 — First Lap
- [x] How-to-play guide written (9 sections)
- [x] Wave 0 mods documented (Simplified Launcher entry)

### Wave 1 — Building Speed
- [x] Strategy guide written (7 sections)
- [x] Wave 1 mods documented (5 mods — framework, dashboards, overlays, livery)

### Wave 2 — Apex Predator
- [x] Advanced guide written (5 sections)
- [x] Wave 2 mods documented (6 mods — physics, career, visuals, mechanics)

### PDF
- [x] Typst style.typ written (Carbon & Crimson theme)
- [x] Typst guide.typ written (cover + TOC + body)
- [x] generate-pdf.ps1 written with PDF verification
- [x] GUIDE.md built from guide/ sources
- [x] PDF compiles cleanly (617 KB, valid PDF header)

### Documentation
- [x] README.md written
- [x] conflicts-mods.md created (awaiting mod testing data)
- [x] mod-ideas.md created (awaiting community suggestions)

## Pending

### Verification
- [ ] Cross-reference guide content against actual F1 25 v1.24 in-game screens (controls, assists, career UI, ERS modes)

## Decisions

### Mod Organizer
- [x] Simplified Launcher v3.2.10 chosen — verified on OverTake.gg, 57 reviews, 10 updates, YouTube tutorial available
- [x] URL: https://www.overtake.gg/downloads/simplified-launcher-for-f1-25-used-to-quickly-manage-and-launch-mods.77451/
- [x] Discord: https://discord.gg/GQZn5gbBdg
- [x] Features: drag-and-drop mod install, ZIP/RAR/7Z support, backup/restore, favorites, categories, presets, conflict detection
- [x] Note: Windows Defender may flag as false positive (unsigned Python self-package)

### Design
- [x] Guide content caveat: game-mechanic content written from F1 series knowledge — needs verification against actual F1 25 v1.24
- [x] PDF excluded from git tracking via .gitignore (generated binary)

### Mod Verdicts (2026-08-20)

Research source: OverTake.gg F1 25 category (retrieved via Wayback Machine snapshots dated 2026-08-02 — direct HTTP is Cloudflare-challenged).

Adopted (11):
- [x] SERPs Base Files for F1 25 (Team Simplified) — framework dependency — https://www.overtake.gg/downloads/serps-base-files-for-f1-25-simplified-erps-serps-use-to-play-f1-25-with-serps-compatible-mods.77448/
- [x] EGO GameDatabases Editor v1.3.0 (PavelGames) — https://www.overtake.gg/downloads/ego-gamedatabases-editor.84903/
- [x] AIO DASHBOARD v7.8 (thekingm249) — SimHub dashboard — https://www.overtake.gg/downloads/aio-dashboard.81686/
- [x] Project Aeternum – F1 Overlays v0.2.5 (Threefold) — https://www.overtake.gg/downloads/project-aeternum-%E2%80%93-f1-overlays-free.81335/
- [x] Retro Williams v1.2 (KawhiLover) — livery — https://www.overtake.gg/downloads/retro-williams.84914/
- [x] F1 2026 Handling Revamp v1.2 (ShelbyEra) — physics overhaul — https://www.overtake.gg/downloads/f1-2026-handling-revamp.85225/
- [x] Paddocklabs - Toolbox v0.3.10 (HowwFR) — career editor — https://www.overtake.gg/downloads/paddocklabs-toolbox.83224/
- [x] More Driver Models v1.2 (MildtDesign) — https://www.overtake.gg/downloads/more-driver-models-f1-25-extension-for-paddocklabs-and-ego-gamedatabases-editor.84139/
- [x] ERS is Now Gone v2.1.5 (Picklepopper) — https://www.overtake.gg/downloads/ers-is-now-gone.85379/
- [x] Pirelli Tyres Remaster Seasons 2025-2026 v1.24 (P Zero) — https://www.overtake.gg/downloads/pirelli-tyres-remaster-seasons-2025-2026.84758/
- [x] Closer to IRL Rev Lights v1.2 (PF126p) — https://www.overtake.gg/downloads/closer-to-irl-rev-lights.84748/

## Skipped / Rejected

- Rejected: Realistic performance, damage and wings (HerbertVig2) — 3.45 rating and overlaps with F1 2026 Handling Revamp.
- Rejected: RaycerRay - F1 Plugin & Overlay Package (MEMBERSHIP) — paid; the free Project Aeternum covers the same need.
- Deferred: camera and audio mods — no well-rated, F1 25 v1.24-compatible candidates found during research.
