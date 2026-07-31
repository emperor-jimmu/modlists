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
- [x] Wave 1 mods placeholder ready for user-provided mods

### Wave 2 — Apex Predator
- [x] Advanced guide written (5 sections)
- [x] Wave 2 mods placeholder ready for user-provided mods

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

### Mods
- [ ] Wave 1 mods — awaiting user-provided mod list (Task 5)
- [ ] Wave 2 mods — awaiting user-provided mod list (Task 5)

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

## Skipped / Rejected

(None yet — populate as mods are evaluated)
