# Mod Research Report — 9 Candidate Mods vs Current Modlist

Generated 2026-07-18. Compares each candidate against the current `guide/` modlist for conflicts, overrides, and redundancy.

---

## 1. [Diverse Woodchopping Blocks](https://www.nexusmods.com/skyrimspecialedition/mods/148317) — 148317
**Author:** wSkeever | **Version:** 1.3 | **Endorsements:** 942 | **Last updated:** Nov 2025
**What it does:** BOS (or Model Swapper) distributes 31 variant woodchopping blocks around Skyrim, based on Happy Little Trees assets.
**Requirements:** Base Object Swapper (hard). Happy Little Trees (required for HLT version; non-HLT variant available with texture pack).

### Verdict: **Clean add.**
- HLT is the modlist's tree baseline (`modlist-graphics-terrain.md:151`). Go with the HLT version.
- No existing woodchopping block mod in the list. No conflicts, no overrides.
- Fits: `Graphics - Textures & Meshes` clutter BOS section, alongside other BOS diversity mods.
- Tiny scope — safe, low-cost immersion win.

---

## 2. [Diverse and Lootable Firewood](https://www.nexusmods.com/skyrimspecialedition/mods/100870) — 100870
**Author:** FrankBlack | **Version:** 1.3 | **Endorsements:** 1,303 | **UDLs:** 229K | **Last updated:** Dec 2025
**What it does:** BOS distributes 40+ firewood stack variants (small/medium/large/huge, snowy/non-snowy). Changes on cell reload — simulates stacks being used/replenished.
**Requirements:** Base Object Swapper (hard), High Poly Project (hard — textures only, the mod ships meshes), Dynamic Things Alternative - BOS (optional, for harvestable piles).

### Verdict: **Tentative — blocked on HPP adoption.**
- **High Poly Project** is listed as an `Alternatives` item in `modlist-graphics-textures.md:112` with the explicit caveat: *"adds overlap and complexity for surprisingly small on-screen gains."*
- Diverse and Lootable Firewood **requires HPP textures** (the mod only ships meshes; HPP provides the wood textures used by the variants). This means adopting this mod requires adopting HPP into the baseline, which contradicts the current graphics philosophy.
- **Dynamic Things Alternative - BOS** is already in the modlist (`modlist-graphics-textures.md:148`) — the optional harvestable variant is feasible.
- **Recommendation:** Hold unless/until HPP is promoted from Alternative to Baseline. If adopted, place in `Graphics - Textures & Meshes` clutter BOS section.

---

## 3. [Handcarts - Base Object Swapper](https://www.nexusmods.com/skyrimspecialedition/mods/154085) — 154085
**Author:** FrankBlack | **Version:** 1.2 | **Endorsements:** 5,441 | **Last updated:** Jan 2026
**What it does:** BOS distributes 6 handcart variants (cabbage carriers) around Skyrim. Works with other handcart retextures.
**Requirements:** Base Object Swapper (hard).

### Verdict: **Clean add.**
- No existing handcart variety mod in the list.
- No conflicts. No overrides. Pure BOS, no ESP footprint.
- Author overlap: same author as several already-adopted mods (FrankBlack — Honey in a Jar at line 298, Diverse Candles at line 295, Diverse Foods at line 294).
- Fits: `Graphics - Textures & Meshes` clutter BOS section.

---

## 4. [Haystacks — Mihail's Shards of Immersion](https://www.nexusmods.com/skyrimspecialedition/mods/125021) — 125021
**Author:** Mihail | **Category:** Items - Clutter | **Tags:** Lore-Friendly, Fair and Balanced
**What it does:** Adds haystack clutter variants (haystack models + retextured shovels/pitchforks on them) across Skyrim. ESP-based, not BOS.
**Requirements:** None listed explicitly.

