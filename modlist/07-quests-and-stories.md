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

### The Kidnapping of Panam

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/17329>
- **Version:** 2.1.0
- **Released:** 2024-10-01
- **Summary:** Panam has gone missing. A cryptic message, a deadly ambush at the Sunset Motel, and a trail leading into Maelstrom territory. V races against time to rescue her from a chromed-up boss with a personal vendetta.
- **Why:** Adds a high-stakes narrative quest centered on Panam with full voice acting, holocalls, and horror elements. Supports both male and female V with different activation conditions. 1,100+ endorsements.
- **Conflicts:** None known. Compatible with Panam Romanced Enhanced.
- **Dependencies:** ArchiveXL, RED4ext, TweakXL, Phantom Liberty
- **MO2 Notes:** Extract to game root. For male V: requires first dating quest completed with no active dating quest. For female V: quest activates automatically with a 24-hour delay. NG+ compatible.
- **Performance:** None

### High Stakes Quest

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/18023>
- **Version:** 1.3.2
- **Released:** 2024-12-01
- **Summary:** A vehicle-based quest featuring holocalls from Regina, a timed driving phase with autosaves, and a full narrative with Johnny dialogue. Vehicle durability tracking with popups.
- **Why:** Adds a driving-focused quest that uses Night City's vehicle mechanics as core gameplay rather than just transport. Video holocalls add production value. Multiple community translations available.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Codeware, RED4ext, redscript, TweakXL, Phantom Liberty
- **MO2 Notes:** Extract to game root. Quest includes autosaves every 45 seconds during the drive phase. Uses AI-generated dialogue alongside vanilla Johnny lines. 9 other mods use this as a dependency.
- **Performance:** None

