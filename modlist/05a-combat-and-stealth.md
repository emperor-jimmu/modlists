# 05a - Combat & Stealth

**Goal:** Enemy AI, stealth systems, damage model, netrunning, NPC behavior,
and moment-to-moment action. How combat and encounters play out.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---

### Combat Evolved

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/29125>
- **Version:** 4.10.1
- **Released:** 2026-04-23
- **Summary:** Comprehensive enemy AI overhaul. Enemies use suppressive fire, flank, retreat to heal, coordinate attacks, and use smart weapons and grenades tactically. Each enemy archetype (gang, security, maxtac) has distinct behavioral profiles.
- **Why:** Vanilla enemy AI is reactive and predictable — enemies stand in the open and take turns shooting. This makes every firefight dynamic and forces the player to use real tactics: reposition, use cover, prioritize threats, and manage stamina.
- **Conflicts:** None known. Designed to be compatible with most combat mods.
- **Dependencies:** Codeware, DigitalVixen Core, Mod Settings, redscript, TweakXL. Optional: True First Person Camera 2.0 for camera effects.
- **MO2 Notes:** Extract to game root. Tag as **Root**. Configure via Mod Settings -> Combat Evolved. To uninstall, delete `r6/scripts/CombatEvolved` and `r6/tweaks/CombatEvolved` directories.
- **Performance:** Light (AI decision calculations only)

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

### Dead Body Alert

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/26746>
- **Version:** 1.0
- **Released:** 2026-01-08
- **Summary:** Enemies react to discovering dead bodies — they stop acting like nothing happened and instead investigate, raise alarms, and search for the player. No more chilling next to a fallen squadmate.
- **Why:** Vanilla stealth has a fundamental immersion gap — enemies ignore dead allies entirely. This makes stealth gameplay more realistic and requires the player to hide or move bodies, adding tactical depth to non-lethal approaches.
- **Conflicts:** None known
- **Dependencies:** redscript, Mod Settings (optional — toggle main feature and optional features)
- **MO2 Notes:** Extract to game root. Tag as **Root**. Configure via Mod Settings if installed. Optional feature toggle available.
- **Performance:** None

### Immersive Stealth Weapon

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27149>
- **Version:** 1.01
- **Released:** 2026-01-28
- **Summary:** Overhauls stealth weapon combat — no more guaranteed one-shot kills from stealth. Enemies have dynamic awareness, noise matters, and positioning determines whether you get the drop on someone. Strategic stealth combat.
- **Why:** Vanilla stealth weapons trivialize encounters with guaranteed stealth kills. This makes stealth a genuine challenge where preparation, positioning, and equipment choice determine success rather than a binary "undetected = kill" formula.
- **Conflicts:** Pairs well with Dead Body Alert and Silent Silencers and Throwing Knives
- **Dependencies:** redscript, TweakXL, Mod Settings (optional)
- **MO2 Notes:** Extract to game root. Tag as **Root**. Configure via Mod Settings if installed.
- **Performance:** None

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

### Damage Scaling and Balance - Extended

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/21865>
- **Version:** 1.0.0
- **Released:** 2025-05-20
- **Summary:** Companion to Damage Scaling and Balance — extends the configurable damage curve with additional scaling options, enemy tier refinements, and new preset configurations.
- **Why:** Adds finer-grained control over the damage curve for players who want more customization than the base DSaB provides. Integrates seamlessly with the existing DSaB framework.
- **Conflicts:** Requires Damage Scaling and Balance (1712)
- **Dependencies:** Damage Scaling and Balance (1712), Cyber Engine Tweaks, Native Settings UI, redscript
- **MO2 Notes:** Extract to game root. Install AFTER Damage Scaling and Balance. Configure via Native Settings UI -> Mods -> Dmg. Scaling.
- **Performance:** None

