# Immersive Armor HUD → Detail Armor Bar Reconstructed — Design Spec

**Date**: 2026-08-29
**Session**: Replace Immersive Armor HUD with Detail Armor Bar Reconstructed in the Driftwood modpack (NeoForge 1.21.1); integrate the trio Auto HUD × Overflowing Bars × armor-bar HUD into one coherent surface.

## 1. Motivation

Two independent fault lines make Immersive Armor HUD 1.0.1 (the only 1.21.1 build, Apr 2025) the wrong fit for this pack:

1. **Auto HUD cannot hide it.** Auto HUD (pinned 8.11+1.21.1-neoforge) hides HUD elements by cancelling NeoForge `RenderGuiLayerEvent.Pre` per vanilla layer, mapped per component (`ARMOR_LEVEL → armor`, `VEHICLE_HEALTH → mountHealth`, …) — verified in the released jar bytecode (`AutoHudGui.class`). Immersive Armor HUD draws its icons via a mixin injected at HEAD of `Gui.renderVehicleHealth` — the layer Auto HUD maps to the **mount-health** component — and its only visibility check is vanilla F1. Auto HUD ships no compat for it (`autohud-compat.mixins.json` covers AppleSkin, BerdinskiyBear, Cold Sweat, Overflowing Bars only). Result (user-reported): the armor icons stay visible when Auto HUD hides the rest of the HUD. The icons ride the mount layer, never the armor layer.
2. **It is broken at bars > 20 — the pack's exact use case.** Open bug [txnimc/ImmersiveArmorHUD#9](https://github.com/txnimc/ImmersiveArmorHUD/issues/9) on 1.21.1 NeoForge with OB 21.1.1 + IA-HUD 1.0.1: armor HUD renders wrong when health/armor exceeds 20. A second reporter (Apr 2026) reproduces it with a second row of hearts **without** Overflowing Bars. No maintainer response; no update since Apr 2025. Overflowing Bars exists in this pack precisely because Relics/enchanted gear push bars past 20.

## 2. Replacement: Detail Armor Bar Reconstructed 5.0.2

Modrinth: https://modrinth.com/mod/detail-armor-bar-reconstructed (maintained fork of Detail Armor Bar, MIT, zero dependencies, client-side).

