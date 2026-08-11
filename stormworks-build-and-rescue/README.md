# Whitecap — README

Curated two-layer modlist and game guide for **Stormworks: Build and Rescue v1.15.18** (current stable, "The Airburst Update"), requiring **all three DLCs** (Search and Destroy, Industrial Frontier, Space) and managed with the official **Steam Workshop + in-game Mod Manager** (no third-party tools). The guide covers installing and enabling mods per save, the two-layer curated modlist (QoL & graphics first, then the full modded experience), a how-to-play field manual with engineering fundamentals and step-by-step builds, a first-20-minutes walkthrough, and five player personas.

## What's inside

| File | Content |
|---|---|
| `guide/10-installation.typ` | Steam v1.15.18 → Workshop subscriptions → per-save "Enabled Mods" → verify |
| `guide/20-modlist.typ` | The two-layer modlist: pillars, the mod manager story, mod cards, rejected mods with reasons |
| `guide/30-how-to-play.typ` | Field manual: game modes, the rescue loop, a first-20-minutes walkthrough, engineering details, step-by-step builds (boat/helicopter/plane/truck), basic terms |
| `guide/40-personas.typ` | Five personas: background + game creation choices (world settings, house rules, goals) |

## Layers

- **Layer 1 — "The Commissioning"**: QoL + graphics only (Opal Shader, Echo's Bigger Workbenches, Better Hitboxes). The recommended starting save.
- **Layer 2 — "The Full Fleet"**: everything from Layer 1 plus the physics overhaul (R.A.M.B.O.), parts expansions, cargo/mission depth, and detail mods. Start a fresh save once you know the ropes.

## Build the PDF

- `build-pdf.bat` → compiles to `output/Whitecap.pdf`
- Requires Typst 0.15+ (`winget install Typst.Typst`)

## Sources

- Stormworks: Build and Rescue (Steam): <https://store.steampowered.com/app/573090> — v1.15.18, current stable (2026-06-24)
- Steam News Hub (versions): <https://store.steampowered.com/news/app/573090>
- Steam Workshop hub: <https://steamcommunity.com/app/573090/workshop/>
- Geometa modding wiki: <https://geometa.co.uk/wiki/stormworks/view/asset_modding/Stormworks>

Game and mod versions drift (Geometa ships several updates a year); STATUS.md records every verified Workshop item ID and the guide points to each mod's page for the current version.
