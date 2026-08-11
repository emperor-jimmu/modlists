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

## LAYERS (2026-08-11)

The list is split into **two installation layers** (user directive):

- **Layer 1 — Vanilla+ (learn the game)**: UI / information and graphics mods only. Zero gameplay changes — what you learn transfers 1:1 to unmodded play. 20 mods.
- **Layer 2 — The Grand Chronicle (fully modded)**: Layer 1 plus the AI overhaul, tech-tree mods, and content mods. 31 mods (32 with optional Extended Eras).

Personas assume Layer 2. Beginners start in Layer 1 and graduate.

## VERDICTS ROUND 2 (2026-08-11)

| Verdict | Mod | Author | Workshop id | Layer | Notes |
|---|---|---|---|---|---|
| Adopted | Better Tech Tree (UI) | infixo | 1337632610 | 1 | UI-only; ~150 new icons, more tree info |
| Adopted | Resourceful 2 | Amatheria | 1369684991 | 2 | +51 resources; NFP + Monopolies & Corporations compatible; heaviest asset mod in the list |
| Adopted | Luxury Resource Variety | p0kiehl | 1862846514 | 2 | More unique luxury kinds per map size; requires Resourceful 2 (satisfied) |
| Adopted | Real Tech Tree | infixo | 871465857 | 2 | Historical/logical tree connections; anti-beeline; pairs with Real Strategy |
| Adopted | Real Eurekas | infixo | 886630163 | 2 | 500+ eureka/inspiration conditions randomized per game; v3+ works with Better Tech Tree |
| Adopted (optional) | Extended Eras | p0kiehl | 2123444827 | 2 | Pacing: eras last longer, prevents rushing/falling behind; works all speeds |
| Rejected | Tech Tree Rework | Remove Sniper from TF2 | 1714676022 | — | Stale (2019, 59 subs), removes techs — opposite of "more tech" |
| Rejected | Alternate Civics Tree | UncivilizedGuy | 2049369576 | — | 191 subs, niche |
| Rejected | Alliances Expanded | JNR | 1945460659 | — | Diplomacy content outside the resources/tech ask; needs a compat patch with UI mods |
