# 07 -- Quests & Stories

**Goal:** New quests, expanded storylines, additional gigs, and narrative
content. Quality over quantity -- quests must feel like they belong in Night
City.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---

### Deceptious Quest Core

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/7831>
- **Version:** 3.2.0
- **Released:** 2026-06-28
- **Summary:** Quest framework that hooks into V's H10 apartment. Required for many quest and romance mods (Romanced Enhanced series, Gone Away, etc.). No content alone.
- **Why:** Foundation for the entire deceptious quest ecosystem. Installing this enables all dependent quest mods to activate from a single trigger (enter H10 apartment).
- **Conflicts:** None known. 55+ mods use this framework.
- **Dependencies:** ArchiveXL, Codeware, RED4ext, TweakXL
- **MO2 Notes:** Extract to game root. Activate new quest mods by leaving/re-entering H10 apartment. Do not rename the archive file.
- **Performance:** None

### Cutscene Weapon Swapper

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/20743>
- **Version:** 1.4.1
- **Released:** 2025-04-20
- **Summary:** Replaces default placeholder weapons in cutscenes with your actual equipped weapon. Supports 12+ scenes including The Pickup, The Heist, Ghost Town, and Phantom Liberty.
- **Why:** Minor but persistent immersion breaker fixed — no more generic pistols in story moments where V should be holding their actual gear.
- **Conflicts:** None known
- **Dependencies:** Codeware, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Files go to `r6/scripts/`. Selects last used weapon first, then weapon slots, then inventory.
- **Performance:** None

### Immersive Fixers

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/15460>
- **Version:** 1.4.1
- **Released:** 2024-06-24
- **Summary:** Makes fixer introductions less abrupt and more immersive — no more cold-call phone rings the moment you enter a new district. Integrates fixer meetups into the natural flow of exploration.
- **Why:** Vanilla fixer introductions feel gamey — a phone rings and suddenly you know a fixer you've never met. This smooths the introduction into something that feels like it belongs in Night City's diegetic world.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, RED4ext, TweakXL
- **MO2 Notes:** Extract to game root. Tag as **Root**. Files go to `archive/pc/mod/`. Works automatically — no configuration needed.
- **Performance:** None

### Cutscene Weapon Swapper

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/20743>
- **Version:** 1.4.1
- **Released:** 2025-04-20
- **Summary:** Replaces default placeholder weapons in cutscenes with your actual equipped weapon. Supports 12+ scenes including The Pickup, The Heist, Ghost Town, and Phantom Liberty.
- **Why:** Minor but persistent immersion breaker fixed — no more generic pistols in story moments where V should be holding their actual gear.
- **Conflicts:** None known
- **Dependencies:** Codeware, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Files go to `r6/scripts/`. Selects last used weapon first, then weapon slots, then inventory.
- **Performance:** None

---

## Install Order

All mods are **Root**-category — enable Root Builder in MO2 before installing.

1. Deceptious Quest Core
2. Cutscene Weapon Swapper
3. Immersive Fixers

**Note:** Deceptious Quest Core is also required by mods in 08-Relationships & Romance (Gone Away).
