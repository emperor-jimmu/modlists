# Tenka Fubu — Mod Review (2026-07-30)

Review of 23 candidate Steam Workshop mods against Tenka Fubu pillars.

---

## Mods Reviewed

| # | ID | Name | Category | Wave Fit | Verdict |
|---|-----|------|----------|----------|---------|
| 1 | 1795683029 | Unofficial Shogun 2 Patch 1.7 | Bugfix | 0 | **ACCEPT** |
| 2 | 105951952 | Vastator Unit Style 1.3 | Graphics | 1 | REVIEW |
| 3 | 99369335 | Extended Camera Minimod | UI/QoL | 0 | WARN |
| 4 | 2983008970 | Marco's Bit Better Blood | Graphics | 1 | **ACCEPT** |
| 5 | 485336160 | Sengoku Campaign Retexture | Graphics | 1 | WARN |
| 6 | 99501976 | Better Maps 0.45 - Part 1 | Maps | 1 | CONFLICT |
| 7 | 123046263 | Better Maps 0.45 - Part 2 | Maps | 1 | CONFLICT |
| 8 | 427417469 | Better Maps 0.45 - Part 3 | Maps | 1 | CONFLICT |
| 9 | 1507085670 | Strongholds Of The Samurai Part 1 | Maps | 1 | **ACCEPT** |
| 10 | 1507094229 | Strongholds Of The Samurai Part 2 | Maps | 1 | **ACCEPT** |
| 11 | 1507101969 | Strongholds Of The Samurai Part 3 | Maps | 1 | **ACCEPT** |
| 12 | 1507106653 | Strongholds Of The Samurai Part 4 | Maps | 1 | **ACCEPT** |
| 13 | 1507120263 | Strongholds Of The Samurai Part 5 | Maps | 1 | **ACCEPT** |
| 14 | 215214032 | Real Armies | Cosmetic | 1 | **ACCEPT** |
| 15 | 2243596240 | UAI Updated + Reduced AI Cheating | AI | 2 | **ACCEPT** |
| 16 | 527657591 | 3 Skill Points per General Level | Balance | 2 | REJECT |
| 17 | 528071152 | 3 Skill Points Per Level for Agents | Balance | 2 | REJECT |
| 18 | 530099743 | Stronger Towers (Vanilla) | Balance | 2 | REJECT |
| 19 | 2292178706 | Reduced Food for Market Upgrades | Balance | 2 | REJECT |
| 20 | 141938812 | 12 Turns per Year | Mechanics | 2 | REVIEW |
| 21 | 746792877 | Common-sense Diplomacy Adjustments | AI | 2 | **ACCEPT** |
| 22 | 1511978788 | Ashina's Extra Character Clan Names | Immersion | 0 | **ACCEPT** |
| 23 | 150812711 | Expanded Japan (97 regions) | Map/Overhaul | 2 | WARN |

---

## Per-Mod Analysis

### 1. Unofficial Shogun 2 Patch 1.7 (1795683029)
- **Wave**: 0 (bugfix = QoL, no new gameplay)
- **Compatibility**: "Compatible with more or less anything"
- **Notes**: Combines multiple bugfix mods. Fixes Yari Spear Square, Oda campaign banner props, Heavy Bune ores, unit caps, difficulty resistance values, etc. Actively maintained with 7 patch versions. 1,236 ratings.
- **Included fixes that overlap with other mods**: Spear Square fix (also done by 527380313, a separate mod from the 3-skill-points author). No conflict — Patch is comprehensive.
- **Verdict**: ACCEPT. Essential foundation mod. Place first in load order.

### 2. Vastator Unit Style 1.3 (105951952)
- **Wave**: 1 (graphics only, no gameplay changes)
- **Compatibility**: Incompatible with Radious. TWCenter version needed for multiplayer.
- **Notes**: Visual-only unit reskin. Adds variety, remakes hero units with unique armor. 3,888 ratings. Recent user comments (Oct 2025) report it not working for some. "Radious (and maybe other) mods are interfering with it" — author confirms.
- **Risk**: Some users report it does nothing when installed with other mods. No last-updated date visible.
- **Verdict**: REVIEW. Accept if it works in testing with the final modlist. Otherwise consider alternative unit reskins.

