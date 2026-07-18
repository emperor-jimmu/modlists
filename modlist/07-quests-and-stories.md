# 07 - Quests & Stories

**Goal:** New quests, expanded storylines, additional gigs, and narrative
content. Quality over quantity -- quests must feel like they belong in Night
City.

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

### Undermine Quest Series (UQS)

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/17186>
- **Version:** 1.4a
- **Released:** 2025-08-11
- **Summary:** Quest framework for the Song So Mi romance story arc. Handles quest launching, localization, and shared logic across the Undermine quest series (Possibilities, The Ransom, Into the Depths, Romantic Hangout). No content alone.
- **Why:** Required by the Songbird romance quest chain. Same role as Deceptious Quest Core but for the Undermine ecosystem — enables plug-and-play quest activation without manual resets.
- **Conflicts:** None known.
- **Dependencies:** ArchiveXL, RED4ext, redscript, TweakXL, Phantom Liberty
- **MO2 Notes:** Extract to game root. Tag as **Root**. Install after Deceptious Quest Core. New quests auto-activate on install — no apartment visit needed.
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

### Aurore Romanced (Lady Marmalade)

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/11097>
- **Version:** 1.2.6
- **Released:** 2026-05-08
- **Summary:** Adds a small quest to "romance" Aurore Cassel after the events at the Black Sapphire. Works for both Masc and Fem V (Fem V has better animation support).
- **Why:** Aurore is a memorable Phantom Liberty character with no follow-up in vanilla — she vanishes after the Black Sapphire mission. This provides a narrative "what if" that adds role-playing depth to a pivotal PL encounter. By Deceptious (same author as Quest Core and Romanced Enhanced series).
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, TweakXL, Deceptious Quest Core
- **MO2 Notes:** Extract to game root. Quest triggers after leaving Black Sapphire — use the hotel key Aurore slips you. Quest fails if not completed before tracking the twins' car to Dogtown. Resettable via Deceptious Quest Core Utilities. TweakXL yaml goes in `r6/tweaks/`.
- **Performance:** None

---

## Song So Mi Romance Arc

These quests form a connected story arc by Undermine / Alyzandre, telling a post-Phantom Liberty romance with Songbird. They install as a sequential chain and require Undermine Quest Series (UQS) as their framework. All require sending Songbird to the moon in Phantom Liberty.

### Possibilities

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/17185>
- **Version:** 1.6a
- **Released:** 2026-06-21
- **Summary:** First quest in the Song So Mi romance arc. Songbird survives and wants a meeting. PG content. New relationship texting system and full journal support.
- **Why:** Songbird's ending is one of the most emotionally impactful in Phantom Liberty but leaves her story unresolved. This series gives her a proper post-game narrative and is actively developed with frequent updates.
- **Conflicts:** None known
- **Dependencies:** Phantom Liberty, ArchiveXL, RED4ext, redscript, TweakXL, Undermine Quest Series
- **MO2 Notes:** Extract to game root. Requires sending Songbird to the moon. 14-day in-game wait after PL ending. Quest auto-starts via UQS. Repeatable (reset after completion).
- **Performance:** None

### Romantic Hangout with So Mi

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/17263>
- **Version:** 1.2a
- **Released:** 2025-08-11
- **Summary:** Second quest — a repeatable hangout platform that facilitates the ongoing relationship with Songbird. Activities separated into PG and R-rated conversation sections. Content toggle controls visual state (default / non-nude lingerie / revealing lingerie / full nude).
- **Why:** Provides a persistent, recurring hangout that deepens the Songbird relationship between story quests. Blackwall Cyberdeck/Weapon crafting integration balances the Reed vs Songbird path. Banking system and planned Dark Future integration add gameplay substance beyond the hangout itself.
- **Conflicts:** None known
- **Dependencies:** Phantom Liberty, Undermine Quest Series, Possibilities
- **MO2 Notes:** Extract to game root. Persistent quest — auto-cycles every 4-5 days. Player controls content level via conversation menu choice (PG content at front, R-rated behind Sexualize Content option). 30-min real-time cooldowns at start and end.
- **Performance:** None

### The Ransom

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/18055>
- **Version:** 1.2
- **Released:** 2026-06-25
- **Summary:** Third quest in the arc. Features a boss fight and combat zone area. Full voice over dialog. PG romantic ending scene.
- **Why:** Raises the stakes with combat gameplay while advancing the Songbird narrative. Active development with localization and optimization updates.
- **Conflicts:** None known
- **Dependencies:** Phantom Liberty, Possibilities, Romantic Hangout with So Mi, Undermine Quest Series, ArchiveXL, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Chapel key card required — prologue skippers may need to find one. Boss fight area (re-populated if boss already defeated). Long real-time dialog section after combat — do not leave the area.
- **Performance:** None

### Into the Depths

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/19361>
- **Version:** 1.0
- **Released:** 2025-12-08
- **Summary:** Fourth quest in the arc (Phase 1 of 3). Branching dialog with consequences — 3 "no" answers fail the quest. Setup tasks to prepare for the story's next phase.
- **Why:** Continues the Songbird narrative with meaningful dialog choices. Phase 1 is functional and stable; Phases 2 (dialog/driving) and 3 (new area/combat) are in active development.
- **Conflicts:** None known
- **Dependencies:** Phantom Liberty, Possibilities, Romantic Hangout with So Mi, The Ransom, Undermine Quest Series
- **MO2 Notes:** Extract to game root. Phase 1 only — remaining phases will be free updates. Quest starts via text message from So Mi. Answer options: Yes (begin), No (pause 7 days, new dialog), Wait (reset, try again in 7 days). Phase 3 will lock V into the quest until conclusion.
- **Performance:** None

---

## Install Order

All mods are **Root**-category — enable Root Builder in MO2 before installing.

1. Deceptious Quest Core
2. Undermine Quest Series (UQS)
3. Cutscene Weapon Swapper
4. Immersive Fixers
5. Aurore Romanced (Lady Marmalade)
6. Possibilities
7. Romantic Hangout with So Mi
8. The Ransom
9. Into the Depths

**Note:** Deceptious Quest Core is also required by mods in 08-Relationships & Romance (Gone Away). Songbird romance arc (items 6-9) requires sending Songbird to the moon in Phantom Liberty.