| | Immersive Armor HUD 1.0.1 (out) | Detail Armor Bar Reconstructed 5.0.2 (in) |
|---|---|---|
| Auto HUD hiding | ❌ Rides mount layer; no compat; icons float | ✅ Draws inside the **vanilla armor layer** (`Hud.extractArmor` RETURN inject) or inside **Overflowing Bars' `BarOverlayRenderer.renderArmorLevelBar`** (compat mode) — both surfaces Auto HUD 8.11 already manages via the **armor** component (layer cancel; OB alpha-injection mixin `autoHud$insertAlpha` verified in bytecode) |
| Bars > 20 | ❌ Open bug, our exact stack | ✅ Multi-row math (`ARMOR_POINTS_PER_ROW`, per-row layout) + dedicated OB mixin (`OverflowingBarsArmorMixin` replaces OB's armor-bar render) |
| "About to break" glance | Icons + durability above bar | Armor-slot icons with durability colors, low-durability flash, plus protection-enchant colors, netherite bar, mending/thorns animations, trim display |
| Dependencies | "No deps" per guide, but source imports `toni.lib` (TxniLib) — guide entry likely wrong | Zero (verified via Modrinth API) |
| Maintenance | Apr 2025, custom "Tonis MMC License" | MIT, 1.21.1 build 5.0.2 (Jun 2026), active (Jul 2026) |

**Config decision**: OB 1.21.1 (pinned 21.1.1 — no newer build exists) defaults `armor.allowLayers = true`, which makes DAB-R defer to OB's own armor layer by default. Set DAB-R `toggleCompatibleHeartMod: true` (default false) so DAB-R replaces OB's armor-bar draw with its own OB-aware renderer — full feature set preserved on OB's row layout. OB config stays at defaults.

**Rejected alternatives** (each fails at least one requirement): uku's Armor HUD (no NeoForge build for 1.21.1 — 0.5.1 is Fabric/Quilt-only there), BerdinskiyBear's Armor Hud (stale; Auto HUD compat is hotbar-mode only), guy's Armor HUD / Armor Glance / Armor Durability HUD / Durability Viewer Continuation (separate-widget mods with zero Auto HUD integration — they reproduce the floating-widget bug, and even the H-toggle would not hide them), keeping IA-HUD (open bug, no fix).

## 3. GUIDE.md changes

1. **Wave 0 Inventory & UI table** (row at ~line 434): `Immersive Armor HUD` → `Detail Armor Bar Reconstructed 5.0.2` (Modrinth link), role: armor detail on the bar — armor-slot icons + durability colors, protection-enchant colors, low-durability flash, netherite bar, mending/thorns, trims.
2. **Inventory & UI — Your Daily Tools bullet** (~line 553): replace the IA-HUD bullet with a DAB-R bullet; note "integrated with the armor bar — hides with Auto HUD, multi-row safe with Overflowing Bars".
3. **Visual & Client QoL What-to-Expect**: add a short DAB-R × Auto HUD × Overflowing Bars integration note (Auto HUD hides it via the armor component — idle-hide and the `H` toggle both cover it; OB rows > 20 render clean). Add watch item: Modded Coffee GUI texture coverage of DAB-R unverified (cosmetic only).
## 4. config/detailarmorbar.json (new, tracked)

**Full default JSON with `toggleCompatibleHeartMod` flipped to `true`** — a partial override is NOT safe: DAB-R loads with Gson (unsafe allocation, constructors skipped), so any omitted primitive field deserializes as `false`/`0`, silently disabling that feature; `replaceInvalidOptions()` only repairs the object fields. Full option set (defaults verified from `DetailArmorBarConfig.Options` source):

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

Argb values computed from the source defaults (`0x5099FFFF` etc.); enum names verified from the `Options` class field initializers. Documented in STATUS.md: why (OB armor-layer deferral → DAB-R owns the armor bar via its OB mixin).

## 5. STATUS.md decision entry

New batch entry (Aug 2026) recording: user-reported bug (IA-HUD visible under Auto HUD), root cause (mount-layer rendering, no compat), the >20 open bug with links, swap decision, source verification summary (Modrinth API versions/deps; bytecode checks of Auto HUD 8.11 `AutoHudGui`/`BarOverlayRendererMixin`; DAB-R source reads), instance action, verify checklist.

**Instance action (XMCL)**: remove `immersivearmorhud-neoforge-1.21.1-1.0.1.jar` (+ `txnilib*` jar **only if** no other mod requires it — verify before deleting); add `DetailArmorBarReconstructed-5.0.2+1.21.1-neoforge.jar`. [VERIFY] at next launch:
- Auto HUD idle-hide AND `H` toggle both hide the DAB-R bar decoration along with the armor bar (no floating icons);
- with high HP/armor (Relics bonuses) the armor bar renders cleanly across rows (no IA-HUD-style glitch);
- OB row-count and DAB-R protection colors/durability flash visible;
- no missing-dependency errors (DAB-R has none).

## 6. PDF + commit

Regenerate DRIFTWOOD-GUIDE.pdf via the project's existing pipeline. Commit `docs(driftwood): swap Immersive Armor HUD for Detail Armor Bar Reconstructed`.

## 7. Verification

- Static: GUIDE.md has no remaining `Immersive Armor HUD` references (grep); counts consistent; config file valid JSON.
- In-game (user, at next launch): the [VERIFY] checklist above — this is a client-visual change; the repo-side deliverable is docs + config + status, with the behavioral check documented for the instance.
- PDF regenerates without errors.

## 8. Out of scope / risks

- **The Aether armor icons**: IA-HUD had explicit Aether sprites; DAB-R renders unknown armor generically (cosmetic — pack ships The Aether). Accept; note in the guide bullet if desired.
- **Modded Coffee GUI**: coverage of DAB-R unverified — watch item, cosmetic only.
- **IA-HUD tooltip/hover info**: none lost (tooltips remain Obscure Tooltips' surface).
- **Upstream**: Auto HUD still lacks any armor-HUD compat for IA-HUD; if the user later wants IA-HUD back, the upstream compat request (Crendgrim/AutoHUD issue) remains the correct path — tracked as a non-goal for now.