### 3. Extended Camera Minimod (99369335)
- **Wave**: 0 (UI/QoL — just zooms camera out more)
- **Compatibility**: Works standalone. No known conflicts mentioned.
- **Notes**: Simple mod. 2,245 ratings. **CRITICAL**: Last updated ~13 years ago. Recent comments (Feb 2024, Nov 2025): "this mod was last updated 13 years ago thats why its crashing the game" and "This still doesn't work for me."
- **Risk**: HIGH — multiple recent crash reports on modern game builds.
- **Verdict**: WARN. Test thoroughly before including. If it crashes, find an alternative or omit.

### 4. Marco's Bit Better Blood (2983008970)
- **Wave**: 1 (graphics — blood effects only)
- **Compatibility**: "Save game compatible with any non-blood mod as long as you tick it first in the mod manager." Does NOT edit `landbattle.xml` — high compatibility by design.
- **Notes**: 2023 release, recent. Improves blood effects without going overboard. Removes on-screen blood splashes.
- **Verdict**: ACCEPT. Clean, modern, high-compatibility graphics mod.

### 5. Sengoku Campaign Retexture (485336160)
- **Wave**: 1 (graphics — campaign map textures)
- **Compatibility**: "Compatible with all mods (but little texture change in sea near map borders)."
- **Notes**: Campaign map retexture using Genpei textures + FoTS lighting. 1,750 ratings. Updated 2016. **REQUIRES Genpei DLC** (Rise of the Samurai). Recent comment (Apr 2026): "it crashes for me while using other mods."
- **Risk**: MEDIUM — old (2016), requires specific DLC, crash reports with mod stacks.
- **Verdict**: WARN. Only include if users have RotS DLC. Test stability with full Wave 1 load.

### 6-8. Better Maps 0.45 - Parts 1, 2, 3 (99501976, 123046263, 427417469)
- **Wave**: 1 (map improvements for sieges and land battles)
- **Compatibility**: **MUTUALLY EXCLUSIVE with Strongholds of the Samurai** — both are map mods that modify the same files.
- **Notes**: Improves siege and land maps for gameplay and visuals. 3-part mod. Old (2013-era). Version 0.45 — possibly abandoned.
- **Verdict**: CONFLICT with Strongholds. Review below for choice.

### 9-13. Strongholds Of The Samurai - Parts 1-5 (1507085670, 1507094229, 1507101969, 1507106653, 1507120263)
- **Wave**: 1 (historically accurate castle maps for campaign)
- **Compatibility**: "Does not work with other map mods! (such as MOSS maps, Better maps etc.)" — explicit. Compatible with Darthmod, Radious, Expanded.
- **Notes**: 5-part mod. 116K+ current subscribers. Updated Sep 2020. Known bug: "When player is defending, units such as General or cavalry will spawn underground! Must move them inside BEFORE clicking start battle."
- **Metrics**: 231K unique visitors, 116K subscribers — most popular map mod on the list.
- **Verdict**: ACCEPT over Better Maps. More popular, more recently updated, explicit about compatibility.

### Maps Decision: Strongholds vs Better Maps
| Factor | Better Maps | Strongholds |
|--------|-------------|-------------|
| Parts | 3 | 5 |
| Last updated | 2013? | Sep 2020 |
| Subscribers | Lower | 116K+ |
| Known bugs | Unknown | Documented (underground spawn) |
| Compatibility list | Not specified | Explicitly lists compat/incompat |
| **Choice** | — | **Strongholds** |

**Recommendation**: Choose **Strongholds Of The Samurai**. Better maintained, larger user base, better documentation. The known spawn bug is documented with a workaround.

### 14. Real Armies (215214032)
- **Wave**: 1 (cosmetic — changes campaign map unit representative model)
- **Compatibility**: "Is this compatible with XXX mod? Yep." Works with all campaigns.
- **Notes**: When moving general-less armies on campaign map, the visible unit model matches the actual unit type (levy shows levy, monk shows monk, etc.) rather than always same soldier. **Limitation**: Only works with vanilla units or Frodo45127's unit packs — not custom units from other mods.
- **Verdict**: ACCEPT. Purely cosmetic, no gameplay impact, universally compatible.

### 15. UAI Updated (RotS support) with Yarki's Reduced AI Cheating (2243596240)
- **Wave**: 2 (AI/mechanics overhaul)
- **Compatibility**: Included in Shogun 2 Enhanced. Should be compatible with other mods (reverted out-of-scope changes for compatibility).
- **Notes**: Updates TheHedgeKnight's Universal AI mod. Key changes: AI weights military strength in diplomacy more, plays safer with invasions, defends borders better, less fixated on light ships, tweaked autoresolve. Ports UAI to RotS. Merges Yarki's Reduced AI Cheating.
- **Verdict**: ACCEPT for Wave 2. Core AI improvement.

