# Foundations and Compatibility

---

## Core Framework Baseline

Install all core libraries and frameworks upfront — they are non-negotiable dependencies for virtually every mod in the list. Bulk-install prevents missing-master errors and lets every subsequent section work against the real framework stack.

### SKSE & Scripts
- **SKSE64** — Script extender; required by almost every SKSE plugin. [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/30379)

### Core Libraries
| Mod                                                                                                 | Purpose                                                                                   |
|-----------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------|
| [Address Library for SKSE Plugins](https://www.nexusmods.com/skyrimspecialedition/mods/32444)       | Universal SKSE plugin compatibility layer for 1.6.1170.                                   |
| [USSEP](https://www.nexusmods.com/skyrimspecialedition/mods/266)                                    | Foundational record patch. Requires the four free CC masters — no paid AE Upgrade needed. |
| [SSE Engine Fixes](https://www.nexusmods.com/skyrimspecialedition/mods/17230)                       | Critical engine-level stability and bug fixes.                                            |
| [SSE Display Tweaks](https://www.nexusmods.com/skyrimspecialedition/mods/34705)                     | Mandatory display and frame-pacing control.                                               |
| [Scrambled Bugs](https://www.nexusmods.com/skyrimspecialedition/mods/43532)                         | Collection of low-level engine tweaks.                                                    |
| [powerofthree's Tweaks](https://www.nexusmods.com/skyrimspecialedition/mods/51073)                  | SKSE plugin tweak framework; hard dependency for many modern mods.                        |
| [powerofthree's Papyrus Extender](https://www.nexusmods.com/skyrimspecialedition/mods/22854)        | Extended Papyrus scripting functions.                                                     |
| [PapyrusUtil](https://www.nexusmods.com/skyrimspecialedition/mods/13048)                            | Papyrus array/map utilities.                                                              |
| [JContainers](https://www.nexusmods.com/skyrimspecialedition/mods/16495)                            | JSON data storage for Papyrus.                                                            |
| [Keyword Item Distributor (KID)](https://www.nexusmods.com/skyrimspecialedition/mods/55728)         | Distributes keywords to items without patching.                                           |
| [Spell Perk Item Distributor (SPID)](https://www.nexusmods.com/skyrimspecialedition/mods/36869)     | Distributes spells/perks to NPCs dynamically.                                             |
| [Base Object Swapper (BOS)](https://www.nexusmods.com/skyrimspecialedition/mods/60805)              | Swaps base objects via rules without direct overrides.                                    |
| [Crash Logger SSE AE VR](https://www.nexusmods.com/skyrimspecialedition/mods/59818)                 | Crash dump logging for diagnosing CTDs.                                                   |
| [SkyPatcher](https://www.nexusmods.com/skyrimspecialedition/mods/106659)                            | SKSE-based vanilla record patcher; hard requirement for several NPC/AI mods.              |
| [Dual Casting Fix](https://www.nexusmods.com/skyrimspecialedition/mods/92454)                       | Required by Blade and Blunt.                                                              |
| [Andrealphus' Papyrus Functions](https://www.nexusmods.com/skyrimspecialedition/mods/85252)         | Required by Dragon War.                                                                   |
| [ConsoleUtilSSE NG](https://www.nexusmods.com/skyrimspecialedition/mods/76649)                      | Required by Dragon War and several animation behavior mods.                               |
| [Kris's Papyrus Extender](https://www.nexusmods.com/skyrimspecialedition/mods/115164)               | Required by Bathing in Skyrim - Renewed.                                                  |
| [Animation Queue Fix](https://www.nexusmods.com/skyrimspecialedition/mods/82395)                    | Animation-stack stability for heavy OAR/behavior loads.                                   |
| [Papyrus Tweaks NG](https://www.nexusmods.com/skyrimspecialedition/mods/77779)                      | Script-engine performance optimization; widely adopted baseline.                          |
| [Lexicon SKSE](https://www.nexusmods.com/skyrimspecialedition/mods/153176)                          | Required by Actor Value Generator.                                                        |
| [Actor Value Generator](https://www.nexusmods.com/skyrimspecialedition/mods/84743)                  | Required by Classic Attributes.                                                           |
| [XEMI Utility](https://www.nexusmods.com/skyrimspecialedition/mods/159084)                          | Required by FYX - Nordic Doors and Traps Collisions.                                      |
| [Sonders Keyword Distribution Resources](https://www.nexusmods.com/skyrimspecialedition/mods/93995) | Keyword distribution framework for item/keyword tagging.                                  |
| [Skyrim Save System Overhaul 3 (SSSO3)](https://www.nexusmods.com/skyrimspecialedition/mods/122343) | Save-system replacement with Save Shield, rotating caps, and safe timed hardsaves. Requires `JContainers SE` + `NL_MCM`. |
| [Unofficial Skyrim Modder's Patch - USMP SE](https://www.nexusmods.com/skyrimspecialedition/mods/49616) | Modder-side patch collection fixing record-level bugs across DLC and CC content. Complements USSEP. |
| [USMP - Patch Emporium](https://www.nexusmods.com/skyrimspecialedition/mods/50813) | Centralized patch hub for USMP — third-party compatibility patches for various content mods. Install after USMP base. |
| [Object Impact Framework (OIF)](https://www.nexusmods.com/skyrimspecialedition/mods/149484) | Physics-based object impact system; prerequisite for several immersion/destruction mods. |

### USMP Patch Emporium — File Selection

**Download:** the **Main Files** `USMP Patch Emporium.7z` (v1.3.34) only — the FOMOD is the complete consolidated archive. The `.rar` main-file twin is the identical content in a different format (fallback if 7-Zip fails). Skip all Update, Optional, Miscellaneous, and Old files: their patch targets (Oblivionified Interaction Icons, Roleplaying in Skyrim race overhaul, Apprentice, Mannaz, FK's DRS, CACO, Nightmare Night, Requiem, Apachii Divine Elegance, Ravenrock overhaul, giant changes) are not in this list.

**FOMOD selections — install patches for these targets only** (verified against `ModuleConfig.xml`; each entry's `.esp` dependency gates it to `Recommended` only when that plugin is installed):

| FOMOD step | Selection | Why |
|---|---|---|
| Base install (step 1) | **USMP base v2.6.6** — `Required` | Always installs. |
| Racial Plugins | *(none)* | Races of Tamriel, Palladium, Mannaz, YASH, SkyRem, etc. — none installed. Race baseline is Aetherius (own step below). |
| Aetherius v2.14.1 combination patches | **`Aetherius-A Race Overhaul`** only | Aetherius locked (→ [Race Overhauls](modlist-expanded-character.md)). FK's DRS, Left Hand Rings, Racial Body Morphs not installed — pick the plain patch, not the combos. |
| Imperious / Disparity combos | *(none)* | Imperious and Disparity rejected (EnaiRim/vanilla-plus direction). |
| Other combination patches | *(none)* | Left Hand Rings, Mannaz, Racial Passives not installed. |
| Skeletons and Mannequins | *(none)* | FK's DRS, RBM, mannequin variants not installed. |
| Other Patches — Dialogue | **`Guard Dialogue Overhaul or Redux`**, **`Relationship Dialogue Overhaul`** | GDO adopted (→ [NPC Dialogue](modlist-npcs.md)); RDO locked (→ [Followers](modlist-expanded-followers.md)). The GDO row appears when `Guard Dialogue Overhaul.esp` is active and WACCF is not. |
| Other Patches — select any | **`AI Overhaul`**, **`Legacy of the Dragonborn Ver 6.3.0`**, **`Book Covers Skyrim`** | AI Overhaul SSE and LoTD locked baselines; Book Covers Skyrim locked (→ [Textures & Meshes](modlist-graphics-textures.md)). Skip Cutting Room Floor, Apachii Divine Elegance, Relighting Skyrim, ELFX Shadows, USSE Fixes, Unofficial CC Content Patch — none installed (Relighting/ELFX are fallback alternatives only). |
| kryptopyr's patches | **`Timing is Everything`** | Baseline (→ [Time & World Encounters](modlist-world-content.md)). **`Weapons Armor Clothing and Clutter Fixes` only if WACCF installed** — WACCF is optional ("skip if conflicts outweigh gains"); when installed, pick the `WACCF and Guard Dialogue Overhaul` combo above instead of the plain GDO row. |
| Vampire Werewolf Beast | *(none)* | None of these mods installed. |

**Load order:** Emporium after USMP base; also after each mod it patches (Aetherius, AI Overhaul SSE, LoTD, RDO, etc.) in the MO2 left pane.

### SSSO3 Configuration

Vanilla autosaves, quicksaves, and manual saves all write the same `.ess` format — the instability risk is **when** they fire (cell transitions, combat, half-evaluated script state), not the format. SSSO3 replaces vanilla triggers with a Save Shield that defers saves during unsafe states.

**Installation:**

1. Install requirements (already in Core Libraries): `JContainers SE`, `NL_MCM - A Modular MCM Framework`, `Regional Save Names`, `SSE Engine Fixes`
2. Install the SSSO3 main file and `SSSO3 - French` (if applicable). Place SSSO3 anywhere in load order.
3. **Disable all vanilla autosaves** in BethINI Pie — see → [INI Tuning And Display Settings](modlist-performance-optimization.md) (BethINI Pie Configuration Baseline). Keep `iAutoSaveCount` at its positive default (`3`) — **never `0`**: confirmed crash (2026-08-08) — the engine divides by the slot count when a save loads, and `0` produces a hard `INT_DIVIDE_BY_ZERO` CTD. SSSO3 force-deactivates the autosaves, but the INI settings prevent the values from conflicting.

**In-game setup (required before the rotating system activates):**

1. Create your character and exit the starting cell (alternate-start mod or vanilla Helgen sequence).
2. Make one manual save to generate a save file on disk.
3. Open the SSSO3 MCM. Go to **Player Setup**.
4. Press the **Find Player ID** button — SSSO3 reads it automatically from the save file. If it fails, use **Bypass Check** and type your character name exactly.
5. Assign a **Quick Save key** and a **Quick Load key** in the MCM.
6. **Select a preset profile.** For Elder Wilds, start with **Vanilla+** — it replicates vanilla autosave behavior with Save Shield protection and timed saves, no hardcore restrictions.
7. From the MCM's **Rotating System** page, set your preferred save cap (20-30 is reasonable for a playthrough).

**SSSO3 Configuration for Elder Wilds:** Starfrost (locked survival baseline) does not use Campfire files — no patch conflict expected. If a campfire-required mod is adopted later, SSSO3 includes compatibility patches.

### SkyPatcher And SkyPatched Mods
**SkyPatcher** is an SKSE plugin that patches vanilla records at runtime from INI-style configuration files rather than traditional ESP plugins. No winner-loser override chain, no per-pair patches for the records it covers.

A **"SkyPatched"** variant ships record changes as SkyPatcher configs instead of an ESP. Assets (meshes, textures, scripts) still install in MO2's left pane, but the plugin slot is replaced by files under `SKSE/Plugins/SkyPatcher/`.

**When to choose SkyPatched:**

- Mod only changes vanilla records (book stats, weapon damage, armor ratings, ingredient values), not new records
- Load order is approaching the 254-plugin cap — each SkyPatched variant saves one ESP slot
- Multiple mods edit the same records — runtime application avoids patch debt
- Author explicitly provides a SkyPatched alternative

**When to stick with traditional plugin:**

- Mod adds new records (CELL, WRLD, QUST, NPC_ with facegen)
- Mod needs explicit load-order priority — Bashed Patch or xEdit patches give control that "all apply" doesn't
- No SkyPatched variant available

**Mods using SkyPatcher in this list:**

- `Book Covers Skyrim - SkyPatched` (→ [Textures & Meshes](modlist-graphics-textures.md))
- `Dawnguard Arsenal SSE - SkyPatched` (→ [World Content](modlist-world-content.md))
- `Diverse 4thUnknown Dragons` — uses SkyPatcher for combat-mod compatibility (→ [Enemies & Creatures](modlist-creatures.md))
- `Patchifier` Synthesis patcher generates SkyPatcher patches (→ [Bashed Patch & Synthesis Configuration](modlist-performance-patches.md))

For installation, config syntax, filtering reference, authoring recipes, and the Elder Wilds authoring workflow, see → [SkyPatcher — Usage & Authoring Guide](skypatcher.md).

### Mesh & Texture Fixes

Small mesh-level corrections for vanilla rendering errors — bad lighting flags, UVs, collision, and over-lit particle effects. All are mesh/texture-only (no plugin slots) and load-order-safe with the graphics stack.

| Mod                                                                                              | Purpose                                                                                                                                     |
|--------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------|
| [Particle Patch](https://www.nexusmods.com/skyrimspecialedition/mods/65720)                      | Fixes incorrect particle/effect brightness and blending under the CS lighting model (fire, fog, mist, snow). See FOMOD options below. |
| [Assorted Mesh Fixes](https://www.nexusmods.com/skyrimspecialedition/mods/32117)                 | Corrects vanilla mesh rendering errors — lighting flags, UVs, collision, normals, shadow/depth issues. Mesh-only, no ESP. Load after SMIM (→ [Textures & Meshes](modlist-graphics-textures.md)). |
| [Flickering Meshes Fix](https://www.nexusmods.com/skyrimspecialedition/mods/53957)               | Splits over-lit city meshes so the engine's 6-lights-per-mesh limit no longer causes flicker. Covers all five cities plus hold farmhouses. No ESP. See FOMOD options below. |

#### Flickering Meshes Fix — FOMOD Options

Pure-mesh mod — no ESP, no requirements, no runtime config. The FOMOD has three steps: per-city mesh variants, per-hold farmhouse variants, then compatibility patches. Every city/farmhouse step must pick a **no-parallax** variant (the list's textures are PBR / Complex Material, not parallax — guide rule: skip parallax meshes), and the **SMIM** checkbox is the only compatibility pick that applies.

**Step 1 — Main Cities** (`SelectExactlyOne` per city — pick `No parallax version` for all five; never `None` — that skips the fix):

| City     | Pick                   |
|----------|------------------------|
| Riften  | `No parallax version` |
| Solitude | `No parallax version` |
| Whiterun | `No parallax version` |
| Markarth | `No parallax version` |
| Windhelm | `No parallax version` |

The `Parallax version` of each city requires a parallax retexture (`_p` textures) — not used here. Windhelm's parallax variant additionally requires BDS and BDS patcher (per the FOMOD description), reinforcing the no-parallax pick.

**Step 2 — Towns and Villages** (`SelectExactlyOne` per hold; choose `Farmhouses Without Parallax`):

| Group | Pick                             |
|-------|----------------------------------|
| Whiterun and Windhelm Holds' farmhouses | `Farmhouses Without Parallax` (Riverwood etc. use these nifs) |
| Solitude Hold's farmhouses             | `Farmhouses Without Parallax`    |
| Markarth Hold's farmhouses             | `Farmhouses Without Parallax`    |

**Step 3 — Compatibility choices** (`SelectAny`; only SMIM is checked by this list):

| Option | Pick | Reason |
|--------|------|--------|
| **SMIM** | **Yes** | SMIM is the core baseline (→ [Textures & Meshes](modlist-graphics-textures.md)); FOMOD marks it Recommended when `SMIM-SE-Merged-All.esp` is active, and it wires SMIM-compatible Solitude splits. |
| Bright Waterfall Fix (ENB) | No | ENB-only; not installed. |
| Icy Windhelm | No | Not installed — Windhelm snow coverage is `Windhelm Is Snowy - BOS` → [Terrain](modlist-graphics-terrain.md). |
| ELFX Exteriors | No | ELFX is a fallback alternative in → [Lighting](modlist-graphics-lighting.md), not baseline. |
| Majestic Mountains | No | Dropped — list uses Enhanced Rocks and Mountains (→ [Terrain](modlist-graphics-terrain.md)). |
| Riften Architectural Details | No | Not installed (Riften outdoor coverage comes from the Snazzy AIO series). |
| Skyrim 202X by Pfuscher | No | Textures are PBR (Tomato's pack etc.), not 202X. |
| Skyrim - A Mountainous Experience | No | Not installed. |
| Water for ENB | No | No ENB; water stack is CS (Simplicity of Sea + Water Effects CS). Also skipped when using Realistic Water Two. |

**Overwrite rule:** let it win over Assorted Mesh Fixes and city-mesh mods; here, keep the list's `Whiterun Has Walls`/city overrides on top with the city-mesh mods winning per-section order, and `Flickering Meshes Fix` winning the vanilla-based meshes it targets — aligned with the author: "compatible with almost everything... let this overwrite them when required".

#### Particle Patch — FOMOD Options

v1.4.3+ consolidated ENB and CS into a single build; the plugin-name choice is cosmetic, but should still match the list's framework (CS, not ENB). Only the **Fake Light Glow** row differs from the factory default.

| Option              | Pick                   | Reason                                                                                                                |
|---------------------|------------------------|-----------------------------------------------------------------------------------------------------------------------|
| Installation Format | `BSA`                  | Keeps the modlist tidy; archive vs loose files is organizational.                                                     |
| Plugin Name         | `Particle Patch`       | Not `Particle Patch for ENB` — the list is CS-only.                                                                   |
| Light Shafts        | `No`                   | Volumetric god-rays are an ENB-style effect. CS's own lighting stack handles atmosphere.                              |
| Fake Light Glow     | **`Particle Light`**   | Converts fake candle/lamp glows to real particle lights that CS renders correctly. Without this, fixtures go dark.    |
| Remove Fake Glow    | *(leave both unchecked)* | With `Particle Light` the fake glow is replaced, not removed. Leave unchecked to preserve fixture presence for readability. |
| Custom Textures     | `Yes`                  | Keep the shipped texture fixes.                                                                                       |

---

## Official Masters Cleanup

Clean all six-plus vanilla masters before installing any mod. Use `xEditQuickAutoClean` on each file individually, collect cleaned `.esm` files into a `Cleaned Vanilla Masters` MO2 mod, and restore originals from `xEdit Backups` back into `Data\`.

### Which Masters To Clean

- `Skyrim.esm`, `Update.esm`, `Dawnguard.esm`, `HearthFires.esm`, `Dragonborn.esm`
- All Creation Club `.esm` files shipped with 1.6.1170
- Do not clean `_ResourcePack.esl` — contains no ITM or UDR records.

### Procedure

1. Create empty mod `Cleaned Vanilla Masters` under `Output` separator. Leave disabled.
2. Run LOOT, sort, apply, close.
3. For each `.esm`: select `xEditQuickAutoClean` from MO2 executables, check ONLY that master, wait for completion, close.
4. Move cleaned masters (recent mod date) from `Data\` into `Cleaned Vanilla Masters\` mod folder. Keep only `.esm` files; delete `.backup`/`.bak`.
5. Restore originals from `xEdit Backups` back into `Data\`.
6. Enable `Cleaned Vanilla Masters` in MO2. Run LOOT again — no masters flagged.

### Risks & Compatibility

- Cleaning `Update.esm` is standard despite some mod-author cautions; USSEP's records win over cleaned originals.
- Never clean a third-party mod's plugin unless LOOT explicitly flags it — many mods ship ITMs intentionally.
- `Cleaned Vanilla Masters` must remain enabled for the entire playthrough.

---

## Patching Technique And Strategy

Adopt the canonical `xEdit` mod-by-mod patching workflow: install one mod at a time, run `xEdit` in `-veryquickshowconflicts` mode, resolve only new conflicts, use per-pair patches and `ModGroups`. Reserve `Bashed Patch` and `Synthesis` for the categories they genuinely own.

### Wrye Bash And The Bashed Patch

The **Bashed Patch** is an automatically generated plugin merging leveled lists, applying game-setting tweaks, and resolving category-tagged record conflicts. Replaces dozens of per-pair patches for the record types it owns.

**Rebuild triggers:** adding/removing leveled-list mods, changing `.TweakSettings`, adding a mod with `Bash Tags`, form-ID compaction. It is step 2 in the full build order (after `SSEEdit`, before `Synthesis`; see → [Bashed Patch & Synthesis Configuration](modlist-performance-patches.md)).

**What the Bashed Patch does not do:** resolve arbitrary record conflicts (→ `xEdit`/`Synthesis`), merge plugins (→ ESL flags), or iterative/rule-based patching (→ `Synthesis`).

**Mods complementing or requiring Wrye Bash:**

- **Leveled-list expanders** (Immersive Weapons, Immersive Armors, Hunterborn) — need `Relev`/`Delev`/`Invent.Add` tags
- **World loot frameworks** (Open World Loot SkyPatched — locked)
- **Economy mods** (Trade and Barter, Ars Metallica, Honed Metal, Apothecary) — need `Stats`/`Invent.Change`
- **Lighting/weather** (CS Light, True Light, Azurite III CS) — need `C.Light`/`C.Water`/`C.Climate`
- **NPC/follower mods** (RDO, Nether's, Serana Dialogue) — need `Actors.*` tags
- **Audio overhauls** (AOS, ISC, Sounds of Skyrim) — need `Sound`/`C.Acoustic`

Exact `Bash Tag` per plugin, `.TweakSettings` table, and build-order placement → [Bashed Patch & Synthesis Configuration](modlist-performance-patches.md).

### Cyclic Workflow (per new mod)

1. **Install and place.** Heuristic: broad world-changers early; narrow/local edits late.
2. **Run `xEdit` with `-veryquickshowconflicts`.** Register xEdit in MO2 with that argument. Right-click → **Hide no conflict and empty rows**.
3. **Try load order first.** Move mod up/down if that resolves most conflicts; re-run.
4. **Identify bad conflicts.** Only conflicts where the loser was supposed to win.
5. **Build per-pair patch.** **Copy as override into…** → `<new file>.esp [Template] ESL`. Name explicitly (e.g., `LoreRim_x_RWT.esp`). Drag missing fields from loser into new record. Accept master addition. Run **Add Masters…** for every referenced mod. Save into `Patches` separator.
6. **Build per-pair `ModGroup`s.** One `ModGroup` per conflicting pair. Move `*.ModGroup` files from `MO2 overwrite` into the source mod's own MO2 folder.
7. **Re-open xEdit and confirm zero visible conflicts.**

### Starting State

Clean load order (`Skyrim.esm`, `Update.esm`, three DLCs) plus USSEP. USSEP ships a premade ModGroup since xEdit 4.1.7 — keep it.

### Cleaning Discipline

Run LOOT after new mod install. If flagged for cleaning, run **Quick Auto Clean** then **Check For Errors**. Red errors = reconsider the mod. QAC only removes ITM/UDR records.

### ESL-Flagged Patches

Always use `<new file>.esp [Template] ESL` for patches. Never manually re-flag ESP↔ESL unless the mod author or xEdit explicitly says to.

### Risks & Compatibility

- Keep Bashed Patch and Synthesis scoped — don't let them absorb every decision.
- Date-stamp patches and re-run xEdit after every source-mod update.
- Patches copying from downstream plugins inherit unresolved conflicts — read the master chain.
- xEdit normal mode writes current loaded state — never use it to save. Save only in fast mode.
- Promote tiny per-pair patches into themed region/feature patches when count becomes unmanageable.
- Deliberately test that disabling one upstream source mod cleanly stops its ModGroup and dependent patches.

---

## ESP To ESL Conversion

Converting ESP to ESL-flagged ESP frees a regular plugin slot (limit 254) by moving into the 4096 light-plugin address space.

### What Makes A Plugin Convertible

- Fewer than 2048 new record forms
- No new CELL/WRLD/NAVM/NAVI records
- No QUST/DIAL overrides with hard-coded form ID references
- **Trivially convertible:** Bodyslide outputs, SKSE plugin dummy ESPs, texture-replacer ESPs

### Automated Discovery

1. **Built-in script:** `Find ESP plugins which could be turned into ESL.pas` — ships with SSEEdit.
2. **Fractal's `ESP-ESL Finder v1.1`** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/117978))
3. **`ESLify`** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/42211)) — batch-convert wrapper. Verify candidates manually first.
4. **`SSEEdit Script - Header Change to Version 1.71`** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/115056)) — unlocks full 4095-record range for 1.6.1130+.

### Safe Conversion (low risk)

1. Right-click → **Compact Form IDs for ESL**.
2. Right-click → **Set Is-Esl Flag** (ESL only, not ESM).
3. Save. Re-sort with LOOT.

### Full Conversion (xEdit workflow)

1. Load plugin + dependencies. Apply **Hide no conflict and empty rows**.
2. Right-click → **Compact Form IDs for ESL**. If zero, skip to step 4.
3. **Check for broken references:** Run **Check for Errors**; for external refs, load full load order → **Referenced By** → **Apply as filter**; or use `List records referencing specific plugins.pas`.
4. Right-click → **Set Is-Esl Flag** (ESL only).
5. Save. Re-sort.

### Red Lines

- **Never** convert plugins with CELL/WRLD/NAVM/NAVI records without verifying every cross-reference.
- **Never** convert mid-playthrough.
- **Never** convert a plugin another mod lists as a master without verifying.
- ESL-flagged plugins still count toward the 4096 light-plugin limit.

### Recommended Candidates

- Bodyslide outputs, texture-replacer ESPs, SKSE plugin dummies
- Single-weapon/armor/spell mods with <50 new records and no scripts
- Crafting recipe-only ESPs
- Patches created via `[Template] ESL`

### Never Convert

- Major quest mods (LotD, Interesting NPCs, Vigilant)
- City/settlement overhauls with new CELL or WRLD records
- Overhauls with new dialogue branches or follower framework quest aliases
- Any plugin LOOT or SSEEdit flags as not ESL-safe

---

## Targeted Bugfix Mods
| Mod                                                                                           | Purpose                                                             |
|-----------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| [Fuz Ro D-oh - Silent Voice](https://www.nexusmods.com/skyrimspecialedition/mods/15109)       | Subtitle safety for unvoiced dialogue.                              |
| [Actor Limit Fix](https://www.nexusmods.com/skyrimspecialedition/mods/32349)                  | Crowded scene / facial animation reliability.                       |
| [Equip Enchantment Fix](https://www.nexusmods.com/skyrimspecialedition/mods/42839)            | Enchantments dropping off while equipped.                           |
| [NPC AI Process Position Fix - NG](https://www.nexusmods.com/skyrimspecialedition/mods/69326) | NPC processing after waiting/fast travel.                           |
| [Simple Offence Suppression](https://www.nexusmods.com/skyrimspecialedition/mods/41764)       | Accidental hostility from stray hits.                               |
| [Bug Fixes SSE](https://www.nexusmods.com/skyrimspecialedition/mods/33261)                    | Crafting-menu, perk-application, and water-behavior fixes.          |
| [Navigator - Navmesh Fixes](https://www.nexusmods.com/skyrimspecialedition/mods/52641)        | Follower pathing in complex worldspaces. See FOMOD options below.   |
| [Barter Limit Fix](https://www.nexusmods.com/skyrimspecialedition/mods/77173)                 | Merchant gold cap overflow.                                         |
| [Mum's the Word NG](https://www.nexusmods.com/skyrimspecialedition/mods/77409)                | Worthless stolen-item tagging.                                      |
| [Unique Region Names SE](https://www.nexusmods.com/skyrimspecialedition/mods/56452)           | Data provider: renames exterior worldspace locations to descriptive region names. ESL-flagged. Pairs with Regional Save Names below. |
| [Regional Save Names](https://www.nexusmods.com/skyrimspecialedition/mods/49698)              | Save labeling for testing hygiene.                                  |
| [Better Jumping SE](https://www.nexusmods.com/skyrimspecialedition/mods/18967)                | Consistent jumping control.                                         |
| [LeveledList Crash Fix](https://www.nexusmods.com/skyrimspecialedition/mods/129136)           | Leveled-list crash protection.                                      |
| [Explosion Collision Fix](https://www.nexusmods.com/skyrimspecialedition/mods/154076)         | Prevents explosion-force spells from launching objects into camera. |
| [Inertia (Floating Gear Fix)](https://www.nexusmods.com/skyrimspecialedition/mods/148746)    | Stops dead-NPC equipment freezing mid-air by briefly keeping collision capsules active after death (configurable duration). SKSE plugin, zero records, all NPCs/creatures. |
| [SMP-NPC crash fix](https://www.nexusmods.com/skyrimspecialedition/mods/91616)              | Prevents the known FSMP crash when loading NPCs with SMP hair. Required companion to the locked FSMP baseline. SKSE plugin. |
| [Dragon Stalking Fix](https://www.nexusmods.com/skyrimspecialedition/mods/14060)            | Dragon corpses no longer follow the player or fall out of the sky. ESL, SPID-based corpse cleanup. Requires Po3 Tweaks (baseline). |
| [Beard Mask Fix](https://www.nexusmods.com/skyrimspecialedition/mods/80232)                  | Beards use slot 44 — prevents mask clipping. SKSE plugin.           |
| [Mini's Micro-Systems Framework (MMSF)](https://www.nexusmods.com/skyrimspecialedition/mods/183073) | Weather identification and dynamic FormID allocation framework. Required by Luma Utility below. |
| [Luma Utility](https://www.nexusmods.com/skyrimspecialedition/mods/177961)                   | Patch-free cell integration utility. Requires MMSF above.          |
| [Exit Sneak On Sprint](https://www.nexusmods.com/skyrimspecialedition/mods/138669) | Exits sneak mode when sprinting. Lightweight SKSE plugin, no records. |
| [Naked Dead NPC Fix](https://www.nexusmods.com/skyrimspecialedition/mods/99024)       | Auto-equips body/hands/feet/head slots when a dead NPC loads naked (outfit-distribution glitch). SKSE, zero records, "compatible with everything". |
| [Native EditorID Fix](https://www.nexusmods.com/skyrimspecialedition/mods/85260)       | Bug-fix utility (Bug Fixes/SKSE) correcting engine-side native EditorID handling. SKSE plugin, requires Address Library (baseline). |
| [Weapons Armor Clothing and Clutter Fixes (WACCF)](https://www.nexusmods.com/skyrimspecialedition/mods/18994) | Broad record fix for weapon/armor/clothing/clutter records. High compatibility debt — test carefully with the crafting and artifact stack. Optional — skip if conflicts outweigh gains. |

### Not Installed

- **Alt-Tab Stuck Key Fix** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/148466)) — Prevents stuck modifier keys after alt-tabbing. Optional fix, evaluate if alt-tab issues arise during testing.
- **I'm Walkin' Here NG with Pets** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/122516)) — Ally/pet body-blocking fix.
- **Bard Instrumentals Mostly - Sing Rarely** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/10927)) — Repetitive tavern singing. Not needed — other bard mods cover this.


#### Navigator - Navmesh Fixes — FOMOD Options

The FOMOD has five steps: AIO vs Modular, AIO main-file + compatibility patches, optional add-ons, and optional extras. Picks below are verified against the modlist's current adoptions.

**Step 1 — AIO or Modular** (`SelectExactlyOne`):

| Option       | Pick         | Reason                                                        |
|-------------|-------------|---------------------------------------------------------------|
| All-in-one  | **Select**  | Author-recommended. Single `.esl` is cleaner than ~80 modular ESPs. |
| Modular     | Skip         | Only needed for selective per-cell installs.                  |

**Step 2 — Main file** (`SelectExactlyOne`; only shown when AIO selected):

| Option | Pick        | Reason                                                                     |
|--------|------------|----------------------------------------------------------------------------|
| `.esl` | **Select** | Light master — load as high as possible. Author-recommended.               |
| ESP-FE | Skip        | Light plugin variant; only needed for manual load-order conflict solving.  |

**Step 2 — Compatibility patches** (`SelectAny`):

| Patch                   | Pick        | Reason                                                                                      |
|-------------------------|------------|---------------------------------------------------------------------------------------------|
| Interesting NPCs        | Skip        | 3DNPC is listed as an Alternative in → [NPCs](modlist-npcs.md), not adopted.                |
| Skyrim Sewers           | Skip        | Not in modlist.                                                                             |
| Sunder and Wraithguard  | Skip        | `ccbgssse008-wraithguard.esl` is paid AE Upgrade content, not in this load order.           |

**Step 4 — Optional add-ons** (`SelectAny`; always shown):

| Add-on          | Pick        | Reason                                                          |
|-----------------|------------|-----------------------------------------------------------------|
| Interesting NPCs | Skip        | Not adopted.                                                    |
| Skyrim Sewers    | Skip        | Not adopted.                                                    |
| Vigilant         | **Select**  | Vigilant is adopted baseline (→ AGENTS.md Session Decisions). Installs `VigilantNavFix.esp`. |

**Step 5 — Optional extras** (`SelectAtMostOne` / `SelectAny`):

| Extra                          | Pick        | Reason                                                                               |
|--------------------------------|------------|--------------------------------------------------------------------------------------|
| Abandoned Prison               | **Vanilla** | Skyrim Unbound Reborn is the alternate start (→ [Character & Progression](modlist-expanded-character.md)), not AS-LAL or AS Reborn. Installs `AbandonedPrisonNavFix.esp`. |
| Quicksilver Mine                | **Select**  | No Vigil Enforcer Armor Set CC conflict. Installs `QuicksilverMineNavFix.esp`.       |
| Broken Oar script tweak         | **Select**  | Prevents non-standard followers from being stuck exiting Broken Oar Grotto. Installs `defaultNoEnemiesFollowDoorScript.pex`. |

**Resulting plugins:** `Navigator-NavFixes.esl`, `VigilantNavFix.esp`, `AbandonedPrisonNavFix.esp`, `QuicksilverMineNavFix.esp`.

**Load order:** `Navigator-NavFixes.esl` as high as possible (light master). `VigilantNavFix.esp` standalone, anywhere. The patch ESPs are all ESL-flagged — no ESL compaction needed. The separate **Navigator - Navmesh Fixes - Patch Collection** (111379) FOMOD is installed later (→ [World Content](modlist-world-content.md)).