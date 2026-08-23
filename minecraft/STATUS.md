### Mod Review — Create Aircraft & Train Batch (Aug 2026)

- [x] **User request: review 7 mods for addition** (Aug 23, 2026): Create Deco, Create Better FPS (replace-or-add vs Create Threaded Trains), Create Man of Many Planes (datapack), Create Immersive Aircrafts (resource pack), Create Immersive Aircrafts - Recipes (data pack), Create: Pantographs & Wires, Create Waystones Recipes. Verdicts: **1 already in pack** (Create Better FPS — and Threaded Trains is complementary, not a substitute; keep both), **1 rejected** (Create Waystones Recipes — chill + phase violation), **4 adopt candidates forming one package** (Create Deco; MoMP datapack; IA resource pack; IA data pack — the aircraft trio requires an IA 1.1.5 → 1.4.x bump), **1 adopt-if-wanted** (Create: Pantographs & Wires — beta line + new DragonLib dep). No adoptions finalized in this review — no GUIDE.md/PDF changes.
- [x] **Create Better FPS — ALREADY IN PACK; Threaded Trains is NOT a substitute — keep both, no change.** CBF (CF 1217518, MoePus, 17.1M DL; 1.21.1 **1.1.4** = file 7951368, Apr 19 2026; requires Sodium + Iris — both in pack) is a **client rendering** optimization (addon models, speed controllers, factory gauges, schematic previews; 7→35 FPS with 512 waterwheels under shaders; pairs with ColorWheel, also in pack). Threaded Trains (CF 1381890, MrJulsen, 829K DL; **1.0.0**, Nov 10 2025, 62 DL on build) is a **server-tick** optimization — railway pathfinding on a separate thread; works with Create 0.5.1 and all Create 6. Different bottlenecks; neither replaces the other. ⚠ TT page warns addons that modify Create's train code can freeze/crash ("works for some modpacks, not others"); this pack runs ~15 Create addons incl. Steam 'n' Rails (heavy rail-code mod). Keep both; add launch-test note — if rail-network freezes/crashes appear with SnR + train addons, drop TT first (newest, 1.0.0). No GUIDE.md change needed.
- [x] **Create Waystones Recipes — REJECTED (chill + phase rules)**. CF 1086710, Reggarf, 3.27M DL; 1.21.1 NeoForge **3.0.1** (file 6607350, Jun 2 2025; 3.0.0 beta had 32.8K DL). Changes ALL Waystones recipes to Create mechanical crafting (brass-tier machines). Violates AGENTS.md Integration Rules: Waystones is a chill-living enabler — "configs should always be set to reduce friction, never to add it"; Phase 1 explicitly lists "Waystones unlock fast travel between villages" (hours 0–40, pre-brass); the pack already zeroes teleport cost (`enableCosts = false`). Machine-gating moves fast travel to Phase 2 and adds friction to an idle-play tool — same precedent as Advanced Generators (progression shift). Flip side: if the user ever WANTS Create-gated waystones as an intentional design, this is the tool — would require editing the Phase 1 doc.
- [x] **Create Deco — ADOPT CANDIDATE (Wave 6 — Building)**. CF 509285, talrey + Baileybun, **41.8M DL**. Pin **2.1.3** (`createdeco-2.1.3.jar`, Apr 18 2026, 1.31M DL on build; Modrinth deps: none listed — Create only, in pack → zero new deps; 2.1.0+ targets Create 6.0.8). Industrial decoration: support blocks/wedges, train hulls, catwalks + railings + stairs, cage lamps (4 light colors), sheet metal, windows/panes, bars, chain-link fences, coin stacks, doors, ladders — each set in 6 metals (andesite, zinc, iron, industrial iron, copper, brass); shipping containers (16 dyes, Item-Vault-like storage); 8 brick colors with stair/slab variants; hazard/restricted-area decals. Pure cosmetic — exactly the pack's steampunk/Create building identity + chill pillar. No overlap: Rechiseled: Create = chisel variants of existing Create blocks; Deco = new blocks (containers are recolored vaults at worst — same class as Rechiseled variants, not a core-purpose duplicate). 2.1.3: block tags for datapack/JEI search, catwalk-railing hitboxes, cage-lamp placement reverted, Copper Bar crafting removed (stonecutter keeps it). Placement: Wave 6 Building table (precedent: Rechiseled: Create).
- [x] **Create Man of Many Planes (datapack) — ADOPT CANDIDATE (Wave 2, part of the Create-aircraft package)**. Modrinth F4Rdk2PX (Fugimii), 570K DL, GPL-3.0-only. Pin **1.1** (`Create-Man-of-Many-Planes-1.1.zip`, Mar 30 2025, 1.21.1, 14K DL). Adds Create Mechanical Crafter recipes for both MoMP aircraft (Economy Plane, Scarlet Biplane). Requires MoMP mod 0.2.1 (in pack) + Immersive Aircraft (in pack) + Create (in pack) — zero new deps. No phase shift: MoMP is already Phase 2 brass/andesite per GUIDE. Author recommends pairing with the IA resource pack + data pack below.
- [x] **Create Immersive Aircrafts (resource pack) + Create Immersive Aircrafts - Recipes (data pack) — ADOPT CANDIDATES (as a pair; require IA bump 1.1.5 → 1.4.x)**. Both by nicky__21 (RP: CF 821020, **9.5M DL**; DP: CF 870545, **2.49M DL**). Pin 3.0 (1.21.1) files 7568054 / 7568078 (Feb 2 2026). RP retextures IA crafting items, upgrade items, and vehicles to Create style (+ US-lang renames); DP rewrites IA crafting/upgrade/aircraft recipes to use Create items/machines ("more balanced with Create's progression"). Author: install BOTH or neither — textures and recipes must match. Zero deps beyond Create + IA (both in pack). ⚠ **Tested against IA 1.4.1 + Create 6.0.9; the pack pins IA 1.1.5 (Mar 2025) while the current 1.21.1 line is 1.4.6 (May 28 2026) — adoption requires bumping IA to 1.4.x** (1:1 version bump, no mod-count change; verify MoMP 0.2.1 + Immersive Machinery 0.2.0 still work after the bump). Recipe overrides = intentional design here (Create-native aircraft progression) — allowed under the Data Pack standard. DP includes Warship + Bamboo Hopper recipes; pack's IA blurb lists warship; bamboo hopper absent in 1.1.5 = inert extra recipe (harmless).
- [x] **Create: Pantographs & Wires — ADOPT-IF-WANTED (Wave 1 train ecosystem; beta + new dep)**. Modrinth VzdCnMqW, MisterJulsen, 195K DL, GPL-3.0-or-later. Pin **1.21.1-beta-0.2.3-C6** (Jun 9 2026, 37K DL, featured). Catenary wires, power lines, sizeable masts (rotatable ~22.5°), cantilevers, pantographs that auto-adjust to wire height — electric-railway realism for the train ecosystem; decoration/immersion only (no train power system — Create trains are SU-driven). Requires **Create + GeckoLib (both in pack) + DragonLib (NEW dep — sbIsGaOV, MisterJulsen's lib, GPL-3.0-or-later; v3+ must be installed separately; XMCL auto-installs from parent page)**. ⚠ Beta line; author's own page warns alpha/beta "may contain critical bugs" + backup before updates; 0.2.3 changelog shows Sodium render fixes (good for this pack) and schematic copying for cantilevers. Beta precedent in pack: Small Ships 2.0.0-b2.1. If user prefers zero-beta, wait for a release build.
- [ ] **Instance action (XMCL)** — pending adoption decisions.
### Mod Review — Mekanism Addon Batch (Aug 2026)

- [x] **User request: review 7 mods for addition** (Aug 23, 2026): KubeJS Rechiseled, KJSGen (KubeJS Generator), Mekanism Advanced Generators, KubeJS Mekanism, Mekanism Covers, Mekanism Tools, Mekanism Weapons. Verdicts: **1 already in pack** (Mekanism Tools), **3 rejected** (Advanced Generators — overpower/progression skip; KubeJS Rechiseled — no use case + brand-new; KJSGen — dev tool, not player content), **2 conditional** (KubeJS Mekanism, Mekanism Weapons — gate/use-case notes below), **1 adopt-if-wanted** (Mekanism Covers — requires Iris config fix). No adoptions finalized in this review — no GUIDE.md/PDF changes.
- [x] **Mekanism Tools — ALREADY IN PACK**. The CurseForge link resolves to the official Mekanism v10 Tools module — same project already installed (Wave 1 Mekanism Addons; Apothic Compats affixed-loot integration documented in GUIDE.md). Nothing to add.
- [x] **Mekanism Advanced Generators — REJECTED (overpower / progression skip + redundant)**. Solar panels scaling 150 J/t → 328,050 J/t (Photonic) plus a creative 10M J/t panel (Pocky, 1.2M DL; 1.21.1 NeoForge **2.2.2**, Apr 2026; configurable outputs). Mekanism's own solar line caps at 800 J/t (Ultimate); this mod's Quantum (4,050) exceeds that 5x and the Photonic (~328k FE/t) is fission-scale output with zero fuel/heat/waste — skips heat→wind→gas→bio→solar→fission→fusion wholesale (Progression Gate Rule) and obsoletes TFMG diesel + most of Mekanism Generators' curve. Same content class as Generators' solar panels → duplicate core purpose. Power is already covered end-to-end (Create → Generators → TFMG → fission/fusion); even config-tamed, adds nothing.
- [x] **KubeJS Rechiseled — REJECTED (no use case + unproven)**. KubeJS event API for creating/editing Rechiseled chiseling sets in JS (ItsWiley, Modrinth, LGPL-3.0, 1.21.1-only, requires KubeJS + Rechiseled — both in pack). Authoring convenience only: Rechiseled already accepts datapack JSON for custom sets; the pack runs stock sets + Create/AE2 addons with no custom sets planned. Brand-new project (40 DL, approved Aug 18 2026). Zero conflict/overpower — pure dead weight for players.
- [x] **KJSGen (KubeJS Generator) — REJECTED (dev tool, not player content)**. In-game visual recipe editor that exports KubeJS scripts for MC/Create/Mekanism recipe types (Zizazar, Modrinth, 1.21.1 NeoForge, ARR). Its own description: "does not add any content or gameplay changes on its own" — a pack-authoring utility whose `K` keybind would confuse players in a single-player guide pack.
- [x] **KubeJS Mekanism — CONDITIONAL (adopt when a Mekanism recipe needs scripting)**. Mekanism recipe handlers for KubeJS — crushing, enriching, smelting, combining, compressing, purifying, injecting, metallurgic infusing, sawing (by **Lat — the KubeJS author**; 28M DL; 1.21.1 NeoForge `2101.1.7-build.18`, Nov 2025; requires KubeJS + Mekanism — both in pack, zero new deps). Extends the pack's existing KubeJS gating tooling (e.g. `wave5_torchmaster.js`) to Mekanism machine recipes. No content, no conflict, no overpower — worthwhile only if/when custom Mekanism recipes/gates are scripted.
- [x] **Mekanism Covers — ADOPT-IF-WANTED (cosmetic; must ship Iris config fix)**. Craft covers, combine with a block, right-click to skin cables/pipes; remove with Configurator/wrench (D4rkness_King, MPL-2.0, 11.4M DL, 1.21.1 NeoForge, zero new deps). Pure aesthetics — serves the building/chill pillars, no gameplay effect. ⚠ Mod page documents rendering crashes with Iris/Oculus/Sodium/Embeddium; the pack (Iris + Sodium) MUST ship `config/mekanismcovers.json` with `disableAdvancedCoverRendering = true` if adopted. Placement: Wave 1 Mekanism Addons.
- [x] **Mekanism: Weapons — CONDITIONAL (Phase 3 endgame weapon line; gate recipes)**. Meka-Tana (katana, high damage + short-range teleport), Meka-Bow (energy arrows, auto-fire, gravity-dampening modules), Meka-Gun (laser firearm), modular unit upgrades (Looting, Attack Amplification) (oMeranha_, unofficial addon; 1.21.1 NeoForge v4.0+, active mid-2026; requires Mekanism only). On-theme Phase 3 power fantasy; energy-based, so it does NOT trip the ballistic-firearms ban (TACZ/Scorched Guns doctrine exists to avoid duplicating Create: Gunsmithing — a laser weapon is a distinct category). No overlap: Simply Swords = fantasy melee, Too Many Bows = vanilla bows, Gunsmithing = Create ballistic. ⚠ "Massive damage" + teleport must be Phase 3-gated (Meka-tier materials → atomic alloy, already behind MineColonies "Industrial Revolution" research); damage is configurable — verify against the Apotheosis-mythic ceiling at test launch.
- [x] **Mekanism: Weapons — ADOPTED (Aug 23, 2026), with gating (jar-verified)**. Pinned **4.2.1** (CF file 8421979, Jul 12 2026, 6.2K DL on this build, 4.89M project DLs). MIT; deps: NeoForge 21.1.55+, MC 1.21.1, **Mekanism 10.7.17.83 only** (verified `neoforge.mods.toml`) — zero new deps. Built-in Better Combat support (`weapon_attributes/meka_tana.json` → parent `bettercombat:katana`; Better Combat in pack). Optional Curios integration (wireless charger back display — Curios in pack). **Config**: Mekanism-style SERVER config (`WeaponsConfig` extends `BaseMekanismConfig`, registered via `MekanismConfigHelper`; `config/Mekanism/mekaweapons-server.toml` generated on first launch) — per-weapon `base_damage`, `energy_usage`, capacity/charge rate; Meka-Tana `max_teleport_reach` + teleport/sweeping/looting energy; Meka-Gun beam length/heat/cooldown; enchantability toggles (default on — Apotheosis enchantments apply); 2.5 J = 1 FE.
- [x] **Gating is natural — zero extra work needed**: every weapon recipe (jar-verified `data/mekaweapons/recipe/`) requires **Pellet Polonium** (fission-reactor line) + **Ultimate Control Circuits** + **Basic Induction Cell** (+ HDPE/refined obsidian/steel); the **Meka-Tana additionally requires Atomic Alloy** — already gated behind MineColonies "Industrial Revolution" research in this pack. The 4× Weapon Attack Amplification module is a 1:1 conversion of Mekanism's own MekaSuit module (cost inherited). The Magnetizer (wireless-charge block) is only teleportation-core-tier (Phase 2) but is a utility block, not a weapon — no gate concern.
- [x] GUIDE.md updated: Wave 1 Mekanism Addons table row (+Mekanism: Weapons), detail section (#### Mekanism: Weapons — Phase 3 placement, integration, config), Mod Count Summary (Wave 1 21/5/26 → **22/5/27**; Total **185/50/235 → 186/50/236** — mods +1, deps unchanged), Total changelog note. AGENTS.md combat doctrine clarified (energy weapons in scope; ban is ballistic-only).
- [ ] **Instance action (XMCL)** — add `MekanismWeapons-1.21.1-4.2.1.jar` to `mods/`. [VERIFY] at next launch: no missing-dependency errors; Meka-Tana/Meka-Bow/Meka-Gun not craftable until polonium + ultimate circuits + atomic alloy (research-gated) — no Phase 1/2 shortcuts; `config/Mekanism/mekaweapons-server.toml` generated; Better Combat swing anims on Meka-Tana; damage sane vs Apotheosis-mythic gear (tune `base_damage` down only if it trivializes endgame bosses).
- [ ] **Still undecided from this batch**: KubeJS Mekanism (adopt when a Mekanism recipe needs scripting) and Mekanism Covers (cosmetic; requires `disableAdvancedCoverRendering=true` Iris config) — no action taken.
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Super Resolution Removed (Aug 2026)

- [x] **User decision: remove Super Resolution** (adopted earlier this session, commit 94f56af) — too many failure modes for a performance mod: the entire 1.21.1 line is **alpha**, GPU/driver-dependent (DLSS/FSR resource DLLs download at runtime, OpenGL 4.3+ gate), native-library interop with Iris/Sodium rendering, frame generation still maturing (Wisteria backend). For a pack that gets launch-tested, the FPS headroom didn't justify the breakage risk — the shader-side levers (Shadow Resolution → Volumetric samples) remain the FPS path.
- [x] GUIDE.md updated: Super Resolution table row + blurb removed from Wave 0 — Performance & Rendering; **ModernFix config note restored** — the SR blurb insertion (commit 94f56af) had displaced the `mixin.perf.dynamic_resources` bullet ("biggest single launch-time speedup"); verified back in place. Mod Count Summary (Wave 0 9/12/21 → **8/12/20**; Total **188/50/238 → 185/50/235** — mods −1, deps unchanged). Dynamic Waters + The Great Outdoors unchanged (still adopted).
- [x] STATUS adoption entry (below) annotated REMOVED.
- [ ] **Instance action (XMCL)** — remove `super_resolution-neoforge-1.21..1.21.1-0.9.1-alpha.1+opengl.jar` from `mods/` if it was already added (plus any generated `superresolution` config). Dynamic Waters + Great Outdoors install stands. [VERIFY] at next launch: no missing-dependency errors; Sodium/Iris rendering unaffected; ModernFix mixin still active (launch-time speedup).
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Mod Review — Super Resolution + Dynamic Waters + The Great Outdoors (Aug 2026)

- [x] **User request: review [Super Resolution](https://modrinth.com/mod/superresolution), [Just Enough Guns New](https://modrinth.com/mod/just-enough-guns-neoforge), [Aquaculture 2](https://www.curseforge.com/minecraft/mc-mods/aquaculture), [Visual Overhaul](https://www.curseforge.com/minecraft/mc-mods/visual-overhaul), [Dynamic Waters](https://www.curseforge.com/minecraft/mc-mods/dynamic-waters), [The Great Outdoors](https://www.curseforge.com/minecraft/mc-mods/the-great-outdoors)** (Aug 23, 2026). Verdicts: **3 adopted** (Super Resolution, Dynamic Waters, The Great Outdoors), **3 rejected** (Just Enough Guns — vision veto, Aquaculture — redundant, Visual Overhaul — stale/declined by user).
- [x] **Super Resolution — ADOPTED → REMOVED (Aug 23, 2026 — see "Super Resolution Removed" entry above)** (Wave 0 — Performance & Rendering). Client-only upscaler integrating AMD FSR 1/2/3, NVIDIA DLSS, Intel XeSS, Snapdragon SGSR + frame generation (0.9.x) + NVIDIA Reflex. Pinned **1.21-0.9.1-alpha.1+gl-neo** (`super_resolution-neoforge-1.21..1.21.1-0.9.1-alpha.1+opengl.jar`, 33 MB, Aug 20 2026, 690K DL project, GPL-3.0, updated 4 days before review — very active). **Zero dependencies** (verified via Modrinth API; Architectury API deprecated as of 0.8.3-alpha.3). Explicitly compatible with **Sodium, Iris, Distant Horizons** — all in pack (dedicated 1.21.1 Sodium 0.8.x compat fix in 0.8.3-alpha.5; incompatible: OptiFine/Canvas/VulkanMod — none in pack). Windows/Linux only (macOS no); requires OpenGL 4.3+; DLSS/FSR resource DLLs download on first use. **Caveat: the entire 1.21.1 line is alpha** — new watch item: [VERIFY] on the user's GPU at next launch (SR ratio >1.0 = 2–3× FPS typical; <1.0 = AA). Fit: fills the upscaling gap — nothing in Wave 0 renders below native; the shader-side FPS levers (Shadow Res → Volumetric samples) now have a rendering-side fallback. Renders below native, upscales to target.
- [x] **Just Enough Guns New — REJECTED (vision veto)**. Modern military firearms (pistols→MG, launchers), hostile gunner mobs, faction raids, vehicles (MI-28, A-10, BMP-2, LAV-150), FPV drones, C4/claymore, Javelin/Igla guided launchers, Terror Phantom aerial threat, End Ship Armada structure. NeoForge 1.21.1 **1.8.0** exists (dep: GeckoLib 4.8.3 — already in pack) — but this is the exact class AGENTS.md bans: *"Modern ballistic firearm mods (TACZ, Scorched Guns) are out of scope — they duplicate Gunsmithing's role and break the aesthetic."* Also violates: weapons-not-escalating-mobs (hostile spawns/raids), Chill Rule (raids, explosive mobs, aerial threats), desolate-Overworld preference (patrols, End Ship Armada). Unofficial fork of MigaMi's JEG (GPL-2.0 code; ARR Superb Warfare assets, authorized redistribution). Adopting would require amending the pack vision — not recommended.
- [x] **Aquaculture 2 — REJECTED (redundant)**. Classic fishing expansion: 30+ biome fish + fish mobs, rods with hooks/bait/line, tackle box, Neptunium gear. NeoForge 1.21.1 **2.7.21** (Apr 9 2026, 3.1M DL on this build, 161M project DLs, actively maintained) — technically clean, but Wave 4 already owns fishing wholesale: **Starcatcher** (100+ fish, minigame, catalogue, tournaments, its own tackle box) + **Hybrid Aquatic** (feeds fish into Starcatcher) + **Better Fishtanks**. A second fishing system with its own rods/bait/boxes = duplicate core purpose (same precedent as Bookshelf Inspector over Jade, Easy Anvils, Status Effect Bars Reforged).
- [x] **Visual Overhaul — REJECTED (stale, modest value; user declined)**. Visual overhauls of Jukebox, Brewing Stand, Furnace/Smoker/Blast Furnace + biome-tinted items + menu icons (Motschen, 1.2M DL). NeoForge build **v5.2.1** exists (185 KB) but is **Jun 19 2024 — ~2y stale** (Fabric-first mod otherwise; overhauls need server-side presence, not client-only). No duplication, zero deps — but the marginal cosmetic value didn't justify a 2-year-old build in a launch-tested pack. User chose not to adopt.
- [x] **Dynamic Waters — ADOPTED** (Wave 2 — Overworld Worldgen). Realistic flowing rivers: custom region-based generation, fractal river networks (1st–3rd degree branches), deltas, drain-to-source mountain streams. Pinned **11.1.2** (Modrinth `dynamicwaters-11.1.2.jar`, "NEOFORGE.11.1.2.HOTFIXED", Jul 16 2026, 3.4K DL on this build; 12.0 line still test builds — do not pin), **zero dependencies** (Modrinth API), CC-BY-4.0, client+server. Compat verified on the project page: **Terralith + Tectonic** (Tectonic from v9.0+ — both in pack), **Create** ("water wheels placed in our custom rivers will generate rotational power normally"), Chunky pre-gen (fixed v9.1+). ⚠ **New world required** — worldgen mod; existing saves won't regenerate (FAQ). ⚠ Young NeoForge port (11.1.0 was the beta port, Jul 1 2026) — [VERIFY] at next launch: rivers flow with visible current, water wheels turn, no terrain inconsistencies with Tectonic's deeper oceans. New watch item: **Wakes Reforged × Dynamic Waters** (Wakes draws boat wakes on the new flowing water); **Wavify** (ocean-surface waves) is NOT in the pack and stays out — Wakes Reforged is the pack's water-surface mod.
- [x] **The Great Outdoors — ADOPTED** (Wave 2 — Environment). Grand Geyser Fields biome (geysers, hot springs, mud pots), Whitebark Pine woodset, 7 mobs (cinnamon bear/pronghorn/marmot/bluebird/rubber boa passive-or-neutral; seeper = neutral creeper variant; puma = biome-localized hostile apex predator), 2 light ground structures (Observation Tower, Visitor's Center), Park Ranger villager profession. Pinned **V1.2.1** (CurseForge 7586218, Feb 6 2026, 67.2K DL on this build, 165K project DLs). **Requires GeckoLib — already in pack** (Wave 1 Create: Gunsmithing dep) → zero new deps. Tested with **Tectonic + Terrablender** (both in pack); recipe cross-compat with Farmer's Delight + Brewin' N Chewin (both in pack). Fit: one atmospheric biome, no progression gating, cozy wildlife + food tier — pure chill-living; structures are sparse ground-level ambience (consistent with "Structory kept / roguelike density removed"). ⚠ MCreator-built — [VERIFY] at next launch: mob AI/spawns sane, geyser damage not base-hostile.
- [x] GUIDE.md updated: Wave 0 Performance & Rendering table (+Super Resolution row + blurb), Wave 2 Overworld Worldgen (+Dynamic Waters row + new-world warning), Wave 2 Environment (+The Great Outdoors row + blurb), After First Launch note (+Dynamic Waters), Mod Count Summary (Wave 0 8/12/20 → **9/12/21**; Wave 2 36/8/45 → **38/8/47**; Total **185/50/235 → 188/50/238** — mods +3, deps unchanged).
- [ ] **Instance action (XMCL)** — add `dynamicwaters-11.1.2.jar`, `The Great Outdoors 1.21.1Neoforge V1.2.1.jar` to `mods/` (Super Resolution REMOVED Aug 23, 2026 — do not add; see removal entry above). [VERIFY] at next launch (fresh world for Dynamic Waters): no missing-dependency errors (all zero-dep); rivers flow with visible current + Create water wheels turn; Great Outdoors mobs spawn sane, Geyser Fields biome generates.
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Better Days Config Section Removed from Guide (Aug 2026)

- [x] **User request: remove the "Better Days (config/betterdays-common.toml)" block from GUIDE.md §Configuration — Wave 0.5** — Better Days runs at **default**; Serene Seasons Plus owns day/night length at runtime (writes `daySpeed`/`nightSpeed` via reflection, `enableBetterDaysDynamicTimeCompat=true`). The block was pure "don't touch this" documentation with no tracked override behind it (`config/betterdays-common.toml` doesn't exist in the repo — the Jul 2026 override was already deleted as bogus in the Aug 2026 Seasons & Weather correction). The real guidance already lives in §Serene Seasons Plus ("Day/night length lives here, not in Better Days" + the 40-min cycle table).
- [x] GUIDE.md updated: Better Days block removed from Configuration — Wave 0.5 (Loot Journal block now flows straight into Mindful Darkness). No other Better Days guide references touched — the Wave 0 table row stays (mod still in pack), Serene Seasons Plus section unchanged.
- [x] STATUS historical line annotated: the Jul 2026 "Config Overrides Created" entry's Better Days row marked SUPERSEDED (its `SEASON` mode + `seasonDayMinutes` claims were the bogus-config record already corrected Aug 2026).
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Configuration Wave 0.5 — Corrections + DVT Mod Swap (Aug 2026)

- [x] **Effectual config file corrected** — the tracked override was `config/effectual-client.toml`, but Effectual's actual config is **`config/effectual.json`** (JSON via Cloth Config's GsonConfigSerializer — verified in Effectual 1.21.1 source `EffectualConfig.java`: `@Config(name = "effectual")` + `GsonConfigSerializer`). Old `effectual-client.toml` deleted; new `config/effectual.json` tracks `"caveDust": false` (everything else stays at mod defaults — mouthSteam, bubbles, footprints, sparks all untouched).
- [x] **Inventory Essentials value verified** — `inventorySorting = "CONSOLIDATE_ONLY"` (uppercase enum name, user-verified). Balm's NeoForge config layer writes enums via `spec.defineEnum(..., EnumGetMethod.NAME_IGNORECASE)` — the TOML value is the enum name `CONSOLIDATE_ONLY` (lowercase `consolidate_only` also parses, case-insensitive, but the canonical written value is uppercase). Tracked override + GUIDE.md updated.
- [x] **GUIDE.md sections joined** — `Configuration — Village & Trading` merged into `Configuration — Wave 0.5` (the Village & Trading heading carried only the DVT block; it now lives under Wave 0.5 with the other small configs).
- [x] **Dynamic Villager Trades swapped to the actual mod** — the pack listed "Dynamic Villager Trades Neoforge" (CraisinLord port, 1.0.0, 3.4K DL). Replaced with the **actual Dynamic Villager Trades by orlouge** ([CurseForge](https://www.curseforge.com/minecraft/mc-mods/dynamic-villager-trades), 3.3M DL, MIT). On 1.21.1 the author ships **Fabric-only** (`dynamicvillagertrades-fabric-1.4.0.jar`, Nov 2024) with an explicit note: "You can use Sinytra Connector to make the Fabric version work with it" — **Sinytra Connector + Forgified Fabric API already in pack** (Wave 0.5 resource-pack support), so zero new deps. Config keys identical to the port's (`global_randomness`, `refresh_delay`, `no_book_duplicates`, `enchant_repair_compat` — verified in `DynamicVillagerTradesMod.java`); tracked config renamed `dynamicvillagertraders.properties` → `dynamicvillagertrades.properties` (matches the real mod's MOD_ID + `.properties`).
- [x] GUIDE.md updated: Village & Trading table row (+actual mod link/version, −port), Configuration section (joined + DVT file name), Wave 0 detail section, What-to-Expect bullets. Mod Count Summary unchanged — 1:1 mod swap (185/50/235).
- [ ] **Instance action (XMCL)** — remove `dynamic-villager-trades-neoforge` port jar (`dynamic-villager-trades-neoforge` file); add `dynamicvillagertrades-fabric-1.4.0.jar` (Fabric build — Sinytra Connector loads it); copy `config/effectual.json`, `config/inventoryessentials-common.toml`, `config/dynamicvillagertrades.properties` into the instance's `config/` (replace old `effectual-client.toml` if present). [VERIFY] at next launch: no missing-dependency errors; villagers specialize in what you buy; no Effectual cave-dust particles; middle-click sort only consolidates (no reorder).
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Dependencies Section Removed from Guide (Aug 2026)

### Dependencies Section Removed from Guide (Aug 2026)

- [x] **User request: remove the "Dependencies — Wave 0.5" section from GUIDE.md** — dependency library mods (Architectury API, Iceberg, Polytone, Lithostitched, TLib, Forgified Fabric API, Nirvana Library, Puzzles Lib, Common Network, Prism, Fragmentum, Sinytra Connector, Resourceful Lib) auto-install via XMCL from their parent mod pages, so the manual-install table is unnecessary. Section (table + Lithostitched/Architectury notes + install note) removed.
- [x] GUIDE.md updated: section removed, Wave 0 intro no longer lists "Dependencies", dangling references fixed (Deep Aether interdependency note + YUNG's structures note now say "already in the pack"). Mod Count Summary untouched — the Deps counts reflect the installed set, which is unchanged.
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### EMIffect → JEED Swap + MEED Added (Aug 2026)

- [x] **User decision: swap EMIffect → JEED + add MEED** (Wave 0.5 — Inventory & UI). EMIffect 2.1.6 (last release Sep 2025, ~11 mo stale) is EMI-only; **JEED** is the upstream original (EMIffect's descriptions were taken from it), actively maintained (1.21-2.3.3, Jul 2026) by MehVahdJukaar (Supplementaries author — already in pack). JEED 1.21.1: **zero required deps**, EMI is a native optional integration (no JEI — pack stays EMI-only), optional Stylish Effects integration adds description tooltips to the pack's effect widgets. License ARR (EMIffect was MIT) — fine for a personal pack. **MEED** (8.0.6, Aug 12 2026) is a JEED/EMIffect addon: curated descriptions + effect providers (items/mobs/blocks/fluids applying each effect) for 100+ mods / 600+ effects — covers pack mods Aether, Deep Aether, Cataclysm, Relics (8.0.2 hotfixed newer Relics parsing), Simply Swords, Too Many Bows, Deeper and Darker, Ranged Weapon API. CC-BY-NC-SA-4.0 (non-commercial — fine, personal pack).
- [x] GUIDE.md updated: Inventory & UI table rows (−EMIffect +JEED +MEED), What-to-Expect bullets (JEED + MEED), Mod Count Summary (Wave 0 7/12/19 → **8/12/20**; Total **184/50/234 → 185/50/235** — mods +1, deps unchanged).
- [ ] **Instance action (XMCL)** — remove `emiffect*.jar`; add `jeed-1.21-2.3.3.jar` + `meed-1.21.1-8.0.6.jar` to `mods/`. [VERIFY] at next launch: status effects appear in the EMI sidebar with description/source/color info; MEED adds curated descriptions + providers for Relics/Aether/Cataclysm effects; Stylish Effects widget hover shows description tooltips (JEED integration); no missing-dependency errors.
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Traveler Tool Belt Removed (Aug 2026)

- [x] **User request: remove Traveler Tool Belt** (Wave 0.5 — Inventory & UI) — tool radial menu (hold `R`, 2→9 slots via upgrades, Curios belt slot integration). Removed from GUIDE.md (Inventory & UI table row + What-to-Expect bullet); Mod Count Summary (Wave 0 8/12/20 → **7/12/19**; Total **185/50/235 → 184/50/234** — mods −1, deps unchanged). STATUS batch-16 entry marked **REMOVED**. Curios API stays — still required by Relics + Immersive Armors.
- [ ] **Instance action (XMCL)** — remove `travelertoolbelt*.jar` from `mods/` (no tracked config override existed). [VERIFY] at next launch: no missing-dependency errors; `R` opens EMI recipe view only (no radial menu).
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Mindful Darkness — Full HUD Exempted (Aug 2026)

- [x] **User request**: exempt the entire HUD from darkening (experience, level, food, health, hotbar). `config/mindfuldarkness-client.toml` `paths` exclusion widened: `!minecraft:textures/gui/sprites/hud/heart/*` → **`!minecraft:textures/gui/sprites/hud/*`** — covers hearts, food, experience bar, hotbar, armor, air, mount health, jump bar (all vanilla HUD sprites; wildcard includes `/`, so nested sprite dirs are exempt too; sits after the `textures/gui/sprites/hud/*` include → last-match-wins).
- [x] **Level number — no change needed** (verified in `FontColorHandler.tryAdjustColor`): font darkening only lifts colors BELOW the 0.804 font-brightness floor; pure-white text (brightness 1.0) like the level number is untouched.
- [x] **User follow-up: toasts exempted too** — `paths` += `!minecraft:textures/gui/sprites/toast/*` (vanilla toasts: recipe unlocks, tutorial, system) and `!advancementplaques:textures/gui/*` (Advancement Plaques popup — jar-verified `plaques.png`/`plaqueeffect.png` under `advancementplaques:textures/gui/`, previously caught by the bare `textures/gui/` entry).
- [x] GUIDE.md Mindful Darkness config table + What-to-Expect bullet updated; DRIFTWOOD-GUIDE.pdf regenerated.
- [ ] **Instance action** — copy the updated `config/mindfuldarkness-client.toml` to the instance's `config/` (replace). [VERIFY] at next launch / after F3+T: HUD cluster (XP bar, food, hearts, hotbar, armor) at full brightness; GUI panels/containers still darken; Loot Journal panels still bright.

### Obscure Tooltips Adopted — Tooltip Surface Swap (Aug 2026)

- [x] **User request: add Obscure Tooltips** ([CurseForge](https://www.curseforge.com/minecraft/mc-mods/obscure-tooltips)) — client-side tooltip overhaul: animated effects/particles, rarity emphasis ("making rarer items more vibrant"), labels/shadows, auto-wrap, scrolling, armor + tool preview panels, registry-driven per-item/mod/enchantment style definitions. Pin **4.2.4** (NeoForge 1.21.1, 2026-08-19 — actively maintained), 2.19M DL, client-only. License: Obscuria Ecosystem (same as Fragmentum — accepted precedent).
- [x] **Dependency: Fragmentum only** — already in pack (Obscuria ecosystem). **Doc gap fixed**: Fragmentum is REQUIRED by Loot Journal (jar-verified `neoforge.mods.toml`) but was undocumented/uncounted — missing from Wave 0.5 Dependencies table (same gap class as the Prism fix). Added row; deps 49→**50**.
- [x] **Decision — tooltip-surface swap (user-confirmed)**: Obscure Tooltips and Modern UI both replace the vanilla tooltip renderer (jar-verified `MixinGuiGraphics` cancels the vanilla render; Modern UI docs acknowledge the conflict). Modern UI's tooltip feature is **disabled via the Action Center** (`Ctrl+K`) — OT becomes the sole tooltip owner. Pack rule "no duplicated core purpose" satisfied via the documented "configured lower" lever (same escape hatch the Legendary Tooltips note used). ModernObscure bridge considered and declined (3rd mod, community-maintained).
- [x] **Compatibility checked**: no EMI/JEI hooks in the current jar (the old "Obscure Tooltips Fix" targets older versions — low risk); Jade tooltip unaffected (separate overlay); Apotheosis's appended tooltip components (gem/affix lines) still render inside OT's tooltip (it renders the full component list).
- [x] **New watch item** (documented in GUIDE.md): **Apotheosis × Obscure Tooltips** — OT emphasizes item rarity; verify in-game that Apotheosis custom rarities map onto OT's styling (fallback: OT's per-item/mod filters can style Apotheosis gear explicitly). [VERIFY] at next launch.
- [x] GUIDE.md updated: Inventory & UI table row (+Obscure Tooltips), Wave 0.5 Dependencies table (+Fragmentum), tooltip-surface note rewritten (Modern UI tooltips OFF), What-to-Expect bullet (+ watch), Mod Count Summary (Wave 0 7/11/19 → **8/12/20**; Total **184/49/233 → 185/50/235** — mods +1, deps +1).
- [ ] **Instance action (XMCL)** — add `obscure_tooltips-neoforge-1.21.1-4.2.4.jar` to `mods/` (Fragmentum already present). In-game: Action Center (`Ctrl+K`) → disable Modern UI tooltips. [VERIFY] at next launch: stylized tooltips render with rarity flair on Apotheosis gear (watch item); no missing-dependency errors; no tooltip double-render (Modern UI feature off); EMI/Jade tooltips unaffected.
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Mindful Darkness — Loot Journal Panels Exempted (Aug 2026)

- [x] **User report**: the Loot Journal pickup notifications ("new receipts" popup) render dark — Mindful Darkness' bare `textures/gui/` paths entry includes `loot_journal:textures/gui/panel_*.png` (darkening happens at texture-load time, verified in the 6.2.1 jar + Mindful Darkness `ColorChangingResourceHandler` source: last matching `paths` entry wins, so a `!` exclusion after the include overrides it).
- [x] `config/mindfuldarkness-client.toml` updated: `paths` += `!loot_journal:textures/gui/*` (covers all 5 panel themes + experience/glow textures). GUIDE.md Mindful Darkness config table + What-to-Expect bullet updated. DRIFTWOOD-GUIDE.pdf regenerated.
- [ ] **Instance action** — copy the updated `config/mindfuldarkness-client.toml` to the instance's `config/` (replace). [VERIFY] at next launch / after F3+T: Loot Journal pickup notifications render at full brightness; hearts still bright; rest of GUI still darkens.

### Day Counter Removed — Minimap Labels Show the Day (Aug 2026)

- [x] **User request: remove Day Counter** (Wave 0.5 — Inventory & UI) — the day is now read from the JourneyMap minimap labels, so the HUD day flash is redundant. Day Counter removed along with its tracked override `config/day_counter.toml`; **Hud Texts removed too** (Wave 0.5 — its only consumer was Day Counter; orphaned, same precedent as Searchables).
- [x] GUIDE.md updated: Inventory & UI table rows (−Day Counter −Hud Texts; table now rejoins its split rows), Day Counter config section + milestone-rewards block removed, What-to-Expect bullet removed, Mod Count Summary (Wave 0 row 8/12/20 → **7/11/19**; Total **185/50/235 → 184/49/233** — mods −1, deps −1). TODO.md day-counter config item closed (moot).
- [x] **Related research — no HUD-hiding mod added** (user wanted the JourneyMap minimap to hide with the rest of the HUD; Auto HUD only manages vanilla components + its own compat list, no JourneyMap entry). Researched NeoForge 1.21.1 candidates, all rejected: **HideHUD** (best generic candidate, MIT, zero deps) — **cannot hide JourneyMap**, verified in both jars: it cancels vanilla GUI layers and mod-registered layers (`RegisterGuiLayersEvent`), but JourneyMap 6.0.5 draws its minimap inside its own `RenderGuiLayerEvent$Pre` / `RenderGuiEvent$Post` listeners on vanilla layers with no cancellation checks and registers no custom layer; **HUD Manager** (94K DL) — vanilla elements only; **HudToggle** — Forge 1.20.x only, no NeoForge build; **Clean HUD** / **Auto Hide HUD** — idle-fade mods duplicating Auto HUD's core purpose (pack rule). JourneyMap's own `Ctrl+J` minimap toggle remains the control; it also ignores vanilla F1 (`hideGui` — zero hits in jar).
- [ ] **Instance action (XMCL)** — remove the Day Counter jar (`daycounter*.jar` / `day-counter*.jar`) from `mods/` (plus any generated `ags_day_counter*` config in the instance). [VERIFY] at next launch: no "Day N" ActionBar flash at dawn; no missing-dependency errors (Hud Texts gone too); JourneyMap minimap label still shows the day.

### Mod Review — Crops Love Rain + Bookshelf Inspector (Aug 2026)

- [x] **User request: review [Crops Love Rain](https://www.curseforge.com/minecraft/mc-mods/crops-love-rain) + [Bookshelf Inspector](https://modrinth.com/mod/bookshelf-inspector)** (Aug 22, 2026).
- [x] **Crops Love Rain — ADOPTED** (Wave 4 — Food & Farming). Crops grow faster while it's raining. Pinned **3.2.1-neoforge for 1.21–1.21.5** (CurseForge build 7812918, `cropsloverain-3.2.1.jar`, 34.5 KB, Mar 25 2026, 43.7K DL on this build; project 3.2M+ DL; CoalTheBurnRock; MIT; repo updated same day — actively maintained). **Source-verified** (GitHub ThePoultryMan/Crops-Love-Rain): NeoForge `neoforge.mods.toml` declares **only `neoforge` + `minecraft`** — zero new dependencies (the project page's "Requires Fabric API" banner is the Fabric variant only); rain check is server-side `level.isRainingAt()` (bamboo: `isRaining()`); mixins cover `CropBlock` (any soil-based crop — Farmer's Delight crops included), `StemBlock` (melon/pumpkin), bamboo, saplings, sugar cane, cocoa, sweet berry bushes; config is native NeoForge `ModConfig.Type.SERVER` at `config/cropsloverain.toml` — `general.use_rain_growth_speed` (true), `general.rain_growth_speed` (**10** = 1-in-10 extra growth stage per random tick during rain; lower = faster), per-type `individual.*` speeds (off by default), debug keys off.
- [x] **Fit verified — no duplication**: Wave 4 has no crop-growth-acceleration mod. Serene Seasons (Wave 2) modifies growth *by season* — different axis, the rain bonus stacks; Create Slice & Dice's Sprinkler is player-built fluid-farming automation, not a passive weather bonus. Pillar fit: pure chill-living reward (garden in the rain, zero chores), no phase gating (food is comfort-tier), survival-only clean, single-player clean, no hostile mechanics (Chill Rule ✓).
- [x] **New watch item** (documented in GUIDE.md): **Particle Rain × Crops Love Rain** — Particle Rain replaces rain *rendering* with particles (client-side); Crops Love Rain checks the real (server-side) rain state, so the growth bonus still triggers — verify once in-game.
- [x] **Bookshelf Inspector — REJECTED (redundant)**. Its stated core ("look at a book in a chiseled bookshelf → see what type of book it is and its name"; lectern support too) is **already provided by Jade** (Wave 0.5, pack-locked, default-on). Source-verified on Jade's `1.21-neoforge` branch: `ChiseledBookshelfProvider` shows the hit book's icon + stripped hover name + stored enchantments when aiming at an occupied chiseled-bookshelf slot; `LecternProvider` shows the book icon + name on lecterns. Bookshelf Inspector's own config is cosmetic only (`lectern-toggle`, `scale`) — nothing to configure lower; same precedent as Easy Anvils / Status Effect Bars Reforged (no duplicate core purpose). Technically clean (NeoForge 2.4+1.21.1, Jul 2026, zero deps, MIT, 1.8M DL) — pure redundancy rejection. Not added to guide.
- [x] GUIDE.md updated: Wave 4 table row (+Crops Love Rain), "Crops Love Rain — Rain-Powered Growth" subsection, Mod Count Summary (Wave 4 **14 → 19**; Total **180/50/230 → 185/50/235**).
- [x] **Count correction (discovered during review)**: Wave 4's Mod Count Summary row said 14 mods but its own table lists 18 — Starcatcher, Starcatcher's Delight, Better Fishtanks and one Delight-family addon were never reflected in the summary (verified: 18 table rows via direct read + `sed` count; summary row last edited Aug 20 kept 14). Corrected in the same edit: Wave 4 14→18→19 (+Crops Love Rain), Total 180→184→185 / 230→234→235. Other waves' rows untouched — if any have similar latent drift, that's a separate audit.
- [ ] **Instance action (XMCL)** — add `cropsloverain-3.2.1.jar` (NeoForge 1.21–1.21.5 build) to `mods/`. [VERIFY] at next launch: no dependency errors (zero deps expected); crops/sugar cane/bamboo visibly advance faster during rain vs clear weather; Particle Rain still renders its particle weather while the bonus applies (watch item); Jade bookshelf HUD unaffected (Bookshelf Inspector not installed).
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### MekaJadeUpgrades Added — Wave 1 (Aug 2026)

- [x] **User request: add MekaJadeUpgrades** ([CurseForge](https://www.curseforge.com/minecraft/mc-mods/mekajadeupgrades)) — Mekanism addon that shows installed upgrades (speed/energy/etc.) in Jade's tooltip. Pinned **v1.3 (1.3-21.1)** NeoForge 1.21.1, file `mekajadeupgrade-1.3.jar`, by DevDyna (MIT; 333K DL on this build; updated Mar 2026). Client-side Jade plugin, 9.2 KB.
- [x] **Dependency**: requires **Mekanism** + **Jade** — both already in pack. Zero new dependencies, client-only.
- [x] **Fit verified — no duplication**: the pack's Jade Addons covers Create goggle info; nothing surfaces Mekanism upgrade lists. Brings info already in Mekanism's GUI into the world HUD. Placed in Wave 1 Core Tech after the Mekanism group (consistent with the JadeColonies → Wave 1.5 precedent).
- [x] GUIDE.md updated: Wave 1 Core Tech table row (+MekaJadeUpgrades); Mod Count Summary (Wave 1 20/5/25 → **21/5/26**; Total 179/50/229 → **180/50/230** — mods +1, deps unchanged).
- [ ] **Instance action (XMCL)** — add `mekajadeupgrade-1.3.jar` to `mods/`. [VERIFY] at next launch: Jade tooltip on a Mekanism machine with upgrades shows the installed upgrade list; no missing-dependency errors.
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### JadeColonies Moved to Wave 1.5 (Aug 2026)

- [x] **JadeColonies moved Wave 0.5 Inventory & UI → Wave 1.5 Colony Addons** — it's a MineColonies-specific Jade tooltip addon, so it belongs with the colony wave, not the generic UI wave. No net mod-count change (Total stays 179/50/229): Wave 0 9/12/21 → **8/12/20**, Wave 1.5 9/—/9 → **10/—/10**.
- [x] GUIDE.md updated: row moved from Wave 0.5 Inventory & UI table to Wave 1.5 Colony Addons table; Mod Count Summary updated (Wave 0 + Wave 1.5 counts, "4 addons" → "5 addons … JadeColonies").
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Dynamic Crosshair Removed — Vanilla-Coupled, Context Features Unreliable (Aug 2026)

- [x] **User request: remove Dynamic Crosshair** — the mod's own note ("This mod is very strongly coupled to vanilla Minecraft and has to hardcode a lot of interaction rules. Thus, playing on a non-vanilla world will make the advanced features (context-dependent style) unreliable") makes its whole purpose — context-aware crosshair styling — unreliable in a 180-mod pack. The fix would be DynamicCrosshairCompat, but it's **Fabric-only** (verified across the full Modrinth version history — every release since 2022 is `fabric`, no NeoForge/Forge build), so it can't be added on the pack's no-Sinytra-Connector precedent. Removal loses nothing: the vanilla crosshair remains, and no other mod depends on Dynamic Crosshair (YACL is shared and stays).
- [x] GUIDE.md updated: Wave 0.5 Visual & Client QoL table row removed; Dynamic Crosshair config section removed; Mod Count Summary (Wave 0 10/12/22 → **9/12/21**; Total 180/50/230 → **179/50/229** — mods −1, deps unchanged). No tracked config override existed (`config/dynamiccrosshair.json` was never tracked — settings were recommended in-game, not overridden).
- [ ] **Instance action (XMCL)** — remove `dynamiccrosshair*.jar` from `mods/` (plus any generated `config/dynamiccrosshair.json` in the instance). [VERIFY] at next launch: vanilla crosshair renders normally; no missing-dependency errors; Mindful Darkness unaffected (its carried default `paths` list keeps a `!dynamiccrosshair:...` exclusion that's a harmless dangling path — left untouched).
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Vehicle Upgrade Adopted — Wave 2 Mobility (Aug 2026)

- [x] **User request: add Vehicle Upgrade** ([CurseForge](https://www.curseforge.com/minecraft/mc-mods/vehicle-upgrade)) — vanilla mount/boat QoL by Fuzs (Lunapixel; MPL-2.0; ~52K CF + ~38K Modrinth DL): saddled mounts stop wandering, mounts swim and ride through leaves, full mining speed + sprint + interaction-range bonus while mounted, translucent mount view, held items while rowing, boat step height, fixed passenger collisions. Native NeoForge, pinned **v21.1.0** (1.21.1 build, 2026-05-21). Actively maintained (project updated 2026-06-18).
- [x] **Dependency**: requires **Puzzles Lib** (already in pack — 6th consumer; dep row updated 5 → 6). Client + server required — non-issue for single-player (integrated server loads it automatically). Zero new dependencies.
- [x] **Fit verified — no duplication**: the pack's mobility stack (Immersive Aircraft, Small Ships, Hang Glider, Man of Many Planes, Immersive Machinery) adds *new* vehicles; nothing polishes vanilla horses/camels/boats. Pure QoL, no worldgen/content — aligns with chill living (less friction) + power fantasy (more capable mounts).
- [x] **New watch item** (documented in GUIDE.md): **Vehicle Upgrade × Small Ships** — Vehicle Upgrade's boat features target *vanilla* boats; Small Ships' custom ships are a separate entity class and are unaffected — expect harmless layering, but verify once in-game if boat behavior ever looks doubled.
- [x] GUIDE.md updated: Wave 2 Mobility table row, Mobility detail subsection (+ watch note), Puzzles Lib dependency row (5 → 6 consumers), Mod Count Summary (Wave 2 35/8/44 → **36/8/45**; Total **179/50/229 → 180/50/230**).
- [ ] **Instance action (XMCL)** — add `VehicleUpgrade-v21.1.0-mc1.21.1-NeoForge.jar` to `mods/`. [VERIFY] at next launch: no dependency errors (Puzzles Lib present); mounts no longer wander after dismount; mining/sprint/reach bonuses work while mounted; Small Ships boats unaffected (watch item).
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Stylish Effects Adopted — Status Effect Bars Reforged Removed (Aug 2026)

- [x] **User request: add Stylish Effects** ([CurseForge](https://www.curseforge.com/minecraft/mc-mods/stylish-effects)) — client-only status-effect **display overhaul** by Fuzss (same author as Mindful Darkness; MPL-2.0; 1.86M DL): the vanilla HUD effect icons become compact icons showing the remaining-time **timer + amplifier**, and the same compact display follows into the **inventory and every container**; effect-name tooltips (JEED-compatible); multiple display modes + extensive config. Native NeoForge, pinned **v21.1.3-1.21.1-NeoForge** (2026-06-25 — current 1.21.1 line). Requires **Puzzles Lib** (already in pack — 5th consumer; dep row updated 3 → 5).
- [x] **Decision — 1:1 swap, SEBR removed** (user-confirmed): Stylish Effects natively covers Status Effect Bars Reforged's entire purpose (duration info on effect icons in HUD + inventory; its built-in bar/timer display was inspired by SEBR). Pack rule "no duplicated core purpose" → SEBR out, same precedent as Subtle Effects → Particular Reforged and the Obscure Tooltips removal. The pair was technically compatible (SEBR ships an explicit Stylish-Effects compat hook), but keeping both = dead weight. Mod count unchanged (**179/50/229**); zero new dependencies.
- [x] **Compatibility checked (clean)**: EMIffect (EMI-browser effect lookup) and Auto HUD (idle auto-hide) are different surfaces — complementary, no conflicts. No interaction with Modern UI, Mindful Darkness, or Waves 1–7.
- [x] **New watch item** (documented in GUIDE.md): **Auto HUD × Stylish Effects** — both hook the effects HUD element; Auto HUD's idle-hide targets the vanilla display, so verify it still hides Stylish's custom icons (if not: Stylish's config can reposition/resize, or accept the display staying). [VERIFY] at next launch.
- [x] GUIDE.md updated: Wave 0.5 Visual & Client QoL table row (SEBR → Stylish Effects), What-to-Expect bullet (+ watch note), EMIffect bullet ("Complements Stylish Effects"), Puzzles Lib dependency row (3 → 5 consumers), Mod Count Summary notes (Wave 0 + Total rows).
- [ ] **Instance action (XMCL)** — add `stylish-effects v21.1.3` jar to `mods/`; remove `status-effect-bars-reforged*.jar` (+ any generated config file for it). [VERIFY] at next launch: compact effect icons with timer + amplifier on HUD and in inventory/containers; no dependency errors (Puzzles Lib present); Auto HUD idle-hide still works (watch item); EMIffect unaffected.
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Dark Mode Everywhere → Mindful Darkness Swap (Aug 2026)

- [x] **Dark Mode Everywhere removed; Mindful Darkness adopted** (user request). DME (shader-based GUI darkening) had been the pack's GUI dark-mode mod since V3; Mindful Darkness (`v21.1.0-1.21.1-NeoForge`, 2025-07-07, Modrinth) is the replacement: **automatic dark mode for every GUI with no shaders and no texture changes** — recolors GUI rendering directly, in-game toggle buttons (title/pause screens), configurable intensity (`texture_darkness` 0.0–1.0, default 0.5 ≈ DME's old "medium"), font brightness floor (0.75), darkening algorithms (grayscale_and_hsp default / hsp / grayscale_and_hsl), plus `paths`/`menu_blacklist`/`font_color_blacklist` for fine-grained control (chat/sign/book screens pre-excluded). MPL-2.0, 4.76M DL, Fuzss (same author as Easy Anvils/Shulker Box Tooltip). [Modrinth](https://modrinth.com/mod/mindful-darkness)
- [x] **Dependency**: requires **Puzzles Lib** (already in pack — Leave My Bars Alone, Hang Glider, Diagonal Fences). **Puzzles Lib added as a documented row in the Wave 0.5 Dependencies table** — it was previously referenced inline only and uncounted (3 consumers now). Deps 49→**50**.
- [x] **Modern UI watch item resolved**: the Aug 2026 review's "Modern UI × Dark Mode Everywhere" watch (both hook the GUI rendering layer) is moot with the swap — Mindful Darkness uses no shaders, so there's no GUI-shader pipeline fight; guide note rewritten accordingly.
- [x] GUIDE.md updated: Wave 0.5 Visual & Client QoL table row, What-to-Expect bullet (+Mindful Darkness), Configuration section (DME block + double-text note → Mindful Darkness block; Modern UI note), Wave 0.5 Dependencies (+Puzzles Lib row), Mod Count Summary (Wave 0 10/11/21 → **10/12/22**; Total **179/49/228 → 179/50/229** — mods unchanged, 1:1 swap).
- [x] `config/darkmodeeverywhere-client.toml` deleted (override moot).
- [x] **User-tuned config override created** — `config/mindfuldarkness-client.toml`: `texture_darkness = 0.353102992`, `font_brightness = 0.8043705985915491`, `darkening_algorithm = "GRAYSCALE_AND_HSL"`, and `paths` = full 27-entry default list + `!minecraft:textures/gui/sprites/hud/heart/*` (hearts excluded from darkening so the health bar stays readable; full list carried because ModConfigSpec replaces `paths` wholesale). GUIDE.md Configuration block + What-to-Expect bullet updated.
- [ ] **Instance action (XMCL)** — copy `config/mindfuldarkness-client.toml` to the instance's `config/` (replaces generated defaults; NeoForge fills remaining keys on first save). [VERIFY] at next launch: GUI textures render at ~35% brightness, fonts stay bright, hearts unaffected (health bar pops), no shader artifacts; toggle button still on title/pause screens.
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Wave 0.5 Review — Conflicts / Overrides / Redundancy (Aug 2026)

- [x] **Full Wave 0.5 review** (all ~70 Player Experience mods + 10 deps) against primary sources — Modrinth API version/dependency metadata, mod READMEs, author compat lists, GitHub issues. Scope: conflicts, overriding, redundant mods, dependency documentation gaps.
- [x] **REMOVED — Easy Anvils** (hard conflict with Apotheosis, Wave 3). Both mods deep-mixin vanilla anvil logic; Apotheosis' anvil takes precedence and nullifies Easy Anvils' features (persistent items, formatting, reduced prior-work costs) and can cause anvil interface bugs — developers on both sides confirm no reconciliation (Apotheosis GH [Shadows-of-Fire/Apotheosis#1369](https://github.com/Shadows-of-Fire/Apotheosis/issues/1369), Easy Anvils GH [Fuzss/easy-anvils#87](https://github.com/Fuzss/easy-anvils/issues/87) / [#99](https://github.com/Fuzss/easy-anvils/issues/99)). Apotheosis already removes the "Too Expensive" cap. Apotheosis is the pack's core gear-customization mod — Easy Anvils goes. GUIDE.md: Utility & QoL section removed; Hang Glider Puzzles Lib note cleaned.
- [x] **REMOVED — Searchables** (orphan library). Author's own README: "This mod does nothing on its own, but is used by other mods"; **zero Modrinth dependents**; FTB Quests does not use it. The guide's row ("search bars in creative menu, JEI/EMI-style browsers") was factually wrong — that description matches SearchableFTBQuests (a different add-on, not in pack). Dead weight removed.
- [x] **CONFIGURED — Inventory Essentials** — sorting overlap with ClientSort corrected. IE ships its own **middle-click sorting** on 1.21.1 (modes consolidate-only / retain-order / alphabetical / creative; default creative — verified in IE 1.21.1 source `InventorySorting.java`); the guide's "No overlap with Inventory Essentials" claim was wrong. New `config/inventoryessentials-common.toml`: `inventorySorting = "consolidate_only"` — middle-click merges partial stacks only; **ClientSort owns all reordering** (the pack rule's "configured lower" path). Guide bullet + Configuration block updated. ⚠ Value corrected Aug 2026 (Wave 0.5 config pass): the TOML value is the uppercase enum name `"CONSOLIDATE_ONLY"` (Balm writes enums via `EnumGetMethod.NAME_IGNORECASE`; lowercase parses too but is not the canonical form).
- [x] **CONFIGURED — Effectual** — cave dust duplicates Particular Reforged's cave dust (both list the exact same feature). New `config/effectual-client.toml`: `caveDust = false` (key verified from Effectual 1.21.1 source, `EffectualConfig.java`). Executes the standing TODO item. ⚠ File name corrected Aug 2026 (Wave 0.5 config pass): Effectual's actual config is `config/effectual.json` (JSON via GsonConfigSerializer); override moved to the correct file.
- [x] **DOCUMENTATION GAPS FIXED — Prism + Rhino**: **Item Borders 1.2.5** (NeoForge 1.21.1 build, Aug 2024) requires **Prism** 1.0.11 + Iceberg — Prism was undocumented (added to Wave 0.5 Dependencies table); **KubeJS** 2101.7.2-build.368 requires **Rhino** (added to Wave 4.5). Deps count 47→**49** (both jars auto-install via XMCL from their parent mod pages). **Lithostitched note corrected** — IVP 1.2.0 (Jul 2026) now declares it required in metadata; the "not declared — install manually" note was stale.
- [x] **CHECKED CLEAN (verified, no action)**: camera quartet (Real Camera × Camera Overhaul × Better Third Person × Countered's Smooth F5 — Real Camera's own compat list says "most camera mods" ✓; Camera Overhaul = FPV tilt/shake, BTP = TPP rotation, Smooth F5 = F5 transition, disjoint axes; Real Camera's "GeckoLib armor incompatible" N/A — Protection Pixel uses Kleiders Custom Renderer, not GeckoLib, verified); sound stack (Sounds = UI/item/block SFX, Presence Footsteps = walking, AmbientSounds = biome ambience, Sound Physics = acoustics — disjoint domains); LambDynamicLights 4.8.10 **native NeoForge** (README: "On NeoForge, install it in your mods folder"; declared incompatible with RyoamicLights + Sodium Dynamic Lights — neither in pack); Auto HUD native NeoForge (no Connector needed — prior verification holds); Better Days' declared incompatibilities (Immersive Snow, Steve's Realistic Sleep) — neither in pack; Better Safe Bed × Better Days (sleep *blocking* vs sleep *time speed* — disjoint); Improved Village Placement × Terralith/Tectonic (generic flat-forcing village modifier, no conflicts declared); Loot Beams × Item Borders × Loot Journal (world beams / inventory borders / pickup notifications — disjoint mechanisms); HUD-bar cluster (Overflowing Bars, Leave My Bars Alone, Immersive Armor HUD, Status Effect Bars Reforged, Auto HUD, Immersive Hotbar — disjoint mechanisms); Modern UI × EMI (EMI is not a tooltip-overhaul mod — outside the Legendary Tooltips conflict class).
- [x] **WATCH ITEMS** (documented in GUIDE.md, no action): **Modern UI × Dark Mode Everywhere** (both hook the GUI rendering layer — no hard incompatibility reported, they ship together in packs; lever: DME `METHOD_SHADER_BLACKLIST`); **EMF × 3D Skin Layers** (both touch player-model rendering — no official incompatibility; pack's CEM packs don't define player models, so risk is low; lever: 3D Skin Layers' Compatibility Mode); **Better Third Person × Smooth F5** (both hook the third-person camera — no reports for this exact pair; known conflicts involve Leawind's Third Person, not in pack); **GraveStone Mod × Sophisticated Backpacks** (both touch death handling — no confirmed issue for THIS GraveStone Mod; community "empty backpack" reports involve other grave mods — [VERIFY] at next launch); **Wakes Reforged × Particular Reforged** (both spawn water-splash effects — harmless layering; disable Particular's splashes if doubled).
- [x] GUIDE.md updated: table rows, What-to-Expect bullets, Configuration section (+Inventory Essentials +Effectual blocks, Modern UI DME watch), Wave 0.5 Dependencies (+Prism), Wave 4.5 (+Rhino), Lithostitched note, GraveStone [VERIFY] note, Mod Count Summary (Wave 0 12/10/22 → **10/11/21**; Wave 4.5 6/0/6 → **6/1/7**; Total **181/47/228 → 179/49/228**).
- [x] `config/effectual-client.toml` + `config/inventoryessentials-common.toml` created (tracked overrides).
- [ ] **Instance action (XMCL)** — remove `easy-anvils*.jar` + `searchables*.jar` from `mods/` (plus any generated `config/easyanvils*` / `config/searchables*`); confirm `prism-*.jar` (Item Borders dep) and `rhino-*.jar` (KubeJS dep) are present (XMCL auto-installs them); copy `config/effectual.json` + `config/inventoryessentials-common.toml` into the instance's `config/` (delete any old `config/effectual-client.toml`). [VERIFY] at next launch: no missing-dependency errors; anvil UI works under Apotheosis rules (no "Too Expensive", no persistence weirdness); middle-click in an inventory only consolidates (no reorder); no cave-dust particles from Effectual; dying with an equipped backpack → grave recovery keeps backpack contents; F5 transition is smooth (BTP + Smooth F5); player skin layers render correctly (EMF + 3D Skin Layers).
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### RAY's 3D Ladders Re-added — Rails Pack Doesn't Cover Ladders (Aug 2026)

- [x] **User report**: RAY's 3D Ladders missing from the pack. [Modrinth](https://modrinth.com/resourcepack/rays-3d-ladders)
- [x] **Verified — the Jul 2026 "redundant" claim was wrong**: RAY's 3D Rails is rails-only ("3D Block & Item Textures for **Rails**"; supported mods: Create, vanilla rails, rail-focused mods — no ladders). RAY's 3D Ladders is a **separate** pack ("3D Block & Item Textures for **Ladders**") covering vanilla + **Create** ladders (plus Chipped/Quark/others not in pack), shader support (LabPBR) since v2.0, same author (xR4YM0ND). 2.53M DL, MIT, updated 2026-08-13, 1.21.1 ✅. The guide's claim — "Also covers 3D ladders — RAY's 3D Ladders is redundant" (table row, blurb, load order) — was factually false and is removed.
- [x] **GUIDE.md**: Texture Packs table (+RAY's 3D Ladders row; Rails row drops "(incl. 3D ladders)"), blurb (Rails = rails only; new Ladders blurb — pairs with Rails, disjoint assets), Resource Pack Load Order (20 → **21** items; Ladders at #9 directly under Rails), Mod Count Summary ("+20" → "+21 resource packs").
- [ ] **Instance action (XMCL)** — add `RAYs-3D-Ladders` zip to the instance's resource packs (Modrinth or CurseForge). [VERIFY] at next launch: vanilla + Create ladders render 3D; no conflicts with RAY's 3D Rails (disjoint assets).
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Shader Swap — Solas Shader as Main (Aug 2026)

- [x] **Main shader switched: Bliss Shaders → Solas Shader** (user request). Solas becomes the pack's **only** shaderpack.
- [x] **Solas Shader V3.7** (Septonious) — modern fantasy-stylized pack: smooth saturated lighting, 3D volumetric clouds, volumetric light, colored block lighting, aurora/Milky Way/nebula skies, **integrated generated PBR** (normals/specular/emission) + LabPBR/SEUS resourcepack PBR support. Iris-native (no mod needed), profiles Low → Medium → **High (default)** → Ultra. **Native Distant Horizons support** — ships `dh_terrain`/`dh_water` LOD programs; V3.7 fixed DH/Voxy translucency blending (no shader-side DH toggle, unlike Bliss). ColorWheel compat fixed in V3.7. 1.47M DL, 1.21.1 ✅ (V3.7, 2026-07-01). [Modrinth](https://modrinth.com/shader/solas-shader)
- [x] **Settings verified against shader source** (GitHub main, V3.7): `shaders.properties` profiles — High (default) = shadowMapResolution 2048 / shadowDistance 192 / VOXEL_VOLUME_SIZE 192 / VL_SAMPLES 8 / WATER_NORMALS 3 + VOLUMETRIC_CLOUDS, VL, LPV_FOG, GENERATED_NORMALS/SPECULAR, AURORA, NETHER_SMOKE, END_DISK, REFRACTION, BLOOM, SHADOW_COLOR; Ultra adds SHADOW_ENTITIES + 4096/512/256/12 + LPV_CLOUDY_FOG. `lib/common.glsl` defaults cross-checked (SSAO 1.0; **SS_SHADOWS ON by default** — "Very useful with Voxy and Distant Horizons"; TAA ON / FXAA OFF / DOF OFF / MOTION_BLUR OFF; REFLECTION_LOD 1 = Fancy — "determines the quality of DH and Voxy chunks in reflections"; `shadowPlayer=true`; `dhClouds=off`).
- [x] **GUIDE.md**: Shaderpack table (→ Solas) + blurb + PBR note (generated PBR on flat 32x baseline; pack maps — Fire Rekindled / RAY's 3D Rails — need **PBR → Material → Advanced Materials** (LabPBR 1.3) with Generated Specular OFF per the shader's warning) + baseline guidance (High profile; levers in order: Voxel Volume Size 192→128 → VL Samples 8→7 → Shadow Resolution 2048→1024 → Shadow Distance 192→128 → volumetric clouds as last resort). New `#### Solas Shader Settings — Recommended` table replaces the Bliss table (Screen Space Shadows ON for DH; TAA ON; DoF/Motion Blur OFF; Entity Shadows OFF — Ultra-only) + DH note (native support — no settings screen; LOD Reflection Fancy). Shader Setup section (3. Shader Setup), Session 1, Forgematica caveat, Bumblezone Shader Emissive note. Mod counts unchanged (**181/47/228** — shaderpack swap, no jar changes).
- [ ] **Instance action (XMCL)** — remove `Bliss*.zip` from the instance's `shaderpacks/`; add `Solas Shader V3.7.zip`; select Solas in the Shaderpacks screen. [VERIFY] at next launch: DH LODs render through Solas; screen-space shadows extend past the realtime shadow distance (SS_SHADOWS); colored lighting, volumetric clouds, aurora present; Create contraptions render (ColorWheel); Forgematica holograms usable (toggle shaders with `K` if flicker); FPS at target with High profile (70–80 @ 4K); no compile errors in the shader log.
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Sodium Extras + Sodium Options API Removed — Unsatisfiable Dependency Chain (Aug 2026)

- [x] **User report (x2)**: Wave 0 launch fails with `sodiumoptionsapi requires reeses_sodium_options` — persists even with Sodium Options API **1.0.10** installed (user confirmed).
- [x] **Root cause — jar-verified; three facts that cannot coexist on NeoForge 1.21.1**:
  1. Sodium Options API 1.0.10's `neoforge.mods.toml` (the file NeoForge actually loads) declares `reeses_sodium_options` as **mandatory** — the author removed it only from the Forge-style `mods.toml` and Modrinth's metadata; the NeoForge jar still requires it (initial diagnosis trusted Modrinth metadata — wrong; user's report was correct).
  2. Every RSO build for 1.21.1 NeoForge — 2.0.5 (alpha) and 2.2.3 (release), both jar-inspected — requires **Sodium 0.8.12+** (`[0.8.12-alpha.3,)` / `[0.8.12,)`). RSO 2.2.3 additionally declares `sodiumoptionsapi` as **incompatible**.
  3. Sodium 0.8.12's own changelog (CaffeineMC): "**Not compatible with any version of 'Sodium Options API'**, which is not affiliated with us, and any mods that depend on it."
  → The RSO that satisfies sodiumoptionsapi requires the Sodium that rejects sodiumoptionsapi. Unsatisfiable by design; no version pin can fix it.
- [x] **Decision**: **remove Sodium Extras + Sodium Options API** from the pack. This is the "drop" path from the Wave 0 review, now mandatory rather than optional — **supersedes the earlier "keep with distance culling off" decision**.
- [x] **Actual usage loss ≈ zero**: the pack never enabled any Sodium Extras feature — fog toggle (fog was ON = vanilla), True Darkness (mode OFF default), cloud height (vanilla default), distance culling (already disabled). Lost only the *option* to use fog-off/True Darkness (DH's own config can still remove fog on real chunks), font-shadow toggle, fast language reload, and the always-on FPS counter (BetterF3 + Sodium 0.8.12's FPS percentiles cover the F3-side).
- [x] **Gain**: pack now pins **Sodium 0.8.12** (current 1.21.1 line — up to +115% world rendering, improved transparent rendering, new options menu per its changelog). Iris 1.8.14 (pack pin) is compatible (Iris 1.8.13+); MoreCulling's latest is compatible (both per Sodium's changelog).
- [x] GUIDE.md: Sodium Extras row + blurb removed; Sodium row pins 0.8.12 with a 0.6.x fallback note; Mod Count Summary updated (Wave 0 13/11/24 → 12/10/22; Total 182/48/230 → **181/47/228**). `config/sodiumextras-client.toml` deleted (override moot).
- [x] DRIFTWOOD-GUIDE.pdf regenerated.
- [ ] **Instance action (XMCL)** — remove `sodiumextras-*.jar` + `sodiumoptionsapi-*.jar` from the instance's `mods/` and delete `config/sodiumextras-client.toml` from the instance's `config/`. Sodium: upgrade to **0.8.12** (recommended — guide pin) or keep 0.6.x (valid fallback; all other pinned mods work with both). Reese's Sodium Options is **optional** (0.8.12+ menu reskin, not required by anything). [VERIFY] at next launch: no dependency errors; Sodium options screen opens; DH LODs + Bliss render; Entity Culling hides entities behind walls; Create machinery visible at range.

### Wave 0 Performance Review — Sodium Extras Distance Culling (Aug 2026)

- [x] **Review** — verified all 13 Wave 0 performance mods against primary sources (Modrinth API descriptions, SodiumExtras source, ModernFix 5.27.20 jar mixin list, MoreCulling wiki, FerriteCore/Lithium/Dynamic FPS pages). Verdict: no hard conflicts; one real duplication + one guide accuracy error + two latent watch items.
- [x] **Finding 1 — duplication**: Sodium Extras 1.0.8 ships its own entity + block-entity **distance culling enabled by default** (`entityDistanceCulling.enable`, `tileEntityDistanceCulling.enable`); its own config comment notes the overlap ("maybe you use another mod for that"). Duplicates Entity Culling (tr7zw, line-of-sight path-tracing — strictly more capable). The block-entity variant defaults to 64-block horizontal / 32-block vertical and **visually hides Create machinery beyond ~64 blocks** (Create is whitelisted only in the entity list, not the block-entity list — default tile whitelist is `waterframes:*` only). Harmful in a Create-heavy pack at render distance 10.
- [x] **Decision**: keep Sodium Extras, **disable its distance culling** (user choice — "keep with distance culling off"). Its surviving unique value: fog-off toggle (DH's own FAQ recommends it for fog on real chunks), True Darkness (Dark Mode Everywhere is GUI-only), FPS counter (BetterF3 is F3-screen only), cloud height, font-shadow toggle, fast language reload. Redundant/moot otherwise: borderless fullscreen (Modern UI covers), hideJREI (pack uses EMI). **⚠ SUPERSEDED the same day** — see "Sodium Extras + Sodium Options API Removed" above: the sodiumoptionsapi→RSO→Sodium-0.8.12+→incompatible chain makes the keep path impossible on NeoForge 1.21.1; both mods were removed.
- [x] **Config override created**: `config/sodiumextras-client.toml` — `[embeddiumextras.performance.distanceCulling.entities] enable = false` + `[...tileEntities] enable = false`; other keys left to defaults (NeoForge fills on save). Modid `sodiumextras`, CLIENT config (verified in SodiumExtras.java: `modContainer.registerConfig(ModConfig.Type.CLIENT, EmbyConfig.SPECS)`).
- [x] **Guide accuracy error fixed**: the Sodium Extras blurb documented an **FPS limiter** and **particle rendering overrides** — neither exists in 1.0.8 (verified in `EmbyConfig.java`). Actual features are fog toggle, True Darkness, FPS counter (min/avg + GPU/RAM), cloud height, chunk fade speed, font shadows, hideJREI, distance culling, borderless fullscreen, fast language reload. The FPS cap is Sodium's own "Frame Rate Limit", not a Sodium Extras option. GUIDE.md table row + blurb rewritten; distance-culling-OFF note + dependency list corrected (Sodium + Sodium Options API).
- [x] **Watch item — MoreCulling leaf culling**: MoreCulling has leaf-culling modes (fast/blockstate/etc., default = vanilla/off). Cull Leaves (Wave 0.5) owns leaf culling in the pack; enabling MoreCulling's leaf modes would double-cull. Guide table row now says keep at default.
- [x] **Watch item — Entity Culling whitelist**: tr7zw's Entity Culling FAQ: whitelist block entities that render beyond their bounds — e.g. Create pulleys — if they misbehave (config screen → whitelist).
- [x] **Checked and clean**: FastWorkbench vs ModernFix (no recipe cache in ModernFix 5.27.20 — verified in jar mixin list), ModernFix vs FerriteCore (ModernFix page: "always have FerriteCore installed"), ModernFix vs Continuity (dedicated `ctm_resourceutil_cme` bugfix), MoreCulling vs Entity Culling (disjoint targets), Lithium vs BadOptimizations (server logic vs client render caching), Sodium+Iris+DH+Bliss (documented stack), Dynamic FPS (background only; NeoForge config via `config/dynamic_fps.json` — Mod Menu screen is Fabric-only).
- [x] DRIFTWOOD-GUIDE.pdf regenerated.
- [ ] **Instance action (XMCL)** — copy `config/sodiumextras-client.toml` to the instance's `config/` (replaces generated defaults; NeoForge fills remaining keys on first save). [VERIFY] at next launch: Sodium settings show distance culling toggles OFF; Create contraptions/machines still render past 64 blocks; no entity pop-in difference vs before (Entity Culling unchanged).

### Wave -1 JVM Tuning — Researched & Updated (Aug 2026)

- [x] **Research** — reviewed Java 21 VM/GC/memory consensus for Minecraft/NeoForge/Distant Horizons: [AllTheMods Java guide](https://allthemods.github.io/alltheguides/help/java/), [CleanroomMC JVM args wiki](https://cleanroommc.com/wiki/end-user-guide/args), [Distant Horizons official FAQ](https://gitlab.com/distant-horizons-team/distant-horizons/-/wikis/1-user-guide/1-frequently-asked-questions/1-general/General), r/feedthebeast threads. Consensus: generational ZGC is the GC for Java 21 modded packs (DH's FAQ explicitly names G1GC as a stutter source and recommends ZGC for Java 21+); `-Xms` must equal `-Xmx` (prevents heap-resize micro-stutters); 12–16 GB is the sweet spot for 10+ core CPUs per DH's own guidance; don't over-allocate (longer GC cycles); G1GC shouldn't exceed ~12 GB.
- [x] **Bug fixed in old recommendation**: the headline line had `-XX:SoftMaxHeapSize=12G` set *above* `-Xmx8G` (inverted — soft cap must be ≤ hard cap, so it was a silent no-op), and every RAM-table row violated the `-Xms` = `-Xmx` rule. Replaced with equal-heap rows: 16 GB → `-Xms8G -Xmx8G`, 32 GB → `-Xms12G -Xmx12G`, 64 GB → `-Xms16G -Xmx16G`. SoftMaxHeapSize demoted to an optional advanced tweak (ZGC self-tunes; ATM's server example uses it with `Xms < Xmx`).
- [x] **GUIDE.md updated**: Wave -1 §Performance Tuning rewritten — new recommended line (`-Xms12G -Xmx12G -XX:+UseZGC -XX:+ZGenerational -XX:+AlwaysPreTouch -XX:+PerfDisableSharedMem -XX:+DisableExplicitGC -XX:+UseDynamicNumberOfGCThreads`), per-flag rationale, memory-sizing guidance (ZGC RAM overhead from no compressed object pointers; 12–16 GB target for this 230-mod pack), DH-specific note (CPU-bound, not RAM-bound — lower DH CPU Load before raising the heap), tuned-G1GC fallback block, sources listed. General Tips §Java & Performance bullet updated to reference the new set + the `-Xms` = `-Xmx` rule.
- [x] **Flags verified locally**: Temurin 21.0.11 accepts the full set (`-XX:+UseZGC -XX:+ZGenerational -XX:+AlwaysPreTouch -XX:+PerfDisableSharedMem -XX:+DisableExplicitGC -XX:+UseDynamicNumberOfGCThreads`) with no extra unlock flags.
- [x] DRIFTWOOD-GUIDE.pdf regenerated; new JVM content verified in PDF text.
- [ ] **Instance action (XMCL)** — replace the JVM args (instance settings → Java → JVM Arguments) with the new recommended line, adjusted to the RAM-table row for your system. [VERIFY] at next launch: F3 shows no heap-resize; DH LODs generate without stutter; no OOM at 128–256 LOD distance.

### Bliss Shader Settings Section (Aug 2026)

- [x] **User report**: any Indirect Lighting mode besides SSAO (GTAO, SSRT AO, SSRT AO+GI) introduces noise in the distance. Verified against Bliss source (Stable branch, v2.1.2): `indirect_effect` values 0–4 = Vanilla AO / SSAO / GTAO / SSRT (AO only) / SSRT (AO + GI); the shader's own lang file marks both SSRT modes "LOTS OF VISUAL NOISE" (red UI warning). SSAO (default 1) is the only mode with a dedicated Distant Horizons code path (`dhDepthTex1` in `shaders/lib/indirect_lighting_effects.glsl`).
- [x] **GUIDE.md**: new `#### Bliss Shader Settings — Recommended` subsection under Shaderpack — settings table (Ambient Light → Indirect Lighting = **SSAO**; AO/GI multipliers; SSRT toggles inert under SSAO; Shadow Resolution 2048→1024 lever; Shadow Distance 8 chunks; entity shadows ON; TAA ON — temporal SSAO cleaner; Temporal Upscaling for 4K headroom; DH LOD AO/SSS/SSR; DH shadowmap support OFF — shader's red warning), user-tested Indirect Lighting note, DH noise-texture footnote. Shader Setup section now cross-references the table (incl. the SSAO rule).
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### FA Extensions Removal — Animal Model Corruption (Aug 2026)

- [x] **User bug report**: vanilla animals rendered with only some polygons visible (partially "culled" models). Diagnosis: the **Details** addon inside Fresh Animations: Extensions — the only addon that adds extra model geometry to animals (ears, tusks, etc.) — was corrupting animal models in the EMF/Fresh Animations path. Known issue class: EMF/Fresh Animations + Sodium "missing parts / broken polygons" reports ([EMF GitHub #340](https://github.com/Traben-0/Entity_Model_Features/issues/340)). User confirmed: removing the pack → animals render correctly.
- [x] **Decision**: Fresh Animations: Extensions **removed entirely** (user choice — full removal over swapping to the individual safe addons). Base **Fresh Animations stays**; EMF + ETF stay (Armored Legacy still requires them). Lost extras (all cosmetic): Emissive mob-eye glow under Iris, skeleton Quivers, Classic Horses, Slamacow, Creeper/Spiders edits, Objects.
- [x] GUIDE.md updated: Texture Packs table (−row), blurbs (−bullet), Armored Legacy + ETF rows (dropped "FA Extensions' Emissive addon" claims), Resource Pack Load Order (renumbered 21→20; Fresh Animations now #5, no "above Extensions" constraint), Mod Count Summary ("+21" → "+20 resource packs"; Wave 0.5 note +−FA Extensions). Resource pack count 21 → **20**; no mod changes (182/48/230 unchanged).
- [x] **Instance action (XMCL)** — FA Extensions zip removed from the instance's resource packs (user confirmed — animals render correctly after removal).
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Added Mods (Aug 2026 — Bumblezone Re-adopted)

- [x] **The Bumblezone v7.15.3+1.21.1-neoforge re-added** (Wave 2 — Dimensions) — user request (was installed in the instance but undocumented; user confirmed it should be part of the pack). Reverses the Jul 2026 skip ("dimension overload — 4th dimension doesn't integrate with progression"); user instruction supersedes the prior policy call (precedent: Day Counter Plus override). NeoForge 1.21.1 build verified via Modrinth API, updated 2026-07-31, 3.85M DL, All Rights Reserved, client+server. [Modrinth](https://modrinth.com/mod/the-bumblezone)
- [x] **Dependency audit** — the current 1.21.1 NeoForge build requires **only Resourceful Lib** (MIT, 32.9M DL, NeoForge 1.21.1 ✅). The old Wave 7 spec's MidnightLib requirement is outdated — no longer needed. Bumblezone's **optional** dep (Better Advancements) is already in the pack (Wave 0.5). Counts: 181→**182** mods, 47→**48** deps, 228→**230** total (Wave 2 34→35 / 7→8 / 41→44).
- [x] **Fit notes**: cozy, fully opt-in dimension (enter by right-clicking any bee nest/hive — no structure hunting) fits the chill pillar; vanilla-bee AI repaired by Neo Bee Fix (Wave 4) applies inside; honey/royal jelly/bee bread feed Farmer's Delight honey recipes; Field Guide auto-catalogs its mobs; bundles 2 resource packs — **Shader Emissive** (now functional under Bliss with ETF/Continuity) and **Anti Tripophobia** (comfort option) — both documented in the guide.
- [x] GUIDE.md updated: Dimensions table (+Bumblezone), new "#### The Bumblezone — Bee Dimension" subsection (entry, content, integrations, bundled packs), Wave 2 interdependency note (× Neo Bee Fix × FD), Wave 0.5 Dependencies table (+Resourceful Lib), Mod Count Summary.
- [ ] **Instance action (XMCL)** — add `the_bumblezone-7.15.3+1.21.1-neoforge.jar` + Resourceful Lib (1.21.1 NeoForge build); enable the Bumblezone Shader Emissive resource pack (Anti Tripophobia optional). [VERIFY] at next launch: right-click a bee nest/hive → dimension entry works; bees behave normally (Neo Bee Fix); no worldgen crashes; emissive blocks glow under Bliss.
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Shader Swap — Bliss as Main (Aug 2026)

- [x] **Main shader switched: Complementary Unbound + Euphoria Patches → Bliss Shaders** (user request). Bliss was already in the pack as the optional alternative (Aug 2026 weapon-QoL review); it now becomes the **only** shaderpack.
- [x] **Bliss Shaders** (X0nk) — fantasy-styled large edit of Chocapic13 V9; scene variation + customization focus. Iris-native (no mod needed), quality presets Low→High, colored lighting, **LabPBR support** (specular f0/reflectance, roughness/metalness, subsurface scattering, emissive, parallax occlusion), **Distant Horizons support (v2.1.0+ required)**. 13.4M DL, 1.21.1 ✅.
- [x] **Euphoria Patches mod removed** — its patcher role only applies to Complementary; Bliss needs no add-ons. Counts: Wave 0 14→13 mods (25→24), Total **182→181** mods, **229→228** (47 deps unchanged).
- [x] **PBR note documented**: Bliss reads LabPBR maps when present, but Faithful 32x (base layer) ships none — flat 32x is the intended baseline; pack-provided maps (Fire Rekindled, RAY's 3D Rails) still apply where present.
- [x] GUIDE.md updated: Shaderpack table (Bliss only) + blurb + PBR note + baseline guidance (replaces the Euphoria settings table + CU RTX settings table), Shader Setup section (3. Shader Setup), Session 1 ("Install Bliss shader"), ColorWheel blurb (dropped CU/Euphoria-specific claim — shader-agnostic), Forgematica shader caveat (→ Bliss), Mod Count Summary (Wave 0 14→13/25→24; Total 181/47/228; "+2 shaderpacks" → "+1 shaderpack").
- [ ] **Instance action (XMCL)** — remove `ComplementaryUnbound*.zip` from `shaderpacks/` and the Euphoria Patches jar from `mods/`; keep Bliss active in the Shaderpacks screen. [VERIFY] at next launch: DH LODs render through Bliss, Create contraptions render (ColorWheel), Forgematica holograms usable (toggle shaders with `K` if flicker), FPS at target with High preset.
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Resource Pack Review & Faithful 32x Swap (Aug 2026)

- [x] **Full resource pack review** — 14 candidate packs reviewed (Modrinth API + CurseForge pages; all verdicts grounded in project data). Results:
  - ✅ **Added (9)**: **Modded Omelet** (modern 1.21.5-style spawn eggs backported + restyled for 204 mods, incl. ~9 in-pack: Aether, TF, Cataclysm, Hybrid Aquatic, Upgrade Aquatic, Darker Depths, MineColonies, Northstar Redux, Guard Villagers; zero deps), **Mace Fusion** (3D mace model + 32x texture), **Armored Legacy** (vanilla armor remodel + working trims; requires EMF+ETF), **Overlay's** (OptiFine-format CTM overlays — dirt moisture/cracks/transitions; requires Continuity+Connector), **Motsch's Better Leaves** (denser leaves, explicit in-pack mod support; pair with Cull Leaves), **Fresh Waystones Texture** (Waystones is Wave 2 — direct fit), **The RCP** (language-only rename-compat for 300+ mods incl. Mekanism/AE2/Create/TFMG — no textures, registry IDs unchanged, safe for quests/recipes), **Improved Create 32x** + **Improved AE2** (32x texture extensions designed to pair with Faithful 32x).
  - ❌ **Skipped (5)**: **Weskerson's Nature** (no 1.21.1 build — versions start at 1.21.4; same blocker as Rainbow's Foliage/Mickey Joe's Flowers), **Mickey Joe's "Barely Default"** (requires OptiFine for full features — pack runs Iris; broad 16x overhaul would fight the 32x base + Modern UI fonts), **Stefan's Armors'N'Items** (needs CIT mod or datapack on 1.21.1; anvil-rename cosmetics off-theme; would conflict with Armored Legacy over diamond/netherite armor), **RAY's 3D Ladders** (redundant — RAY's 3D Rails already covers 3D ladders, per the Jul 2026 removal decision; its extra mod-ladder support targets mods not in pack), **Improved Hotbar by EvyPlay** (restyles boss/health/armor/saturation bars — conflicts with Enhanced Boss Bars + Overflowing Bars + AppleSkin; stale since May 2024; author admits incompatibility warnings).
- [x] **Base pack swap: Patrix 32x → Faithful 32x** (per user consideration, recommended). Tradeoff: lose PBR normal/specular depth under Complementary Unbound; gain complete 32x coverage (blocks/items/mobs/GUI/fonts), lighter load (fits the 4K/70-80 FPS budget), cohesive palette. BetterGrassify samples the active pack at runtime — connected grass unaffected.
- [x] **+5 support mods (Wave 0.5)**: EMF + ETF (Armored Legacy; ETF also activates Fresh Animations Extensions' Emissive addon under Iris), Continuity + Sinytra Connector (Overlay's; Forgified Fabric API already in pack), Cull Leaves (Better Leaves FPS companion). Counts: 177→182 mods, 47 deps unchanged, 224→229 total.
- [x] **Load order moved to its own section** — new `#### Resource Pack Load Order` under Texture Packs (GUIDE.md): 19 packs, top = highest priority, hard constraints annotated. Fixed a latent ordering bug: FA Extensions previously sat **below** Fresh Animations despite the "load above" rule — now 5 & 6.
- [x] GUIDE.md updated: Texture Packs table (10→19 packs), per-pack blurbs, new Resource Pack Load Order section, Wave 0.5 Visual & Client QoL table (+EMF/ETF/Continuity/Cull Leaves), Wave 0.5 Dependencies table (+Sinytra Connector), Mod Count Summary (+Wave 0.5 — Resource Packs row 5/0/5; Total **177→182** mods, **224→229**; "+10" → "+19 resource packs").
- [x] **Follow-up — Rekindled CTM added** (Fire Rekindled's official CTM addon — connected fire/soul fire + moss carpet overhangs). Viable only now that Continuity + Connector are in the pack (added above for Overlay's) — zero new mods. 16x, MIT, 1.21.1 ✅, 96K DL. Load order: directly **above** Fire Rekindled. Sodium note: disable "Animate Only Visible Textures" if fire textures desync. Slime/honey connected textures are in a separate pack (Viscous CTM) — not added. Resource pack count 19 → **20**; no mod changes. GUIDE.md table + blurb + load order updated; summary notes "+20 resource packs" / "+10 resource packs"; Total note +Rekindled CTM.
- [x] **Follow-up — Faithful 32x AppleSkin Addon added** — AppleSkin's hunger/saturation HUD icons at 32x in Faithful style; AppleSkin ships 16x icons from the mod, so this syncs the food bar to the 32x base. 1.21.1 ✅, updated Jul 2026, CC-BY-ND-4.0, 74K DL. Zero deps, zero conflicts (only AppleSkin's own icons). Load order: UI tier, directly after Enhanced Boss Bars (#8). Resource pack count 20 → **21**; no mod changes. GUIDE.md table + blurb + load order updated; summary notes "+21 resource packs" / "+11 resource packs"; Total note +AppleSkin Addon.
- [x] **Follow-up — Mod Descriptions added** (user request — included in the texture/resource pack load order, not just the Field Guide section). Field Guide companion, **resource pack** (lang data only — lore descriptions for 200+ mods' entries; full coverage for FD, Brewin' And Chewin', Supplementaries, Spice of Life: Carrot Edition, Explorer's Compass, Waystones; partial for Cataclysm, Simply Swords, Upgrade Aquatic). Requires Item Descriptions mod (already in pack). MIT, 1.21.1 ✅, updated Jun 2026, 24K DL. Load order: #5, grouped with The RCP (both lang-only, position irrelevant). GUIDE.md table + blurb + load order updated; Field Guide section clarified (optional resource pack, now points at the load order); summary notes "+22 resource packs" / "+12 resource packs"; Total note +Mod Descriptions.
- [x] **Follow-up — The RCP REMOVED** (user report: the pack is not 1.21.1-compatible — in-game incompatibility claim despite the CurseForge blurb; user word is ground truth). Removed from the texture pack table, blurbs, and load order (renumbered 22 → 21). Mod Descriptions stays (still the pack's only lang pack; "grouped with The RCP" references cleaned). Resource pack count 22 → **21**; no mod changes. GUIDE.md + summary notes ("+21 resource packs" / "+11 resource packs") + Total note (−The RCP) updated.
- [ ] **Instance action (XMCL)** — remove Patrix 32x pack and the RCP pack; add the 21 packs per GUIDE.md §Resource Pack Load Order; add 5 jars (EMF, ETF, Continuity, Sinytra Connector, Cull Leaves). [VERIFY] at next launch: Armored Legacy armor trims render, Overlay's moisture/crack transitions on dirt/farmland, connected fire/soul fire via Rekindled CTM, AppleSkin food bar at 32x, Field Guide modded entries show lore, no resource-pack incompatibility warnings, no crashes from Connector.
- [x] **Follow-up — Enhanced Boss Bars install notes added** (user request): GUIDE.md Enhanced Boss Bars blurb now documents the Jade settings to set on install — Main Menu ➜ Mods ➜ Jade ➜ Config ➜ Mod Settings → **Display Bosses** → OFF, **Boss Bars Overlap** → Push Down Tooltip. Jade's Mods section entry synced to the same two settings (previously only listed Display Bosses). No pack/mod changes; doc-only.
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Space Mod Swap — Northstar Redux + CC:Tweaked Removal (Aug 2026)

- [x] **Stellaris 1.4.23 removed** (Wave 7 — Space Exploration) — user dislike of its Overworld worldgen (satellite dishes, operation bases). Replaced by **Northstar Redux 0.6.4** (Create-based space mod: player-built rockets, science unlocks, oxygen/temperature systems, Moon/Mars/Mercury/Venus). Northstar generates **no Overworld structures** (the "Structures" addon is not installed).
- [x] **CC:Tweaked removed** (Wave 8 — Programmable Computers) — per user request. Wave 8 docs, Lua tutorial, KubeJS recipe gates, config override all deleted; its quest chapter was already absent since the 2026-08-13 quest regeneration.
- [x] Dependencies removed with Stellaris: **Potentials API**, **Sky Aesthetics** (dependency audit below superseded). Northstar needs no new deps — Create 6.0+ and GeckoLib already in pack.
- [x] **Compat-mod audit** (patterns: `stellaris`, `beyond.earth`, space-mod `compat` rows): no Stellaris addon/compat mods installed; TFMG fuel compat is native; Apothic Compats unaffected.
- [x] **Quests**: new Northstar chapter (18 quests, id `82000000`) with real detection — item tasks for crafts, `dimension` tasks for planet arrivals + optional planet-stone fallback. Pipeline extended (`generate.py` now emits `dimension` and task-level `optional`; 2 new pytest tests). Stellaris chapter `90000000` + its quest data deleted.
- [x] **Counts**: totals 178/49/227 → **177/47/224**; quests 211 → **212** (17 out, 18 in). GUIDE.md wave table, phase tables, tech-loop rows, quest chapter list updated.
- [x] **Instance swap checklist** delivered in GUIDE.md (remove the old space-mod jars; add northstar-redux 0.6.4; do not install the Structures addon). Existing worlds keep inert Stellaris blocks and lose its items — fresh world recommended.
- [ ] **Pending in-game verification** (post instance swap): (1) quest book — Northstar chapter renders, crafted items detect; (2) craft Rocket Station → quest completes; (3) reach the Moon → Moon Landing completes (if the `northstar:moon` dimension task errors, report back — escape hatch: item-only task, item IDs are verified); (4) EMI recipe review; (5) after any Northstar update, re-run `generate.py`/`validate.py`.
- [ ] **Compat pending — Mekanism × Create: Northstar** (Wolfieboy09, 1.21.1 NeoForge) — MekaSuit space-suit modules (Space Suit Unit, Oxygen Tank Unit, Oxygen Tank Expansion, Space Suit Insulation, Heat Resistive Unit) + Mekanism liquid O₂/H₂ as rocket fuel + liquid-O₂ life support. Latest 1.21.1 build (1.2.0) targets Redux 0.6.1; we pin 0.6.4 — the author's own issues confirm Redux updates break the bridge until a matching build ships. Add when a 0.6.4+ build lands; no new deps (Mekanism + Redux both in pack).

### Modern UI Adoption & UI Cleanup (Aug 2026)

- [x] **Modern UI v3.13.0.1 (NeoForge 1.21.1)** added (Wave 0.5 — Visual & Client QoL) — full UI framework: modernized screens, own text engine (TTF/OTF fonts via Action Center `Ctrl+K` → Preferences), fancy rounded tooltips, Gaussian blur + fade-in backgrounds, borderless fullscreen, GUI-scale slider, OptiFine-style zoom (ships on `C` — **disable in Action Center**, Sodium owns the key). Client-only, zero deps, LGPL-3.0, 20M DL. [Modrinth](https://modrinth.com/mod/modern-ui). 1.21.1 actively maintained; compat list: Sodium/Iris OK, mods with replaced functions: Blur/Controlling/TipTheScales/Inventory Pause/Emojiful/Ding-class.
- [x] **Removed — Smooth GUI** (Wave 0.5 Visual) — Modern UI covers its blur + fade-in feature set ("full functional coverage" per Modern UI docs); keeping both = double blur/animation.
- [x] **Removed — Tooltip Overhaul** (Wave 0.5 Visual) — Modern UI ships its own fancy tooltip renderer; same conflict class as Legendary Tooltips per Modern UI docs. Equipment-compare is the lost feature.
- [x] **Removed — Controlling** (Wave 0.5 Inventory & UI) — Modern UI lists it under "mods with similar functions are replaced" ("another way of implementation").
- [x] **Removed — Immersive UI** (Wave 0.5 Visual) — overlapping UI-overhaul scope with Modern UI (both hook the GUI rendering layer); kept **Immersive Hotbar** (animates slot contents — different mechanism, works alongside).
- [x] **Removed — Smooth Font texture pack** — redundant under Modern UI's font stack; load order renumbered 11 → 10 packs.
- [x] **ImmediatelyFast config override created** (`config/immediatelyfast.json`) — `hud_batching`, `font_atlas_resizing`, `fast_text_lookup` set `false` per Modern UI's 1.21.1 compat requirement ("random game crashes" otherwise). Option names + JSON format verified against ImmediatelyFast 1.21 branch source (`ImmediatelyFastConfig.java` — Gson JSON, NOT TOML).
- [x] GUIDE.md updated: Wave 0.5 Visual & Client QoL table (+Modern UI, −Immersive UI −Smooth GUI −Tooltip Overhaul), Inventory & UI table (−Controlling), What to Expect blurbs, Configuration section (Modern UI + ImmediatelyFast block), Texture Packs table + load order (−Smooth Font), Keybindings (+Open Action Center `Ctrl+K` row, C-zoom conflict note). Mod Count Summary: Wave 0 18→15 mods (29→26), Total 182→179 mods, 49 deps, 231→228.
- [ ] **Instance action (XMCL)** — remove the 4 jars (Smooth GUI, Tooltip Overhaul, Controlling, Immersive UI) + Smooth Font pack; add `ModernUI-NeoForge-1.21.1-3.13.0.1-universal.jar`; copy `config/immediatelyfast.json`; disable Modern UI zoom in Action Center. [VERIFY] at next launch: no crashes with ImmediatelyFast + Modern UI, tooltips render via Modern UI, hotbar animations still work (Immersive Hotbar).
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Modern UI Follow-up (Aug 2026)

- [x] **First Person Model removed** (Wave 0.5 — Visual & Client QoL) — per user request (doesn't like the feel). Its dependency **Not Enough Animations** goes with it (verified: FPM was NEA's only consumer in-pack — Eating Animation on 1.21.1 lists zero deps via Modrinth API). **3D Skin Layers stays** (standalone). GUIDE.md updated: table row, What-to-Expect bullet (now 3D Skin Layers only), Architectury API dependency row + blurb, Real Camera compat list (dropped FPM + NEA). Mod Count Summary: Wave 0 15→14 mods (26→25), Total 179→178 mods, 49 deps, 228→227.
- [x] **Legendary Tooltips conflict noted** in GUIDE.md Modern UI block — "ver 1.16 ~ 1.21.4; solution: disable Modern UI tooltip via config screen". Not in pack — documentation only, prevents a future re-add mistake.
- [x] **Mod Menu question resolved — NOT installed, nothing to remove**: Mod Menu is Fabric/Quilt-only (no NeoForge build); pack runs NeoForge 1.21.1. GUIDE's "Mod Menu" references were generic shorthand for the in-game mods screen — standardized to "Mods screen" wording (BetterF3, Tectonic, Better Combat, quick-links bullets). Pack's actual mod-list tool: **Better Modlist** (already in pack); config GUIs via YACL/Cloth.
- [x] **Better ModList question resolved — KEEP**: it IS the unofficial NeoForge port of Mod Menu (mods-screen search/badges/categories) — not a duplicate of Modern UI, which provides no mods-screen replacement. No conflict declared or reported vs Modern UI on 1.21.1 (its only declared incompatibility is Better Mods Button, not in pack; verified via Modrinth API — project KUZAAwdD). Actively maintained (v21.1.1, Aug 2026), zero required deps on 1.21.1. Mods screen is the pack's config-access hub in a 178-mod pack — search/badges earn their place.
- [ ] **Instance action (XMCL)** — remove First Person Model + Not Enough Animations jars.
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Combat Vision + Weapon-QoL Review (Aug 2026)

**Pillar clarification (AGENTS.md Core Vision).** User wants late-game battles with powerful weapons as an explicit power-fantasy expression — *deferred* to Phase 2+ (peaking Phase 3) so the early ramp stays forgiving. Three decisions locked: (1) **steampunk/Create-only weapons** — Create: Gunsmithing (personal firearms) + Create: Big Cannons + Advanced Technologies (artillery) + Apotheosis-forged melee define the ceiling; (2) **weapons, not enemy scaling** — current bosses (Cataclysm, Twilight Forest, Incendium, Apotheosis elites) stay the target set, no new invasion/boss mods; (3) **Mekanism stays the tech spine** — Modern Industrialization / GregTech / Oritech / Immersive Engineering / Voltex rejected (Voltex is also Forge 1.20.1, wrong loader). AGENTS.md "Combat & weapons — the power fantasy's edge" paragraph added.

**Adopted — 9 mods + 2 deps + 1 shaderpack** (all NeoForge 1.21.1 verified via Modrinth API):

- [x] **FastWorkbench 1.21.1-9.1.3** (Wave 0 — Performance) — caches crafting-table recipes, kills late-game crafting lag. Requires Placebo (in pack). MIT, 67K DL. [Modrinth](https://modrinth.com/mod/fastworkbench)
- [x] **MoreCulling v1.0.9** (Wave 0 — Performance) — block-face culling, complements Entity Culling (entities vs block faces). Requires Cloth Config API (in pack). GPL-3.0, 61M DL. [Modrinth](https://modrinth.com/mod/moreculling)
- [x] **BadOptimizations 2.4.1** (Wave 0 — Performance) — bundle of small perf fixes. Zero deps. MIT, 39M DL. [Modrinth](https://modrinth.com/mod/badoptimizations)
- [x] **Searchables 1.0.2** (Wave 0.5 — Inventory & UI) — search bars in creative/EMI-style GUIs. Zero deps. MIT, 36M DL. [Modrinth](https://modrinth.com/mod/searchables)
- [x] **Loot Beams: Refork neoforge-1.21.1-3.4.7** (Wave 0.5 — Visual) — rarity-tinted drop beams, makes Apotheosis gear pop. Client-side. MIT, 345K DL. [Modrinth](https://modrinth.com/mod/loot-beams-refork)
- [x] **Nirvana Library 2.2.0** (Wave 0.5 — Dependency) — config+networking lib required by Loot Beams Refork. Requires Fzzy Config (in pack) + Common Network. [Modrinth](https://modrinth.com/mod/nirvana-library)
- [x] **Common Network 1.0.21-1.21.1** (Wave 0.5 — Dependency) — networking lib required by Nirvana Library. Zero deps. MIT, 3.3M DL. [Modrinth](https://modrinth.com/mod/common-network)
- [x] **Auto HUD 8.11+1.21.1-neoforge** (Wave 0.5 — Visual) — auto-hides idle HUD elements. Native NeoForge build — **no Sinytra Connector, no Fabric API** (verified; the Fabric API dep in Modrinth metadata is Fabric-loader-only). LGPL-3.0, 1.5M DL. [Modrinth](https://modrinth.com/mod/autohud)
- [x] **Create: Central Kitchen 2.6.0** (Wave 1 — Create Addons) — Mechanical Arm automation of FD blocks (Cooking Pot, Cutting Board, Stove) + B&C kegs. Complements Create Slice & Dice (Slice & Dice adds new machines; Central Kitchen automates the FD blocks themselves). Requires Create + Create: Dragons Plus (both in pack). LGPL-3.0, 4.8M DL. [Modrinth](https://modrinth.com/mod/create-central-kitchen)
- [x] **Spice of Life: Carrot Edition solcarrot-1.21.1-1.16.6** (Wave 4 — Food) — *gentle* food-variety reward (max HP per distinct food, never a repeat-meal penalty). Zero deps. CurseForge-only. Config in `saves/<world>/serverconfig/`, NOT tracked `config/`. [CurseForge](https://www.curseforge.com/minecraft/mc-mods/spice-of-life-carrot-edition)
- [x] **Bliss shader** (Wave 0 — Shaderpack, alternative) — optional stylized shaderpack alongside Complementary Unbound. Not a mod — documented as an alternative. [Modrinth](https://modrinth.com/shader/bliss-shader)
- [x] **Apothic Compats 0.2.4.2** (Wave 3 — Loot & Affixes) — datapack-driven Apotheosis bridges. **Initially mis-rejected as "orphan"** (research surfaced only the Amendments/Ancient Reforging slice); corrected after the full CurseForge support list confirmed **11 in-pack targets**: AE2, Aether, Cataclysm, Create, Curios, Deep Aether, Deeper and Darker, Farmer's Delight, Mekanism Tools, Supplementaries, Twilight Forest (affixed loot, affixes, gear sets, invaders, affixable potato cannons/dart shooters, Curios loot categories). Requires Apotheosis. CurseForge-only. [CurseForge](https://www.curseforge.com/minecraft/mc-mods/apothic-compats)

**Skipped after deeper review:**

- [x] **NTGL gun packs — none suitable.** Create: Gunsmithing's NTGL framework supports datapack-style gun packs (`registry.json` + assets), but **no curated NTGL gun-pack ecosystem exists for 1.21.1** — only micro-fixes (renewable lead, breakable framed-glass trapdoors, Alloyed compat, each a few hundred DL). Custom packs are a DIY datapack task (NTGL wiki), not a drop-in download. Documented in GUIDE.md §Create: Gunsmithing; steampunk-only rule reaffirmed (don't reach for TACZ/Scorched Guns to fill the gap).

- [x] GUIDE.md updated: Wave 0 Performance table (+3), Wave 0.5 Visual/Inventory/Dependencies tables (+5), Wave 1 Create Addons table + detail blurbs (+2), Wave 3 Loot & Affixes table + interdependency note (+Apothic Compats), Wave 4 food table + Spice of Life note (+1), Shaderpack table (+Bliss alternative), Create: Gunsmithing expansion-path note. Mod Count Summary: Wave 0 15→18 mods (26→29), Wave 1 19→21 (24→26), Wave 3 9→10 (21→22), Wave 4 13→14, Total 173→183 mods, 47→49 deps, 220→232.
- [x] **Create: Misc and Things REMOVED** (user request, same session) — not a fit after first look; removed from Wave 1 table + detail blurb + STATUS. Wave 1 21→20 mods (26→25), Total 183→182 mods, 232→231.

### Added Mods (Aug 2026 — Seasons & Weather)

- [x] **Serene Seasons Plus v5.1.1** (Wave 2 — Environment) — Serene Seasons add-on for NeoForge 1.21.1: sub-season day/night speed + improved snow piling/melting. Required deps (all already in pack): Serene Seasons, Better Days, Gabou's Libs. [Modrinth](https://modrinth.com/mod/serene-seasons-plus)
- [x] **GlitchCore v2.1.0.2** (Wave 2 — Dependency) — loader-abstraction library, required by Serene Seasons 10.1.0.3 (verified via Modrinth API: Serene Seasons lists it as a required dep on 1.21.1). [Modrinth](https://modrinth.com/mod/glitchcore)
- [x] **Gabou's Libs v1.8.1** (Wave 2 — Dependency) — library required by Serene Seasons Plus. No deps. [Modrinth](https://modrinth.com/mod/gabous-libs)
- [x] **Day length ownership corrected — moved to Serene Seasons Plus.** Better Days is the *engine* but is installed at **default** (RATIO mode); Serene Seasons Plus drives it at runtime via `[seasonalDaylightCycle]`. Verified from the 5.1.1 jar source (`SereneSeasonPlusCommon.onTick` → `ConfigHacks.setTimeSpeeds` reflects into Better Days `ConfigHandler.COMMON.daySpeed`/`nightSpeed`; Better Days 3.3.6.3 has no `SEASON` mode). Created `config/sereneseasonsplus-common.toml` (40-min cycle: `customCycleLength=true`, `customDayLength=0.5`, `customNightLength=0.5`); deleted the bogus `config/betterdays-common.toml` (invented `SEASON` mode + `cropEffect`).

### Removed Mods (Aug 2026 — Desolate Overworld)

- [x] **When Dungeons Arise** removed from Wave 5 — 38 roguelike structures including the ocean ships (Illager Corsair, Illager Galley, Undead Pirate Ship), blimps, lighthouses, and camps. User wants a desolate, vanilla-OG Overworld. GUIDE.md updated: Wave 5 table row, "When Dungeons Arise — Roguelike Structures" section, session plan (Session 2 → YUNG's Better Dungeons), Torchmaster notes, Structure Generation row, Mod Count Summary (Wave 5 7→6 mods, 12→11 total).
- [x] **Structory: Towers** removed from Wave 2 — biome-themed towers/outposts. Structory kept (user wants some ground structures). GUIDE.md updated: Structures table row, "Structory & YUNG's Additions" section, Mod Count Summary.
- [x] **Chunky** removed from Wave 0 Infrastructure — Distant Horizons team now advises against Chunky + DH (redundant; "Swiss cheese" terrain artifacts). DH's built-in Distant Generation + NoisiumForked cover far terrain/LOD. GUIDE.md updated: Infrastructure table row, First Launch Checklist §4, DH tip, "Chunky — World Pregenerator" section, Incendium/Tectonic pregen notes. Mod Count Summary Wave 0 15→14 mods, 25→24 total.
- [x] **`datapacks/wda-density-tweak/`** deleted — obsolete (tuned When Dungeons Arise structures only). `datapacks/README.md` and `rarer-better-dungeons/README.md` reframed to the desolate-vanilla rationale (no longer "vs WDA").
- [x] **Mod Count Summary** — grand total mods 171→169, deps 44→46, total 215 (unchanged). Wave 2 5→7 deps (39→41 total); Wave 5 7→6 mods (12→11 total).

### ExtraQuests Removal & Create World Section (Aug 2026)

- [x] ExtraQuests removed from GUIDE.md (Wave 4.5 Quest Addons table, Mod Count Summary) — quest book uses only standard FTB Quests types; daily/weekly quests contradict chill living; ExtraLib dependency never in pack. Logged under Removed Mods (Aug 2026)
- [x] GUIDE.md "Create World" section added — world creation settings (Survival, Normal difficulty, Allow Commands/Cheats OFF, Default world type, Structure Generation ON, Game Rules → Chat all disabled), quest book + data pack pre-steps
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Added Mods (Aug 2026 — Better Grass)

- [x] **BetterGrassify v1.7.0+neoforge.1.21.1** (Wave 0.5 — Visual & Client QoL) — OptiFine **Fancy + Fast** better grass for NeoForge: grass block, snowy grass, mycelium, podzol, dirt paths, warped/crimson nylium connect and blend with neighbors (Fancy) or use the top texture on sides (Fast). Bonus: Better Snow + Better Snowy Grass (Serene Seasons synergy). Client-side only, Apache-2.0, 14.3M downloads, actively maintained (updated Jun 2026). 1.21.1 now in major-bugfix-only maintenance mode; the 1.7.0 build includes the ModernFix crash fix (#58). Config via YACL (already in pack) or file; integrates with Sodium's options screen. [Modrinth](https://modrinth.com/mod/bettergrassify)
- [x] **Forgified Fabric API** (Wave 0.5 — Dependency) — Fabric API implemented on NeoForge (Sinytra); required by BetterGrassify. Apache-2.0, 25.4M downloads, very actively maintained (updated Aug 2026). [Modrinth](https://modrinth.com/mod/forgified-fabric-api)
- [x] **Fast Better Grass resource pack NOT added** — BetterGrassify covers the fast mode natively, so the pack is redundant; no texture/model conflicts either way. (Reviewed alongside this batch)
- [x] Foliage review history updated: the LambdaBetterGrass "Fabric-only" gap is now closed by BetterGrassify on NeoForge.
- [x] GUIDE.md updated: Wave 0.5 Visual & Client QoL table + What to Expect bullet + Wave 0.5 Dependencies table; Mod Count Summary Total 170→171 mods, 42→43 deps, 212→214.
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Added Resource Packs (Aug 2026 — Patrix 32x)

- [x] **Patrix 32x** (Wave 0 — Texture Pack, base layer) — full 32x PBR base pack; normal/specular maps feed Complementary Unbound + Euphoria Patches' PBR pipeline. **Added per user request — already installed in the instance**; reverses the Jul 2026 skip. Loaded at the **bottom** of pack order (11th) so the 16x overlays (Smooth Font, Fresh Animations, RAY's 3D Rails, etc.) win on top. Caveats from the Jul 2026 review still stand: notably heavier at the same resolution (watch the 4K / 70-80 FPS target — reduce Shadow Resolution to 1024 first), incomplete mob/item coverage stays vanilla 16x, and OptiFine-only features (CTM, natural textures, block-state randomization) are inactive under Iris — 32x textures + PBR maps still apply. [CurseForge](https://www.curseforge.com/minecraft/texture-packs/patrix-32x)
- [x] GUIDE.md updated: Texture Packs table + blurb + load order (11. Patrix 32x). Mod Count Summary "+11 resource packs" note now matches the 11-pack table.
- [x] DRIFTWOOD-GUIDE.pdf regenerated

### Dependency Audit (superseded Aug 2026)

- [x] Superseded 2026-08-20 — both audited dependencies (the sky renderer and the API lib shipped with the removed space mod) were removed with their mod; the replacement requires no extra dependencies. See the Space Mod Swap section above.

### Removed Mods (Aug 2026)

- [x] **Reforged: Accurate Block Placement** removed from Wave 6 (GUIDE.md Core Decoration table + Mod Count Summary) — per user request; config override `config/reforged_accurate_block_placement.json` deleted
- [x] **The Magic Mirror** removed from Wave 6 (GUIDE.md Core Decoration table, dedicated section, Mod Count Summary) — per user request
- [x] **Recall Potions** v1.5.0 (NeoForge 1.21.1) added to Wave 0 — Storage & Travel — then **replaced** with Simple Recall Potion per user request (808K+ DL vs 43K DL)
- [x] **Simple Recall Potion** v1.0.6 (NeoForge 1.21.1, zero deps) — Wave 0 — Storage & Travel — drink to teleport to your spawn point (same-dimension by default, interdimensional config option). Complements Waystones.

### GUIDE.md Conciseness Pass (Aug 2026)

- [x] GUIDE.md trimmed from 4,629 → 4,300 lines (~25 KB). Removed duplicated wave intros/closings, the redundant "Performance Mods — Install and Forget" table, per-mod prose blurbs condensed to one-line bullets (Wave 0.5 What to Expect + Daily Tools, texture packs, Create Addon Details), duplicated interdependency notes (Hybrid Aquatic × Starcatcher/Better Fishtanks, Starcatcher's Delight × FD, Better Fishtanks × Create, Wave 6 trio), and fluff lines (Wave 2/3/5/6 intros, Torchmaster, Wave 7). Fixed Wave 1 broken integration table (glued `### Ores` heading), deduped Mod Count Summary (stale Wave 2 row), moved it out of the middle of Wave 7 to before Keybindings. All instructions/configs/compat notes preserved. DRIFTWOOD-GUIDE.pdf regenerated cleanly.
- [x] Fixed accidental setext heading: Wave 6 "Chill living fit" paragraph was directly followed by `---` with no blank line, so CommonMark (via cmarker) rendered it as an H2 in the PDF ToC. Added the blank line — now renders as a normal paragraph. Scan confirmed it was the only occurrence.

### Added Mods (Aug 2026 — Mekanism Guide Mods)

- [x] **Mekanism: Ponders 1.0.3** (Wave 1 — Tech) — Ponder scenes for Mekanism machines and multiblocks (fission/fusion reactors, turbine). Modrinth, NeoForge 1.21.1. Requires Mekanism. Matches Create's in-game Ponder guides.
- [x] **Mekanism Guide Book** (Wave 1 — Tech) — Patchouli-based in-game guidebook for Mekanism 10.7. CurseForge. Requires Patchouli (already in pack via Apotheosis).

### V3 Documentation (MODLIST.md) — Full V3 Mod List Written

- [x] All mods pinned to their exact NeoForge 1.21.1 versions
- [x] Waves 0-8 fully documented with mod tables, dependency tables, and config sections
PUT 90.*:

### Wave 8 — Programmable Computers (removed Aug 2026)

- [x] Wave 8 (Programmable Computers) removed from the modlist on 2026-08-20 — see the Space Mod Swap section above.

- [x] Interdependency notes for every wave noting cross-mod interactions

### Wave 0 — Foundation (~65 mods incl. deps)

- [x] Performance: Sodium, Iris, Lithium, Distant Horizons, ModernFix, ImmediatelyFast, Entity Culling, Dynamic FPS, NoisiumForked
- [x] Visual/Client QoL: LambDynamicLights, BetterF3, Sound Physics Remastered, AmbientSounds, The Immersive Music Mod, Immersive UI, Status Effect Bars Reforged, Traveler's Titles, Better Modlist, First Person Model, 3D Skin Layers, Better Safe Bed, Presence Footsteps, Particular Reforged, Wakes Reforged, Cosy Critters, Foxified Dense Flowers
- [x] Inventory/UI: EMI, Jade, Jade Addons, JourneyMap + Integration, AppleSkin, Inventory Essentials, Advancement Plaques, Tooltip Overhaul, Loot Journal, Better Advancements, Polymorph, Shulker Box Tooltip, Item Borders, JEED, MEED
- [x] Storage & Travel: Sophisticated Storage, Sophisticated Backpacks, Waystones, GraveStone Mod
- [x] Dependencies: Cloth Config, Architectury API, YACL, Curios API, CreativeCore, OctoLib (ShatterLib), Fragmentum, M.R.U, Balm, Iceberg
- [x] Added YUNG's API to New Dependencies

### Wave 1 — Tech, Colony & Chunk Loading (~22 mods)

- [x] Core Tech: Create, Mekanism, AE2, Applied Mekanistics
- [x] ~~Ores: Skniro's Nether & End Ores~~ (removed — unnecessary, unpopular mod)
- [x] Colony Automation: MineColonies, Structurize, MultiPiston, BlockUI, Domum Ornamentum
- [x] Infrastructure: Chunk Loaders, SuperMartijn642's Config Lib, SuperMartijn642's Core Lib
- [x] Mekanism Addons: Advanced Finders, Advanced Chimneys + ForgeEndertech dep
- [x] Create Addons: Create Crafts & Additions, Create: Power Grid, Steam 'n' Rails, TFMG, TFMG Energy Converter, Mekanism TFMG Compat
- [x] Create Addons (new): Create: Gunsmithing + NTGL + GeckoLib + Framework deps, Create Ornithopter Glider
- [x] All interdependency notes written (Create→Mekanism→AE2 integration, colony tech gating)
- [x] Create train addons: Train Utilities, Railways Navigator, Interiors, Train Parts, Threaded Trains

### Wave 1.1 — Megabuilding (1 mod + 18 schematics)

- [x] Forgematica 0.4.3+mc1.21.11 — client-side schematic mod (Litematica unofficial Forge/NeoForge port)
- [x] No dependencies (standalone — no MaLiLib required)
- [x] 18 recommended schematics curated from abfielder.com covering all three progression phases
- [x] Schematics span: starter homes (4), farms/windmills (3), factories/warehouses (5), underground bases (1), castles (2), bridges/walls/towers (3)
- [x] All schematics are free .litematic downloads, survival-compatible (Forgematica is visual guide only)
- [x] Shader caveat noted: toggle shaders off while placing schematics if flickering occurs
- [x] Interdependency notes written (Forgematica × Create / MineColonies / AE2 / Apotheosis)
- [x] Session plan written (5 progressive building sessions)

### Wave 2 — Exploration (~36 mods)

- [x] Overworld Worldgen: Terralith, Tectonic
- [x] Nether Worldgen: Incendium v5.4.4 (Modrinth — NeoForge 1.21.1 data pack wrapper)
- [x] Environment: Serene Seasons
- [x] Underground & Ocean: Darker Depths, Upgrade Aquatic, Hybrid Aquatic
- [x] Structures: YUNG's full collection (12 mods: 9 Better series + Bridges + Extras + Better End Island), Structory, Structory: Towers
- [x] End Access: End Remastered, Moog's End Structures, Nullscape (data pack)
- [x] Dimensions: The Aether, Deep Aether, Umbral Skies, Deeper and Darker, Twilight Forest
- [x] Navigation: Explorer's Compass
- [x] Mobility: Immersive Aircraft, Small Ships, Hang Glider, Man of Many Planes, Immersive Machinery
- [x] Dependencies: BCLib, WorldWeaver, WunderLib, Moog's Structure Lib, TerraBlender

### Wave 3 — Equipment Magic & RPG (~20 mods incl. 10 deps)

- [x] Apotheosis fully configured (5 modules, socketing, reforging costs, enchants, spawners, Deadly module enabled)
- [x] Dependencies added: Placebo, Apothic Attributes, Apothic-Enchanting, Apothic-Spawners, Patchouli
- [x] Simply Swords, Too Many Bows, Spartan Weaponry Unofficial, Relics (RPG Series), Runes, Immersive Armors
- [x] Simply Swords deps: Simply Tooltips, Fzzy Config
- [x] Relics (RPG Series) / Skill Tree deps: Ranged Weapon API, Spell Engine
- [x] Runes dep: Bundle API
- [x] Skill Tree (RPG Series), Pufferfish's Skills
- [x] Compat notes: Apotheosis affixes apply to Simply Swords weapons, Twilight Forest bosses, Incendium weapons, and Immersive Armors pieces

### Wave 4 — Food, Farming & Comfort (~10 mods)

- [x] Farmer's Delight, Brewin' And Chewin'
- [x] Storage Delight, My Nether's Delight, Ocean's Delight, Ender's Delight (moved from Wave 2)
- [x] More Delight updated to 26.05.20a-1.21-neoforge (was stale pin 3.5.0)
- [x] Delight Lib 26.05.18-1.21-neoforge added as required dep for More Delight
- [x] Starcatcher (fishing overhaul — 100+ fish, minigame, trophies, tournaments, catalogue)
- [x] Better Fishtanks (functional aquariums — fish bags, decorations, feeding, Create/AE2 compat)
- [x] All mod URLs switched to Modrinth
- [x] All interdependency notes written (food storage with AE2)

### Wave 4.5 — Quests (1 mod)

- [x] Bountiful 8.0.0-beta.2 selected
- [x] Bountiful generates fetch/kill/exploration quests and automatically includes items from all installed mods
- [x] Compat notes for Bountiful + Farmer's Delight + Simply Swords + Apotheosis

### Wave 5 — Combat (~7 mods)

- [x] Better Combat, Mutant Monsters, L_Ender's Cataclysm, When Dungeons Arise, Enchantment Descriptions
- [x] Create Big Cannons + Ritchie's Projectile Library
- [x] All mods configured at defaults

### Wave 6 — Building & Decoration (12 mods + 3 deps)

- [x] Rechiseled (replaces Chipped), Supplementaries (Modrinth), Macaw's Bridges/Doors/Roofs/Windows, Building Wands, Handcrafted
- [x] Rechiseled addons: Rechiseled: Create, Rechiseled: Applied Energistics 2
- [x] Fetzi's Displays (glass cloches, katana stands, wall holders, racks)
- [x] Lili's Pottery (decorative pots, vases, urns, amphores, clay variants)
- [x] Dependencies: Moonlight Library (Supplementaries), Resourceful Lib (Handcrafted), Fusion (Rechiseled)

### Wave 7 — Space Exploration (1 mod)

- [x] Northstar Redux 0.6.4 as core space mod (Create-based; no worldgen; no new deps — Create 6.0+ and GeckoLib already present)
- [x] TFMG fuel compat is native — no compatibility bridge needed

### Wave 8 — Programmable Computers (removed Aug 2026)

- [x] Wave 8 (Programmable Computers) removed from the modlist on 2026-08-20 — see the Space Mod Swap section above.

### Design choices

- [x] Added Hybrid Aquatic, Starcatcher, Better Fishtanks, Fetzi's Displays, Lili's Pottery (July 2026)
- [x] Skipped Hybrid Delights (no NeoForge 1.21.1), Jungle Treehouse Village (no NeoForge 1.21.1), The Bumblezone (dimension overload — 4th dimension doesn't integrate with progression)
- [x] Switched all mod links from Modrinth to CurseForge (July 2026)
- [x] Updated installation instructions to use XMCL instead of GDLauncher (July 2026)
- [x] TFMG fuel compat handled natively by the space mod — no compatibility bridge needed
- [x] Added Advanced Finders + Advanced Chimneys to Wave 1 (Mekanism addons for ore detection and factory smoke)
- [x] Added ForgeEndertech as dependency for Advanced Finders and Advanced Chimneys
- [x] Removed Regions Unexplored (FPS concerns with Terralith/Tectonic overlap, no global-tag structure compat)
- [x] Removed Additional Structures (Towns & Towers + Structory cover structures adequately)
- [x] Removed Nullscape (BetterEnd's biome overhaul replaces Nullscape's End transformation)
- [x] Removed Spell Power (Pufferfish's Skills + Skill Tree cover RPG); Spell Engine retained as mandatory dependency of Relics (RPG Series) and Skill Tree
- [x] Replaced Corail Tombstone with GraveStone Mod (NeoForge native, active development)
- [x] Added MineColonies + 4 deps to Wave 1 (colony automation gates Phase 2 tech progression)
- [x] Added Chunk Loaders + 2 deps to Wave 1 (cross-dimension chunk loading for Phase 2+ automation)
- [x] Added Create Big Cannons + Ritchie's Projectile Library (artillery engineering for colony defense)
- [x] Expanded FD addons: Storage Delight, More Delight, My Nether's Delight, Ocean's Delight
- [x] Expanded Apotheosis config with socket count, gem types, reforging costs, spawner details, enchanting details
- [x] Deadly module enabled (traps are telegraphed, GraveStone protects items)
- [x] AE2 channels kept on (logistics puzzle)
- [x] Mekanism chunk loading disabled (delegated to Chunk Loaders mod)
- [x] vanilla advancements + Fancy Toasts for progression guidance (no FTB Quests)
- [x] Replaced BlazeandCave's Advancements Pack with v1.17.2, placed in global datapacks folder (later removed — advancement bloat)
- [x] Noisium → NoisiumForked (Noisium archived on 1.21.1; NoisiumForked is active fork, same functionality)
- [x] Constant Music → The Immersive Music Mod (Constant Music forced 2min fade limit with 5 songs; Immersive Music Mod has 147 songs, biome/structure-aware, no dead air gap override)
- [x] Chat Heads → removed (multiplayer-only feature, unnecessary for singleplayer pack)
- [x] Reliable Advancements → Better Advancements (reverted — Better Advancements is the original, actively maintained; RA was a fork that didn't add meaningful value over BA)
- [x] V1/V2 files deleted, V3 files renamed (MODLIST-V3.md -> MODLIST.md, GETTING-STARTED-V3.md -> GETTING-STARTED.md)
- [x] PDFs rendered via cmarker Typst package: MODLIST.pdf (434 KB) and GETTING-STARTED.pdf (1.08 MB) in rendered/
- [x] Removed Obscure API from V3 mod list (not available on NeoForge — Obscure Tooltips and Loot Journal depend on Fragmentum instead)
- [x] Fixed OctoLib URL: modrinth.com/mod/octo-lib → modrinth.com/mod/shatterbyte-lib (slug is shatterbyte-lib, not octo-lib)
- [x] Moved all 9 YUNG's mod URLs from CurseForge to Modrinth (CurseForge lacks NeoForge 1.21.1 builds; Modrinth has them for all YUNG's mods)
- [x] More Delight version pin fixed: 3.5.0 → 26.05.20a-1.21-neoforge (3.5.0 doesn't exist; mod uses date-based versioning)
- [x] Added Delight Lib as Wave 4 dependency (required by More Delight v26.04.30+)
- [x] Switched all Wave 4 mod URLs to Modrinth
- [x] Replaced JEI with EMI — recipe viewer with recipe trees, craftable mode, favorites, zero dependencies
- [x] Replaced Fancy Toasts with Advancement Plaques — glowing plaque popups (copper/silver/gold borders), requires Iceberg
- [x] Added Iceberg as Wave 0.5 dependency (Advancement Plaques library)

- [x] Terralith URL switched from CurseForge to Modrinth (NeoForge 1.21.1 available)
- [x] Tectonic URL switched from CurseForge to Modrinth (NeoForge 1.21.1 available)
- [x] Better Days added to Wave 0 (day/night length control, chill QoL)
- [x] Serene Seasons added to Wave 2 (seasonal colors, crop impact ON, temperature damage OFF)
- [x] Better Days config: 2x day length, time effects disabled (compat with Serene Seasons crop system)
- [x] MineColonies + 4 deps (Structurize, MultiPiston, BlockUI, Domum Ornamentum) confirmed CurseForge-only — not on Modrinth for NeoForge 1.21.1

- [x] Replaced GDLauncher with XMCL across all docs (MODLIST.md, GETTING-STARTED.md, STATUS.md) — July 2026

## Pending

- [ ] Test launch with Waves 0-8 — generate default configs for all mods
- [ ] **[KNOWN — cosmetic]** Serene Seasons × Distant Horizons: far-LOD foliage stays the color of the season it was generated in (near chunks are correct). The only dedicated fix (`Serene Seasons X Distant Horizons`) is Fabric-only — rejected on the pack's no-Sinytra-Connector precedent (Continuity, Antique Atlas, etc.). Cosmetic + far-distance only; self-heals as DH regenerates LODs. Accept — no action.
- [ ] Verify no mod conflicts
- [ ] Cross-wave integration testing
- [ ] Config tuning per mod
- [ ] After test launch, capture Apotheosis defaults (adventure.cfg, ench.cfg, enchantments.cfg, potion.cfg, village.cfg) then apply overrides per GUIDE.md §Wave 3

### Data Packs

- [x] Day Counter mod added to Wave 0 — replaces typewriter day counter (data pack format was incompatible with 1.21.1)
- [x] BlazeandCave's Advancements Pack removed (advancement bloat, conflicts with Fancy Toasts progression clarity)
- [x] No Creeper Grief data pack

### Shaderpacks

- [x] Complementary Unbound selected and documented in MODLIST-V3.md

### Merged Guide (Jul 2026)

- [x] GUIDE.md created — single canonical source merged from MODLIST.md + GETTING-STARTED.md
- [x] Driftwood Typst theme — cover page with logo, TOC, color palette from logo
- [x] templates/modlist.typ removed — superseded by single guide.typ
- [x] generate-pdf.ps1 simplified to single DRIFTWOOD-GUIDE.pdf output
- [x] DRIFTWOOD-GUIDE.pdf compiled cleanly

### Added Mods (Jul 2026)

- [x] Beautiful Enchanted Books (Wave 0 — Visual & Client QoL)
- [x] ~~Subtle Effects~~ → replaced with Particular Reforged (Wave 0 — Visual & Client QoL)
- [x] Darker Depths (Wave 2 — Underground & Ocean)
- [x] Upgrade Aquatic + Blueprint dep (Wave 2 — Underground & Ocean)
- [x] Cut Through (Wave 5 — Combat)
- [x] Nullscape re-added as End data pack (Wave 2 — End Overhaul)

### Fixed Crashes (Jul 2026)

- [x] Darker Depths 2.1.4 crash at startup — missing TerraBlender (worldgen API). Darker Depths 2.1+ requires TerraBlender or Biolith to register its cave biomes. Added TerraBlender NeoForge 1.21.1-4.1.0.8 as a required dependency.

### Added Mods (Jul 2026 continued)

- [x] Cherished Worlds v10.1.1 (Wave 0 — Visual & Client QoL)

### Added Mods (Jul 2026 batch 2)

- [x] Particular Reforged (Wave 0 — replaces Subtle Effects, same category)
- [x] First Person Model + Not Enough Animations dep (Wave 0 — Visual & Client QoL)
- [x] Presence Footsteps (Wave 0 — Visual & Client QoL)
- [x] Wakes Reforged (Wave 0 — Visual & Client QoL)
- [x] Shulker Box Tooltip (Wave 0 — Inventory & UI)
- [x] Item Borders (Wave 0 — Inventory & UI)
- [x] Vanilla Refresh → Typewriter Day Counter → Day Counter mod (Wave 0 — Visual & Client QoL)

### Removed Mods (Jul 2026 batch 2)

- [x] Obscure Tooltips — removed (Tooltip Overhaul retained as sole tooltip mod)
- [x] Subtle Effects — removed (replaced by Particular Reforged)

### Skipped After Review

- [x] Spelunkery — too much overlap with YUNG's Better Caves + Mekanism tool progression
- [x] Galosphere — Darker Depths chosen as the cave content mod instead; Galosphere gems are orphan content
- [x] Environmental — biome conflict with Terralith

### Added Mods (Jul 2026 batch 4)

- [x] Dynamic Villager Trades (Wave 0 — Village & Trading)

### Added Mods (Jul 2026 batch 3)

- [x] 3D Skin Layers (Wave 0 — Visual & Client QoL)
- [x] Better Safe Bed (Wave 0 — Visual & Client QoL)
- [x] Neo Bee Fix (Wave 4 — Food & Farming)
- [x] Small Ships (Wave 2 — Mobility)
- [x] Create: Power Grid (Wave 1 — Create Addons)
- [x] TFMG Energy Converter (Wave 1 — Create Addons) + Kotlin for Forge dep — crash was missing Kotlin stdlib, fixed

### Added Mods (Jul 2026 batch 12 — Mod Review)

- [x] Chunky (Forge/NeoForge) (Wave 0 — Infrastructure) — world pregenerator, `/chunky` commands, zero dependencies, complements NoisiumForked and Distant Horizons. Documented in GUIDE.md §Infrastructure with continue-on-restart config and first-launch checklist entry.

### Added Mods (Jul 2026 batch 13)

- [x] Mekanism Tools (Wave 1 — Mekanism Addons) — armor/shields/tools/paxels for Osmium, Bronze, Refined Obsidian, Refined Glowstone, Steel. Fills gear progression gap between netherite and MekaSuit. Official Mekanism addon. Apotheosis affixes apply to its gear.

### Added Mods (Jul 2026 batch 14 — MineColonies Addons)

- [x] JadeColonies (Wave 1.5 — Colony Addons) — Jade tooltips for MineColonies huts, workers, and Domum Ornamentum blocks. 5.4M DL, NeoForge 1.21.1.
- [x] Byzantine Styles Pack (Wave 1.5 — Colony Addons) — 3 build styles: Byzantine, Shogun, Nile. 12.4M DL, updated May 2026.
- [x] Stylecolonies (Wave 1.5 — Colony Addons) — Official MineColonies blueprint addon by Raycoms. 10+ styles: Steampunk, Frontier, Aquatica, High Magic, Antique, Crimson Keep, etc. 27.6M DL, updated Jul 2026. FairyTale style unavailable (requires Quark, not in pack).
- [x] Create: Colony Logistics (Wave 1.5 — Colony Addons) — bridges MineColonies to Create logistics (belts, chutes, trains). 54K DL, updated Jul 2026.
- [x] ColonyLink (Wave 1.5 — Colony Addons) — connects MineColonies builders to AE2 for resource monitoring and autocrafting. 11K DL, updated Jul 2026.
- [x] Day Counter (Wave 0 — Inventory & UI) — day counter HUD with dawn display and fade. Requires Hud Texts dependency. 5.7M DL, MIT, updated Apr 2026.
- [x] Day Counter config — superseded by Day Counter Plus (batch 28), then restored with Day Counter (batch 29 — see pending item there)

### Added Mods (Jul 2026 batch 15 — Questing Ecosystem)

- [x] FTB Library (Wave 4.5 — Questing Foundation) — core FTB library, 211M+ DL ecosystem. NeoForge 1.21.1.
- [x] FTB Quests (Wave 4.5 — Questing Foundation) — quest book framework with in-game editor. Chapters organized by mod. 211M DL, NeoForge 1.21.1.
- [x] FTB Teams (Wave 4.5 — Questing Foundation) — quest progress tracker. In SP: team of 1, transparent.
- [x] KubeJS (Wave 4.5 — Questing Foundation) — JavaScript scripting engine. Required by MineColonies Questline. Also enables recipe tweaks and event hooks for future pack tuning.
- [x] FTB XMod Compat (Wave 4.5 — Questing Foundation) — bridges FTB Quests with KubeJS, EMI compat layer.
- [x] MineColonies Questline (Wave 4.5 — Quest Addons) — pre-written 40+ quest chain for MineColonies. Requires FTB Quests + KubeJS.
- [x] ExtraQuests (Wave 4.5 — Quest Addons) — additional task/reward types: key-value tracking, progressive tasks, daily/weekly quests, console command rewards. 75K DL, MIT, Modrinth.

### Removed Mods (Jul 2026 batch 15)

- [x] Bountiful — replaced by FTB Quests ecosystem. Procedural bounty boards removed in favor of authored quest book with chapters per mod.

### Skipped After Review (Jul 2026 batch 15)

- [x] Certain Questing Additions — cosmetic UI animation tweaks for FTB Quests. Adds no functionality. Skipped.
- [x] FTB Echoes — superseded by FTB Quests. Two questing systems would conflict. Hologram NPC also clashes with chill living.
- [x] FTB JEI Extras — JEI-specific (pack uses EMI). Skipped.
- [x] FTB Ez Crystals — simplifies AE2 crystal growth. Contradicts 200h+ progression. Skipped.

### Removed Mods (Aug 2026)

- [x] ExtraQuests — removed after review. The pack's quest book (211 authored quests) uses only standard FTB Quests task/reward types (`item` + `xp_levels`); daily/weekly quests contradict the chill-living pillar ("no time-limited quests"); its only required dependency, ExtraLib, was never in the pack. Quest Addons now lists MineColonies Questline only. Wave 4.5 count: 6 mods, 0 deps (Total: 172 mods, 42 deps, 214).

### Discussion Held (Jul 2026 batch 15)

- [x] EMI vs JEI — keeping EMI. Recipe trees + native Create Ponder outweigh JEI addon ecosystem. FTB Quests works with EMI compat layer.
- [x] FTB Quests adoption — replaced Bountiful. Full ecosystem: 7 mods, 201 total. Pre-written MineColonies questline. ~85 quests to author for other mods.
- [x] Survival + single-player constraints added to AGENTS.md

### Added Mods (Jul 2026 — Research Batch)

- [x] Eating Animations (Wave 0 — Visual & Client QoL) — NeoForge 1.21.1 available as eatinganimation-1.21.0-6.0.1.jar
- [x] Camera Overhaul (Wave 0 — Visual & Client QoL) — v2.0.5 for NeoForge 1.21.0-1.21.1
- [x] Improved Village Placement (Wave 0 — Village & Trading) — v1.2.0 for NeoForge 21.1 — **requires Lithostitched** (undeclared dep, added to GUIDE.md Wave 0.5 dependencies)
- [x] The Magic Mirror (Wave 6 — Building & Decoration) — v1.21.1-1.0.0.1887 for NeoForge
- [x] \[DLS\] Dark Loading Screen (Wave 0 — Visual & Client QoL) — dark loading screen replacement
- [x] Incendium v5.4.4 (Wave 2 — Nether Worldgen) — Nether biome and structure overhaul by Starmute (34M+ DL). 8 new biomes, 9+ structures (Forbidden Castle, Sanctum, Nether Reactor), 25+ custom weapons, Hovering Inferno boss. Modrinth-only (NeoForge 1.21.1 .jar wrapper for the data pack). Alpha/unsupported 1.21.x port — Stardust Labs working on rewrite. Requires new world or Nether reset. Zero dependencies. Documented in GUIDE.md §Wave 2 Nether Worldgen with 5 interdependency notes and session plan update.
- [x] Immersive Machinery v0.2.0 (Wave 2 — Mobility) — rustic utility machines by Conczin. Copperfin submarine (sonar), Tunnel Digger (piloted boring machine), Redstone Sheep (farm automaton), Bamboo Bee (item transport drone). Zero dependencies. Ported to Immersive Aircraft 1.2.0. NeoForge 1.21.1, release status. Documented in GUIDE.md §Wave 2 Mobility with interdependency notes.
- [x] Immersive Armors (Wave 3 — Equipment Magic) — 40+ unique armor sets with custom effects by Conczin (36.4M DL). Wooden (arrow prot), Skeleton (speed, wither variant), Divine (dyeable, blocks 1 attack/min), Heavy (anti-knockback), Slime (bounce), Warrior (berserk), Robe (fire thorns), Steampunk (hostile radar, double jump, no fall damage), Prismarine (spikes, depth strider). All Apotheosis-compatible. Zero dependencies. NeoForge 1.21.1. Documented in GUIDE.md §Wave 3 Equipment with interdependency note.

### Skipped After Review (Jul 2026)

- [x] Dynamic Surroundings — overlaps with AmbientSounds (ambience), Presence Footsteps (footsteps), and Particular Reforged (particles)
- [x] Ambient Environment — redundant with AmbientSounds
- [x] Cool Rain — Fabric-only; Cool Rain Reforged stale; overlap with DS/AmbientSounds
- [x] Continuity — requires Sinytra Connector + FFAPI on NeoForge; Fusion (already a dep) covers connected textures
- [x] Smooth Scrolling Refurbished — Fabric-only, no NeoForge version
- [x] Pocketwatch — Fabric-only, no NeoForge version
- [x] Make Bubbles Pop — no native NeoForge (requires Connector); author planning port but unreleased
- [x] Fadeless — available but skippable; loading fades are a minor annoyance
- [x] Explosive Enhancement — not essential; Camera Overhaul already adds explosion screen shakes

### Added Mods (Jul 2026 batch 5)

- [x] Easy Anvils (Wave 0 — Utility & QoL) — anvil overhaul, requires Puzzles Lib (already in pack)
- [x] Euphoria Patches (Wave 0 — Shaderpack) — optional add-on for Complementary Unbound, standalone on NeoForge
- [x] Euphoria Patches recommended settings added to GUIDE.md (Popular Settings tab + feature table)
- [x] Architectury API installation documented in GUIDE.md Wave 0.5 (cross-loader dependency, was missing from GUIDE despite being in mod list)

### Config Overrides Created (Jul 2026)

- [x] YUNG's Better Caves (config/bettercaves/neoforge-1.21.1/better_cave.json) — cavern_spawn_chance 23% → 30%, gives Crystal Cavern biome more room to breathe
- [x] Waystones (config/waystones-common.toml) — free teleport (enableCosts=false), inventory button on "ANY"
- [x] Better Days (config/betterdays-common.toml) — SEASON mode, seasonDayMinutes=20.0, seasonLatitude=48.0, all time effects off, smooth sleep acceleration ⚠ SUPERSEDED Aug 2026 — this override never existed as written (Better Days 3.3.6.3 has no `SEASON` mode; file deleted as bogus, see "Added Mods (Aug 2026 — Seasons & Weather)"). Better Days runs at **default**; Serene Seasons Plus owns day/night length at runtime.
- [x] Dynamic Villager Trades (config/dynamicvillagertraders.properties) — global_randomness=0.7, refresh_delay=1, no_book_duplicates=true ⚠ File renamed Aug 2026 → `config/dynamicvillagertrades.properties` (matches the actual orlouge mod's MOD_ID; see Wave 0.5 config pass).
- [x] Loot Journal (config/obscuria/loot_journal-client.toml) — trackItemPickups=true, trackXpPickups=true
- [x] Mekanism (config/Mekanism/general.toml) — allowChunkloading=false (delegated to Chunk Loaders mod)
- [x] Aether (aether-common.toml) — Curios menu=true, no portal frame, starting loot on entry, Patreon message off, freezing/ruined portal data packs off
- [x] Comfortable Campfires (config/comfortable_campfires.json) — Regen I near campfires, Resistance I near soul campfires, 30s duration, 8-block range, 5s tick interval
- [x] GraveStone Mod (config/gravestone-server.toml) — obituary on, owner-only break, sneak pickup, break pickup, ghost off, friendly ghost on
- [x] Serene Seasons (config/sereneseasons-common.toml) — seasonal_crops=true, out_of_season_crop_behavior=0 (slow growth, no breakage), crop_tooltips=true
- [x] Apotheosis module toggles (config/apotheosis/apotheosis.cfg) — all modules enabled (Deadly, Enchantment, Adventure, Spawner, Potion, Village), Garden disabled, book on first join
- [x] Apotheosis spawner (config/apotheosis/spawner.cfg) — default spawner silk touch level 1, damage 100, no banned mobs
- [ ] Apotheosis remaining configs (adventure.cfg, ench.cfg, enchantments.cfg, potion.cfg, village.cfg) — need test launch to capture defaults, then apply overrides from GUIDE.md section
- [ ] Starcatcher (config/starcatcher-server.toml) — set giveGuideOnFirstJoin=false, verified after test launch

### Removed Mods (Jul 2026)

- [x] Vervada's 3D Plants (Wave 0 — Texture Pack) — removed due to incompatibility issues with other mods
- [x] 3D Ladders (Wave 0 — Texture Pack) — duplicate functionality; RAY's 3D Rails already covers 3D ladders alongside its rail models

### Added Mods (Jul 2026 batch 11 — Visual Polish)

- [x] (Bee's) Fancy Crops (Wave 0 — Texture Pack) — 6.5M downloads, works with Farmer's Delight
- [x] Fire Rekindled (Wave 0 — Texture Pack) — animated fire/lava/water textures, Create mod support
- [x] ~~Rainbow's Foliage (Wave 0 — Texture Pack) — foliage color variation~~ **REMOVED** — no compatible NeoForge version
- [x] ~~Mickey Joe's Flowers (Wave 0 — Texture Pack) — enhanced 3D flowers~~ **REMOVED** — no compatible NeoForge version
- [x] Bushy Pink Petals, Wildflowers & Leaf Litter (Wave 0 — Texture Pack) — 3D ground cover
- [x] Effectual (Wave 0.5 — Visual & Client QoL) — atmospheric particles, compatible with Particular Reforged via config
- [x] ~~Polytone (Wave 0.5 — Dependency) — required by Rainbow's Foliage~~ **REMOVED** — orphaned dep
- [x] TLib (Wave 0.5 — Dependency) — required by Effectual
- [ ] Effectual config tuning: disable cave dust (duplicated by Particular Reforged) after test launch

### Additional Mod Candidates

- [ ] Additional RPG classes (Wizards, Archers, Paladins — if Spell Engine ecosystem returns)

### Mod Review — 8 Candidates (Jul 2026)

- [x] Chunky — **ADDED** (Wave 0 Infrastructure) — zero-risk world pregenerator, complements NoisiumForked + DH
- [x] Physics Mod — skipped (history of Iris/3DSL bugs, 59MB for ragdolls, Chill Rule conflict with collapsing structures)
- [x] Panda's Falling Trees — skipped (user preference, non-essential QoL)
- [x] EnhancedVisuals — skipped (overlaps with Camera Overhaul + Effectual, HUD damage effects vs. Chill Rule)
- [x] Alex's Mobs (Unofficial Port) — skipped (6 months unmaintained, requires unofficial Citadel port; no alternative needed — current mob lineup sufficient)
- [x] JJThunder To The Max — **BLOCKED** (incompatible with all worldgen mods — would break Terralith/Tectonic/BetterEnd/YUNG's)
- [x] C2ME NeoForge — skipped (NoisiumForked + ModernFix cover chunk-gen optimization; seed non-determinism risk with mod worldgen)
- [x] ~~Patrix 32x — skipped (stick with current 16x packs; 32x PBR too heavy, incomplete mob/item coverage)~~ ✅ **ADDED Aug 2026 per user request (already installed)** — caveats stand: heavier at same res (watch 4K/70-80 FPS target), incomplete mob/item coverage stays 16x, OptiFine-only features inactive under Iris; loaded as base layer under the 16x overlays
- [x] Alex's Mobs alternatives researched: Naturalist, Critters & Companions, Friends&Foes, Ecologics — all rejected; current creature lineup sufficient

### Added Mods (Jul 2026 batch 6)

- [x] Hang Glider v21.1.0 (Wave 2 — Mobility) — simple fabric-and-wood glider, Phase 1 accessible exploration aid. Requires Puzzles Lib (already in pack).
- [x] Man of Many Planes 0.2.1 (Wave 2 — Mobility) — Immersive Aircraft addon, two Create-themed aircraft. Requires Immersive Aircraft (already in pack).

### Skipped After Review (Jul 2026 batch 6)

- [x] Automobility — no NeoForge version, only maintained for 1.20/1.20.1. Last updated Jun 2023. Abandoned.

### Added Mods (Jul 2026 batch 8 — Weather Particles)

- [x] Particle Rain v4-beta.10 (Wave 0 — Visual & Client QoL) — replaces default weather with particle effects: angled rain, desert sandstorms, fog, wind. Client-side only, by PigCart (same author as Cosy Critters). MIT license, 16.3M downloads, NeoForge 1.21.1 native.
- [x] Swinging Lanterns v1.5.0.1 (Wave 0 — Visual & Client QoL) — subtle physics-based swaying on lanterns and chains. Client-side only, no dependencies, 250K downloads, NeoForge 1.21.1 native.

### Added Mods (Jul 2026 batch 7 — Ambient Visuals)

- [x] Cosy Critters & Creepy Crawlies v0.3.3 (Wave 0.5 — Visual & Client QoL) — ambient atmospheric animals: birds, bugs, critters. Client-side only, 97KB, all effects configurable. NeoForge 1.21.1 native. By PigCart (GrandArtisan, 709K downloads).
- [x] Foxified Dense Flowers v1.0.0 (Wave 0.5 — Visual & Client QoL) — renders multiple flowers per block in flower fields. NeoForge 1.21.1 native, client-side only. NeoForge port of the original Fabric mod (172K downloads, MIT licensed). By owen233.

### Added Mods (Jul 2026 batch 9 — Dark UI)

- [x] Dark Mode Everywhere v1.4.0 (Wave 0.5 — Visual & Client QoL) — shader-based dark mode for all GUIs, 3 darkness levels, toggleable in-game. Client-side only, MIT license, 36.2M downloads, NeoForge 1.21.1 native. By Buuz135. No dependencies.

### Added Resource Packs (Jul 2026 batch 10 — Font)

- [x] Smooth Font 32x (Wave 0 — Texture Pack) — Faithful 32x-based smooth font, 7.8M downloads, 69KB. Only overrides font textures, safe alongside 16x packs. By apt9002. [CurseForge](https://www.curseforge.com/minecraft/texture-packs/smooth-font)

### Review History — Foliage Resource Packs (Jul 2026)

- [x] ~~Rainbow's Foliage — was blocked by Polytone dep; verified Polytone has NeoForge 1.21.1 but no compatible version of the resource pack for 1.21.1~~ ❌ REMOVED
- [x] Os' Colorful Grasses — 814K downloads but 32x texture conflict with 16x packs, Patreon-gated full version ❌ STILL SKIPPED
- [x] ~~Mickey Joe's Flowers — enhanced 3D flowers, 95K downloads, actively updated~~ ❌ REMOVED — no compatible NeoForge version found
- [x] Bushy Pink Petals, Wildflowers & Leaf Litter — 3D ground cover, 178K downloads, Apache 2.0, actively maintained ✅ ADDED (Jul 2026 batch 11)
- [x] (Bee's) Fancy Crops — 6.5M downloads, Farmer's Delight compatible — too popular to skip ✅ ADDED (Jul 2026 batch 11)
- [x] Retextured Vine — still too narrow in scope (vines only, 22K downloads) ❌ STILL SKIPPED
- [x] LambdaBetterGrass — Fabric-only. No NeoForge version exists. 9.2M downloads but on wrong modloader ❌ STILL SKIPPED (feature gap now closed by BetterGrassify on NeoForge — Aug 2026)

### Mod Review — 11 Candidates (Jul 2026 batch 16)

- [x] ~~Traveler Tool Belt — **ADDED** (Wave 0.5 — Inventory & UI) — tool radial menu, 2→9 slots, Curios integration. By Tiviacz1337. NeoForge 26.1.2.~~ ❌ REMOVED (Aug 2026 — per user request)
- [x] Field Guide — **ADDED** (Wave 2 — Field Guide) — spyglass-based creature/plant catalog. Exploration doc mod. By evanbones. NeoForge 26.1.2.
- [x] Create Deep Seas — **REMOVED** (was Wave 2) — requires Sable ecosystem (Create Aeronautics dep). Alpha/Early Access. Iris shader incompatibility concern. Dropped alongside Create Aeronautics.
- [x] Kaleidoscope Tavern — skipped (overlaps with Brewin' And Chewin' FD ecosystem — FD integration more valuable)
- [x] Kaleidoscope World Liquor — skipped (niche drink addon, overlaps with Brewin' And Chewin')
- [x] Kaleidoscope Dimensions Wine — skipped (niche dimension-wine addon, overlaps with Brewin' And Chewin')
- [x] Create: Gears and Tavern — skipped (tavern-themed Create addon, too niche, overlaps with food/drink ecosystem)
- [x] Create Aeronautics — skipped (requires Sable dep, known incompatibilities, existing flight stack sufficient)
- [x] Trek Mod — skipped (150+ structures but YUNG's + Structory already cover variety adequately)
- [x] TarotCards: Remastered — skipped (RNG buff/debuff cards overlap with Apotheosis gear ecosystem)
- [x] Create: Stats & Additions — skipped (uncertain scope, potential overlap with Create Crafts & Additions)

### Added Mods (Jul 2026 batch 17 — Deep Aether)

- [x] Deep Aether 1.1.5.1 (Wave 2 — Dimensions) — Aether dimension expansion: 5 biomes, Skyjade/Stratus gear, new mobs, poison swamps. Aeroblender pre-bundled, TerraBlender already in pack. No config needed.

### Added Mods (Jul 2026 — Countered's Smooth F5)

- [x] Countered's Smooth F5 (Wave 0.5 — Visual & Client QoL) — smooth third-person camera transitions on F5, cinematic, configurable. Client-only, no dependencies, CC0-1.0. NeoForge 1.21.1 (Modrinth). Replaced Seramicx's fork.

### Added Mods (Jul 2026 batch 18 — Twilight's Flavors & Delight)

- [x] Twilight's Flavors & Delight 3.2.2 (Wave 4 — Food & Farming) — Twilight Forest × Farmer's Delight crossover: 35+ FD-style TF foods, 4 TF knives, maze stove, 5 potion effects, trophy dismantling. Dependencies: TF + FD (both in pack). No config needed.

### Added Mods (Jul 2026 batch 19 — Umbral Skies)

- [x] Umbral Skies 1.6.2 (Wave 2 — Dimensions) — Aether × Twilight Forest crossover: Aether-themed TF structures, Aether boss trophies in TF style, TF-material gloves. Dependencies: Aether + TF (both in pack). No config needed.

### Added Mods (Jul 2026 batch 20 — Create: Dragons Plus + Create: Shimmer)

- [x] Create: Dragons Plus 1.11.2b (Wave 1 — Create Addons) — Bulk Fan Processing (coloring, freezing, ending, sanding), Fluid Hatch, Aether Bulk Enchanting. Library/lib for Create addon devs. GPLv3.
- [x] Create: Shimmer 1.2.10 (Wave 1 — Create Addons) — Create × Twilight Forest compat: Shimmer fluid + Bulk Transmutation automates TF item production. Requires Create: Dragons Plus. GPLv3.

### Removed Mods (Jul 2026 batch 21 — BetterEnd replacement)

- [x] BetterEnd: New Dawn — removed. Replaced by End Remastered (portal progression overhaul — 16 custom Ender Eyes instead of End dimension biomes). End overhaul was thin (unofficial continuation, 415K DL). End dimension now uses Nullscape (terrain) + Moog's End Structures for content.

### Added Mods (Jul 2026 batch 21 — End Remastered)

- [x] Controll… End Remastered 6.3.0 (Wave 2 — End Access & Structures) — portal progression overhaul: 16 custom Ender Eyes hidden across vanilla structures and bosses. Find 12+ to open the End. 42.6M DL, LGPLv3. No config needed.

### Added Mods (Jul 2026 batch 22 — UI/Inventory QoL Review)

- [x] Smooth GUI v2.0.0 (Wave 0 — Visual & Client QoL) — GUI open/close slide-in animation, fade-in background overlay + blur. Client-side, no deps, MIT license.
- [x] Immersive Hotbar v1.1.2 (Wave 0 — Visual & Client QoL) — animated hotbar slot transitions on pickup/use/swap, XP bar + level-up effects, tooltip animations. Requires YACL (already in pack). Complements Immersive UI (different animation targets).
- [x] Controlling v29.0.1 (Wave 0 — Inventory & UI) — search keybinds by name, show only conflicting binds, list available keys. Essential for 150+ mod pack. No deps, client-side.
- [x] ClientSort v2.2.2 (Wave 0 — Inventory & UI) — 4-mode sorting (creative/quantity/alphabetical/ID), Fill Stacks, Transfer Matching, customizable button positions. Requires Cloth Config API (already in pack). Keeps Inventory Essentials for drag-to-transfer.
- [x] Leave My Bars Alone v21.11.0 (Wave 0 — Visual & Client QoL) — keeps food/health/armor bars visible while riding mounts. Requires Puzzles Lib (already in pack). Client-side, by Fuzs.
- [x] Immersive Armor HUD v1.0.1 (Wave 0 — Inventory & UI) — armor type icons + durability indicators above armor bar. Works with modded armor. No deps, client-side, 6.9M DL.
- [x] Mod counts updated: Wave 0.5 50→56 (Visual & Client QoL 29→32, Inventory & UI 17→20)

### Added Mods (Jul 2026 batch 23 — Megabuilding)

- [x] Forgematica 0.4.3+mc1.21.11 (Wave 1.1 — Megabuilding) — Litematica unofficial Forge/NeoForge port. Client-side schematic rendering, holographic overlay, material list, layer-by-layer placement. Standalone (no MaLiLib), 1.6M DL, LGPLv3.
- [x] 18 schematics curated from abfielder.com — 4 Phase 1 starters, 3 farms/windmills, 5 factories/warehouses, 1 underground base, 2 castles, 3 bridges/walls/towers. All free, all .litematic format.
- [x] Wave 1.1 section written in GUIDE.md — mod entry, keybinds, usage guide, schematic table (18 rows), interdependence notes, session plan.
- [x] Shader compatibility caveat documented (toggle shaders off while placing schematics if flickering)

### Added Mods (Aug 2026 batch 24 — Mod Review Adoption)

- [x] Create: Protection Pixel (Wave 1 — Create Addons) — steampunk power armor with per-piece active abilities (Plague Helmet, Lancer Helmet, Magnetic Storm, Float Shield, etc.). Brass/alloy tier progression. Powered by Combustion Reactor (blaze rods + water). Requires Create + Kleiders Custom Renderer API. Fills Phase 2 power-armor gap between Mekanism Tools and MekaSuit.
- [x] Laser Bridges & Doors (Wave 6 — Building & Decoration) — laser platforms, bridges, doors, fences powered by redstone. Dye-customizable colors, dynamic length scaling with signal strength. Recipe requires End Crystal (post-End gate). No dependencies. By Mars (42.3M DL across projects).
- [x] Kleiders Custom Renderer API added as Wave 1 dependency (required by Create: Protection Pixel v1.9.0+)
- [x] GUIDE.md updated: Protection Pixel table row + detail section + interdependency note in Wave 1. Laser Bridges & Doors table row + detail section in Wave 6. Session plans updated. Mod counts: Wave 1 18→19 mods, Wave 6 11→12 mods. Total 162→164.

### Skipped After Review (Aug 2026 batch 24)

- [x] Extreme Reactors — redundant with Mekanism fission/fusion reactors (Wave 1). Both are multiblock nuclear reactor systems producing FE/t. Mekanism's chain already gates MekaSuit and antimatter. 1.21.1 NeoForge status uncertain ("it is coming"). "No mod should duplicate another mod's core purpose" rule.
- [x] Timeless and Classics Zero (TACZ) + all addons — redundant with Create: Gunsmithing (Wave 1). Both are firearm systems with crafting, attachments, ammo. TACZ requires unofficial NeoForge port by MUKSC (631K DL, Jul 2026) — "DO NOT REPORT BUGS TO ORIGINAL DEVS." Pack Upgrader needed for gun packs. 5+ moving parts from different maintainers. Create: Gunsmithing is native Create-integrated, steampunk-aesthetic, no port risk.
- [x] TACZ addons (Pack Upgrader, Create Armorer, TTI Gunpack, Cyber Armorer) — all depend on rejected parent mod. Gun packs are .zip data packs, not standalone mods.

### Added Mods (Aug 2026 batch 25 — Territory Conquest)

- [x] Torchmaster (Wave 5 — Combat & Mobs) — Mega Torch suppresses hostile spawns in a 64-block radius; Feral Flare Lantern (16-block) for cave/ruin clearing. NeoForge 1.21.1 native (`torchmaster-neoforge-1.21.1-21.1.9`), no deps. By xalcon.
- [x] KubeJS recipe gate `kubejs/server_scripts/wave5_torchmaster.js` — Mega Torch requires Ignitium Ingot (Cataclysm Ignite drop) + Create brass + blaze rods. Every torch = one earned boss conquest, not a daytime walk. Prevents torch-hoarding loophole.
- [x] No config override needed — verified defaults against mod source (`TorchmasterNeoforgeConfig.java`, mc/1.21.1 branch): `megaTorchRadius = 64`, `feralFlareRadius = 16`, `dreadLampRadius = 64`. The earlier draft override (`mega_torch_radius=48`, `feral_flare_radius=24`) used wrong key names (snake_case vs actual camelCase `megaTorchRadius`/`feralFlareRadius` under `[General]`), so it never applied — removed.
- [x] GUIDE.md Wave 5: Torchmaster mod row, "Torchmaster — Conquering the Land" section (5-step conquest loop: scout → clear → harvest → craft → plant), config notes, Chill Rule check. Wave 5 session plan Session 7 (First Conquest). Mod counts: Wave 5 7→8 mods, 13→14 total. Grand total 164→165.
- [x] Verify Torchmaster config key names against generated `torchmaster-common.toml` after test launch — **RESOLVED (2026-08-14)**: verified against mod source (`TorchmasterNeoforgeConfig.java`, Xalcon/TorchMaster `mc/1.21.1` branch, the pack's version line). Actual keys are camelCase (`megaTorchRadius`, `feralFlareRadius`, `dreadLampRadius`) under `[General]`, defaults 64/16/64. The draft override used snake_case under `[misc]` and never applied — file removed; defaults stand.
- [x] **Design decision (2026-08-14) — defaults retained deliberately.** `megaTorchRadius = 64`: cubic volume → 129×129×129 zone (village + farms + perimeter). Larger (96+) would let one boss kill pacify a whole region and collapse the renewable conquest loop (arenas re-summon bosses — the loop is a Wave 5 signature); the 48 draft underpays a conquest. `feralFlareRadius = 16`: Feral Flare is a clearing aid, not a territory tool — it sprinkles light-level-15 invisible blocks in a cube until the 255-light hardcap. At 16 → ~5-block light spacing (block light ≥ 10 holds); at 24 → ~7.5-block spacing, dark gaps reappear; raising the hardcap risks the mod's world-corruption warning. `blockOnlyNaturalSpawns = true` kept: `SPAWNER`/`STRUCTURE` spawn types are exempt, so YUNG's dungeons, WDA structures, and Cataclysm arenas keep their mobs at any radius — torches pacify surface spawns, never content. GUIDE.md Wave 5 Torchmaster config block updated with values + rationale.

### Added Mods (Aug 2026 batch 26 — Mod Review)

- [x] ~~EMIffect (Wave 0.5 — Inventory & UI) — status effects in EMI browser with descriptions, sources, and colors. Client-side only, zero deps beyond EMI, MIT license. Complements Status Effect Bars Reforged (HUD display vs EMI lookup).~~ ❌ REMOVED (Aug 2026 — swapped to JEED + MEED)
- [x] Fresh Animations: Extensions (Wave 0 — Texture Packs) — official FA all-in-one bundle by FreshLX: 8 extensions (Objects, Details, Emissive, Creepers, Spiders, Quivers, Classic Horses, Slamacow). Replaces individual Objects addon. 16x, vanilla-friendly. Load above Fresh Animations. 20.5M DL.


### Added Config — Tectonic Ocean Depth (Aug 2026)

- [x] Deeper oceans via Tectonic v3 config: `ocean_depth: -0.35` (45 blocks), `deep_ocean_depth: -0.7` (90 blocks, trench floor at Y=-28 deepslate), `monument_offset: -55`, `min_y: -96`, `ore_fix: true`
- [x] `ore_fix: true` redistributes ores to fill the expanded vertical range between bedrock (Y=-96) and trench floor (Y=-28)
- [x] `min_y: -96` gives 68 blocks of stone/ores below the trench floor — room for Darker Depths cave biomes + YUNG's Better Caves + underground rivers
- [x] Config override `config/tectonic.json` committed — 5 values changed from defaults
- [x] GUIDE.md Wave 2: Tectonic config section added — table with all 5 settings, depth formula, ore generation explanation, verification steps
- [x] Reviewed Deeper Oceans mod alternative — rejected (incompatible with Tectonic; Tectonic's own ocean depth config is more flexible and already integrated)


### Added Mods (Aug 2026 — Starcatcher's Delight)

- [x] Starcatcher's Delight v3.0.1 (Wave 4 — Food & Farming) — Farmer's Delight addon adding fish-related cooking recipes for Starcatcher catches. Fish fillets, sushi, fish stew, fried fish, and legendary dishes (absorption hearts). Quality tiers based on fish rarity. By wdiscute (same author as Starcatcher). NeoForge 1.21.1, 207K DL. Replaces former interdependency note that recommended installing it.
- [x] GUIDE.md updated: Wave 4 table row, interdependency note rewritten as installed-mod note, Starcatcher section integration updated, new detail section added, mod counts (Wave 4 9→10, total 167→168 / 210→211)

### Added Mods (Aug 2026 — Crate Delight)

- [x] Crate Delight v26.07.01 (Wave 4 — Food & Farming) — bulk ingredient storage: crates (apples, berries, eggs, fish) and bags (cocoa, sugar, gunpowder). Same author as Storage Delight (axperty, 30M DL). NeoForge 1.21.1, 2.8M DL. Complements Storage Delight's furniture — crates handle bulk, cabinets handle decorative.
- [x] GUIDE.md updated: table row after Storage Delight, detail section, mod counts (Wave 4 10→11, total 168→169 / 211→212)
- [x] End's Delight (foggyhillside, 30.8M DL) — skipped. Direct overlap with installed Ender's Delight (both add End-themed FD food). Author warns mod is beta/under development with stability caveats. "No duplicate purpose" rule.

### Skipped After Review (Aug 2026 batch 26)

- [x] Advancements Reloaded — redundant: Better Advancements (UI) + Advancement Plaques (popups) cover this; mod warns about conflicts with other advancement mods
- [x] Continuity — already skipped (STATUS.md §304): Fabric-native, requires Sinytra Connector bridge on NeoForge; Fusion covers connected textures natively
- [x] Immersive Hotbar — already in pack since Jul 2026 batch 22

### Removed Mods (Aug 2026 — Wave 2 Restructure)

- [x] Towns & Towers — removed data pack. Replaced by Structory: Towers + YUNG's Bridges + YUNG's Extras for superior structure variety without the Cristel Lib dependency burden
- [x] Cristel Lib — removed dependency (only used by Towns & Towers)

### Added Mods (Aug 2026 — Wave 2 Restructure)

- [x] Structory: Towers v1.0.16 (Wave 2 — Structures) — biome-themed towers, outposts, and landmarks with custom loot. Waystones integration. Standalone .jar mod. **v1.0.17 is broken** on NeoForge (config-loading race condition, crashes with Mod Menu). CurseForge.
- [x] YUNG's Bridges (Wave 2 — Structures) — 15+ naturally generated bridges with biome-specific variants. Requires YUNG's API. Modrinth (NeoForge 1.21.1 builds)
- [x] YUNG's Extras (Wave 2 — Structures) — small vanilla+ additions: improved Desert Wells (rare Wishing Wells), Desert Obelisks, Flame Outposts, ruins, pillars. Requires YUNG's API. Modrinth (NeoForge 1.21.1)
- [x] YUNG's Better End Island (Wave 2 — End Access & Structures) — overhauls the main End island dragon arena: redesigned pillars, gateways, bell-tower summoning, new portal structure. Dragon AI unchanged. Requires YUNG's API. Modrinth (NeoForge 1.21.1)


### Changed Mods (Aug 2026 — Skill Tree Migration)

- [x] Removed Skill Tree (RPG Series) — replaced by Skills Mastery Reimagined. Skill Tree's simple stat-bonus design ("numbers go up") didn't fit the pack's power fantasy; lacked meaningful build decisions for a 200h+ runway.
- [x] Added Skills Mastery Reimagined v1.2.1 (Wave 3 — RPG Progression) — 71-node Pufferfish's Skills tree with tradeoff design: 36 max unlockable nodes, some unique nodes carry negative effects, sound feedback on unlocks. XP from diverse sources: mob kills, mining (2), fishing (5), enchanting (2×level), boss bonuses (Evoker 100 → Dragon 600). Unique attributes: Gravity, Scale, Burning Time, Sneak Speed, Crossbow Projectile Speed, weapon-specific damage. CurseForge (NeoForge 1.21.1).
- [x] Added Pufferfish's Attributes (Wave 3 — New Dependency) — custom attribute registry required by Skills Mastery Reimagined. 35+ dynamic attributes (Stamina, Fortune, Melee/Ranged/Magic Damage, Life Steal, Stealth, Jump, Mining Speed, etc.). By Pufferfish (21.3M DL, same author as Pufferfish's Skills). CurseForge (NeoForge 1.21.1).
- [x] Spell Engine + Ranged Weapon API retained — still required by Relics (RPG Series); dependency notes updated to reflect removal of Skill Tree requirement.
- [x] Keybind updated: Open Skill Tree → `K` (Pufferfish's Skills), was `P` (Skill Tree RPG Series).
- [x] GUIDE.md Wave 3 updated: RPG Progression table, dependency notes, Skill Tree section replaced with full Skills Mastery Reimagined writeup (design philosophy, XP table, unique attributes, weapon synergy), wave summary counts (deps 10→11, total 20→21), overall totals (deps 41→42, total 209→210).

### Wave 3 Equipment Review (Aug 2026)

- [x] Removed Spartan Weaponry Unofficial — replaced by Simply More. Spartan's traditional polearms overlapped with Simply More's more exotic weapon types (Great Katanas, Grandswords, Backhand Blades, Lances, Khopeshs, Daggers, Pernachs, Quarterstaffs, Great Spears, Deer Horns). Simply More integrates natively as a Simply Swords addon and is balanced around Better Combat (already in Wave 5).
- [x] Added Simply More (Wave 3 — Equipment) — 10 new weapon types + 33 unique weapons. Simply Swords addon. Dependencies (Cloth Config + Architectury) already in Wave 0.5 — zero new mods required. CurseForge (NeoForge 1.21.1).
- [x] Skipped Knaves' Needs — 520+ additional swords is overkill. Simply Swords' 60+ weapons already provide sufficient variety. Adding 520 more dilutes drop uniqueness and creates inventory bloat.
- [x] Renamed "Runes" → "Enchanting Runes" (actual mod name). URL unchanged (slug is `runes`).
- [x] Reclassified Curios API from Equipment table to dependency notes. Curios is an API/library (296M DL, by TheIllusiveC4) — provides accessory slot infrastructure used by Relics (RPG Series) and Immersive Armors. By default adds no content except an inventory GUI. Moved to interdependency notes alongside Spell Engine, Ranged Weapon API, and Pufferfish's Attributes.
- [x] Kept Relics (RPG Series) — deep leveling system is the killer feature for 200h+ progression. Alternatives (Artifacts, Lost Trinkets) lack leveling mechanics. More Relics noted as potential future addon.
- [x] Kept Better Combat in Wave 5 — combat animation mod, not a weapon mod. Enhances all weapons, doesn't compete.
- [x] Counts updated: Wave 3 mods 10→9, deps 11→12, total 21 (unchanged). Overall mods 168→167, deps 42→43, total 210 (unchanged).

### Mod Review — 4 Candidates (Aug 2026 batch 27)

- [x] Real Camera — **ADDED** (Wave 0.5 — Visual & Client QoL) — realistic first-person camera: view binds to head/body part with configurable position/rotation, player model renders in FPV. Pin `realcamera-1.21.1-neoforge-0.7.8-beta` (Modrinth, 2026-06-28, client-only, no required deps; Cloth Config optional-recommended and already in pack). 818K DL. Compatible (all in pack): First Person Model, Not Enough Animations, Better Combat, Camera Overhaul; works with Iris + Complementary. Incompatibles (OptiFine, GeckoLib armors, CPM, Epic Fight, TACZ) absent from pack — GeckoLib is present only for Create: Gunsmithing items, Protection Pixel armor uses Kleiders Custom Renderer API. Core purpose distinct from Camera Overhaul (motion feel) and Countered's Smooth F5 (third-person transitions) — no duplication. GUIDE.md: Wave 0.5 table row + detail section; counts 169→170 mods, total 212→213. [VERIFY] Protection Pixel custom-rendered armor + shader rendering after test launch.
- [x] ~~Day Counter Plus — REJECTED (redundant)~~ — **OVERRIDDEN by user instruction** (Aug 2026 batch 28): user requested replacing Day Counter with Day Counter Plus. The redundancy objection stands on the merits, but user instruction supersedes policy — adopted as a straight swap (see batch 28). Original reasoning: duplicates installed Day Counter (Wave 0, Hud Texts dep); Day Counter Plus (4.1K DL, 3lbash3) adds animated rainbow/wave/fade HUD effects.
- [x] Antique Atlas 4 — **REJECTED** (loader incompatibility) — hand-drawn clientside world map, but on NeoForge requires Sinytra Connector + Forgified Fabric API + Surveyor framework. Same rejection grounds as Continuity and Make Bubbles Pop. JourneyMap (+ Integration) and Explorer's Compass already cover mapping, waypoints, and structure finding. Updated 7 months ago; no dedicated native NeoForge build.
- [x] Better Statistics Screen — **REJECTED** (no native NeoForge 1.21.1 build) — 30.3M DL stats-screen overhaul (search/filter/sort, item/mob visual grid, save/share stats files) would slot into Wave 0.5 Inventory & UI, but every MC 1.21.1 build is Fabric/Quilt-only (v3.13.x); NeoForge builds (5.5.x+fn-26.1/26.2) target the newer 26.1/26.2 loader line (incl. 26w14a snapshot). Installing would require Connector + FFAPI bridge — rejected on precedent. Revisit if the pack ever moves to a newer MC line (then: TCDCommons API + betterstats 5.5.x+fn-26.1).
- [ ] Real Camera post-launch verify — F6 toggle, model binding with Protection Pixel armor, shader rendering; capture config keys for GUIDE.md

### Day Counter → Day Counter Plus (Aug 2026 batch 28 — user instruction)

- [x] Day Counter **REMOVED** (Wave 0 — Inventory & UI) — replaced per user instruction. Old mod: dawn-only ActionBar message + optional calendar block/rewards system. Its Hud Texts dependency is now orphaned.
- [x] Day Counter Plus **ADDED** (Wave 0.5 — Inventory & UI) — persistent live "Day X" HUD, fully customizable in-game (position, scale, color, transparency, per-effect toggles, shadow). Pin `daycounterplus-1.0.0-1.21.X-NewForge` (CurseForge/Modrinth, 2025-10-04, 65KB, **zero dependencies** — standalone, no Hud Texts needed). Client + server sides — integrated server satisfies single-player. 4.1K DL. Overrides the batch 27 redundancy rejection per user instruction.
- [x] Hud Texts **REMOVED** (Wave 0.5 dependency) — only required by Day Counter; orphaned after replacement.
- [x] GUIDE.md updated: Wave 0.5 Inventory & UI table row, Day Counter Plus config section (chill settings — fade/outline on, rainbow/wave/growing off), detail section, Mod Count Summary (deps 43→42, total 213→212; mods unchanged at 170).
- [ ] Day Counter Plus config verify — closed: mod removed (batch 29, user instruction — persistent HUD not wanted)

### Day Counter Plus Reverted (Aug 2026 batch 29 — user instruction)

- [x] Day Counter Plus **REMOVED** (Wave 0.5 — Inventory & UI) — user tested it: the always-on HUD element isn't the wanted behavior. Day Counter Plus shows "Day X" permanently on screen and has no "show only at dawn and fade" mode — its Fade effect only animates the text, never hides the counter.
- [x] Day Counter **RESTORED** (Wave 0 — Inventory & UI) — exactly the requested behavior: a brief "Day 42" on the ActionBar at dawn that auto-fades after ~3s and disappears until the next day. Lightweight HUD-only mod (calendar block and rewards exist but stay unused per config). Config: ActionBar only, no sound, no rewards, no week days, no date system.
- [x] Hud Texts **RESTORED** (Wave 0.5 dependency) — required by Day Counter (from V3.4).
- [x] GUIDE.md updated: Wave 0.5 table rows (Day Counter + Hud Texts), Day Counter config section, detail section, Mod Count Summary (deps 42→43, total 212→213; mods unchanged at 170).
- [x] Day Counter config — DONE (batch 31): user supplied the real config keys; override written to `config/day_counter.toml` (actionbar new-day flash only, everything else off)

### DH Generator Mode + Day Counter Config (Aug 2026 batch 31 — user instruction)

- [x] **INTERNAL_SERVER removed** from all Distant Horizons guidance in GUIDE.md (user instruction — does not want INTERNAL_SERVER mode): §2 table row + tip, §5 practical setup revert step, Infrastructure cross-ref. Normal play uses the default generator mode; the Chunky-phase setup (`PRE_EXISTING_ONLY` + Low/Balanced CPU) is unchanged and the "never `SURFACE`/`FEATURES` while Chunky runs" warning stays. Better Caves crash note dropped along with the mode.
- [x] **Day Counter config override created** — `config/day_counter.toml` (mod id `ags_day_counter`; first written as `ags_day_counter.toml`, renamed to `day_counter.toml` in batch 32 — user confirmed the real filename; the original `daycounter-common.toml` guess in the guide was also wrong). Only the new-day notification is enabled: Display `actionbar`, everything else off (`[Sound]`, `[UI.Scoreboard]`/`[UI.Playerlist]`/`[UI.Name]`, `[Date]`, `[Block]`, `[UI."Disabled Feature Text"]` all `false`, rewards zeroed).
- [x] GUIDE.md updated: Day Counter config table rewritten against the real keys, filename corrected, detail section fixed (was inaccurate: "title overlay at dawn with milestone celebrations, no config").

### Day Counter Rewards (Aug 2026 batch 32 — user instruction)

- [x] Config renamed `ags_day_counter.toml` → `day_counter.toml` (user confirmed the mod's actual filename — the user renamed the file in the working tree; rename staged with git).
- [x] **Milestone rewards enabled** in `config/day_counter.toml` `[Rewards.1]`–`[Rewards.5]`: Day 100 (100 EXP, 8 diamond), Day 250 (250 EXP, 2 diamond block), Day 500 (500 EXP, 5 diamond block), Day 1000 (1000 EXP, 4 netherite ingot), Day 2000 (2000 EXP, 2 netherite block) — each with a chat message, `Command` left empty (the mod's example command string looked corrupted). All items vanilla — no pack gating bypassed.
- [x] GUIDE.md updated: filename → `config/day_counter.toml`, milestone rewards table added under the config section, role row + detail section updated.

### Day Counter Reward Messages (Aug 2026 batch 33 — user instruction)

- [x] Milestone reward chat messages in `config/day_counter.toml` rewritten to be snarky/playful (chill-vibe roasting, §-format preserved): Day 100 "haven't finished your first build... looks expensive", Day 250 "villagers have started charging you rent", Day 500 "still on 'easy' difficulty... show-off", Day 1000 "base is still 40% scaffolding... You earned it. Barely.", Day 2000 "we're just renting it. Obviously." No guide/PDF changes (messages live only in the config file).

### Distant Horizons + Chunky Setup (Aug 2026 batch 30)

- [x] GUIDE.md — "Distant Horizons + Chunky — practical setup" added to First Launch Checklist §5 (Chunky — World Pregeneration): Distant Generation ON, `distantGeneratorMode: PRE_EXISTING_ONLY`, DH CPU Load Low/Balanced during Chunky, never `SURFACE`/`FEATURES`/`INTERNAL_SERVER` while Chunky is active; revert to `INTERNAL_SERVER` + Aggressive when Chunky finishes (Better Caves crash protection).
- [x] GUIDE.md — §2 Distant Horizons tip updated with Chunky-phase pointer; Infrastructure → Chunky section cross-references the workflow. No mod or config-file changes — mode switch is a runtime setting, no tracked DH config override needed.

### Added Mods (Aug 2026 batch 34 — Bigger Guns)

- [x] Create Big Cannons: Advanced Technologies (Wave 5 — Combat & Mobs) — CBC addon by dsvv_modding (1.6M DL): 110 new cannon blocks (muzzle brakes, silencers/suppressors, fume extractors, rifled barrels, twin & vertical twin autocannons, heavy autocannons, rocket pods, medium rocket rails) + new ammo (autocannon/heavy autocannon cartridges & caseless rounds, rockets AP/HE/HEI/Flak, medium rockets AP/HE/HEAT/HEF, fluid shells, grapeshot). All tiers (bronze → cast iron → steel → nethersteel) follow the standard CBC casting workflow with cast moulds. Requires Create Big Cannons + Create (both in pack). 1.21.1 NeoForge 0.1.4c (2026-05-02). CurseForge-first, no public GitHub — item IDs verified by extracting the jar's `en_us.json` (namespace `cbc_at`). Installation handled by user (jar downloaded to Downloads).
- [x] GUIDE.md updated: Wave 5 CBC AT mod row + "Create Big Cannons: Advanced Technologies — Bigger Guns" detail section. Mod counts: Wave 5 8→9 mods, 14→15 total. Grand total 173→174 (43 deps, 217 grand total).

### Wave 5 Review (2026-08-13) — Pillar Fit & Conflict/Override/Redundancy Pass

Reviewed all 9 Wave 5 mods (Better Combat, Mutant Monsters, L_Ender's Cataclysm, When Dungeons Arise, Enchantment Descriptions, Create Big Cannons + Advanced Technologies, Cut Through, Torchmaster) against the four pillars and the not-overpowering / not-conflicting / not-overriding / not-redundant rules.

- [x] **Better Combat — KEEP.** Animation/feel layer, no raw stats (no overpowering). Compat with First Person Model, Not Enough Animations, 3D Skin Layers, Real Camera, Camera Overhaul already vetted (batch 27). Native integration: Simply Swords / Simply More (balanced around it), Create: Gunsmithing (built-in optional compat). No override (Epic Fight absent), no redundancy.
- [x] **Mutant Monsters — KEEP, 1 [VERIFY].** Mid-game boss-lite drops (Hulk Hammer, Mutant Skeleton Armor) sit under the Apotheosis/MekaSuit ceiling — not overpowering. Spawn weight configurable for Phase-1 friendliness (already documented). ⚠ **[VERIFY] Mutant Creeper + Creeper Minion use custom explosion logic reported to bypass `doMobGriefing`; No Creeper Grief datapack is pinned 1.20→1.20.1 and its coverage of mutant explosions is unverified** — check at test launch; mitigation already in pack: Torchmaster suppresses natural spawns (incl. mutants) near base.
- [x] **L_Ender's Cataclysm — KEEP (wave anchor).** All 5 bosses opt-in (summon/arena), gated: Ender Guardian requires End (End Remastered's 16 eyes → naturally Phase 3), gear under MekaSuit ceiling. Needs GeckoLib (already in pack). No conflict with Apotheosis (scripted bosses unaffected by affixes). Replaces AdventureZ (Fabric-only). Ignitium Ingot gate is the wave's signature loop.
- [x] **When Dungeons Arise — KEEP (redundancy monitor).** NeoForge 1.21.1 confirmed (2.1.68, CurseForge). Closest redundancy call: YUNG's Better Dungeons is also roguelike — but WDA's niche is combat gauntlets with depth-scaling loot + Explorer's Compass integration feeding the Apotheosis chase; prior structure removals (Additional Structures, Trek Mod) were generic packs. Monitor at playtesting; no removal now.
- [x] **Enchantment Descriptions — KEEP.** Info transparency supporting Wave 3 Apotheosis enchant overhaul. Complementary to EMI (browser info vs tooltips/enchanting GUI). Apotheosis custom enchants self-describe.
- [x] **Create Big Cannons + Ritchie's Projectile Library — KEEP.** Role split vs Create: Gunsmithing affirmed: personal firearms (Wave 1) vs base-defense artillery (Wave 5) — consistent with TACZ rejection rationale (that was handheld firearms). Tier-gated (bronze/steel, Phase 2). Block-breaking shells are player-directed.
- [x] **CBC: Advanced Technologies — KEEP.** Pure extension of CBC (same casting workflow, bronze→nethersteel); no override/redundancy by construction.
- [x] **Cut Through — KEEP.** Client-side QoL; serves Chill Rule (no grass-farm destruction mid-swing). No conflicts.
- [x] **Torchmaster — KEEP.** Chill-living payoff gated behind conquest (KubeJS: Ignitium Ingot + Create brass + blaze rods). Not overpowering — each torch costs a Cataclysm boss; blocks natural spawns only (WDA dungeons, Cataclysm arenas, spawners unaffected). [VERIFY] items already tracked: config key names, KubeJS item IDs.
- [x] **Doc fix — GUIDE.md stale references:** removed Spartan Weaponry Unofficial still mentioned in Wave 3 weapon synergy (line 2154) and Wave 5 Better Combat integration (line 2792) → both updated to Simply More.
- [ ] **New [VERIFY] (test launch):** No Creeper Grief datapack (PK V.2.0.3, pinned 1.20→1.20.1) coverage of Mutant Creeper / Creeper Minion explosions; if uncovered, decide: accept risk (Torchmaster mitigates near-base), tune Mutant spawn weight, or find a 1.21.1 anti-grief replacement.

### Removed Mod (2026-08-13) — Mutant Monsters (Wave 5)

User decision, same session as the Wave 5 review — supersedes the "KEEP, 1 [VERIFY]" verdict above.

- [x] **Mutant Monsters REMOVED** from Wave 5 — reasons: (1) the only non-voluntary combat content in the wave (natural night spawns vs everything else opt-in/gated — violates the easy-ramp pillar); (2) Mutant Creeper + Creeper Minion use custom explosion logic reported to bypass `doMobGriefing` (Chill Rule risk — the No Creeper Grief [VERIFY] above is now moot); (3) the mini-boss niche is already covered by Apotheosis Deadly elites + WDA Easy tier; (4) drops (Hulk Hammer, Mutant Skeleton Armor, Creeper Minion) partially overlapped the Wave 3 gear chase.
- [x] **Puzzles Lib retained** — still required by Hang Glider, Leave My Bars Alone, and Easy Anvils. Not orphaned.
- [x] GUIDE.md updated: Wave 5 table row, "Mutant Monsters — Boss Variants" section, session plan (Session 2 removed, renumbered), Mod Count Summary (Wave 5 9→8 mods, 6→5 deps, 15→13 total; overall 174→173 mods, 216 total), Phase 2 progression mention, Easy Anvils + Hang Glider Puzzles Lib attribution notes.
- [x] TODO.md: No Creeper Grief mutant-coverage [VERIFY] item removed (moot).
- [x] DRIFTWOOD-GUIDE.pdf regenerated.

### Added Datapack (2026-08-13) — Rarer Better Dungeons

- [x] **Rarer Better Dungeons datapack** (`datapacks/rarer-better-dungeons/`) — rebalances YUNG's Better Dungeons density vs When Dungeons Arise (Wave 5) so the two structure sets stop competing for Overworld exploration slots.
- [x] The 1.21.1 NeoForge build **removed the old `averageSeparation` JSON config** — verified against the mod source (YUNG-GANG/YUNGs-Better-Dungeons, branch 26.1.2): the NeoForge `ModConfigSpec` only exposes skulls/heads, nether blocks, chest counts, and staircase length. Spacing now lives in the mod's structure-set data files, so the override is a datapack (pack_format 48).
- [x] Structure set overrides (spacing, applied as midpoints of recommended ranges; separation = ~50% of spacing, matching the mod's default ratio):
  - `small_dungeons.json`: spacing 10 → **22** (separation 6 → 11) — range 20–24
  - `spider_dungeons.json`: spacing 44 → **58** (separation 22 → 29) — range 55–60
  - `skeleton_dungeons.json`: spacing 46 → **60** (separation 23 → 30) — range 55–65
  - `zombie_dungeons.json`: spacing 48 → **60** (separation 24 → 30) — range 55–65
- [x] Salts/weights unchanged — placement pattern identical, just sparser.
- [x] GUIDE.md Wave 2 Configuration documented (settings table, rationale, install + verify); `datapacks/README.md` table updated; datapack README written.
- [ ] [VERIFY] at test launch: datapack override takes effect over mod data — new regions should show small dungeons ~22 chunks apart (`/locate structure betterdungeons:small_dungeon`). Applies to newly generated regions only.

### Added Datapack (2026-08-13) — WDA Density Tweak

- [x] **WDA Density Tweak datapack** (`datapacks/wda-density-tweak/`) — When Dungeons Arise minor structures +25% rarer (spacing 45 → 56, separation 40 → 50), pairing with the Rarer Better Dungeons datapack. Major set untouched.
- [x] **Values verified against the shipped jar** (`DungeonsArise-1.21.1-2.1.68-release.jar` from Modrinth, extracted `minor_structures.json`). A draft spec for this tweak was reviewed and found factually wrong for 1.21.1:
  - Claimed minor defaults 35/25 with salt 88371663 → actual 45/40 with salt **342415935** (88371663 is the *major* set's salt).
  - Claimed minor set = "campsites, huts, small builds" → on 1.21.1 the minor set holds only 6 structures (fishing_hut, wishing_well, jungle_tree_house, bathhouse, abandoned_temple, lighthouse); the campsites (illager_campsite, merchant_campsite, small_blimp, mushroom_house, greenwood_pub) are in the **major** set with high weights — the old mapping matches the 1.18.x-era layout (GitHub master branch is 1.18.2).
  - The minor set's `exclusion_zone` (10 chunks vs major) was preserved in the override.
- [x] GUIDE.md Wave 2 Configuration documented; `datapacks/README.md` table updated; datapack README written (includes the campsite/major-set options).
- [x] **Finding — stale WDA structure table in GUIDE.md Wave 5**: the "When Dungeons Arise — Roguelike Structures" table lists structures that do not exist in the 1.21.1 build (Small Castle, Large Castle, Barracks, Scorched Fort, Warped Fortress, Bandit Camp — these are pre-2.1-era names). Only abandoned_temple and foundry survive in the 2.1.68 jar. Table needs a rewrite against the actual 1.21.1 structure list (38 structures) — flagged, not done (separate task; user to confirm).
- [ ] [VERIFY] at test launch: `/locate structure dungeons_arise:fishing_hut` averages ~56 chunks apart with the datapack active. New regions only.

### WDA Density Tweak v1.1 + WDA Table Rewrite (2026-08-13)

- [x] **`wda-density-tweak` extended with `major_structures.json` override** — the three weight-3 commons (illager_campsite, merchant_campsite, small_blimp) trimmed to weight 2 (~28% relative reduction ≈ 25% target; 3/43 → 2/40 per major-set roll). Rationale: scaling the whole major set would have made the big landmarks rarer (violates "leave big structures on default"); weight trims hit only the commons. Spacing/separation/salt/other 29 weights unchanged (diff-verified vs jar).
- [x] **GUIDE.md Wave 5 WDA table rewritten against the real 1.21.1 data** (resolves the stale-table finding above) — 38 structures verified from the shipped 2.1.68 jar:
  - Names + set membership (Minor 6 / Major 32) from `structure_set/*.json`
  - Spawn biomes from `tags/worldgen/biome/has_structure/*.json` (incl. nested vanilla tags; e.g., Aviary = End midlands/highlands, Keep Kayra = swamps/mangrove, Heavenly trio = overworld arid/plains + End)
  - Loot expectations grounded in `loot_table/chests/<structure>/*.json` filenames (e.g., Infested Temple + Kisegi Sanctuary have ominous vaults; Coliseum + Wishing Well have no chest loot; Mushroom Mines has ore/tool loot; Undead Pirate Ship has enchants)
  - `giant_mushroom` + `mining_system` noted as present but unregistered (do not generate in 2.1.68)
  - Session plan Session 2 updated to minor-set structures (abandoned temple / bathhouse)
- [x] GUIDE.md Wave 2 density block + datapack README updated to reflect the weight trim; remaining weight-2 commons (greenwood_pub, illager_corsair, illager_galley, mushroom_house) left at default.
- [ ] [VERIFY] at test launch: campsite finds should be visibly rarer than other major structures; if too rare, revert weights to 3.

### Removed Mod (2026-08-14) — Cut Through (Wave 5)

User decision — Better Combat (same wave) ships a built-in, default-enabled **"Swing thru grass"** option that covers Cut Through's core case. Verified in the mod source (`ClientConfig.java`, v2.4.0+1.21.1): `isSwingThruGrassEnabled = true`, `isSwingThruGrassSmart = true`, `isAttackInsteadOfMineWhenEnemiesCloseEnabled = true` — all default-on, no pack config override needed. Cut Through's residual coverage (vines, cobwebs, other transparent blocks beyond zero-hardness; no Farmer's Delight blacklist) judged too marginal for a mod slot in a single-player chill pack.

- [x] **Cut Through REMOVED** from Wave 5 — reasons: (1) core function (swing through tall grass to hit mobs without breaking it) is built into Better Combat at defaults; (2) remaining gaps (vines/cobwebs, blocks with hardness > 0) are rare friction in this pack vs. the slot cost; (3) both are client-side QoL with no stat impact — no overpowering/conflict concerns either way, pure slot economy.
- [x] **Puzzles Lib retained** — Cut Through's only dependency; still required by Hang Glider, Leave My Bars Alone, and Easy Anvils. Not orphaned.
- [x] GUIDE.md updated: Wave 5 table row removed, "Cut Through — Clean Combat" section removed, Mod Count Summary (Wave 5 8→7 mods, 5 deps, 13→12 total; overall 172→171 mods, 42 deps, 214→213 total). **Bonus fix:** Better Combat link was pointing at an unrelated 349-download CurseForge mod ("A combat mod for you", MCreator) — corrected to the real Modrinth page (ZsoltMolnarrr, 15.4M DL).
- [x] DRIFTWOOD-GUIDE.pdf regenerated.

### Mod Review — 10 Candidates (2026-08-14)

Reviewed AppleSkin, Aquaculture, Sodium Dynamic Lights, Sodium Extras, Artifacts, Smarter Farmers, Blur+, Diagonal Fences, Create: Café, Attract to Sound. All version/loader/dep data verified live via Modrinth API (NeoForge 1.21.1 builds, deps, downloads, last-updated).

- [x] **AppleSkin — ALREADY IN PACK** (Wave 0, Inventory & UI). No action.
- [x] **Aquaculture 2 — REJECTED (redundant)** — pack fishing stack already covers this role: Starcatcher (fishing overhaul, 100+ fish, minigame, catalogue, replaces vanilla fishing) + Hybrid Aquatic (auto-added catchable entries) + Ocean's Delight + Starcatcher's Delight + Better Fishtanks. Aquaculture's fish/rods/tackle form a separate fishing expansion that does not feed Starcatcher's catalogue or minigame — duplicate core purpose ("No mod should duplicate another mod's core purpose"). Technically viable (2.7.21, Apr 2026, zero deps) — pure content-fit rejection.
- [x] **Sodium Dynamic Lights — REJECTED (redundant)** — identical role to installed LambDynamicLights (dynamic lights, `Ctrl+L`). LambDynamicLights has a **newer** 1.21.1 NeoForge build (4.8.10+1.21.1, project updated Jun 2026) vs SDL's neoforge-1.21.1-1.0.10 (Jan 2025); SDL would additionally require Sodium Options API as a new dep for zero functional gain. No swap.
- [x] **Sodium Extras — ADOPTED** (Wave 0 — Performance & Rendering) — Sodium addon: FPS limiter, particle rendering overrides, extra video settings. 11.3M DL, LGPL-3.0, 1.21.1 NeoForge 1.0.8 (Apr 2025). **New dep: Sodium Options API** (neoforge-1.21.1-1.0.10). No redundancy: Dynamic FPS (unfocused FPS) and ImmediatelyFast (GUI rendering) are different; Effectual/Particular Reforged *add* particles, Sodium Extras *removes* unwanted ones — complementary. [VERIFY] at test launch: exact options present in Sodium's Video Settings.
- [x] **Artifacts — REJECTED (redundant)** — duplicates Relics (RPG Series)' Curios-accessory role; prior decision on record (Wave 3 Equipment Review, line 620: "Alternatives (Artifacts, Lost Trinkets) lack leveling mechanics"). Random-drop artifact power (some strong: double jump, fire immunity, etc.) adds uncurated variance against the pack's leveling-driven Relics. Wave 3 niche already full (Relics + Simply Swords + Runes + Immersive Armors + Apotheosis).
- [x] **Smarter Farmers (farmers replant) — ADOPTED** (Wave 4 — Food & Farming) — villagers replant the correct seed + modded seeds (FD crops via tags); `harvest_blacklist` tag. 11.5M DL, server-side, 1.21.1 NeoForge 2.2.4 (Oct 2025). Moonlight Lib already in pack (Wave 6) — zero new deps. No conflict with MineColonies farmers (separate villager system).
- [x] **Blur+ — REJECTED (redundant)** — Smooth GUI (installed Jul 2026) already provides GUI blur + fade-in background overlay ("slide-in GUI animations with blur"); Blur+ would add new dep MidnightLib for a duplicate effect.
- [x] **Diagonal Fences — ADOPTED** (Wave 6 — Building) — diagonal connections for vanilla fences, fence gates, walls. 10.1M DL, MPL-2.0 (Fuzs), 1.21.1 NeoForge v21.1.1 (Nov 2024). Puzzles Lib already in pack — zero new deps. No overlap with Macaw's (separate blocks).
- [x] **Create: Café — ADOPTED** (Wave 4 — Food & Farming, user decision) — Create-native coffee/tea/boba (roasting/grinding/brewing via Create machines); only dep Create (in pack); 1.4.3 (Jan 2026); chill-living + Create-automation fit (Slice & Dice precedent). Coffee/tea is the one drink category B&C does not cover — second, non-overlapping drinks track. [VERIFY] at test launch: drink effect strength (overpowered check), Create version compat, no runtime conflict with B&C.
- [x] **Attract to Sound — REJECTED (pillar conflict)** — mob-AI stealth overhaul ("hunted by what they see, hear, and sense"); noise-attracted mobs add non-voluntary pressure while mining/building. Violates Chill Rule (no invasive mob behavior) + easy-ramp pillar (same rationale as the Mutant Monsters removal). Technically viable (6.3.8d, Jul 2026, zero deps) — pure design-fit rejection.
- [x] GUIDE.md updated: Performance & Rendering table + Sodium Extras note, Wave 4 table + Smarter Farmers + Create: Café sections, Wave 6 table + Diagonal Fences section, Mod Count Summary (Wave 0 14→15 mods / 10→11 deps / 24→26; Wave 4 11→13; Wave 6 10→11 / 13→14; Total 169→173 mods, 46→47 deps, 215→220).
- [x] DRIFTWOOD-GUIDE.pdf regenerated.

### Mod Review — Mouse Tweaks (2026-08-22)

Evaluated as a candidate replacement for Inventory Essentials (Wave 0 — Inventory & UI). User decision: keep IE; no pack changes. Version/loader data verified live via Modrinth API + CurseForge.

- [x] **Mouse Tweaks — REJECTED (not a replacement)** — MT is gesture-complementary, not equivalent: multi-stack LMB drag, RMB split, scroll movement, drag-scroll — but has **no** Ctrl+click single-item or Shift+Ctrl+click move-all-of-type (IE's marquee transfer gestures in an AE2/Sophisticated Storage pack). Latest NeoForge 1.21.1 build is 2.26.1 (Aug 2024, ~2y stale); IE is actively maintained by Blay, and its Balm dependency is already in the pack. The IE×ClientSort sort overlap was already resolved via `config/inventoryessentials-common.toml` (`consolidate_only`) and is unaffected by this decision. Kept IE (status quo): no GUIDE.md, config, or PDF changes.