# STATUS.md — Forlorn Oath (Monster Hunter Wilds)

Living decision log for the modlist. Append dated entries; never rewrite history.

## DESIGN (2026-08-11)

- **Modlist name**: Forlorn Oath (proposed; freely changeable by the owner).
- **Target version**: Monster Hunter Wilds, PC/Steam, current build **1.042.00.01** (2026-08-07; 1.042.00.00 on 2026-08-04 added offline Event Quests + Prologue Demo save transfer). Expansion *Ascendance* announced 2026-06-05 for 2027 — NOT yet released; the list targets the current base game and will be revisited when the expansion lands.
- **Mod manager**: Fluffy Mod Manager 5000 (Nexus site mod 818, FluffyQuack, v3.081 updated 2026-08-06) — RE Engine community standard. Framework: REFramework (Nexus 93, praydog; install the GitHub nightly, not the Nexus copy).
- **Mod policy (user directive)**: deepen/modernize only — QoL, UI/information, graphics, details. NO overpowered mods, NO easier-experience mods, NO cheat/trainer/difficulty-inflator mods. UI/information mods welcome (clarity, not power).
- **"More AI" handling**: no stable monster/Palico AI overhaul exists for Wilds (RE Engine + multiplayer desync). Documented honestly in the guide: Support Hunters (in-game) + information mods that make monster AI readable. No fabricated "AI mod" entries.
- **Personas**: six (Warden of the Forlorn, Storm's Edge, Wildfire, Skybound Warden, Ember Artisan, Horizon Keeper), each with background + character-creation choices + house rules. All run the same modlist.
- **Structure**: civ-6 style — `guide/main.typ` + `theme.typ` + 4 chapters (installation, modlist, how-to-play, personas); `build-pdf.bat`; conditional cover logo.
- **Logo**: user will provide `assets/logo.jpg`; cover wires it in conditionally so the PDF builds regardless.
- **Palette**: Forbidden-Lands — warm parchment `#FAF3E2`, deep scarlet banner `#7D2318`, amber `#C08F1F`; fonts Georgia/Bahnschrift/Consolas.

## VERDICTS (2026-08-11)

All entries verified against live Nexus Mods pages (title, author, mod id, update date). Adopted = in `guide/20-modlist.typ`.

| Verdict | Mod | Author | Nexus id | Pillar |
|---|---|---|---|---|
| Adopted | REFramework | praydog | 93 | Foundation |
| Adopted | CatLib | lingsamuel | 65 | Foundation |
| Adopted | REFramework Direct2D (HDR build) | lingsamuel / cursey | 4033 (or Rise 134) | Foundation |
| Adopted | Auto Restock | lingsamuel | 66 | QoL |
| Adopted | Auto Meal | lingsamuel | 64 | QoL |
| Adopted | Auto Fix Camps | lingsamuel | 70 | QoL |
| Adopted | Auto Sharpen Weapons | lingsamuel | 79 | QoL |
| Adopted | Auto Hide Mantles | lingsamuel | 78 | QoL |
| Adopted | Better Camps | lingsamuel | 155 | QoL |
| Adopted | Skip Intro Logos | lingsamuel | 72 | QoL |
| Adopted | Disable Near Fade and Camera Zoom In | lingsamuel | 984 | QoL |
| Adopted | Monster Weakness Icon Indicator | celluloid | 367 | UI |
| Adopted | MHWilds Overlay | lingsamuel | 81 | UI |
| Adopted | Enhanced Damage Numbers | lingsamuel | 262 | UI |
| Adopted | Disable Post Processing Effects | TonWonton | 221 | Visuals |
| Adopted | Tweak In-Game Volumetric Fog(s) | TheFuzzy | 455 | Visuals |
| Adopted | Persistent Buff Glow Removal | Peasly Wellbott | 141 | Visuals |
| Adopted (optional) | RenoDX — HDR and SDR Fix | Ritsu & Kickfister | 202 | Visuals |

**Rejected (recorded, with reasons)**:
- DirectStorage 1.2.2→1.2.3 IO Stutter Fix (127) — author-marked "[NO LONGER NECESSARY]" (Capcom shipped the fix).
- Disable Lens Distortion (245) — redundant: fully covered by Disable Post Processing Effects (221), which handles lens distortion by default.
- Lite Environment / OGU performance pack (234) — "(End of Support)" per its page.
- Camera Zoom Out More (398) — hidden/unavailable on Nexus (author-removed).
- lingsamuel "cheats" family (Infinity Consumables 77, Free Craft 154, Weapon/Armor Editor 115, Item Editor 114, Artian Editor 196, Lowest HP 82) — violate the no-cheat/no-difficulty-mod policy.
- Item Buff Extender (76), Pause Meal Out of Battle (84) — buff extension = quietly easier game.
- Insect Glaive moveset mods (68/69), Remove Iai Delay (83), Smart Focus Attack (75), Highlight Enemy Scars (67) — weapon/gameplay balance changes outside the four pillars.
- Monster AI overhauls — none exist for Wilds; nothing invented.

## OPEN ITEMS

- Modlist name "Forlorn Oath" — confirm or rename.
- Persona tone: drafted in Wilds flavor; freely revisable.
- When *Ascendance* ships (2027): new version, new mod wave, revisit the whole list.

## CHANGELOG

- 2026-08-11 — Initial scaffold: structure, theme, main.typ, build-pdf.bat, four guide chapters, meta docs. 18 mods verified against live Nexus pages at compile time; PDF built (see output/).
