# Immersive Armor HUD → Detail Armor Bar Reconstructed — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Swap Immersive Armor HUD 1.0.1 out of the Driftwood modpack (NeoForge 1.21.1) and Detail Armor Bar Reconstructed 5.0.2 in, so the armor-bar HUD hides with Auto HUD and renders cleanly past 20 bars with Overflowing Bars.

**Architecture:** 1:1 mod swap with zero dep/count changes. GUIDE.md (table row + bullet + integration/watch notes), a tracked `config/detailarmorbar.json` (full default set, `toggleCompatibleHeartMod: true`), a STATUS.md decision entry, PDF regeneration, one commit.

**Tech Stack:** Markdown (GUIDE.md, STATUS.md), JSON config override, Typst PDF pipeline (`generate-pdf.ps1`), git.

**Spec:** `docs/superpowers/specs/2026-08-29-swap-immersive-armor-hud-design.md`

## Global Constraints

- Mod counts are **unchanged**: 1:1 swap, zero deps both sides. Wave 0 row stays `10 | 10 | 21`, Total stays `179 | 42 | 221` — append changelog annotations only, never change the numbers.
- The Conczin **"Immersive Armors"** mod (Wave 3, armor sets) is a DIFFERENT mod — must NOT be touched. Only "Immersive Armor HUD" (exact string, 2 occurrences in GUIDE.md: lines 434, 553).
- `config/detailarmorbar.json` must be the **full default option set** with only `toggleCompatibleHeartMod` flipped — partial JSON disables features (Gson unsafe allocation: omitted primitives load as `false`/`0`; `replaceInvalidOptions()` only repairs object fields).
- Table rows use exactly one leading pipe (cmarker/Typst renders `||` as literal text — known 2026-08-28 bug class).
- STATUS.md entries: newest batch at the TOP, `- [x]` for done items, `- [ ]` for instance-action, trailing `- [x] DRIFTWOOD-GUIDE.pdf regenerated`.
- Commit style: `docs(driftwood): ...`

---

### Task 1: GUIDE.md — swap table row and bullet

**Files:**
- Modify: `minecraft/GUIDE.md:434` (Wave 0 Inventory & UI table row)
- Modify: `minecraft/GUIDE.md:553` (Inventory & UI — Your Daily Tools bullet)

- [ ] **Step 1: Replace the table row (line 434)**

Current (verbatim):
```markdown
| [Immersive Armor HUD](https://www.curseforge.com/minecraft/mc-mods/immersive-armor-hud)         | Armor type icons + durability above armor bar — shows what's about to break                                                                                                         |
```
Replace with:
```markdown
| [Detail Armor Bar Reconstructed](https://modrinth.com/mod/detail-armor-bar-reconstructed) 5.0.2 | Armor detail on the bar — armor-slot icons + durability colors, protection-enchant tints, low-durability flash, netherite bar, mending/thorns, trims                                             |
```

- [ ] **Step 2: Replace the bullet (line 553)**

Current (verbatim):
```markdown
- **Immersive Armor HUD** — armor icons + durability above the bar; works with modded armor. No config.
```
Replace with:
```markdown
- **Detail Armor Bar Reconstructed** — armor-slot icons with durability colors on the bar itself; protection-enchant tints, low-durability flash, netherite bar, mending/thorns animations, trim display. **Hides with Auto HUD** (draws inside the vanilla armor layer, tied to the armor component — idle-hide and the `H` toggle both cover it) and renders cleanly past 20 armor points with Overflowing Bars (dedicated OB compat — replaces OB's armor-bar draw via `toggleCompatibleHeartMod`). Replaces Immersive Armor HUD (Aug 2026 swap — IA-HUD floated over the hidden HUD and glitched above 20 bars; open upstream bug). Config: `config/detailarmorbar.json` (tracked).
```

- [ ] **Step 3: Add the Modded Coffee GUI watch item to the Dark Coffee GUI bullet (line 541)**

Locate the Dark Coffee GUI + Modded Coffee GUI What-to-Expect bullet (Visual & Client QoL section, ~line 541). Append to its end (after the Modern UI compatibility clause):
```markdown
⚠ **Modded Coffee GUI watch**: GUI-texture coverage of Detail Armor Bar Reconstructed unverified (cosmetic only — bar renders fine, palette may differ until a compat texture exists).
```

