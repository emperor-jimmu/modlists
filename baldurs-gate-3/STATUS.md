# STATUS.md — Mythic Crucible Decision Log

## Accepted Mods

| Mod | Wave | Category | Decision Date | Notes |
|-----|------|----------|---------------|-------|
| ImpUI (ImprovedUI) | 0 | UI Enhancements | 2026-07-31 | mods/366, Patch 8 verified (April 22, 2025 update) |
| Native Camera Tweaks | 0 | UI Enhancements | 2026-07-31 | mods/945, verified via Nexus search |
| WASD Character Movement | 0 | UI Enhancements | 2026-07-31 | mods/781, verified via Nexus search |
| Better Hotbar 2 | 0 | UI Enhancements | 2026-07-31 | mods/2417, verified via Nexus search |
| Always Show Approvals | 0 | UI Enhancements | 2026-07-31 | mods/4675, verified via Nexus search |
| Better Character and Party Panels | 0 | UI Enhancements | 2026-07-31 | mods/1580, verified via Nexus search |
| Bags Bags Bags | 0 | Quality of Life | 2026-07-31 | mods/880, verified via direct page visit |
| Highlight (Almost) All | 0 | Quality of Life | 2026-07-31 | mods/885, verified via Nexus search |
| All-In-One Collector Total (Auto Loot) | 0 | Quality of Life | 2026-07-31 | mods/17089, verified via Nexus search |
| FTSortingBags | 0 | Quality of Life | 2026-07-31 | mods/22369, verified via Nexus search |
| Tav's Hair Salon | 0 | Lightweight Graphics | 2026-07-31 | mods/213, verified via direct page visit |
| Faces of Faerun | 0 | Lightweight Graphics | 2026-07-31 | mods/429, verified via Nexus search |

## Rejected Mods

| Mod | Reason | Date |
|-----|--------|------|
| Fast Dice (mods/1203) | Mod deleted from Nexus — no longer available | 2026-07-31 |
| Transmog Enhanced (mods/1281) | Mod deleted from Nexus — no longer available | 2026-07-31 |
| Better Tooltips (unknown ID) | Base English mod not found — only translations exist | 2026-07-31 |

## Design Decisions

- **2026-07-31:** Project created. 2-wave structure. BG3MM as mod organizer. Typst for PDF.
- **2026-07-31:** Wave 0 modlist finalized — 12 verified mods across 3 categories (no bug fixes needed for Patch 8).
- **2026-07-31:** No bug fix/community patch mods included in Wave 0 — Patch 8 is stable with built-in mod support.
- **2026-07-31:** Nexus Mods scraping is JS-rendered — Playwright required for verification. ctx_fetch_and_index cannot retrieve search results directly.

## Conflicts & Resolutions

*(Documented in conflicts-mods.md)*