### New Quest - Californication

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/7833>
- **Version:** 3.1.2
- **Released:** 2025-08-18
- **Summary:** Adds a new quest for romanced Judy. Requires Judy staying in NC and positive conversation with Judy's Abuela.
- **Why:** Extends Judy's narrative after her romance arc concludes. Requires specific story conditions, making it a natural continuation rather than a disconnected side quest.
- **Conflicts:** None known
- **Dependencies:** Judy Romanced Enhanced (#4508), Deceptious Quest Core
- **MO2 Notes:** Extract to game root. Requires Judy romanced and staying in Night City (Star ending incompatible). Requires positive Abuela conversation outcome.
- **Performance:** None

### New Quest - Encore

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/8413>
- **Version:** 3.2.1
- **Released:** 2023-05-27
- **Summary:** Adds a new quest for romanced Panam. Requires Panam Romanced.
- **Why:** Extends the Panam romance with additional narrative content beyond the base game and Romanced Enhanced schedule.
- **Conflicts:** None known
- **Dependencies:** Panam Romanced Enhanced (#4626), Deceptious Quest Core
- **MO2 Notes:** Extract to game root. Requires Panam romanced. **Compatibility note:** Last updated May 2023 (pre-2.0). Verify 2.31 compatibility before installing — test in isolation first.
- **Performance:** None

### New Quest - Hot Fuzz

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/7832>
- **Version:** 3.1.4
- **Released:** 2025-08-18
- **Summary:** Adds a new quest for romanced Judy with intimate narrative content. Requires Judy staying in NC and positive Abuela conversation.
- **Why:** Adult companion quest to Californication — adds relationship depth for Judy romancers who want more narrative content after the main romance arc.
- **Conflicts:** None known
- **Dependencies:** Judy Romanced Enhanced (#4508), Deceptious Quest Core
- **MO2 Notes:** Extract to game root. Same prerequisites as Californication. Install after Californication in load order.
- **Performance:** None

### 8ug8ear Romance

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/6313>
- **Version:** 3.01
- **Released:** 2022-06-01
- **Summary:** 8ug8ear becomes a romanceable character. Receive messages, follow her quest, visit her apartment, and become intimate depending on choices.
- **Why:** 8ug8ear is an established character from the main story (rescued during the Sandra Dorsett mission). This gives her a proper narrative follow-up with branching intimacy choices.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, RED4ext, TweakXL
- **MO2 Notes:** Extract to game root. Requires completing the Sandra Dorsett rescue mission where you encounter 8ug8ear.
- **Performance:** None

### Rita Wheeler Romanced

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/9191>
- **Version:** 3.3.1
- **Released:** 2025-08-18
- **Summary:** Adds a small romance/hookup quest with Rita Wheeler, the Mox bouncer at Lizzie's Bar. Includes intimacy scenes and dialogue.
- **Why:** Rita is a recognizable Night City character who's present throughout the game but has no interactivity beyond bar security. This gives her depth as a person rather than set dressing, fitting the modlist's goal of a living, decadent city where characters have agency.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, RED4ext, TweakXL
- **MO2 Notes:** Extract to game root. Quest becomes available after meeting Rita at Lizzie's Bar. Pairs with Rita Post-Romance Messages Addon in 08-Relationships & Romance for ongoing contact.
- **Performance:** None

### Arasoka Office Job - Counter-Intelligence Division
- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/29054
- **Version:** 1.2
- **Released:** 2026-05-01
- **Summary:** New questline involving Arasaka counter-intelligence work. Infiltrate corporate operations and uncover internal Arasaka secrets in a narrative-driven mission series.
- **Why:** Corporate intrigue is core to Cyberpunk's identity but the vanilla game focuses heavily on street-level stories. This quest adds the white-collar side of Night City — espionage, office politics, and corpo power plays — diversifying the quest portfolio.
- **Conflicts:** None known. Check compatibility with other quest mods that modify Arasaka-related world sectors.
- **Dependencies:** ArchiveXL, Codeware, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Tag as **Root**. Test in isolation first to verify 2.31 compatibility.
- **Performance:** None

### Taxi Work in Night City
- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/15624
- **Version:** 0.4.6
- **Released:** 2024-07-01
- **Summary:** Adds a working taxi driver gameplay loop — pick up fares across Night City, navigate traffic, manage customer satisfaction, and earn eddies as a legitimate driver.
- **Why:** Adds a peaceful, immersive gameplay activity that contrasts with combat-heavy content. Taxi work lets players experience Night City from a different perspective — as a service worker navigating the streets — deepening the roleplay possibilities. Earns eddies through honest work, fitting the no-cheat philosophy.
- **Conflicts:** None known. Works alongside NC Courier Jobs and Dedra's Truck Simulator as part of the "working citizen" gameplay layer.
- **Dependencies:** ArchiveXL, Codeware, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Tag as **Root**. v0.4.6 is still in development — expect updates. Works with any vehicle, including modded vehicles.
- **Performance:** None

### The Thin Blue Line
- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/29274
- **Version:** 1.0
- **Released:** 2026-06-01
- **Summary:** NCPD-focused gameplay mod adding police-related activities, interactions, and consequences. Walk the line between law enforcement and the streets.
- **Why:** The NCPD is a major faction in Cyberpunk lore but vanilla interactions are limited to wanted levels. This mod expands police interactions into a gameplay system, adding moral choices and consequences that deepen the RPG experience.
- **Conflicts:** Check compatibility with Immersive Fixers (#20808) — The Thin Blue Line handles NCPD/police, Immersive Fixers handles fixer-related behavior. Should be complementary but verify.
- **Dependencies:** CET, ArchiveXL, Codeware
- **MO2 Notes:** Extract to game root. Tag as **Root**. Tagged "Fair and balanced" — verify no cheat mechanics.
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
6. The Kidnapping of Panam
7. High Stakes Quest
8. New Quest - Californication
9. New Quest - Encore
10. New Quest - Hot Fuzz
11. 8ug8ear Romance
12. Rita Wheeler Romanced
13. Arasoka Office Job - Counter-Intelligence Division
14. Taxi Work in Night City
15. The Thin Blue Line
16. Possibilities
17. Romantic Hangout with So Mi
18. The Ransom
19. Into the Depths

**Note:** Deceptious Quest Core is also required by mods in 08-Relationships & Romance (Gone Away). Songbird romance arc (items 16-19) requires sending Songbird to the moon in Phantom Liberty. New Quest - Encore requires 2.31 compatibility verification (last updated pre-2.0). Rita Wheeler Romanced is required by Rita Post-Romance Messages Addon in 08-Relationships & Romance.
