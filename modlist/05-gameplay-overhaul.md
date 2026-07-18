# 05 - Gameplay Overhaul

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

### Immersive Healing

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/26281>
- **Version:** 3.3.0
- **Released:** 2025-12-15
- **Summary:** Replaces the cooldown-based healing system with individual health items in your inventory. Healing items are lootable, purchasable, and must be managed like any other consumable. Includes animation and sound overhauls.
- **Why:** Vanilla healing is arcadey — press a button and wait for a cooldown. This makes healing a resource-management decision: carry enough health items, use them strategically, and restock between engagements.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Codeware, Cyber Engine Tweaks, Input Loader, Native Settings UI, RED4ext, redscript, TweakXL (v1.11.1+)
- **MO2 Notes:** Extract to game root. Tag as **Root**. Configure via Native Settings UI -> Mods. Multiple file versions available (choose based on your other mods).
- **Performance:** None

### Immersive Grenades

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/25334>
- **Version:** 3.3.0
- **Released:** 2025-10-28
- **Summary:** No more charges — grenades are tracked as individual items integrated into the world. Each grenade you find or buy is a physical object. Also reworks the Ticking Time Bomb perk. Supports integration with custom grenade mods.
- **Why:** Vanilla grenade charges are abstract and replenish for free. Tracking grenades as items makes explosive tactics a deliberate choice with resource consequences rather than a spammable panic button.
- **Conflicts:** May conflict with mods that alter grenade behavior or the Ticking Time Bomb perk
- **Dependencies:** ArchiveXL, Cyber Engine Tweaks, Native Settings UI, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Tag as **Root**. Configure via Native Settings UI. Supports optional integration with custom grenade mods (Big Chungus Grenade, Chomper, GASH, etc.).
- **Performance:** None

### Immersive Throwables

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/25074>
- **Version:** 1.0.0
- **Released:** 2025-10-17
- **Summary:** Throwing a weapon unequips it and drops it at the impact location instead of going on cooldown. You must physically retrieve thrown weapons or lose them. Adds real consequence to knife and axe throws.
- **Why:** Vanilla throwable weapons magically return to your inventory. This makes each throw a tactical decision — if you miss or can't reach the landing spot, you lose that weapon for the rest of the fight.
- **Conflicts:** Compatible with Silent Silencers and Throwing Knives
- **Dependencies:** ArchiveXL, Cyber Engine Tweaks, Input Loader, Native Settings UI, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Tag as **Root**. Configure via Native Settings UI. Pairs with Throwable Weapon Reworked for stamina-based recovery.
- **Performance:** None

### Throwable Weapon Reworked

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27255>
- **Version:** 1.0
- **Released:** 2026-02-02
- **Summary:** Redesigns throwable weapon recovery to be stamina-based. Character growth, builds, and cyberware choices affect how quickly you recover thrown weapons. Preserves each weapon's original characteristics while tying recovery to your build.
- **Why:** Vanilla throwable recovery is flat and disconnected from character progression. Making it stamina-based gives attribute points and cyberware choices direct gameplay impact on thrown weapon viability.
- **Conflicts:** None known. Pairs with Immersive Throwables for full throwing overhaul.
- **Dependencies:** ArchiveXL, redscript, TweakXL. Recommended: Stamina Regen Fixes.
- **MO2 Notes:** Extract to game root. Tag as **Root**. Works automatically — optional configuration.
- **Performance:** None

