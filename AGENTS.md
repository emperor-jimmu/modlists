# Outlaw Overhaul — Project Instructions

This project is a modlist and guide for Red Dead Redemption 2 (version 1.32).

## Key Constraints
- All mods must be compatible with RDR2 version 1.32 (March 19, 2024 patch). Check mod pages for stated version. If no version stated, use last-updated date — mods updated after Jan 2024 are likely OK. Test in clean LML environment.
- Mod loader: Lenny's Mod Loader (LML) only.
- No redundant or conflicting mods.
- No porn mods. Adult/nude allowed where thematically relevant (saloon realism, body diversity). Not allowed: explicit sexual content, sexual animations, minors, bestiality. Ask user if in doubt.
- No cheating/overpowered/all-knowing mods.

## Waves
- Wave 0: Vanilla/QoL only. Beginner-friendly. Theme: honorable drifter.
- Wave 1: Graphics, content, new mechanics. Experienced. Theme: full outlaw descent.

## PDF Generation
- Typst 0.15. Run `generate-pdf.bat` to compile.
- Fonts bundled in `fonts/`.
- Logo: `assets/logo.jpg`.

## Mod Entry Format
Name (clickable link) | Author | Category (Graphics/Gameplay/UI/Audio/Weapons/Horses/Economy/World) | Wave (0/1/both) | Description (2-3 lines) | Dependencies | System/Mechanic Impact | Installation Notes | Conflicts

## Content Files
All sections: guide/master.typ -> includes theme.typ + each section .typ file.