### Verdict: **Tentative — evaluate visual impact.**
- No existing haystack variety mod in the list.
- The modlist already references other Mihail Shards mods in World Feel (`modlist-world-feel.md:97` — Giant Crab Shells as an alternative). Mihail's Shards series is a known quantity.
- Not BOS-based — uses an ESP. That said, it's likely ESL-flagged (Mihail's standard practice). Verify.
- No known conflicts with the existing clutter stack (the Snazzy/Rally's/Kanjs BOS ecosystem doesn't touch haystacks).
- Fits: `World Feel - Roadside Clutter` or `Graphics - Textures & Meshes`.

---

## 5. [CC Fishing Gear Diversified](https://www.nexusmods.com/skyrimspecialedition/mods/172724) — 172724
**What it does:** BOS or Model Swapper diversifies CC fishing gear (rods, tackle, etc.) models.
**Requirements:** Anniversary Edition (CC Fishing DLC).

### Verdict: **Likely clean add. Verify BOS vs Model Swapper choice.**
- AE required — Elder Wilds targets AE 1.6.1170, so this is satisfied.
- The modlist already has extensive fishing content: `Simple Fishing Overhaul`, `Immersive Fishing`, `Streamlined Fishing`, `Fishing Extension Framework`, `The Dragonborn's Fishiary`, plus `Improved Fish SE`, `Improved Fish PBR`, and `CC Fish PBRed` in Textures & Meshes.
- This mod complements that fishing ecosystem with gear model variety. No existing fishing gear variety mod.
- **Check:** Does the mod include any ESP or is it pure BOS/Model Swapper? If Model Swapper variant, it's a pure mesh replacer with no runtime dependency.
- Fits: `Graphics - Textures & Meshes` (if pure mesh) or `World Content` (if ESP).

---

## 6. [Diverse Bird's Nests](https://www.nexusmods.com/skyrimspecialedition/mods/100251) — 100251
**Author:** FrankBlack (unverified but likely — same series)
**What it does:** BOS distributes variant bird nests around Skyrim.
**Requirements:** Base Object Swapper (hard) + **Kanjs - Bird Nests and Eggs** (mod 64905, hard — install first, then replace meshes with this mod's).

### Verdict: **Tentative — blocked on Kanjs Bird Nests dependency.**
- **Kanjs - Bird Nests and Eggs (64905) is NOT currently in the modlist.** This creates a dependency chain: adopting 100251 requires first adopting 64905.
- The modlist already has several Kanjs mods (animated items section) but not this specific one.
- If adopted, both mods need evaluation for the graphics stack. No known conflicts.
- Fits: `Graphics - Textures & Meshes` clutter BOS section.

---

## 7. [Diverse Catches — BOS Fish Racks](https://www.nexusmods.com/skyrimspecialedition/mods/98989) — 98989
**Author:** FrankBlack
**What it does:** BOS distributes variant fish racks around Skyrim (the hanging fish displays at docks/markets).
**Requirements:** Base Object Swapper (hard).

### Verdict: **Clean add.**
- No existing fish rack variety mod in the list.
- The modlist has fish mesh/texture improvements (`Improved Fish SE`, `CC Fish PBRed`) — this complements them by adding rack-display variety, not conflicting with the fish meshes themselves.
- Pure BOS, no ESP. No conflicts.
- Fits: `Graphics - Textures & Meshes` clutter BOS section.

---

## 8. [Sleep of the Dead — Draugr Leather and Shroud Replacer](https://www.nexusmods.com/skyrimspecialedition/mods/178057) — 178057
**Author:** FrankBlack | **Tags:** Models/Meshes, Textures, Locations - Dungeons, Items - Clutter, Overhaul
**What it does:** Visual replacer for draugr leather/shroud clutter objects found in Nordic dungeons.

### Verdict: **ALREADY IN MODLIST.**
- Listed at `modlist-creatures.md:44` as an **Alternative** entry: *"Sleep of the Dead — Draugr Leather and Shroud Replacer | Alternative | Draugr shroud/leather retexture."*
- No action needed — this mod is already accounted for. If the user wants to promote it from alternative to baseline, that's a separate decision.

---

## 9. [Diverse Campfires — Base Object Swapper](https://www.nexusmods.com/skyrimspecialedition/mods/109731) — 109731
**Author:** FrankBlack | **Version:** 1.1 | **Endorsements:** 6,298 | **Last updated:** Jun 2025
**What it does:** BOS distributes 30+ campfire variants around Skyrim. Also includes a patch for Rain Extinguishes Fires.
**Requirements:** Base Object Swapper (hard) + **Embers XD** (hard).

### Verdict: **Tentative — evaluate overlap with WiZkiD Hunter's Camp Overhaul.**
- **Embers XD IS already in the modlist** (`modlist-graphics-lighting.md:37`, `modlist-graphics-shaders.md:47`) — dependency satisfied.
- **Potential overlap:** `WiZkiD Hunter's Camp Overhaul` (`modlist-graphics-textures.md:100`) also overhauls campfires as part of hunter camp visual overhauls. Need to verify whether WiZkiD already provides campfire variety sufficient to make Diverse Campfires redundant, or whether they address different aspects.
- **ElSopa - Campfire HD SE** (`modlist-graphics-textures.md:291`) — retextures Campfire's portable crafting items (a different mod's assets), not world-space campfires. No conflict.
- **Rain Extinguishes Fires** patch: the modlist currently has `No Fire During The Rain` (via OIF, `modlist-world-feel.md:157`). The Diverse Campfires page references a patch for Rain Extinguishes Fires — need to verify if this is the same or different mod.
- If overlap with WiZkiD is minimal/non-existent, this is a clean add.
- Fits: `Graphics - Textures & Meshes` clutter BOS section, or `World Feel`.

