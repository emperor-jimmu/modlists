# Part 1 — Setup

## 1.1 The Game

**Motorsport Manager** is a deep motorsport management simulation by **Playsport Games** (published by Miniclip), released **9 November 2016** on Steam (App ID 415200). You don't drive the cars — you run the team: hire drivers and staff, design and build the car, sign sponsors, upgrade your headquarters, lobby for rule changes, and call the strategy on race day.

This modlist targets the **final version created for the game**: **Patch 1.6** (released **10 February 2026**). That patch fixed the black-screen-on-boot problem that had appeared on modern systems, updated the engine, and fixed minimap driver positions and several UI issues. It also brought the mod scene back to life — the newest and best mods are built for 1.6.

> **Why Patch 1.6?** The modding community split across the last two game versions. Season mods like the *2026 mod* and car-model packs like the *Single Seater Car Pack* are **1.6-only** — they crash on older versions. Older database series mods (e.g. the *Ultimate F1 Manager Mod Series*) are **1.53-only** — they declare themselves incompatible with 1.6. This guide is built around 1.6, the last version of the game.

## 1.2 Check Your Game Version

1. Open Steam → Library → right-click **Motorsport Manager** → **Properties** → **Betas** (or **Installed Files / Game Version**).
2. The current live branch is **Patch 1.6**. If you see **1.53** selected, switch to the live/default branch (or the 1.6 beta if that is how it is offered in your region).
3. Leave the game fully updated before installing mods.

> Older mods may ask you to roll back to **1.53** via this same menu. **Do not** do that for this modlist — every mod here requires 1.6.

## 1.3 Required DLC

All five DLCs are supported and worth owning; the modlist assumes at least the base game + **Create Your Own Team** (used by several personas):

| DLC | Released | Adds |
|-----|----------|------|
| Livery Pack | 1 Dec 2016 | Extra liveries for base-game teams |
| Create Your Own Team | 23 Feb 2017 | Design your own team from scratch (name, livery, HQ, sponsors, drivers) |
| GT Series | 23 Feb 2017 | A full GT championship layer with GT cars and rules |
| Challenge Pack | 21 Aug 2017 | Hand-crafted challenge scenarios with unique rules |
| Endurance Series | 1 Nov 2017 | Endurance racing: long races, night transitions, multi-driver cars |

## 1.4 Mod Tools

This project manages mods with the tools the Motorsport Manager community actually uses (the *F1M24 Mod Manager* is a tool for *F1 Manager 2024* and does **not** support this game):

