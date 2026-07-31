# Aetherbound STATUS

## Decisions Made
- [2026-07-31] **Frackin Universe adopted as anchor mod.** *Reasoning:* User directive. FU is the central mod around which the entire list is built.
- [2026-07-31] **OpenStarbound adopted as hard requirement.** *Reasoning:* 10+ mods in the collection require OSB's Lua API. OSB also fixes vanilla bugs and improves performance. Functions like SKSE for Skyrim.
- [2026-07-31] **Single-wave structure.** *Reasoning:* FU is a one-way trip — no "Wave 0" vanilla experience possible. Replaced with a single modlist + a "Getting Started" primer.
- [2026-07-31] **Elithian Races and Avali (Triage) adopted.** *Reasoning:* Well-established race mods with FU patches. Save-dependent, but FU already makes this a one-way commitment.
- [2026-07-31] **Two-wave structure (superseded).** Replaced by single-wave design on 2026-07-31.
- [2026-07-31] **Typst for PDF generation.** *Reasoning:* Modern, fast, professional. No markdown conversion needed.
- [2026-07-31] **Cross-review of ShyDispatch Starbound Starburst Pack (3678371749) completed.** *Reasoning:* 96 mods adopted across all categories, 18 rejected as FU-incompatible or Starburst-dependent. Major content gains: Arcana, K'Rakoth, Shellguard, Project Irisil, Galactic Dungeons. New races: Saturnians, De'nelaun, Scyphojel, NostOS. Key QoL adds: Lagless Pixel Printer, Compact Crafting, Planet Search, Improved Swim Physics.
- [2026-07-31] **Cross-review of Dreaming Worlds [oSB] (3676294110) completed.** *Reasoning:* 76 mods adopted across all categories. New OSB-native category: OpenUI, Cumulative Dynamic Lights, Bloom/Far Bloom shaders, Is this Printable?, OCD Tooltip Fix. Major content: Project Redemption, LostBound, Voided, Overgrown Planets, Super Dungeon Pack. New races: Neki, SpaceKidds, Sergal, Lucario, Futara's Dragon, Argonian, Mechit, Expie, Novali. Expanded Avali ecosystem: Avali Plus, ACS, Colorful Fluff, Avali Objects+.
- [2026-07-31] **Steam Workshop as primary mod source.** *Reasoning:* Largest Starbound mod collection.
- [2026-07-31] **SBMM by korsir as mod manager.** *Reasoning:* User-specified.
- [2026-07-31] **H2 for mod categories, H1 for prose chapters.** *Reasoning:* Avoids unwanted page breaks. Template controls layout.
- [2026-07-31] **Text labels (TIP/CONCEPT/WARNING) instead of emoji in callouts.** *Reasoning:* Emoji font coverage unreliable in PDF.
- [2026-07-31] **--font-path in build script.** *Reasoning:* Ensures bundled fonts load regardless of system state.

## Adopted Mods (234 total)

### Foundations (4 → 10)
- Starbound Patch Project (1543219534)
- Anter583's Utility Library (2144215143)
- Smart drops objects (3720232044)
- Bench Platform Collision (3377663311)

### UI & QoL (20)
- Extended GUI (729426797)
- Extended Songbook (729427264)
- Food Stack (729427436)
- Enhanced Storage (731220462)
- [OSB] Enhanced Storage Cumulative Patch (3432475751)
- Alternative Mods Menu Button (744929741)
- What Menu? (1421523226)
- More Planet Info (1117007107)
- [More Planet Info] 1.4 Quest Marker Fix (1772643711)
- Frackin Universe: More Planet Info Official Patch (2141522956)
- Flight Path (3698077233)
- Redone Ship Encounters (1974816168)
- Frackin Interface (1264107917)
- Frackin Stations Interface (1988654567)
- [OSB] Universal Instant Crafting (3251274439)
- [OSB] Automatically Scan Objects! (3545869822)
- MM Keybinds [OpenSB] (3266061335)
- Save Inventory Position [OpenSB] (3331093074)
- [OSB] [FU] Space Station Terminal Quick Sell (3723886096)

### Graphics (8)
- nuggubs' Vanilla Texture Tweak Pack (3242163103)
- nVTTP - Mod Compat Patch (3277732237)
- TV's Story Resprites (3630819794)
- TV's Neo Peacekeeper Uniform (3637990388)
- Racial AI Restorer (729801206)
- Outpost Nebula - Pillars of Creation (957095453)
- Taehl's Teleport Beams (1301992771)
- Eld'uukhar flight icon replacement (2863590234)

