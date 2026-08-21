---
title: Conflicts Matrix
description: Compatibility matrix for all mods in the modlist
---

# Conflicts Matrix

<span class="wave-badge wave-0">All Waves</span>

## Compatibility Overview

| Mod A | Mod B | Severity | Notes |
|-------|-------|----------|-------|
| Spectre | Brothers In Arms - Ultimate Edition | Medium | Spectre bundles BiA changes; Spectre must have priority (Script Merger / load order) |
| Upscaled UI - HUD Elements | All Quest Objectives On Map | Low | Upscaled UI is incompatible with mods altering HUD `.redswf` files; AQOOM edits map UI/scripts - merge scripts, keep one `.redswf` winner |
| Eternal Hunt | SCAAR | Low | Both touch combat animations; merge with Script Merger (community-verified combo) |
| Eternal Hunt / Spectre | Combat Redux, Blood And Steel, Lore-Friendly Economy | High | Do not stack combat or economy overhauls - these are alternatives, not additions |
| Meadows Remastered | Any other grass overhaul | High | Standalone grass overhaul |
| True Rain | Any other rain/weather FX mod | High | Only rain mod in the list |
| Promotional Atmosphere Lighting Mod | Any other lighting overhaul | High | Only one lighting mod (classic STLM/PLM/WLM are broken on Next-Gen anyway) |
| HD Reworked Project NextGen | Older grass mods (e.g. Beautiful Grass) | Medium | HDRP conflicts with older vegetation mods - use Meadows Remastered instead |

## Resolution Priority

1. **Script Merger** - Most conflicts can be auto-merged
2. **Manual editing** - For complex conflicts
3. **Load order** - Later mods override earlier ones
4. **Exclusion** - Remove one conflicting mod