### 16. 3 Skill Points per General Level (527657591)
- **Wave**: Would be 2 (balance change), but...
- **Compatibility**: Fixed a compatibility issue. Otherwise standard.
- **Notes**: Gives 15 skill points instead of 12 at max level (25% increase). Player-only advantage.
- **Rule violation**: "No cheating/overpower/all-knowing mods." This directly makes the player's generals stronger than AI generals.

### 17. 3 Skill Points Per Level for Agents (528071152)
- **Same as #16**. 15 instead of 10 for vanilla agents (50% increase), 12 instead of 9 for FoTS (33% increase).

**Verdict for #16-17**: REJECT. Direct player power boost violates the "no overpower mods" rule. If the user wants faster general/agent progression, they should set campaign difficulty lower.

### 18. Stronger Towers (530099743)
- **Wave**: Would be 2 (balance), but...
- **Notes**: Buffs castle towers from ~20 kills to ~100-120 kills (4-6x). Fire arrows, faster fire rate, range 150→175. Author claims "modest influence."
- **Rule violation**: "No cheating/overpower mods." Castle defense is already strong when player-controlled. This is a player-advantage mod masquerading as a realism tweak. 4-6x buff is not "modest."
- **Verdict**: REJECT. Significant balance skew. AI does not benefit equally.

### 19. Reduced Food Consumption for Market Upgrades (2292178706)
- **Wave**: Would be 2 (balance), but...
- **Notes**: Removes food cost from Market (0), Rice Exchange (0 from -1), Merchant Guild (0 from -2), Kanakabuma (-1 from -2). Author notes this makes AI more likely to upgrade markets.
- **Rule violation**: "No cheating/overpower mods." The food cost is an intentional strategic tradeoff in Shogun 2's economy design. Removing it makes economic growth trivially easy, especially for the player who can optimize better than AI.
- **Verdict**: REJECT. Removes a core strategic mechanic.

### 20. 12 Turns per Year (141938812)
- **Wave**: 2 (mechanics/pacing)
- **Notes**: Changes from 4 turns/year (seasons) to 12 turns/year (3 turns per season). Extends Sengoku campaign from ~154 turns to **660 turns**. RotS: 350 turns. Compatible with DarthMod, Radious, map packs. 4,282 ratings. Posted 2013.
- **Analysis**: Not inherently "overpowered" — both player and AI get more turns. However:
  - Makes Realm Divide arrive much later in real-time
  - Generals/agents age slower relative to progress
  - Extends campaign dramatically (4x more turns)
  - Can make the game feel less urgent/pressured
- **Verdict**: REVIEW. Not "overpower" per se, but fundamentally changes campaign pacing. This is a preference mod. Include as optional with clear documentation about what it changes. Consider if the modlist's target audience (Oda/Tokugawa waves) benefits from a 660-turn campaign.