### Audio (2)
- Frackin Music (729492703)
- Outpost Music Replacer - Tranquility Base (1826459917)

### Races (9)
- Elithian Races Mod (850109963)
- Elithian Races: FU Patch (1429652829)
- FU - Elithian BYOS Ships (2375270402)
- Avali (Triage) Race Mod (729558042)
- FU + Avali Triage Patch (2052758462)
- Avali Restored Tunics (1778990370)
- Avali SpecOp Armor (738313096)
- avali camps on frackin planets (1432794738)
- Crafting Menu AvaliDebloat (3048481945)

### Content (6)
- Frackin Universe (729480149) — anchor
- Miniknog Rearmed (2435665276)
- Anom's Outpost Overhaul (2468903056)
- Anom's Outpost Overhaul - Scrap Vendor Addon (2478120319)
- Anom's Outpost Overhaul - Gunsmith Shop Addon (2478119400)
- More Outpost Objects (1635522739)

### Mechanics (5)
- Omnicrafter! (2844996935)
- [OSB] Wall-Mounted Omnicrafter (3488372244)
- Better Crew (3031599475)
- Universal Wardrobe (3492414889)
- Recipe Adjustment: Campfire to Kitchen (756729190)

### Ships (3)
- [OSB] Universal BYOS Patcher (3648814036)
- [OpenSB] Ztarbound S.A.I.L. All-in-One Race Support (3506162421)
- More Teleportz (1543782525)
- Mech Overhaul (3433865946)
- Station Upgrade Modules! (3241437922) — ⚠ UNVERIFIED: verify FU station compatibility

### Building (1 → 10)
- Plushbound (2959854988)
- Growing Trays! (3249050332)
- Placeable Dynamic FTL Drive (1447161091)
- Better Logs (2757262238)
- Natural Stone (2757262169)
- Transluscent Paper Screen Walls (3296575118)
- Compact Colony Deeds (2832774002)
- Compact Avali Colony Deeds (2869908047)
- Compact Elithian Colony Deeds (2869908370)

## Cross-Review Adoptions — ShyDispatch Starbound Starburst Pack (96 added)

### [2026-07-31] Cross-review of ShyDispatch Starbound Starburst Pack completed.
**Source:** https://steamcommunity.com/sharedfiles/filedetails/?id=3678371749
**Result:** 96 mods adopted, 18 rejected as FU-incompatible or Starburst-dependent.

### Foundations (+3)
- OmeLib (2875423997)
- Fixed Critters (2809593202)
- Bug Spawn Improvement (2557634814)

### UI & QoL (+16)
- Lagless Pixel Printer! (3256653058)
- Compact Crafting! (3276508903)
- Auto Trash (2842172286)
- Planet Search (3031798952)
- [OSB] Unde Venis (3230765544)
- Extended Teleportation Dialog (2223497181)
- Collection numberer (3309982462)
- Hoarder's Inventory (3313741619) — ⚠ FRESH CHARACTERS ONLY
- Infiniter Inventory (3290989094)
- Stardust Core Lite (3010521475)
- [OSB] Beta Hotbar! (3248499283)
- Classic Quickbar (3010595372) — pick one: Beta Hotbar OR Classic Quickbar
- Skippable Cinematics (730116342)
- No Tech Quest (729773412)
- Skippable Mech Quest (3065492221)
- tech ui highlight fix but good (3357067478)
- Hiraki Corale Codex Tab (2109841611)

### Graphics (+30)
- Dramatic Terrain (3221803906)
- Tanz Lighting Overhaul (796477658)
- [OSB] Light Limiter (3365188864)
- Dramatic Deaths (2986846832)
- Community Clothing Gathering (2959932529)
- Outpost NPC Preserver (3342129736)
- Fixed Helmets (2524165788)
- Smaller Helmets (3002492771)
- Familiar Faces Sail (2995384363)
- Beta Caretaker (2961662814)
- Glitch Lights Full Bright (2440033332) — requires Futara's Full Bright Shader
- Armor Lights Full Bright (2990758782) — requires Futara's Full Bright Shader
- NostOS Full Bright (3271347905) — requires Futara's Full Bright Shader
- Snuggets Glow (2869836388)
- Slimeblock Fix (2892903717)
- bomb resprite (3297672690)
- Coherent Sandstone Statues (3301035634)
- Less ugly planet cores (2900510981)
- Remixed Star Names (2852455237)
- no green teleport glow (2797853231)
- (TanzLO) Dark Player Aura (2426884369)
- No Highlights On Inspected Objects (1764614999)
- Ship Teleporter Deflicker (3292348201)
- Removed Hit Indicator (3192512369)
- Removed Healing Particles (3192513463)
- Novakid+ Respawn (3314136480)
- nuggubs' Mega Mod - Vanilla Tweaks (3259474764) — conflicts with Vanilla+; pick one