### Steam Workshop (primary)
- Most mods install through **Steam Workshop**: open the [Motorsport Manager Workshop](https://steamcommunity.com/app/415200/workshop/), find the mod, and press **Subscribe**.
- After subscribing, launch the game and enable the mod in the **Steam Workshop** tab of the main menu. Some mods must be the **only** one enabled (they replace the game database) — the modlist tells you when.
- Workshop content is stored locally at `...\steamapps\workshop\content\415200\<mod_id>\`. Mods with extra files (like the *2026 mod*) point you into that folder.

### Unity Mod Manager (UMM) — for Nexus plugins
Graphical plugins (Enhanced Graphics, Extended Camera) and Rebirth: Redux-style DLL mods are managed with **Unity Mod Manager**:

1. Download **Unity Mod Manager** (the community standard UMM tool for Unity games).
2. Run it, select **Motorsport Manager** as the game, and point it at your install folder (`...\steamapps\common\Motorsport Manager`).
3. Drop mod archives into UMM's **Mods** tab, or manually place plugin folders in `...\Motorsport Manager\Mods\`.
4. In-game, open the UMM overlay with **Ctrl+F10** to toggle plugin options (e.g. Enhanced Graphics toggles).

### Manual file placement (database swaps)
Some mods replace game data files directly:
- `...\steamapps\common\Motorsport Manager\MM_Data\Resources.assets`
- `...\steamapps\common\Motorsport Manager\MM_Data\Managed\Assembly-CSharp.dll` (logic mods)

**Always back up the original files** before overwriting (copy them to a folder on your desktop). Steam → Properties → Installed Files → **Verify integrity of game files** restores the vanilla state if anything goes wrong.

## 1.5 Mod Hygiene

- **Database mods are mutually exclusive.** A season mod replaces the game's roster/calendar database. Enable exactly **one** season/overhaul mod at a time, and start a **new game** after switching.
- **Never mix 1.53 and 1.6 content.** 1.6-native 3D models crash a 1.53 install and vice versa. Unsubscribe 1.53-only items if you ever roll back.
- **New-game mods apply at career creation.** Most database mods do not affect existing saves.
- **Cosmetic mods are safe mid-save.** Liveries and logos activated in the in-game **Assets** tab can be toggled at any time.
- **Backup saves** before big installs: saves live in `%USERPROFILE%\AppData\LocalLow\Playsport Games\Motorsport Manager\Cloud\Saves`.


# Part 2 — The Modlist

Every mod in this list was **verified live against its Steam Workshop / Nexus Mods page** on 11 August 2026. Nothing here makes the game easier: the list is built to **modernize** (the real 2026 season), **deepen** (smarter, harder management), **improve the graphics** (HD models, modern cars, liveries, logos, post-processing), and **add detail** (real sponsors, flags, track partners, intros).

There are **two profiles** — pick one, they are separate experiences:

| Profile | Experience | Verdict |
|---------|-----------|---------|
| **A — 2026 Season** | The real-world 2026 motorsport season in Motorsport Manager: F1, F2, Eurocup-3, GT-Open, WEC, real calendars, sponsors and intros. | Flagship modernization |
| **B — Rebirth** | Rebirth: Redux — a deep balance and AI overhaul that makes the game noticeably harder and more rewarding. | Deep-dive management |

**Shared graphics** (Enhanced Graphics, Extended Camera) work with both profiles.

---

## 2.1 Profile A — 2026 Season

### A1. 2026 mod — F1 + F2 + Eurocup-3 + GT-Open + WEC *(flagship)*

| Detail | Value |
|--------|-------|
| **Author** | jojorso |
| **Source** | Steam Workshop — [filedetails/?id=3679864343](https://steamcommunity.com/sharedfiles/filedetails/?id=3679864343) |
| **Updated** | 25 Apr 2026 · 2,723 subscribers · ~2.9 GB |
| **Compatibility** | **Patch 1.6 ONLY** — crashes on any other version |
| **Dependencies** | None (bundles an F1 car model from Djangles LeVaughn's pack) |
| **What It Changes** | The biggest modernization available for 1.6. Replaces the game's world with the **real 2026 season**: F1, F2, Eurocup-3, International GT-Open, Iberian SuperCars and WEC championships; real teams, drivers and calendar; real trackside partners (Aramco, DHL, Paramount, Heineken, TAG Heuer); real circuit flags and images; official F1/F2 2026, WEC and Brad Pitt intros; a single-race mode; and three hand-made challenge saves. |
| **Installation** | 1) Subscribe on the Workshop. 2) Optional but recommended — open the mod folder `...\steamapps\workshop\content\415200\3679864343\Extras` and follow the included instructions to install the extra `Resources.assets` / `Championship.txt` files for the full experience (real calendar, intros, single races). **Back up originals first.** 3) Enable the mod in the in-game Steam Workshop tab and start a new game. |

### A2. Motorsport Manager 2026 Season — Vanilla Overhaul Mod *(alternative)*

| Detail | Value |
|--------|-------|
| **Author** | Djangles LeVaughn (with oleksandr_horobets) |
| **Source** | Steam Workshop — [filedetails/?id=3682708186](https://steamcommunity.com/sharedfiles/filedetails/?id=3682708186) |
| **Updated** | 20 Jun 2026 · 1,156 subscribers · ~451 MB |
| **Compatibility** | **Patch 1.6 ONLY** (opt into the 1.6 branch to use it) |
| **Dependencies** | Vanilla Retro/Fantasy Livery Pack (A4) |
| **What It Changes** | A fictional, vanilla-flavored 2026 refresh for players who prefer Motorsport Manager's own world: new regulations, new cars and hybrid systems; WMC and IGTC grow to **11 teams**; IEC gets **10 teams per class**; an updated F2-lookalike grid. |
| **Installation** | 1) Subscribe. 2) Copy the contents of the mod's `MM26_Main_Files` folder (inside `...\steamapps\workshop\content\415200\3682708186\`) into your `MM_Data` folder. 3) In the in-game Workshop tab enable this mod **and** the Vanilla Retro/Fantasy Livery Pack (A4). 4) New game. |

### A3. Djangles LeVaughn's Single Seater Car Pack for 1.6

| Detail | Value |
|--------|-------|
| **Author** | Djangles LeVaughn |
| **Source** | Steam Workshop — [filedetails/?id=3668727211](https://steamcommunity.com/sharedfiles/filedetails/?id=3668727211) |
| **Updated** | 8 Mar 2026 · 2,470 subscribers · ~12 MB |
| **Compatibility** | **Patch 1.6 ONLY** — subscribing on 1.53 crashes the game |
| **Dependencies** | None |
| **What It Changes** | Modernized 3D models for the single-seater classes — the cars look dramatically closer to today's Formula cars than the base-game assets. |
| **Installation** | Subscribe and enable. **Do not** stack it with Profile A1 (which already bundles an F1 model from this pack) — it pairs with the Vanilla Overhaul (A2) path. |

### A4. Vanilla Retro/Fantasy Livery Pack

| Detail | Value |
|--------|-------|
| **Author** | Maian |
| **Source** | Steam Workshop — [filedetails/?id=1249691137](https://steamcommunity.com/sharedfiles/filedetails/?id=1249691137) |
| **Updated** | 13 Jan 2018 · 14,249 subscribers · ~2 MB |
| **Compatibility** | 1.6 OK (database/asset cosmetic) |
| **Dependencies** | None |
| **What It Changes** | 30 retro/fantasy liveries (plus 10 Formula-2-style 2017 liveries) for the vanilla game. Pure cosmetics — activated and toggled in-game in the **Assets** tab, safe on existing saves. |
| **Installation** | Subscribe; enable in-game via the Assets tab. **Not compatible with custom car models** (skip if using car-model mods). Required companion for A2. |

---

## 2.2 Profile B — Rebirth

### B1. Rebirth: Redux

| Detail | Value |
|--------|-------|
| **Author** | Brian (BrianUK) |
| **Source** | Nexus Mods — [motorsportmanager/mods/11](https://www.nexusmods.com/motorsportmanager/mods/11) |
| **Version / Updated** | n23 · 8 Nov 2025 · 87 endorsements · 7,259 downloads |
| **Compatibility** | Current game versions (built for the modern game state; check the mod page/Discord for the latest notes) |
| **Dependencies** | Derivitas (B2) — required for team logos |
| **What It Changes** | The definitive Motorsport Manager overhaul — **more challenge, not less**: the vanilla race AI is replaced with a custom system (desired-lap strategy, attack/defend behavior, weather-aware qualifying, pit-strategy aggression), a new instant-failure reliability model, rebalanced car degradation, and much more. Single Seaters (WMC/APSC/ERS) and Endurance (IEC-A/B) are fully supported; **single-seater races must be run on Long preferences**. |
| **Installation** | 1) Download from Nexus (all 9 files). 2) Paste `Assembly-CSharp.dll` and `Assembly-CSharp-firstpass.dll` into `...\Motorsport Manager\MM_Data\Managed`. 3) Paste `resources.assets` into `...\Motorsport Manager\MM_Data`. 4) Subscribe to Derivitas (B2). 5) Disable all other Workshop mods — Redux is **not compatible** with other mods. 6) New game. |

### B2. Derivitas

| Detail | Value |
|--------|-------|
| **Author** | Derivitas team (Rebirth ecosystem) |
| **Source** | Steam Workshop — [filedetails/?id=3147853996](https://steamcommunity.com/sharedfiles/filedetails/?id=3147853996) |
| **Updated** | 12 Oct 2024 · 1,391 subscribers · ~2 MB |
| **Compatibility** | 1.6 OK (with Rebirth: Redux) |
| **Dependencies** | Rebirth: Redux (B1) |
| **What It Changes** | Rebalanced supplier pool and custom hat/team logos for all Rebirth custom teams, plus fixes for vanilla team logos and custom chairman bodies. **Required** by Redux — without it new teams render with white boxes. |
| **Installation** | Subscribe and keep enabled while running Profile B. |

### B3. Rebirth: Logo Pack

| Detail | Value |
|--------|-------|
| **Author** | The Flaming Red |
| **Source** | Steam Workshop — [filedetails/?id=1188384463](https://steamcommunity.com/sharedfiles/filedetails/?id=1188384463) |
| **Updated** | 6 Nov 2017 · 4,657 subscribers · ~1.6 MB |
| **Compatibility** | 1.6 OK |
| **Dependencies** | Rebirth: Redux (B1) / Derivitas (B2) |
| **What It Changes** | Team logos for the Rebirth rebranding project and supplier logos for the supplier overhaul — completes Profile B's visual identity. |
| **Installation** | Subscribe and enable. |

---

## 2.3 Shared Graphics (both profiles)

### G1. Enhanced Graphics

| Detail | Value |
|--------|-------|
| **Author** | newman55 |
| **Source** | Nexus Mods — [motorsportmanager/mods/3](https://www.nexusmods.com/motorsportmanager/mods/3) |
| **Version / Updated** | v1.2.0a · 5 May 2023 · 817 endorsements · 57,484 downloads |
| **Compatibility** | Current game versions; Unity Mod Manager plugin |
| **Dependencies** | Unity Mod Manager |
| **What It Changes** | The single biggest visual upgrade for the game: HD models for cars and drivers, Subpixel Morphological Anti-Aliasing (SMAA), Temporal Reprojection AA (TRAA), Ambient Occlusion, an alternate Depth-of-Field, and rotating/spinning wheels. |
| **Installation** | Install via UMM (Part 1.4). Toggle individual effects in-game with **Ctrl+F10** (e.g. disable TRAA if you're not at 60 fps). |

### G2. Extended Camera

| Detail | Value |
|--------|-------|
| **Author** | newman55 |
| **Source** | Nexus Mods — [motorsportmanager/mods/1](https://www.nexusmods.com/motorsportmanager/mods/1) |
| **Version / Updated** | v1.0.2 · 15 Jul 2019 · 730 endorsements · 45,442 downloads |
| **Compatibility** | Current game versions; Unity Mod Manager plugin |
| **Dependencies** | Unity Mod Manager |
| **What It Changes** | Adds a free camera (X), sticky camera (C) and hide-UI toggle (H) for race days, plus adjustable zoom and camera-angle limits. You can now watch the racing like a TV broadcast instead of a strategy board. |
| **Installation** | Install via UMM; enable the **expanded camera** option in the game's settings. |

---

## 2.4 Install Order

### Profile A — 2026 Season (flagship)
1. Patch 1.6 confirmed (Part 1.2)
2. **A1 2026 mod** subscribed + Extras files installed (back up originals)
3. **G1 Enhanced Graphics** + **G2 Extended Camera** via UMM
4. Launch → in-game Workshop tab: enable **only** the 2026 mod → New Game

*Alternative (vanilla world):* A2 Vanilla Overhaul + A4 Livery Pack + A3 Car Pack + G1 + G2.

### Profile B — Rebirth
1. Patch 1.6 confirmed
2. **B1 Rebirth: Redux** files placed in `MM_Data\Managed` + `MM_Data` (back up originals)
3. **B2 Derivitas** + **B3 Logo Pack** subscribed
4. **G1 Enhanced Graphics** + **G2 Extended Camera** via UMM *(optional — Redux's "no other mods" rule covers data/logic mods; graphics plugins are render-level, but start a fresh save when testing)*
5. Launch → **disable all other Workshop mods** → New Game, race length **Long**

> Switch profiles cleanly: verify game files (Steam → Properties → Installed Files) to restore vanilla `MM_Data`, then apply the other profile's files.


# Part 3 — How to Play the Modded Game

*Mechanics in this guide describe Motorsport Manager's systems as of Patch 1.6 and how the mods in Part 2 change them. Where a mod changes a rule, it is called out.*

---

## 3.1 Your First Launch (Modded)

1. Confirm **Patch 1.6** (Part 1.2) and that your chosen profile's mods are enabled (Part 2.4).
2. In the main menu, open the **Steam Workshop** tab and verify the correct mod is enabled — exactly **one** database mod.
3. If you installed graphics plugins, open UMM with **Ctrl+F10** and switch on the effects you want.
4. Start a **new game** — database mods only apply to careers created after they are enabled.
5. Optional: check the game settings → **Expanded camera** must be on for Extended Camera to work.

## 3.2 Creating a Career

**Series (tier) selection.** The single-seater ladder has three tiers:

| Tier | Series | Character |
|------|--------|-----------|
| 1 | World Motorsport Championship (WMC) | Top class, biggest budgets, the ultimate goal |
| 2 | Asia-Pacific Super Cup (APSC) | Mid tier — the usual starting point for real careers |
| 3 | European Racing Series (ERS) | Feeder series — small budgets, cheap talent, promotion on offer |

The **GT Series** (DLC) runs alongside with GT cars, and the **Endurance Series** (DLC) adds endurance championships (IEC) with long races, night driving and multi-driver cars. The 2026 mod (Profile A) adds real-world flavor to all of these; Profile B (Rebirth) fully reworks WMC/APSC/ERS and endurance.

**Team choice.** Pick an existing team or use **Create Your Own Team** (DLC). Existing teams have different budgets, facility levels, driver quality and expectations. CYOT lets you design everything: team name, livery, colors, sponsors, drivers, staff and starting facilities — starting from a small budget in the lower tiers.

**Manager background.** A permanent passive bonus — choose deliberately (see Part 4 for persona-matched picks):

| Background | Bonus |
|------------|-------|
| Politico | +4 extra votes per season and free rule proposals |
| Financial | All payments reduced by 5% |
| Ex-Engineer | Part design time reduced by 1 day |
| Ex-Driver | +3 driver feedback; faster driver improvement |
| Unknown | No stated bonus — a mystery roll |

**Chairman expectations.** At contract time you agree season goals (e.g. finish 8th). Set expectations honestly or low: beating them earns sponsor bonuses and reputation; failing them costs you. Re-negotiate at season's end.

## 3.3 The Race Weekend

**Practice.** Your drivers run practice sessions to learn the circuit and build **setup familiarity**. Watch driver feedback on setup sliders (front/rear wing, ride height, etc.) and adjust toward their preferred values — higher-feedback drivers converge faster. Installation laps are cheap setup progress; avoid burning tyres and engine early.

**Qualifying.** Aim for the highest grid slot you can: pace, tyre compound choice and traffic management all matter. Your driver's **form** and car performance set the ceiling; strategy sets the floor.

**Race day.** You watch the race live and call every decision:

- **Per-driver live commands:** pace (push vs. preserve), fuel usage, and tyre aggression — the classic management triangle. Pushing is fast but burns tyres and fuel; conserving is slow but cheap.
- **Tyres:** compounds (soft/medium/hard + wets/intermediates) with different speed and wear. Plan stints; a **pit stop** loses time, so an extra stop must buy more than it costs.
- **Weather:** dynamic forecasts can flip a race — a rain call can win you ten places or cost you the win. Watch the radar and commit early.
- **Overtaking/defending:** order your drivers to attack or hold position relative to specific rivals; manage them through traffic.
- **Pit strategy:** undercut (pit before a rival to get clean air) vs. overcut (stay out while they pit), plus safety-car windows — the AI does the same math, so make better calls.
- **Reliability:** parts wear over a race. In Profile B (Rebirth), a new instant-failure system means worn parts can fail outright — pace management is survival.

**Race weekend result.** Points, prize money, sponsor objectives progress, driver marketability shifts, and the championship table moves. Post-race, media and politics events fire.

## 3.4 Car Development

Your car is built from **eight parts** (engine, chassis, front wing, rear wing, sidepod, suspension, brakes, gearbox), each with its own performance and reliability stats. Between races:

- **Design & build:** design new parts in the design office; parts take time and money to develop, then time to build. Each season brings a **new chassis** — the yearly reset.
- **Factories:** invest in factory levels per part to unlock higher-quality designs and faster build times.
- **Wind tunnel / aero:** aero development is where the top teams pull ahead; facilities multiply your gains.
- **Reliability:** test parts to raise reliability before committing them to race weekends.
- **Development tempo:** in Profile A the 2026 regulations change the part landscape (new cars, new hybrid systems); in Profile B the yearly reset and balancing are reworked — part development is the single biggest lever on race performance in both.

> Early teams: the car is king. A great driver in a slow car finishes behind a mediocre driver in a fast one. Develop parts first, hire drivers second.

## 3.5 People

- **Drivers:** ability, marketability, form, morale and age all matter. Marketability drives sponsor income; ability drives results; morale affects performance. Pay drivers (sponsor-funded seats) trade results for cash — a legit survival strategy for a new team.
- **Staff:** engineers (development), mechanics (pit stops, reliability), designers (part design quality), and scouts (find talent). Hire for key stats, not averages; cheap staff with a couple of 16-20 stats beat balanced mediocrity.
- **Contracts & morale:** renew early, manage expectations, and don't hoard drivers you can't pay. In Profile B the AI and staff systems are deeper — staff choices hurt more when you get them wrong.

## 3.6 Money & Sponsors

- **Sponsor deals:** fixed-fee sponsors (money per race) and objective sponsors (performance/visibility targets). Sign the ones you can actually hit — failing objectives costs reputation and future deals.
- **Marketability:** driver and team marketability determine which sponsors appear. High-marketability drivers unlock the big-money contracts.
- **Helipad:** the famous early-game HQ upgrade — it directly boosts sponsor income and is usually the first serious investment a young team makes.
- **Cash flow:** wages, facilities, and development all drain the bank. In Profile B the supplier economy is rebalanced (via Derivitas) — budgets are tighter and every contract counts.

## 3.7 Headquarters & Facilities

Your HQ is a physical grid of facilities you build and upgrade: design offices, factories per car part, wind tunnel, driving simulator, helipad, gym, media suite, and more. Each facility improves a specific loop (design speed, build speed, aero, driver development, sponsor income, morale). Facilities take time and money — build the ones that match your strategy, not all of them.

## 3.8 Politics & Regulations

Between seasons, the **federation** proposes and votes on regulation changes: rule changes, cost caps, spec parts, calendar changes, refueling bans, and more. You earn votes by results and reputation. A **Politico** background (extra votes, free proposals) turns politics into your main weapon — shape the rules to your car's strengths and your rivals' weaknesses.

## 3.9 DLC Content

- **GT Series:** a parallel GT championship — different cars, driver requirements, and sponsor pool. A good second career or a change of pace.
- **Endurance Series:** long races (6/12/24-hour style), **day/night cycles**, multiple drivers per car, driver-stint management and pit-crew choreography. Profile B reworks endurance AI too.
- **Challenge Pack:** hand-crafted scenarios with unusual rules. Profile A's 2026 mod adds three of its own challenges (Williams' burned design centre, Mercedes' illegal engine, Esteban's Eurocup-3 shot) — find them in the mod's Extras folder and drop them into `...\LocalLow\Playsport Games\Motorsport Manager\Cloud\Saves`.

## 3.10 Profile-Specific Play Notes

**Profile A (2026 mod):**
- Start the career and enjoy the real 2026 grid — watch the official F1/F2/WEC intros on launch.
- Use the Extras-installed **single-race mode** to run one-off races at any circuit without a career.
- Promotions between single-seater series are **disabled by default** (enabled in GT/WEC); the Extras instructions show how to turn them on if you want them.
- The mod ships an **alternative calendar** with the Middle East rounds removed — swap `Championship.txt` if you prefer it.
- The three bundled challenge saves require the mod's `Resources.assets` installed and **only** this mod enabled.

**Profile B (Rebirth: Redux):**
- Single-seater weekends must run on **Long** race preference — change it before launching the weekend.
- Expect to lose races you "should" win. Redux AI picks smarter stints, attacks at the right moments and punishes sloppy tyre calls.
- Reliability is now an active risk: pace management is part of race craft, not an afterthought.
- Do **not** use the save editor, and do not enable other Workshop mods on this profile.

## 3.11 Troubleshooting

| Symptom | Likely cause | Fix |
|---------|--------------|-----|
| Black screen on boot | Pre-1.6 engine bug | Update to Patch 1.6 (this is exactly what the patch fixed) |
| Crash to desktop on 1.6 | A 1.53-era mod is installed (3D models are version-locked) | Unsubscribe/disable 1.53 mods; keep only 1.6-native content |
| Crash on 1.53 after subscribing to a 1.6 mod | Subscribed to 1.6-only content while on 1.53 | Roll forward to 1.6 or unsubscribe the 1.6 items |
| White boxes for team logos (Profile B) | Derivitas not subscribed | Subscribe B2 Derivitas |
| Mod "does nothing" | Database mod enabled after career creation | Start a new game |
| Weird saves after switching profiles | Mixed `MM_Data` files | Verify integrity of game files, re-apply the profile's files, use the right save |
| UMM overlay missing (Ctrl+F10) | UMM not installed for this game | Re-run Unity Mod Manager installer against the game folder |

**Backups are your safety net:** copy `MM_Data` (and your saves) before installing any file-replacement mod.


# Part 4 — Choose Your Persona

Six playable manager archetypes. Each comes with a **background story** and the **exact game-creation choices** that bring it to life (manager background, series, team, people, money, politics). Personas work with either mod profile — notes call out where the mods change the story.

---

## Persona 1 — The Fixer *(Financial)*

**Background.** Your name was on the audit that found the missing millions at a collapsed energy conglomerate. The payout bought you a bankrupt race team at auction — chassis, debts, and a paddock that laughs at you. You didn't come here to win races. You came here to make the numbers work, and winning is just the most profitable way to do it. You know exactly what every part, every driver, and every sponsor deal is worth — and what the seller *thinks* it's worth.

**Game creation choices**

| Decision | Choice |
|----------|--------|
| Manager background | **Financial** (5% off all payments — your whole edge) |
| Series | **ERS** (Tier 3) — smallest entry cost, biggest relative upside |
| Team | **Create Your Own Team** — name it something corporate; bland is a feature |
| Drivers | Two **pay drivers**, high **marketability**, low wages; ability second |
| Staff | Cheap, underrated staff with one or two elite stats; a bargain-bin designer |
| Money | Sponsor-first: chase objective deals you can hit, sign fixed-fee deals, **helipad first** |
| Facilities | Helipad → design office → factory; nothing you can't pay for in cash |
| Politics | Neutral — vote only when it protects the budget (cost caps, spec parts) |

**How to play.** You are a financial engineer, not a team principal. Low expectations (chairman: last place), overperform by three positions, bank the bonuses, reinvest everything in facilities, and climb one tier per season. When the team is profitable, the winning is a side effect.

---

## Persona 2 — The Whip *(Politico)*

**Background.** You spent fifteen years in the federation's corridors — rulebooks, committees, and quiet favors. You never ran a team, but you know exactly where every regulation was born and who wrote it. The board hired you because the team keeps losing on track and you keep winning in meetings. Your weapon is not the car: it is the vote. Rule changes are just policy proposals, and you are very good at proposals.

**Game creation choices**

| Decision | Choice |
|----------|--------|
| Manager background | **Politico** (+4 votes, free proposals — your whole edge) |
| Series | **APSC** (Tier 2) backmarker, or CYOT in ERS if you want the long game |
| Team | A struggling existing team with a weak car — so you *need* rule changes |
| Drivers | A young, improving driver with upside; sign them long and cheap |
| Staff | Aero-heavy design staff — your rules will make aero king |
| Money | Mid-size sponsor deals; you survive on votes, not cash |
| Facilities | Wind tunnel and aero facilities first |
| Politics | **This is your game.** Propose rules that neuter the dominant cars: spec engines, aero restrictions, refueling bans, cost caps. Vote, horse-trade, repeat |

**How to play.** Your first season is about learning the rules engine. Find the one regulation that kills the front-runners' advantage, push it through, and watch the field compress. When the championship is decided by regulations instead of budgets, you win. (Profile A's 2026 mod adds new real-world series and regulations to weaponize; Profile B's harder AI punishes you if the politics are all you have — bring pace too.)

---

## Persona 3 — The Aero Head *(Ex-Engineer)*

**Background.** You were the quiet genius in a wind tunnel — the one who found a second per lap in a front-wing endplate. Then the project was cancelled, the team folded, and your name was in the redundancy letter. A small team with no money and no reputation hired you because you were the only engineer who said yes. You don't care about the paddock. You care about the **numbers on the parts**.

**Game creation choices**

| Decision | Choice |
|----------|--------|
| Manager background | **Ex-Engineer** (parts design 1 day faster — your whole edge) |
| Series | **ERS** (Tier 3) or APSC — you'll develop your way up |
| Team | Existing bottom-half team; avoid teams with broken facilities |
| Drivers | Reliable, consistent drivers — the car will do the winning |
| Staff | The **best designer you can afford**; a strong engineer; minimal everywhere else |
| Money | Long-horizon fixed sponsors; minimal frills |
| Facilities | Factories + **wind tunnel** as fast as cash allows; design office early |
| Politics | Support spec-part proposals only when they hurt rivals' aero |

**How to play.** Part development is the entire game. Design early, design often, bank the reliability, and let the yearly chassis reset reward your factory network. You win by being one development cycle ahead of everyone — every part you ship first is points on the board. In Profile B, the rebalanced development curve makes your factory timing even more decisive.

---

## Persona 4 — The Paddock Ghost *(Ex-Driver)*

**Background.** You won championships — then the phone stopped ringing. Age took your reflexes, and the sport moved on. But you know something the spreadsheet kids don't: you know what a car *feels* like. The team that hired you took a chance on a has-been; they got a principal who can read a setup sheet like a race report and grow a rookie into a weapon. The driving career is over. The racing career isn't.

**Game creation choices**

| Decision | Choice |
|----------|--------|
| Manager background | **Ex-Driver** (+3 feedback, faster driver development — your whole edge) |
| Series | **GT Series** — your racing instincts and setup feel fit GT best |
| Team | CYOT GT team, or an existing GT midfield team |
| Drivers | **Young, raw talent** — two rookies you'll develop into stars |
| Staff | A top **driver coach**; mechanics that keep cars reliable for long stints |
| Money | Sponsor deals tied to driver visibility — your young guns are the product |
| Facilities | Driving simulator + gym (driver development), then factory |
| Politics | Quiet — you race, you don't lobby |

**How to play.** You extract speed from drivers, not parts. Set up the car to the driver's feedback, run practice laps that maximize learning, and let your pair grow race after race. In endurance races, your stint management and driver rotation are where you beat the data boys. (Profile B's Redux makes driver mistakes costly — your feedback edge becomes a survival tool.)

---

## Persona 5 — The Unknown *(Mystery)*

**Background.** No one knows who you are. The team's accounts show a numbered company, a lawyer, and a wire transfer. Rumors say an exiled oligarch, a disgraced champion, a data-leak billionaire — you let them talk. The only thing the paddock agrees on is that the new principal has **no obvious background at all**, and that is exactly how you like it. The advantage you have is the one no one can see.

**Game creation choices**

| Decision | Choice |
|----------|--------|
| Manager background | **Unknown** — the mystery roll; take whatever fortune gives you |
| Series | **ERS** (Tier 3) — start small, stay mysterious |
| Team | **Create Your Own Team** — invent your own history |
| Drivers | Whatever the market gives you cheap; scout aggressively |
| Staff | Scout-first: find the hidden gems nobody else has scouted |
| Money | Whatever deals you can get; adapt to your mystery bonus |
| Facilities | Balanced — see what the bonus reveals about your "natural" path |
| Politics | Opportunistic — vote with whoever offers the best deal |

**How to play.** Embrace the chaos. Your background bonus is a surprise — discover it, lean into it, and keep your options open. This is the replayability persona: every career starts with a different hand. If the first roll doesn't fit, start again — the Unknown is the only persona where the dice are the point.

---

## Persona 6 — The Long Game *(Endurance Specialist)*

**Background.** You spent a decade as a sportscar team boss — 24-hour races, night stints, drivers who could double-stint tyres blindfolded. When the endurance scene collapsed, you moved the whole operation into the world championship paddock. Everyone else is playing a sprint season. You are playing **the longest race on the calendar**, and you have been training for it your entire life.

**Game creation choices**

| Decision | Choice |
|----------|--------|
| Manager background | **Ex-Driver** (feedback + driver growth) — you race with your drivers |
| Series | **Endurance Series (IEC)** — this is your home turf |
| Team | CYOT endurance team or an existing endurance squad |
| Drivers | A **three-driver rotation** per car: one ace, one fast youngster, one reliable anchor |
| Staff | Elite mechanics (pit stops win endurance races); strong engineers |
| Money | Endurance-friendly sponsors (long-race objectives you'll actually meet) |
| Facilities | Reliability & pit facilities; gym for driver stamina |
| Politics | Keep the endurance calendar rich; block endurance-killing regs |

**How to play.** Endurance is a different sport: manage the night, the stints, the double-stints, and the driver rotation. Build reliability before speed — a car that finishes wins. When the sun comes up and the field is half-broken, your cars are still circulating: that is the Long Game. (Profile B's Redux reworks endurance AI with the same depth as single-seaters — your pit-crew and stint discipline are tested hardest there.)

---

## Persona Quick Reference

| Persona | Background | Series | Edge |
|---------|------------|--------|------|
| The Fixer | Financial | ERS / CYOT | Money: 5% off everything |
| The Whip | Politico | APSC | Rules: votes & proposals |
| The Aero Head | Ex-Engineer | ERS / APSC | Parts: 1 day faster design |
| The Paddock Ghost | Ex-Driver | GT | Drivers: feedback & growth |
| The Unknown | Unknown | ERS / CYOT | Surprise roll |
| The Long Game | Ex-Driver | Endurance | Endurance craft & reliability |