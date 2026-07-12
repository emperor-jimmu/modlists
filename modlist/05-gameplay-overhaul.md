# 05 -- Gameplay Overhaul

**Goal:** Transform the game into a proper RPG. Skill trees, combat rebalance,
loot economy, damage model, level scaling, enemy AI, stealth systems, and
crafting. This section defines how the game plays.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---

### Cyberware-EX

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/9429>
- **Version:** 1.5.6
- **Released:** 2026-05-02
- **Summary:** Cyberware slot expansions allowing multiple implants in OS, eyes, arms, and legs. Install Cyberdeck, Sandevistan, Berserk simultaneously.
- **Why:** Core RPG depth — removes arbitrary equip restrictions, letting players build hybrid cyberware setups that match their playstyle. Slots unlockable via perks (expansion mode) or purchasable at ripperdocs (override mode).
- **Conflicts:** None known. Successor to System-EX.
- **Dependencies:** Codeware, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Supports expansion mode (perk-unlocked slots) and override mode (buy slots for 10K eddies). Optional "extended slots" addon gives 10 extra slots across categories. Configure via `r6/scripts/CyberwareEx`.
- **Performance:** None

### Stealthrunner - Stealth Gameplay Expansion

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/7616>
- **Version:** 1.11.1
- **Released:** 2026-06-14
- **Summary:** Adds stealth objectives (Ghost, Shadow, Pacifist, No-Touch, Hero) to all applicable quests and gigs. Full perk tree with 11 perks including pickpocketing, audio disruption, and cyberninja. Rewards include new cyberware and iconic weapon recipes.
- **Why:** Fundamentally transforms stealth gameplay — gives meaningful incentive and reward for non-lethal approaches in the style of Deus Ex and Dishonored. Adds progression that persists across the entire playthrough.
- **Conflicts:** Compatible with Limited HUD. Pairs well with Silent Silencers and Throwing Knives.
- **Dependencies:** ArchiveXL, Codeware, Cyber Engine Tweaks, Input Loader, Native Settings UI, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Configure via Native Settings UI -> Mods -> Stealthrunner. Has progression import/export. **Do NOT convert to REDmod in MO2** — keep archive files in `archive/pc/mod/`.
- **Performance:** Light (new HUD elements and objective tracking)

### Damage Scaling and Balance

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/1712>
- **Version:** 4.3.0
- **Released:** 2026-04-04
- **Summary:** Configurable damage multipliers for NPCs and player by level curve, enemy tier (trash through maxtac), and damage type (headshot, quickhack, grenade, melee). Also scales stamina costs.
- **Why:** Core balance tool — fine-tune difficulty to ensure combat stays challenging without resorting to bullet-sponge design. Multiple presets available including "RMK Balanced".
- **Conflicts:** None known
- **Dependencies:** Cyber Engine Tweaks, Native Settings UI, redscript
- **MO2 Notes:** Extract to game root. Configure via Native Settings UI -> Mods -> Dmg. Scaling. Level curve presets available. Supports disabling multipliers in flashback scenes.
- **Performance:** None

### Silent Silencers and Throwing Knives

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/4070>
- **Version:** 1.6.2
- **Released:** 2023-12-08
- **Summary:** Prevents combat auto-trigger when using silenced weapons or throwing knives from stealth. Enemies investigate rather than instantly knowing your position. Configurable detection chance, range, and cover visibility debuff.
- **Why:** Fixes a core stealth design flaw — lets silenced weapons work as intended without requiring one-shot kills. Essential companion to Stealthrunner.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Cyber Engine Tweaks, Native Settings UI, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Configure via Native Settings UI -> Mods -> Silent Silencers. Default min stealth range is 2m.
- **Performance:** None

### Convo Skill Check Scaling

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/2886>
- **Version:** 1.4.1
- **Released:** 2023-12-06
- **Summary:** Scales conversation skill check requirements higher with player level. Easy/Medium checks can be bumped to Medium/Hard at configurable thresholds, making attribute investment meaningful for dialogue outcomes.
- **Why:** Without this, most dialogue checks are trivially low (max 7 observed) even at high level. Pairs with Clear Skill Checks to make attribute choices actually matter in conversations.
- **Conflicts:** None known
- **Dependencies:** Cyber Engine Tweaks, Native Settings UI, redscript
- **MO2 Notes:** Extract to game root. Files go to `r6/scripts/`. Configure via Native Settings UI -> Mods -> RMK MODS. Has scaling factor slider (default 0.75) and difficulty threshold settings.
- **Performance:** None
