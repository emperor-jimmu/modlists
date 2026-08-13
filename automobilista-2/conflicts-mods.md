# Conflicts — Torque Ascension

Documented mod conflicts and resolutions. This file is NOT included in the PDF.

| Mod A | Mod B | Conflict | Resolution | Date |
|-------|-------|----------|------------|------|
| NAMeS: Real Drivers for AMS2 | NAMeS+AI: Real Drivers for AMS2 Mods | Both write driver-name XMLs to `UserData/CustomAIDrivers`; last-installed wins per class | Use NAMeS only — it covers all default content and leaves season-pack AI files intact | 2026-08-14 |
| NAMeS: Real Drivers for AMS2 | AMS2 Custom AI Performance (DannyDB) | Both write per-class AI XMLs for overlapping classes (GT3, GT4, Stock Car Brasil, etc.) | Use NAMeS only; DannyDB stays in mod-ideas as an alternative AI philosophy | 2026-08-14 |
| AMS2 Custom FFB — rFuktor Control the Limit | AMS2 MaXBaldo real FFB / Custom FFB Collection | All replace `ffb_custom_settings.txt` in `Documents/Automobilista 2` | Exactly one FFB file active at a time; rFuktor Control the Limit selected (community-standard base, more downloads/ratings) | 2026-08-14 |
| NAMeS: Real Drivers for AMS2 | Aces IMSA GT3 Bundle AI namefile | Same CustomAIDrivers target for GT3 classes | Install the Aces GT3 namefile *last* (author-documented) so NAMeS does not overwrite it | 2026-08-14 |
| NAMeS: Real Drivers for AMS2 | IMG F1 1990 Season / AMS2 F1 1991 Season | Season-pack XML Selectors manage F-Classic AI files | The active season selector governs its classes by design; expected behaviour, not an error | 2026-08-14 |
| GT4 Skin Pack by JTN | IMSA MPC 2021 Pack GT4/GS | Both ship a GT4 class AI file targeting `GT4.xml` | Install exactly one GT4 AI grid — JTN's complete 40-entry grid recommended; IMSA pack's AI only if the IMSA grid is preferred | 2026-08-14 |
| Crew Chief App Manager | Manual Crew Chief launch | Both control the Crew Chief lifecycle | Use the manager exclusively; do not launch Crew Chief manually alongside it | 2026-08-14 |

## Notes

- **Multiclass grids:** AMS2 multiclass breaks when custom-AI files exist for only one used class (author-documented for the Aces GT3 bundle). NAMeS supplies names for all default classes, which keeps every class populated.
- **SimHub overlays (Aces Suite, Omitool2, _HERVE_DASH):** dashboards coexist inside SimHub — assign each to its own overlay screen. Ensure SimHub ≥ v9.10.1, AMS2 Shared Memory = Project CARS 2, UDP off, borderless window.
- **Companion apps (Crew Chief, SimHub, Second Monitor, AVUS):** all read AMS2's shared memory (Project CARS 2 protocol) and do not modify game files — no conflicts with each other or with installed mods.