### 21. Common-sense Diplomacy Adjustments (746792877)
- **Wave**: 2 (AI diplomacy)
- **Compatibility**: Vanilla, RotS, and FoTS compatible.
- **Notes**: AI forms multi-clan factions/alliances instead of free-for-all. Trade relations start at +19, alliances at +40, increasing over time. More stable AI opinion. Encourages coherent diplomatic blocs.
- **Potential overlap with UAI**: UAI also modifies diplomacy weighting. These could overlap or conflict. Both modify AI diplomatic behavior.
- **Verdict**: ACCEPT but NOTE: may compete with UAI (#15). Review whether UAI already provides sufficient diplomatic improvements. If both used, test for conflicts.

### 22. Ashina's Extra Character Clan Names (1511978788)
- **Wave**: 0 (immersion/QoL — just adds more names for retainers)
- **Notes**: Adds 25 additional names per major clan for generals, metsuke, and wives. Not working for Hattori and Otomo (different name tables). 2025 update.
- **Verdict**: ACCEPT. Purely cosmetic/immersion. No gameplay impact. Good for Wave 0.

### 23. Expanded Japan (150812711)
- **Wave**: 2 (map overhaul — 97 new regions, 101 new factions)
- **Compatibility**: **NOT compatible with RotS or FotS.** "Only works with the Shogun 2 Campaign."
- **Notes**: Massive map expansion: 65→176 provinces, 47→163 factions, 22 playable. Increases required provinces for victory proportionally.
- **Risk**: VERY HIGH. This is a total conversion-level mod. It will conflict with virtually every other mod that touches the campaign map, factions, start positions, or scripts. It is fundamentally incompatible with RotS and FotS DLCs.
- **Verdict**: WARN. While impressive in scope, this mod:
  1. Excludes RotS/FotS — conflicts with the modlist's multi-DLC support
  2. Is a total map overhaul that supersedes almost everything else
  3. Would need to be the centerpiece of an entirely separate modlist
  4. High risk of instability with 2x provinces and 3x factions

  If the modlist wants this, it should be a **separate Wave 3** ("Total Overhaul") or documented as an **alternative** to the core modlist, not integrated alongside other Wave 2 mods.

---

## Conflict Map

```
┌─────────────────────────────────────────────────────────┐
│ MAP MODS (mutually exclusive — pick ONE)                │
│                                                         │
│  Option A: Strongholds Of The Samurai (Parts 1-5)       │
│  Option B: Better Maps (Parts 1-3)                      │
│                                                         │
│  → RECOMMENDED: Strongholds (more popular, updated 2020)│
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│ AI DIPLOMACY (possible overlap)                         │
│                                                         │
│  UAI Updated (#15) — comprehensive AI overhaul          │
│  Common-sense Diplomacy (#21) — diplomacy-focused       │
│                                                         │
│  → Both modify AI diplomatic weights. Test together.    │
│  → UAI is broader (military, autoresolve, RotS support) │
│  → Common-sense is narrower (diplomacy, alliances)      │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│ DLC DEPENDENCIES                                        │
│                                                         │
│  Sengoku Campaign Retexture (#5) → REQUIRES Genpei/RotS │
│  Expanded Japan (#23) → EXCLUDES RotS & FotS            │
│                                                         │
│  → #5 can't be used if player lacks RotS DLC            │
│  → #23 can't be used if player WANTS RotS/FotS          │
└─────────────────────────────────────────────────────────┘
```

---

## Summary by Wave

### Wave 0 — Candidates (UI/QoL only)
| Status | Mod | Notes |
|--------|-----|-------|
| ACCEPT | Unofficial Shogun 2 Patch | Foundation, load first |
| ACCEPT | Ashina's Extra Clan Names | Cosmetic/immersion |
| WARN | Extended Camera Minimod | 13 years old, crashes reported — test first |

### Wave 1 — Candidates (Graphics, Units, Maps)
| Status | Mod | Notes |
|--------|-----|-------|
| ACCEPT | Strongholds Of The Samurai (Parts 1-5) | Best map mod, recommended |
| ACCEPT | Marco's Bit Better Blood | Clean, modern, compatible |
| ACCEPT | Real Armies | Cosmetic only |
| REVIEW | Vastator Unit Style 1.3 | May not work with other mods — test |
| WARN | Sengoku Campaign Retexture | Requires Genpei DLC, 2016 |
| REJECT | Better Maps (Parts 1-3) | Conflicts with Strongholds |
| REJECT | 3 Skill Points per General | Overpower |
| REJECT | 3 Skill Points per Agent | Overpower |

### Wave 2 — Candidates (Overhauls, Mechanics)
| Status | Mod | Notes |
|--------|-----|-------|
| ACCEPT | UAI Updated + Reduced AI Cheating | Core AI improvement |
| ACCEPT | Common-sense Diplomacy | Diplomacy AI — test with UAI |
| REVIEW | 12 Turns per Year | Preference mod, optional |
| REJECT | Stronger Towers | 4-6x buff, overpower |
| REJECT | Reduced Food for Markets | Removes strategic tradeoff |
| WARN | Expanded Japan | Too massive, incompatible with DLCs |

---

## Top Recommendations

1. **Accept immediately**: Unofficial Patch, Bit Better Blood, Real Armies, Strongholds, UAI, Common-sense Diplomacy, Ashina Clan Names
2. **Test before accepting**: Extended Camera, Vastator Unit Style, Sengoku Retexture
3. **Offer as optional**: 12 Turns per Year
4. **Reject**: All 4 balance-skewing mods (#16-19), Better Maps (redundant with Strongholds)
5. **Evaluate separately**: Expanded Japan — possible standalone Wave 3 or alternative modlist
