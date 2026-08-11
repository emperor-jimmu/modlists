# STATUS.md — The Grand Chronicle (Civilization VI)

Living decision log for the modlist. Append dated entries; never rewrite history.

## DESIGN (2026-08-11)

- **Modlist name**: The Grand Chronicle (user-approved).
- **Target version**: Civ 6 Complete Edition, final PC build **1.0.12.68** (July 15, 2024). Content roadmap: Leader Pass concluded with *Rulers of England* (March 29, 2023).
- **Mod manager**: Steam Workshop + Enhanced Mod Manager (Workshop mod, id 1601259406, by FinalFreak16) + in-game Additional Content. External managers are not standard for Civ 6; `john6/CivModManager` (GitHub) is a dead 2017 utility and was rejected after verification.
- **Mod policy**: deepen/modernize only — no overpowered mods, no easier-experience mods; exactly one AI overhaul; UI/information mods welcome.
- **Personas**: six (Architect of Wonders, Iron Chancellor, Cradle of Science, Merchant Republic, Faithful Pilgrim, Chronicler of Eras), each with background + game creation choices.
- **Logo**: user will provide `assets/logo.jpg`; cover wires it in conditionally so the PDF builds regardless.
- **Open item**: none.

## VERDICTS (2026-08-11)

All entries verified against live Steam Workshop pages (title, author, item id, update date). Adopted = in `guide/20-modlist.typ`.

| Verdict | Mod | Author | Workshop id | Notes |
|---|---|---|---|---|
| Adopted | Real Strategy (AI) | infixo | 1617282434 | Sole AI overhaul; do not stack with AI+/RHAI/BBG |
| Adopted | Quick Deals | wltk | 2460661464 | UI-only |
| Adopted | Detailed Map Tacks | wltk | 2428969051 | UI-only |
| Adopted | Extended Policy Cards | Aristos | 2266952591 | Requires Better Report Screen |
| Adopted | Extended Diplomacy Ribbon | Aristos | 1360462633 | UI-only |
| Adopted | Better Report Screen (UI) | infixo | 1312585482 | UI-only; dependency for EPC |
| Adopted | Better Civilopedia (UI) | infixo | 1341630847 | UI-only |
| Adopted | More Lenses | astor | 871712879 | UI-only; no CQUI/HBUI |
| Adopted | Better Trade Screen | astor | 873246701 | UI-only; no CQUI/HBUI |
| Adopted | Production Queue | Lozenge | 1095404815 | UI-only |
| Adopted | Great Works Viewer | Glindor | 1652106496 | UI-only |
| Adopted | Sukritact's Simple UI Adjustments | sukritact | 939149009 | UI-only |
| Adopted | Sukritact's Global Relations Panel | sukritact | 1753346735 | UI-only |
| Adopted | Better Combat Preview (UI) | Maple_Leaves | 3254574708 | UI-only |
| Adopted | Environment Skin: Civ V | GrrrArrrg | 1702339134 | Visual |
| Adopted | Hillier Hills | Deliverator23 | 2361535448 | Visual; compatible with Env Skin + Vegetation |
| Adopted | City Sprawl Graphics | Hiraeth | 1619400469 | Visual |
| Adopted | Denser Vegetation (for Civ V Skin) | JNR | 1975497559 | Visual; use the Civ V Skin variant with Environment Skin |
| Adopted | Colorized Historic Moments | MiniRagnarok | 1679150838 | Visual |
| Adopted | Prettier Lakes | p0kiehl | 2356352540 | Visual |
| Adopted | Terra Mirabilis | Deliverator & ChimpanG | 1461463960 | Natural wonder rework + 20 new |
| Adopted | Rosetta — Dynamic City Names | SeelingCat | 1161626651 | Flavor/detail |
| Adopted | Sukritact's Resources | sukritact | 1150492115 | New resources (balanced) |
| Adopted | Sukritact's Oceans | sukritact | 2542898147 | New game mode; not fully compatible with YnAMP |
| Adopted | Wetlands | JNR | 2135724456 | Requires Gathering Storm; no harvest-all mods |
| Adopted | Yet (not) Another Maps Pack | Gedemon | 871861883 | Maps; keep size ≤ Enormous (GS crash warning) |

**Rejected (recorded)**:
- Better Balanced Game (id 2865001760) — competitive multiplayer rebalance, changes economy/feel; violates "no overhauling difficulty for the sake of balance" and risks stacking with Real Strategy.
- CQUI — stale monolithic UI superseded by the individual UI mods above.
- Heroes & Legends game mode — power creep (not a mod; noted in guide as "leave off").
- john6/CivModManager — dead 2017 utility, rejected as mod manager.
