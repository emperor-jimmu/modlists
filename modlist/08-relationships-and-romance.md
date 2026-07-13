# 08 -- Relationships & Romance

**Goal:** Meaningful relationships. Expanded romance systems (M/F and F/F
options), companion interactions, friendship mechanics, text messages, dates,
and relationship progression.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---

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

### I Really Want To Stay At Your House - Judy

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/8753>
- **Version:** 3.6.0
- **Released:** 2026-06-01
- **Summary:** Judy stays at V's apartments (H10, Glen, Japantown, Corpo Plaza) for 2-day visits with full Romanced Enhanced schedule. Choose between longer stays or shorter 2.1-style hangouts via text message.
- **Why:** Vanilla romance hangouts end when V sleeps or leaves — Judy disappears back to her apartment. This lets her truly live with V for extended periods, with daily routines, showering, eating, sleeping, and window-gazing. Hug/kiss options included.
- **Conflicts:** Compatible with all Romanced Enhanced mods. Compatible with Apartment Cats: Japantown (shares scene files).
- **Dependencies:** ArchiveXL, RED4ext, Romance Hangouts Enhanced, Romanced Enhanced Showers Feature
- **MO2 Notes:** Extract to game root. First visit is mandatory short hangout; subsequent messages offer \[Longer Stay?\] or \[Shorter Visit?\] choice. Reset command: `Game.SetDebugFact("deceptious_stay", 99)`. Uninstall only when Judy is not visiting.
- **Performance:** None

### Judy Flirts on Dates

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/13690>
- **Version:** 1.1
- **Released:** 2025-08-24
- **Summary:** Replaces Judy's repetitive idle dialogue during apartment hangouts
  with warmer, more natural lines. Targets the three most grating repeated lines.
- **Why:** Judy's date dialogue ("Well? C'mon!", "Everything alright, V?") plays
  on a short loop that breaks immersion during extended hangouts. Replacing these
  with repurposed vanilla lines creates a smoother, more natural atmosphere.
- **Conflicts:** Anything modifying the same dialogue or subtitles in the affected apartments
- **Dependencies:** Romance Hangouts Enhanced v2.2.0+
- **MO2 Notes:** Extract to game root. Install AFTER Romance Hangouts Enhanced. Affects all apartments. Subtitle sync and lipsync may not be perfect.
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

---

## Install Order

All mods are **Root**-category — enable Root Builder in MO2 before installing.

1. Judy Romanced Enhanced
2. Panam Romanced Enhanced
3. River Romanced Enhanced
4. Kerry Romanced Enhanced
5. Romance Hangouts Enhanced
6. Judy Flirts on Dates
7. Gone Away - Better Partner Suspended Behaviour
8. I Really Want To Stay At Your House - Judy

**Note:** Requires **Deceptious Quest Core** from 07-Quests & Stories for Gone Away to work fully for Kerry/River.