### Flesh and Chrome

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27988>
- **Version:** 1.24.0
- **Released:** 2026-03-11
- **Summary:** Expands stamina into a full fatigue and recovery system. Creates a natural daily rhythm between action, rest, food, and chrome management. Stamina regen slows with fatigue; sleep, food, and rest restore it.
- **Why:** Vanilla stamina is a short combat resource that recharges in seconds. This makes stamina a persistent resource you manage across the day — when to push harder, when to rest, what to eat, how much chrome to install.
- **Conflicts:** Compatible with Cyberware-EX and most combat mods. May conflict with mods that alter base stamina behavior.
- **Dependencies:** Codeware, redscript, DigitalVixen Core, Redscript Configuration Framework. Recommended: Consumable Animations.
- **MO2 Notes:** Extract to game root. Tag as **Root**. Optional addon: Flesh and Chrome - Carry Overhaul (#28375) for inventory-weight integration. Review mod page for optional file choices.
- **Performance:** None

### Weapon Conditioning (Tier System Overhaul)

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/10479>
- **Version:** 1.2.0
- **Released:** 2023-10-31
- **Summary:** Introduces a Condition stat to all weapons. Weapons degrade with use and must be repaired or replaced. Fixes the loot and crafting material economy by giving every weapon a lifespan and maintenance cost.
- **Why:** Vanilla weapon economy has no sink — once you find a good weapon, you never need another. Condition degradation creates demand for replacement weapons and crafting materials, making loot discoveries and the crafting system meaningful throughout the game.
- **Conflicts:** None known
- **Dependencies:** Codeware, Cyber Engine Tweaks, Mod Settings, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Tag as **Root**. Configure via Mod Settings (or edit Config.reds manually). Install BEFORE Skillful Attributes and Skillful for best compatibility.
- **Performance:** None

### Skillful Attributes

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/9281>
- **Version:** 1.3.1
- **Released:** 2023-09-27
- **Summary:** Attribute levels increase through skill proficiency — the more you fight a certain way, the better you get at the related attributes. Replaces flat attribute-point leveling with use-based progression. Now requires Skillful.
- **Why:** Vanilla attribute allocation is pure menu management — you distribute points at level-up regardless of how you play. This rewards actual playstyle: use Blade weapons and your Reflexes improve naturally, reinforcing build identity through gameplay.
- **Conflicts:** None known. Designed to work with Skillful.
- **Dependencies:** ArchiveXL, Mod Settings, redscript. Requires Skillful (#9309). Codeware may be needed.
- **MO2 Notes:** Extract to game root. Tag as **Root**. Configure via Mod Settings. REQUIRES Skillful (#9309) to function. Install Weapon Conditioning before this for best compatibility.
- **Performance:** None

### Skillful

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/9309>
- **Version:** 2.0.3
- **Released:** 2023-09-27
- **Summary:** Spinoff from Skillful Attributes adding EXP multipliers for skill proficiencies, character levels, and street cred. Awards extra perk points and cyberware capacity at milestone levels. User-configurable via Mod Settings.
- **Why:** Required by Skillful Attributes, but also stands alone as a progression accelerator that rewards investment in skills. Perk points and cyberware capacity at milestones make leveling feel more rewarding at every step.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Mod Settings, redscript, TweakXL. Codeware may be needed.
- **MO2 Notes:** Extract to game root. Tag as **Root**. Configure via Mod Settings. Install BEFORE Skillful Attributes. Read redscript requirements page for any additional dependencies.
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

### Much Better Eddies

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/30532>
- **Version:** 1.3
- **Released:** 2026-07-12
- **Summary:** Full economy overhaul — per-district reputation system with buy/sell price scaling, quest reward rebalance, and a Lester-style black-market fixer line (Dead Channel).
- **Why:** Vanilla economy breaks by midgame — you're a millionaire with nothing meaningful to spend on. This rebuilds the curve: jobs are your income, loot is supplemental, and every district's reputation affects prices. Fits the "no cheat" philosophy by making the economy tighter, not easier.
- **Conflicts:** NOT compatible with Economy Punk, Economy of 2077, Economy Tweaks, Economy Rebalance, Atelier Price Fixer. Compatible with Dark Future and Virtual Atelier.
- **Dependencies:** Cyber Engine Tweaks, RED4ext, redscript, Native Settings UI, Codeware, TweakXL, Browser Extension
- **MO2 Notes:** Extract to game root. Tag as **Root**. Configure via Native Settings UI -> Mods -> Much Better Eddies. Five presets: Vanilla, Easy, Standard (default), Hard, Custom. New game recommended; existing saves need cleanup of acquired wealth.
- **Performance:** Light (reputation tracking per district)

### Renaissance Punk - Perk Scaling

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/14037>
- **Version:** 2.12.1
- **Released:** 2024-04-05
- **Summary:** Makes all perks scale with their associated attributes and/or skills, growing more powerful as your character develops in those areas.
- **Why:** Vanilla perks are static — they do the same thing at level 10 as level 60. This makes perk potency reflect your investment in attributes and skills, rewarding specialized builds and making level-up choices feel more impactful.
- **Conflicts:** None known
- **Dependencies:** Cyber Engine Tweaks, redscript, TweakXL, Mod Settings
- **MO2 Notes:** Extract to game root. Configure via Mod Settings -> Renaissance Punk. Supports optional files for different scaling intensities.
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

### The Immersive Way

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/30352>
- **Version:** Verify
- **Released:** July 2026
- **Summary:** Adds third-person immersive scenes for Fem V using the Native Interactions Framework, with optional Dark Future integration for survival-contextual actions.
- **Why:** Extends the Native Interactions Framework with additional immersive scenes, giving Fem V third-person context for daily activities. Dark Future integration ties survival mechanics to visual storytelling, deepening the RPG experience.
- **Conflicts:** None known. Requires Native Interactions Framework.
- **Dependencies:** Native Interactions Framework (#10479). Optional: Dark Future (#16300).
- **MO2 Notes:** Extract to game root. Fem V only. Install after Native Interactions Framework and Dark Future. Tag as **Root**.
- **Performance:** None

---

## Install Order

All mods are **Root**-category — enable Root Builder in MO2 before installing.

1. Cyberware-EX
2. Stealthrunner - Stealth Gameplay Expansion
3. Damage Scaling and Balance
4. Damage Scaling and Balance - Extended
5. Silent Silencers and Throwing Knives
6. Convo Skill Check Scaling
7. Combat Evolved
8. They Will Remember
9. Much Better Netrunning
10. Dead Body Alert
11. Immersive Stealth Weapon
12. Immersive Healing
13. Immersive Grenades
14. Immersive Throwables
15. Throwable Weapon Reworked
16. Weapon Conditioning (Tier System Overhaul)
17. Skillful
18. Skillful Attributes
19. Flesh and Chrome
20. Watch Your Back
21. NIGHT CITY ALIVE
22. Responsive NPCs
23. Shift - Dynamic First Person Camera
24. The Immersive Way
25. Renaissance Punk - Perk Scaling
26. Easier Controller Sprint
27. Bounties Restored
28. Much Better Eddies

**Notes:**
- **Skillful** must be installed **before** Skillful Attributes (Skillful Attributes requires it)
- **Weapon Conditioning** should be installed before Skillful/Skillful Attributes for best compatibility
- **Flesh and Chrome** addons (Carry Overhaul) go after the main Flesh and Chrome install
- **Much Better Eddies** should be installed last in this category due to its broad economy overrides — install after all other gameplay mods
- **Damage Scaling and Balance - Extended** must be installed after Damage Scaling and Balance