---

## Summary Table

| # | Mod | Status | Confidence | Blocker |
|---|-----|--------|------------|---------|
| 1 | Diverse Woodchopping Blocks (148317) | ✅ Clean add | High | None |
| 2 | Diverse and Lootable Firewood (100870) | ⚠️ Tentative | Medium | Requires HPP (modlist treats HPP as alternative, not baseline) |
| 3 | Handcarts (154085) | ✅ Clean add | High | None |
| 4 | Haystacks - Mihail (125021) | ⚠️ Tentative | Medium | ESP-based (verify ESL flag); evaluate visual impact |
| 5 | CC Fishing Gear Diversified (172724) | ✅ Likely clean | Medium-High | Verify BOS vs Model Swapper; verify no ESP |
| 6 | Diverse Bird's Nests (100251) | ⚠️ Tentative | Medium | Requires Kanjs Bird Nests (64905) — new dependency not in modlist |
| 7 | Diverse Catches Fish Racks (98989) | ✅ Clean add | High | None |
| 8 | Sleep of the Dead (178057) | ❌ Already present | N/A | Already listed as alternative in `modlist-creatures.md:44` |
| 9 | Diverse Campfires (109731) | ⚠️ Tentative | Medium-High | Potential overlap with WiZkiD Hunter's Camp Overhaul; requires Embers XD (already in list) |

### Should-be-adopted (no blockers):
- **#1** Diverse Woodchopping Blocks (148317)
- **#3** Handcarts (154085)
- **#7** Diverse Catches Fish Racks (98989)

### Needs resolution before adopting:
- **#2** (148317): Resolve HPP adoption question.
- **#4** (125021): Evaluate visual impact; verify ESL flag.
- **#5** (172724): Verify file type.
- **#6** (100251): Evaluate Kanjs Bird Nests (64905) for adoption.
- **#9** (109731): Evaluate overlap with WiZkiD Hunter's Camp Overhaul.

### Already accounted for:
- **#8** (178057): In modlist already.

## Placement Guidance

All the clean-adopt BOS mods (#1, #3, #7, and likely #5, #9) belong in one of:
- `Graphics - Textures & Meshes` → the `Furniture, Clutter, And Item Replacers` section where Diverse Candles, Diverse Foods, Diverse Windmill Sails, etc. already live.
- `World Feel` → `Roadside Clutter` subsection (for world-space clutter like Haystacks #4).

The canonical landing zone for FrankBlack BOS diversity mods is the `Furniture, Clutter, And Item Replacers` table in `modlist-graphics-textures.md` (around line 290-300).