### Much Better Netrunning

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27237>
- **Version:** 2.20
- **Released:** 2026-02-03
- **Summary:** Complete netrunning overhaul — successor to Better Netrunning, rebuilt from scratch. Makes quickhacking dangerous, rewarding, and tactical with configurable trace time, RAM costs, cooldowns, and enemy netrunner behavior.
- **Why:** Vanilla netrunning becomes overpowered at midgame — enemies never trace you and RAM regenerates too fast. This makes quickhacking a high-risk, high-reward playstyle where positioning, timing, and loadout planning matter.
- **Conflicts:** None known
- **Dependencies:** Codeware, Cyber Engine Tweaks, Native Settings UI, RED4ext, Reds Logging Headers, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Tag as **Root**. Configure via Native Settings UI -> Mods -> Much Better Netrunning. Supports full configuration of trace time, RAM costs, and enemy netrunner difficulty.
- **Performance:** None

### They Will Remember

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/19747>
- **Version:** 2.4.4
- **Released:** 2025-02-13
- **Summary:** Full gang reputation system with reinforcements, retaliation squads, relationships, and a disguise system. Gangs remember your actions — help them and they'll be neutral or friendly; attack them and they send hit squads.
- **Why:** Vanilla gangs are cosmetic — every encounter resets to neutral. This makes faction choice matter: your reputation with each gang persists across the entire playthrough and affects random encounters, gig availability, and dialogue.
- **Conflicts:** None known. Equipment-EX heavily recommended for disguise system.
- **Dependencies:** Codeware, Mod Settings, redscript. Recommended: Equipment-EX, Inventory Adjustments Hub, Night City Alive (REDmod).
- **MO2 Notes:** Extract to game root. Tag as **Root**. Configure via Mod Settings. Disguise system requires clothing with gang-affiliation tags — use Inventory Adjustments Hub to view tags on items.
- **Performance:** Light (reputation tracking and spawn management)

### Watch Your Back

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27792>
- **Version:** 1.0
- **Released:** 2026-02-24
- **Summary:** Adds ambushers who try to rob V in alleys, secluded areas, and during encounters. Random encounter system that creates dynamic, dangerous moments during exploration.
- **Why:** Night City is supposed to be dangerous, but vanilla exploration is completely safe outside scripted encounters. Ambush events make the city feel lawless and unpredictable, rewarding awareness and preparation.
- **Conflicts:** None known
- **Dependencies:** Mod Settings, RED4ext, redscript
- **MO2 Notes:** Extract to game root. Tag as **Root**. Configure via Mod Settings. Ambush frequency and difficulty are configurable.
- **Performance:** None

### Bounties Restored

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/21820>
- **Version:** 1.0.0
- **Released:** 2025-05-15
- **Summary:** Restores bounty values to non-elite enemies, making random encounters and open-world combat more financially rewarding.
- **Why:** Vanilla 2.0 removed bounties from most enemies, flattening the reward curve for open-world combat. Restoring them gives every firefight a small monetary incentive, making random encounters feel worthwhile.
- **Conflicts:** None known
- **Dependencies:** Cyber Engine Tweaks
- **MO2 Notes:** Extract to `Cyberpunk 2077/bin/x64/plugins/cyber_engine_tweaks/mods/`. Configure via CET overlay.
- **Performance:** None

### NIGHT CITY ALIVE

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/10395>
- **Version:** 2.2
- **Released:** 2023-10-24
- **Summary:** Major NPC population and traffic overhaul. Increases crowd density, adds dynamic pedestrian behaviors, and makes Night City's streets feel genuinely alive with varied citizen activities, vehicle traffic patterns, and ambient events.
- **Why:** Vanilla Night City's streets feel sparse and lifeless. This mod transforms the city into a bustling metropolis with realistic population density and traffic flow, serving the "living world" pillar. Replaces Immersive Road Crossing (#26131, removed from 06b) with broader and more comprehensive coverage. 9,400+ endorsements.
- **Conflicts:** May conflict with other traffic or NPC population mods. Compatible with Night City Interactions (different scope — NCA handles ambient population, NCI handles player-initiated social interactions). Compatible with Immersive Fixers and Responsive NPCs (different behavioral domains).
- **Dependencies:** REDMod
- **MO2 Notes:** REDMod file — deploy via REDmod launcher or MO2 REDmod plugin. Test traffic density settings to find the right balance for 4K performance. Tag as **Root**.
- **Performance:** Moderate (additional NPC and vehicle simulation)

