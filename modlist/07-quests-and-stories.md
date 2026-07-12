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
- **Summary:** Quest framework that hooks into V's H10 apartment. Required for all deceptious quest mods (Romanced Enhanced series, Gone Away, etc.). No content alone.
- **Why:** Foundation for the entire deceptious quest ecosystem. Installing this enables all dependent quest mods to activate from a single trigger (enter H10 apartment).
- **Conflicts:** None known. 55+ mods use this framework.
- **Dependencies:** ArchiveXL, Codeware, RED4ext, TweakXL
- **MO2 Notes:** Extract to game root. Activate new quest mods by leaving/re-entering H10 apartment. Do not rename the archive file.
- **Performance:** None

### Judy Romanced Enhanced

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/4508>
- **Version:** 2.4.2
- **Released:** 2025-10-27
- **Summary:** Gives Judy a daily schedule post-romance (sleep, shower, eat, kitchen, window). Hug and kiss options. Phantom Liberty dialogue reactions.
- **Why:** Transforms Judy from a static window fixture into a living character with daily routines. Full lip-sync for all VO languages.
- **Conflicts:** Incompatible with standalone Hugs - Judy mod (features are included here). Compatible with all other Romanced Enhanced mods.
- **Dependencies:** ArchiveXL (for shower features addon)
- **MO2 Notes:** Extract to game root. Hug/kiss prompts appear after romancing Judy. Optional shower features via separate addon.
- **Performance:** None

### Panam Romanced Enhanced

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/4626>
- **Version:** 2.6.1
- **Released:** 2025-10-21
- **Summary:** Panam daily schedule at Aldecaldos camp (drink, eat, phone, shower, sleep). Hug and kiss options. Privacy curtains for shower area.
- **Why:** Fixes Panam's buggy bed and adds lifelike routines. Saul's behavior improved too.
- **Conflicts:** Compatible with all other Romanced Enhanced mods. Edits common files with River's mod but both are updated for compatibility.
- **Dependencies:** ArchiveXL (for privacy curtains), Codeware, RED4ext
- **MO2 Notes:** Extract to game root. Schedule activates after romancing Panam and moving to new camp.
- **Performance:** None

### River Romanced Enhanced

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/4870>
- **Version:** 2.6.0
- **Released:** 2026-05-10
- **Summary:** River daily schedule at trailer (drink, eat, workout, shower, sleep). Joss's kids get proper schedules (play, sleep, greet V). Hug and kiss options.
- **Why:** Fixes River's broken post-quest behavior where kids stared at walls and River couldn't decide whether to sit or stand.
- **Conflicts:** Edits River's .app file — may conflict with custom River appearance mods.
- **Dependencies:** ArchiveXL, Codeware. Recommended: Gone Away - Better Partner Suspended Behaviour.
- **MO2 Notes:** Extract to game root. Hug/kiss available if romanced (not one-night-stand).
- **Performance:** None

### Kerry Romanced Enhanced

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/4990>
- **Version:** 2.2.2
- **Released:** 2026-05-10
- **Summary:** Kerry daily schedule at mansion (guitar, lounge, drink, eat, shower, sleep). Request 5 different playable songs. Hug and kiss options.
- **Why:** Kerry felt lifeless post-romance — now he plays guitar on demand, follows a schedule, and has proper greetings.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL (optional, for lighting fix), Codeware (optional)
- **MO2 Notes:** Extract to game root. Guitar songs available regardless of romance; hugs/kiss require relationship.
- **Performance:** None

### Romance Hangouts Enhanced

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/11590>
- **Version:** 2.5.1
- **Released:** 2026-06-04
- **Summary:** Expands patch 2.1 romance hangouts with repeatable cuddle/kiss/dance actions for all partners across H10, The Glen, Corpo Plaza, and Japantown apartments.
- **Why:** Vanilla hangouts are limited to once-per-visit interactions. This makes them repeatable and adds slow/fast dance options, non-canon romance support, and partner messaging logic fixes.
- **Conflicts:** Compatible with Hangout Romances mod (v1.02+). Required by I Really Want To Stay At Your House mods.
- **Dependencies:** ArchiveXL, RED4ext
- **MO2 Notes:** Extract to game root. Works automatically — no configuration needed. Features activate when partner visits your apartment.
- **Performance:** None

### Gone Away - Better Partner Suspended Behaviour

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/19412>
- **Version:** 1.1.1
- **Released:** 2026-03-31
- **Summary:** Partners disappear when "busy/suspended" (Romance Hangouts, quests) instead of standing frozen at home. Leaves a note explaining their absence.
- **Why:** Fixes the immersion-breaking sight of Judy/Panam/River/Kerry standing motionless when they're supposed to be elsewhere.
- **Conflicts:** None known. Fully compatible with all Romanced Enhanced mods.
- **Dependencies:** Deceptious Quest Core, ArchiveXL, RED4ext, TweakXL
- **MO2 Notes:** Extract to game root. Works for Judy/Panam immediately; requires Quest Core activation for Kerry/River.
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