### Audio (+1)
- Avali sounds (2971968578)

### Races (+11)
- SP Race Extender (3034688280)
- OmeLib (2875423997) — library, also in Foundations
- Race Traits (2875442705)
- The Saturnians (2422986190)
- The Nomadic De'nelaun (2875406781)
- Scyphojel, Space Jellyfish! (2868908590)
- The NostOS Race (2875413382)
- Improved Avali Colors (3005344858)
- Alternative Avali Head (3262126439)
- Avali Sprite Fix (3186146100)
- Avian Tipped Hair (2946573701)
- Nuu Descriptions (3253573535)

### Content (+13)
- Arcana (2359135864)
- K'Rakoth Mod (2761528375)
- Shellguard: Starbound Expansion Remastered (1590588444)
- Project Irisil (2912817589)
- Galactic Dungeons (1890395068)
- GyroJets! (2968046825)
- More NPC Ships (2836719652)
- Neb's Snails! (3126981954)
- Less Dead Moons - Moon Dungeons (3013176449)
- Story Disabler (2803873905)
- Novakid Codices (2109845614)
- The Bookstore (2464486703)
- Hiraki Corale's Book Store (3271725764)

### Mechanics (+11)
- Improved Swim Physics! (3280376138)
- Melee Aiming (2201034764)
- Swap Augments! (3251467535)
- Combinable Augments (3075840777) — ⚠ verify no FU augment system overlap
- EPP Effect Extractor (3127973707)
- Upgraded Upgrades (2606292468)
- Essential Vanilla Crafting Stations (2856695667)
- Lexi's Automation (3468785533)
- Enable Monster Special Attacks Revise (2957696214)
- Space Enemy Health Reduction (3005344858)
- Mech Overhaul (3433865946) — listed in Ships
- Station Upgrade Modules! (3241437922) — ⚠ listed in Ships, verify FU station compat

