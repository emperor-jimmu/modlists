# Load Order

This is the prescribed load order for each wave in BG3 Mod Manager (BG3MM). Mods are ordered top-to-bottom in the Active Mods list.

## General Rules

1. **Frameworks and UI foundations always load first** (ImpUI)
2. **UI mods** load after frameworks
3. **Standalone mods** (no dependencies) go in the middle
4. **Content mods** (classes, spells, races, feats) load after UI
5. **Gameplay mechanics and overrides** load near the end
6. **Graphics and visual mods** load last (they override visuals)
7. **Script Extender mods** are not listed in load order — they load automatically

---

## Wave 0 Load Order

```
1.  ImpUI (ImprovedUI)                     — UI framework, must load first
2.  Better Hotbar 2                        — depends on ImpUI
3.  Better Character and Party Panels      — depends on ImpUI
4.  Always Show Approvals                  — depends on ImpUI
5.  Tav's Hair Salon                       — depends on ImpUI
6.  Faces of Faerun                        — standalone, high priority for CC
7.  WASD Character Movement                — standalone, load before Camera Tweaks
8.  Native Camera Tweaks                   — standalone, load after WASD
9.  Bags Bags Bags                         — standalone QoL
10. FTSortingBags                          — standalone QoL, after Bags
11. Highlight (Almost) All                 — standalone QoL
12. All-In-One Collector Total (Auto Loot) — depends on Script Extender
```

**Notes:**
- Script Extender is required but not shown in load order — it loads automatically before all other mods.
- If using WASD and Native Camera Tweaks together, WASD loads first to avoid camera keybinding conflicts.
- Bags Bags Bags and FTSortingBags can be used together or separately. If only using one, remove the other from this order.

---

## Wave 1 Load Order

Wave 1 includes all Wave 0 mods (in the same order) plus Wave 1 mods appended after. The combined load order is:

```
1.  ImpUI (ImprovedUI)                     — UI framework (Wave 0)
2.  Better Hotbar 2                        — depends on ImpUI (Wave 0)
3.  Better Character and Party Panels      — depends on ImpUI (Wave 0)
4.  Always Show Approvals                  — depends on ImpUI (Wave 0)
5.  Tav's Hair Salon                       — depends on ImpUI (Wave 0)
6.  Faces of Faerun                        — standalone CC (Wave 0)
7.  New Character Creation Presets         — new faces, after Faces of Faerun (Wave 1)
8.  Astralities' Hair Color Supplement     — after hair mods (Wave 1)
9.  Horns of Faerun                        — after other CC mods (Wave 1)
10. WASD Character Movement                — standalone (Wave 0)
11. Native Camera Tweaks                   — standalone (Wave 0)
12. Bags Bags Bags                         — standalone QoL (Wave 0)
13. FTSortingBags                          — standalone QoL (Wave 0)
14. Highlight (Almost) All                 — standalone QoL (Wave 0)
15. All-In-One Collector Total (Auto Loot) — Script Extender dependent (Wave 0)
16. Better Inventory UI                    — depends on ImpUI (Wave 1)
17. Camp Event Notifications               — Script Extender dependent (Wave 1)
18. Fantastical Multiverse                 — race mod, depends on ImpUI (Wave 1)
19. Artificer Class and All Subclasses     — class mod, depends on ImpUI (Wave 1)
20. Blood Hunter Class                     — class mod, depends on ImpUI (Wave 1)
21. 5e Spells                              — spell mod, depends on ImpUI (Wave 1)
22. Feats Extra                            — feat mod, depends on ImpUI (Wave 1)
23. Unlock Level Curve                     — progression mod (Wave 1)
24. Tactician Plus / Combat Extender       — difficulty mod, load late (Wave 1)
25. Basket Full of Equipment SFW           — equipment mod, load late (Wave 1)
26. Party Limit Begone / Aether's No Party — gameplay mod, load last (Wave 1)
```

**Notes:**
- Choose Party Limit Begone OR Aether's No Party Limits — not both.
- Choose Tactician Plus OR Combat Extender for stat scaling — not both.
- New Character Creation Presets loads AFTER Faces of Faerun to ensure both face packs are available.
- All character creation mods (5-9) load as a group after ImpUI.
- Race/class/spell/feat mods (18-22) are grouped together after the CC block.
- Difficulty mods (24) load late to override enemy stats after all content mods.
- Party limit mod (26) loads last to ensure it catches all companions.