- [ ] **Step 4: Append changelog annotations to Mod Count Summary (lines 3121, 3131)**

Wave 0 row notes (~line 3121): append `; −Immersive Armor HUD +Detail Armor Bar Reconstructed, Aug 2026` to the existing notes chain.
Total row notes (~line 3131): append `; −Immersive Armor HUD +Detail Armor Bar Reconstructed, Aug 2026 (1:1 swap, zero deps, counts unchanged)` to the existing notes chain.
Do NOT change any numbers.

- [ ] **Step 5: Verify**

```bash
grep -n "Immersive Armor HUD" minecraft/GUIDE.md   # expect: no output
grep -n "Detail Armor Bar" minecraft/GUIDE.md      # expect: 3 hits (row, bullet, watch note)
grep -n "Immersive Armor" minecraft/GUIDE.md       # expect: only "Immersive Armors" (Wave 3, keep) + "Immersive Overlays"/"Immersive Aircraft"/"Immersive Hotbar"/"Immersive Machinery"/"Immersive Music" etc. — never "Armor HUD"
```

---

### Task 2: Create `config/detailarmorbar.json`

**Files:**
- Create: `minecraft/config/detailarmorbar.json`

- [ ] **Step 1: Write the file**

```json
{
  "effectType": "AURA",
  "effectSpeed": "NORMAL",
  "effectThorn": "ANIMATION",
  "toggleEnchants": true,
  "toggleArmorTypes": true,
  "toggleThorns": true,
  "toggleDurability": true,
  "toggleMending": true,
  "toggleEmptyBar": true,
  "toggleItemBar": true,
  "toggleHideBarWithoutArmor": true,
  "toggleVanillaTexture": true,
  "toggleCompatibleHeartMod": true,
  "toggleInverseSlot": false,
  "toggleInverseOverflowIcon": false,
  "toggleStackArmorBars": false,
  "toggleSortSpecialItem": true,
  "toggleAlignEnchantments": true,
  "toggleUniformColor": false,
  "uniformColorArgb": 1352269823,
  "uniformColorType": "AQUA",
  "protectionColorGenericArgb": 1352269823,
  "protectionColorProjectileArgb": 1349530541,
  "protectionColorBlastArgb": 1358954240,
  "protectionColorFireArgb": 1355954176,
  "armorBarOffsetX": 0,
  "armorBarOffsetY": 0,
  "toggleArmorTrims": true,
  "toggleDurabilityOverlay": false,
  "durabilityHudPosition": "BOTTOM_LEFT",
  "durabilityHudOffsetX": 0,
  "durabilityHudOffsetY": 0,
  "durabilityHudScale": 1.0,
  "toggleDurabilityNotifications": true,
  "toggleRepeatedDurabilityNotifications": false,
  "toggleDurabilitySoundNotification": true,
  "toggleDurabilityToastNotification": true,
  "toggleDurabilityVisualEffect": true,
  "toggleThreshold50": false,
  "toggleThreshold25": true,
  "toggleThreshold10": true,
  "toggleThreshold5": true,
  "toggleInventoryOverlay": false
}
```

- [ ] **Step 2: Verify it parses**

```bash
python -c "import json; json.load(open('minecraft/config/detailarmorbar.json')); print('valid')"
```

---

### Task 3: STATUS.md decision entry

**Files:**
- Modify: `minecraft/STATUS.md:1` (insert at very top, before "### Subtle Effects Re-review")

- [ ] **Step 1: Insert the entry**