## Rejected Mods
- **[Enhanced Storage Simplified](https://steamcommunity.com/sharedfiles/filedetails/?id=3430660057):** Redundant — Enhanced Storage with the [OSB] Cumulative Patch provides the same benefit.
- **[More Planet Info - FU Patch (old)](https://steamcommunity.com/sharedfiles/filedetails/?id=1639501560):** Superseded by the official FU team patch (2141522956).
- **[Remnants of the Protectorate (0.1.1)](https://steamcommunity.com/sharedfiles/filedetails/?id=3670091917):** Pre-alpha (v0.1.1). Too early-stage for a curated modlist. Revisit when stable.
- **[Remnants Addon: Assorted Crew Changes](https://steamcommunity.com/sharedfiles/filedetails/?id=3670172245):** Depends on rejected Remnants of the Protectorate.
- **[Remnants x Better Crew Patch](https://steamcommunity.com/sharedfiles/filedetails/?id=3677854700):** Depends on rejected Remnants of the Protectorate.
- **I Want to Drive That Van series (×4):** Joke mods. Not appropriate for a curated modlist.
- **[Drop pixels on death](https://steamcommunity.com/sharedfiles/filedetails/?id=3350355857):** Reduces death penalty — against the "no cheating" rule.
- **[Gardenbot2: Reboot Edition](https://steamcommunity.com/sharedfiles/filedetails/?id=729428280) + MP Friendly:** Skipped per user decision.
- **[Player Voice](https://steamcommunity.com/sharedfiles/filedetails/?id=2608061089):** Dropped per user decision.
- **[The Eld'uukhar Speak!](https://steamcommunity.com/sharedfiles/filedetails/?id=3543183658):** Dropped per user decision.
- **[Hop On Shops](https://steamcommunity.com/sharedfiles/filedetails/?id=960708990):** Dropped per user decision.
- **[$99.99 Blocks](https://steamcommunity.com/sharedfiles/filedetails/?id=1474034898):** Dropped per user decision.

### ShyDispatch Cross-Review Rejections (18)
- **[Betabound: Vanilla Expanded!](https://steamcommunity.com/sharedfiles/filedetails/?id=729561416):** FU-incompatible. FU already expands vanilla systems — Betabound directly overlaps.
- **[Vanilla Crafting Menu (Betabound)](https://steamcommunity.com/sharedfiles/filedetails/?id=3251097480):** Only relevant with Betabound.
- **[Maple32](https://steamcommunity.com/sharedfiles/filedetails/?id=2422986190):** Major biome mod — FU has its own world generation. Likely conflicts.
- **[Many Tabs](https://steamcommunity.com/sharedfiles/filedetails/?id=1119086325):** FU has its own crafting tab system. Overlap likely.
- **[Oceanic world caves Reworked](https://steamcommunity.com/sharedfiles/filedetails/?id=2897241973):** FU has its own ocean cave generation.
- **[Project Ancient Cosmos](https://steamcommunity.com/sharedfiles/filedetails/?id=2875417483):** Endgame overhaul — directly overlaps with FU's precursor/elder endgame content. High conflict risk.
- **[The Starforge v1.1.5](https://steamcommunity.com/sharedfiles/filedetails/?id=2800856948):** Adds dungeons/monsters that may conflict with FU worldgen. Save-corrupting on uninstall — high risk.
- **[LR's Storage Dimension](https://steamcommunity.com/sharedfiles/filedetails/?id=3272904716):** Known item-disappearance bug documented by author. Too risky for curated list.
- **[Starry Planets: LEGACY](https://steamcommunity.com/sharedfiles/filedetails/?id=2875413646):** Legacy version — likely superseded or incompatible.
- **[Disable Maple 32 Diseases](https://steamcommunity.com/sharedfiles/filedetails/?id=2837749278):** Maple32-dependent.
- **[M32 Shut Up, Bees!](https://steamcommunity.com/sharedfiles/filedetails/?id=3339256655):** Maple32-dependent.
- **[No Lunar Uranium (Betabound + Starburst Rework)](https://steamcommunity.com/sharedfiles/filedetails/?id=3640808003):** Starburst/Betabound-dependent.
- **[No Rubium Transmutation (Betabound)](https://steamcommunity.com/sharedfiles/filedetails/?id=3640809457):** Betabound-dependent.
- **Many Tabs patches (Arcana, K'Rakoth, Maple32, etc.):** Many Tabs-dependent.
- **[Cosmosburst Add-On](https://steamcommunity.com/sharedfiles/filedetails/?id=2891463549):** Requires Project Ancient Cosmos + Starburst (both rejected).
- **[Starburst Rework Moderate Hazards](https://steamcommunity.com/sharedfiles/filedetails/?id=3217701824):** Starburst-dependent.
- **[Infinite Express Sells Mild Hazard Protection](https://steamcommunity.com/sharedfiles/filedetails/?id=3444680723):** Starburst-dependent.
- **Break Room Is Kil:** Maple32-dependent.

## Source Collection
- **Reference 1:** [Starbound: Frackin' Universe Edition](https://steamcommunity.com/sharedfiles/filedetails/?id=3418162394) by Zenny (73 mods, last updated 2026-07-08)
- **Reference 2:** [ShyDispatch Starbound Starburst Pack](https://steamcommunity.com/sharedfiles/filedetails/?id=3678371749) by ShyDispatch (~144 mods)
- **Reference 3:** [Dreaming Worlds [oSB]](https://steamcommunity.com/sharedfiles/filedetails/?id=3676294110) by Unknown (411 mods)
- **Adopted from Zenny:** 57 of 73 mods
- **Adopted from ShyDispatch:** 96 of ~122 unique mods (18 rejected: FU-incompatible or Starburst-dependent)
- **Adopted from Dreaming Worlds:** 76 of 411 mods (~335 rejected as FU-incompatible, Starburst-dependent, trivial, meme, or already adopted)
- **Total adopted:** 234 mods

## Open Questions
- **SBMM exact GitHub URL?** TBD during research.
- **Remnants of the Protectorate — revisit when stable?** Check again after v1.0 release.
- **Adult content mods?** Section reserved but unpopulated. User to decide direction.

## Version Notes
- Target: Starbound 1.4.4 (August 2019)
- Engine: OpenStarbound (separate install, requires copying packed.pak)
- SBMM version: TBD
- Typst version: 0.15.1
