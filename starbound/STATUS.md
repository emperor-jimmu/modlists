# Aetherbound STATUS

## Decisions Made
- [2026-07-31] **Two-wave structure** (Wave 0: QoL only, Wave 1: full modlist). *Reasoning:* Gradual introduction.
- [2026-07-31] **Typst for PDF generation.** *Reasoning:* Modern, fast, professional. No markdown conversion needed.
- [2026-07-31] **Steam Workshop as primary mod source.** *Reasoning:* Largest Starbound mod collection.
- [2026-07-31] **SBMM by korsir as mod manager.** *Reasoning:* User-specified.
- [2026-07-31] **H2 for mod categories, H1 for prose chapters.** *Reasoning:* Avoids unwanted page breaks. Template controls layout.
- [2026-07-31] **Text labels (TIP/CONCEPT/WARNING) instead of emoji in callouts.** *Reasoning:* Emoji font coverage unreliable in PDF.
- [2026-07-31] **--font-path in build script.** *Reasoning:* Ensures bundled fonts load regardless of system state.

## Rejected Mods
*None yet.*

## Known Conflicts
*See `conflicts.md`.*

## Open Questions
- **SBMM exact GitHub URL?** TBD during research.
- **Are enough 1.4.4-compatible bugfix mods on Workshop?** TBD during research.

## Version Notes
- Target: Starbound 1.4.4 (August 2019)
- SBMM version: TBD
- Typst version: 0.15.1