```markdown
### Immersive Armor HUD → Detail Armor Bar Reconstructed Swap (Aug 29, 2026)

- [x] **User-reported bug**: Immersive Armor HUD icons stay visible when Auto HUD hides the rest of the HUD.
- [x] **Root cause** (source + bytecode verified): Auto HUD 8.11 hides by cancelling NeoForge `RenderGuiLayerEvent.Pre` per vanilla layer (`AutoHudGui.class`: `ARMOR_LEVEL → armor`, `VEHICLE_HEALTH → mountHealth`); IA-HUD draws inside `Gui.renderVehicleHealth` via its `GuiMixin` and has no Auto HUD compat (`autohud-compat.mixins.json` covers AppleSkin/BerdinskiyBear/Cold Sweat/Overflowing Bars only) — icons ride the mount layer, never the armor layer, so they float when the bars hide.
- [x] **Second fault line**: open upstream bug [txnimc/ImmersiveArmorHUD#9](https://github.com/txnimc/ImmersiveArmorHUD/issues/9) — 1.21.1 NeoForge, OB 21.1.1 + IA-HUD 1.0.1: armor HUD breaks when health/armor > 20 (second reporter: without OB, just a second heart row). No maintainer response; IA-HUD 1.0.1 (Apr 2025) is the only 1.21.1 build; project inactive. This pack runs Overflowing Bars precisely for >20 builds (Relics bonuses, enchanted gear).
- [x] **Swap decision (user-approved)**: **Detail Armor Bar Reconstructed 5.0.2** (NeoForge 1.21.1, Jun 2026, MIT, zero deps — Modrinth API verified). Draws inside the vanilla armor layer (`Hud.extractArmor` RETURN inject) or inside OB's `BarOverlayRenderer.renderArmorLevelBar` (dedicated OB mixin) → Auto HUD hides it via the armor component (layer cancel + OB alpha-injection mixin `autoHud$insertAlpha`, bytecode-verified in 8.11) and >20 rows render clean. Feature parity: armor-slot icons + durability colors, protection-enchant tints, low-durability flash, netherite bar, mending/thorns, trims. Rejected alternatives: uku's Armor HUD (no 1.21.1 NeoForge build), BerdinskiyBear's (stale, hotbar-mode compat only), guy's/Armor Glance/Durability Viewer/Armor Durability HUD (separate widgets, no Auto HUD integration).
- [x] **Config**: `config/detailarmorbar.json` (tracked, full default set) sets `toggleCompatibleHeartMod: true` — DAB-R replaces OB's armor-bar draw (OB `armor.allowLayers` stays default true). Partial JSON would break features (Gson unsafe allocation — omitted primitives load false/0).
- [x] **GUIDE.md**: Wave 0 Inventory & UI table row + bullet swapped; Dark Coffee GUI bullet += Modded Coffee GUI watch item; Mod Count Summary Wave 0 + Total changelog annotations appended (counts unchanged: 1:1 swap, zero deps).
- [ ] **Instance action (XMCL)**: remove `immersivearmorhud-neoforge-1.21.1-1.0.1.jar` (+ `txnilib*` jar **only if** no other mod requires it — verify before deleting); add `DetailArmorBarReconstructed-5.0.2+1.21.1-neoforge.jar` to `mods/`. [VERIFY] at next launch: no missing-dependency errors; Auto HUD idle-hide AND `H` toggle both hide the DAB-R bar decoration (no floating icons); armor bar renders cleanly across rows with high HP/armor; OB row-count + DAB-R protection colors/durability flash visible.
- [x] DRIFTWOOD-GUIDE.pdf regenerated
```

- [ ] **Step 2: Verify**

`head -3 minecraft/STATUS.md` shows the new entry first; the entry ends with the PDF-regen line.

---

### Task 4: Regenerate PDF and commit

- [ ] **Step 1: Regenerate the PDF**

```powershell
powershell -ExecutionPolicy Bypass -File minecraft/generate-pdf.ps1
```
Expected: `[OK] DRIFTWOOD-GUIDE.pdf -> .../rendered/DRIFTWOOD-GUIDE.pdf (… KB)` and no FAIL lines.

- [ ] **Step 2: Check what git tracks**

```bash
git -C H:/Projects/modlists status --short
```
Note whether `rendered/DRIFTWOOD-GUIDE.pdf` is tracked or ignored; commit whatever the house pattern commits (matches prior swap commits).

- [ ] **Step 3: Final verification**

```bash
grep -rn "Immersive Armor HUD" minecraft/  # expect: only the STATUS.md "REMOVED/swap" historical references + spec/plan docs, zero in GUIDE.md
git -C H:/Projects/modlists diff --stat
```

- [ ] **Step 4: Commit**

```bash
cd H:/Projects/modlists
git add minecraft/GUIDE.md minecraft/config/detailarmorbar.json minecraft/STATUS.md [rendered/DRIFTWOOD-GUIDE.pdf]
git commit -m "docs(driftwood): swap Immersive Armor HUD for Detail Armor Bar Reconstructed"
```