### Responsive NPCs

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/14800>
- **Version:** 0.26
- **Released:** 2024-05-20
- **Summary:** NPCs react dynamically to player actions — commenting on drawn weapons, fleeing from combat, reacting to player appearance and cyberware, and responding to world events contextually.
- **Why:** Vanilla NPCs are oblivious to the player's actions beyond basic combat states. This adds a layer of world reactivity where citizens notice and respond to what V does, making the world feel responsive rather than scripted. Complements NCA (handles population density) by adding behavioral depth to those NPCs.
- **Conflicts:** Low — behavioral scripting only, no world edits. Compatible with NCA and Night City Interactions.
- **Dependencies:** Cyber Engine Tweaks, Native Settings UI (optional)
- **MO2 Notes:** Extract to CET plugins folder. Configure reaction frequency and types via CET overlay or Native Settings UI. Tag as **Root**.
- **Performance:** Light (CET scripting, negligible overhead)

### Shift - Dynamic First Person Camera

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/22340>
- **Version:** Verify
- **Released:** June 2025
- **Summary:** Adds dynamic camera movement in first-person — head bob, inertia, leaning, and contextual camera shifts based on movement and actions.
- **Why:** Vanilla first-person camera is rigid and disconnected from V's movement. Shift adds physical presence to the first-person view, making walking, running, and combat feel more grounded without affecting aim or gameplay.
- **Conflicts:** Check compatibility with Immersive First Person (#9309) — Shift focuses on camera dynamics while IFP focuses on body visibility. May be complementary.
- **Dependencies:** Cyber Engine Tweaks, Native Settings UI (optional)
- **MO2 Notes:** Extract to CET plugins folder. Configure intensity via Native Settings UI. Test alongside Immersive First Person for compatibility. Tag as **Root**.
- **Performance:** None

### Easier Controller Sprint

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/26610>
- **Version:** 1.1.0
- **Released:** 2026-01-05
- **Summary:** Makes controller sprint activate on left-stick press only, removing the requirement to also hold a face button. Toggle and hold modes supported.
- **Why:** Vanilla controller sprint requires holding both left-stick click and a face button, which is ergonomically awkward. This makes sprinting feel natural on controller without changing game balance.
- **Conflicts:** None known
- **Dependencies:** redscript
- **MO2 Notes:** Extract to game root. Files go to `r6/scripts/`. Choose hold or toggle mode in the config file.
- **Performance:** None

---

## Install Order

All mods are **Root**-category — enable Root Builder in MO2 before installing.

1. Combat Evolved
2. Stealthrunner - Stealth Gameplay Expansion
3. Silent Silencers and Throwing Knives
4. Dead Body Alert
5. Immersive Stealth Weapon
6. Damage Scaling and Balance
7. Damage Scaling and Balance - Extended
8. Much Better Netrunning
9. They Will Remember
10. Watch Your Back
11. Bounties Restored
12. NIGHT CITY ALIVE
13. Responsive NPCs
14. Shift - Dynamic First Person Camera
15. Easier Controller Sprint

**Notes:**
- **Damage Scaling and Balance - Extended** must be installed after Damage Scaling and Balance
- **NIGHT CITY ALIVE** is a REDMod mod — deploy via REDmod launcher or MO2 REDmod plugin
- **Stealthrunner** should not be converted to REDmod — keep archives in `archive/pc/mod/`
