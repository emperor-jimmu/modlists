# 06c - Leisure & Entertainment

**Goal:** Downtime activities. Gambling, arcade games, dancing, braindances,
and amusement — things to do in Night City when you're not on a gig.

---

### Gambling Props - Poker Chips and Playing Cards

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/15229>
- **Version:** 1.0.0
- **Released:** 2024-07-01
- **Summary:** 3D model assets for poker chips and playing cards used by the Playable Roulette and Playable Blackjack gambling systems.
- **Why:** Required dependency for Playable Roulette and Playable Blackjack — provides the visual chip and card assets needed for the gambling UI animations.
- **Conflicts:** None known
- **Dependencies:** None (asset-only mod)
- **MO2 Notes:** Extract to game root. Install BEFORE Playable Roulette and Playable Blackjack. Asset-only — no configuration needed.
- **Performance:** None

### Playable Roulette - Gambling System

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/15450>
- **Version:** 1.1.3
- **Released:** 2026-06-13
- **Summary:** Adds fully playable roulette tables with animated wheel, ball physics, chip system, and immersive UI at locations including Ho-Oh Bar and Tyger Claws underground casino.
- **Why:** Night City has casinos and gambling dens that are purely decorative in vanilla. This makes them functional minigames, adding an immersive side activity and optional money sink that fits the "no cheat" philosophy (configurable bet limits).
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Codeware, Cyber Engine Tweaks, Gambling Props - Poker Chips and Playing Cards, RED4ext, TweakXL
- **MO2 Notes:** Extract to game root. Configure via CET overlay. Do NOT save/load during active play — chips will be lost. Install after Gambling Props. Phantom Liberty required for full sound effects.
- **Performance:** Light (CET-based UI only during play)

### Perfect Vanilla - Playable Roulette Fix

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/29866>
- **Version:** 1
- **Released:** 2026-05-21
- **Summary:** Over a dozen bug fixes for Playable Roulette: fixes wheel disappearing on save load, speeds up chip animation, caps max bet at 1,000, disables save-scumming in casino, and silences repetitive dealer dialogue.
- **Why:** Playable Roulette has several persistent bugs (vanishing wheel, slow chip handling, repetitive NPC dialogue) that detract from the experience. This fix mod resolves them all while adding vanilla-friendly polish like round-end notifications.
- **Conflicts:** Requires Playable Roulette (15450). Overwrites some of its files — install after.
- **Dependencies:** Same as Playable Roulette. Files overwrite the base mod's.
- **MO2 Notes:** Extract to game root, overwrite Playable Roulette files. Install AFTER Playable Roulette. Max bet capped at 1,000 eddies per round to prevent money farming.
- **Performance:** None

### Playable Blackjack - Gambling System

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/19575>
- **Version:** 1.1.4
- **Released:** 2025-12-11
- **Summary:** Adds playable blackjack with animated card dealing, randomized shuffles, chip management, and a live hand calculator. Located at Ho-Oh Bar in Kabuki.
- **Why:** Complements Playable Roulette with a second casino game. Blackjack with proper card mechanics gives players another immersive gambling option in Night City, reinforcing the living-world feel.
- **Conflicts:** Known conflict with Immersive First Person — disable via CET before sitting at the table.
- **Dependencies:** ArchiveXL, Codeware, Cyber Engine Tweaks, Gambling Props - Poker Chips and Playing Cards, Native Settings UI, RED4ext, TweakXL
- **MO2 Notes:** Extract to game root. Configure via Native Settings UI -> Mods. Do NOT save/load during active play. Install after Gambling Props.
- **Performance:** Light (CET-based UI only during play)

### Playable Arcade Machines

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/4213>
- **Version:** 1.4
- **Released:** 2024-02-15
- **Summary:** Makes arcade machines throughout Night City playable — approach and interact to play classic-style minigames.
- **Why:** Arcade machines are decorative set-dressing in vanilla despite being scattered across bars and apartments. Making them playable adds a fun downtime activity that fits Night City's cyberpunk aesthetic.
- **Conflicts:** None known
- **Dependencies:** Cyber Engine Tweaks
- **MO2 Notes:** Extract to game root. Configure via CET overlay. Approach any arcade machine and interact to play.
- **Performance:** None

### Lizzie's Braindances

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/11077>
- **Version:** 1.67.1
- **Released:** 2023-11-27
- **Summary:** Adds a braindance viewing menu to Lizzie's Bar with characters
  and location selection. Fully integrated into the native quest system.
- **Why:** Lizzie's Bar is iconic as a BD club but has no functional braindances
  in vanilla. This restores the intended purpose of the venue, making it a real
  entertainment destination with immersive BD viewing.
- **Conflicts:** None known — built in native quest system, no file conflicts
- **Dependencies:** None (standalone — uses native game quest system)
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Access menu in Lizzie's Bar main room. Select performer and location.
    - Beta stage — limited character selection, more in future updates.
- **Performance:** None

### Dance Off

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/10615>
- **Version:** 1.1.0
- **Released:** 2024-12-22
- **Summary:** Adds the option to dance with romance partners at club dance floors. Judy, Panam, River, Kerry, Jackie, Reed, Alex, Johnny, and So Mi are all potential dance partners across Totentanz, Riot, Empathy, 7th Hell, and Heavy Hearts Club.
- **Why:** Clubs have dance floors but no partner dancing. This adds a meaningful social activity that complements the existing bar/drinking systems and strengthens partner relationships outside of quests and apartment hangouts.
- **Conflicts:** None. Fully compatible with Immersive Bartenders (shared logic prevents animation issues).
- **Dependencies:** ArchiveXL, RED4ext. Phantom Liberty optional (for Heavy Hearts Club, Reed/Alex/So Mi).
- **MO2 Notes:** Extract to game root. File goes to `archive/pc/mod/`. Visit any club dance floor, choose "Dance with someone," and select a partner. Movement (WASD) ends the dance.
- **Performance:** None

### Roller Coaster Enhanced

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/14617>
- **Version:** 1.1.3
- **Released:** 2026-03-31
- **Summary:** V can ride the Pacifica roller coaster with Songbird, Judy, Panam, or Kerry after repairing it. Partner messaging and waiting system with full date-style experience. Johnny returns for solo rides.
- **Why:** The Pacifica coaster is a memorable one-time quest moment. This makes it a repeatable activity with romance partners, adding a unique date option that rewards exploration. Updated for Tower/PL ending PONR.
- **Conflicts:** None known. River not supported (body type incompatible with coaster animations).
- **Dependencies:** ArchiveXL, Deceptious Quest Core, RED4ext. Phantom Liberty optional (for Songbird).
- **MO2 Notes:** Extract to game root. Activate by visiting H10 apartment once. Fix and ride the coaster first if not already repaired. Partner invites unlock after befriending/romancing them.
- **Performance:** None

---

## Add-ons — NCI District Mods

These are companion mods for **Night City Interactions - Core** that add social drinking spots with romance partners in each district. Each requires NCI Core and is compatible with all others.

---

## Install Order

All mods are **Root**-category — enable Root Builder in MO2 before installing.

1. Gambling Props - Poker Chips and Playing Cards
2. Playable Roulette - Gambling System
3. Perfect Vanilla - Playable Roulette Fix
4. Playable Blackjack - Gambling System
5. Playable Arcade Machines
6. Lizzie's Braindances
7. Dance Off
8. Roller Coaster Enhanced