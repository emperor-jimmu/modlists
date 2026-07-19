# 05b - RPG Systems & Economy

**Goal:** Character progression, skills and attributes, cyberware, item
systems, healing items, throwables, the game economy, and immersive camera
features. How your character grows and how resources flow.

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

### Weapon Conditioning (Tier System Overhaul)

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/10479>
- **Version:** 1.2.1
- **Released:** 2023-10-31
- **Summary:** Introduces a Condition stat to all weapons. Weapons degrade with use and must be repaired or replaced. Fixes the loot and crafting material economy by giving every weapon a lifespan and maintenance cost.
- **Why:** Vanilla weapon economy has no sink — once you find a good weapon, you never need another. Condition degradation creates demand for replacement weapons and crafting materials, making loot discoveries and the crafting system meaningful throughout the game.
- **Conflicts:** None known. Add-on system includes unequippable weapon mods and quality-matching override — disable these add-ons if using Depeche Mods (25350).
- **Dependencies:** Codeware, Cyber Engine Tweaks, Mod Settings, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Configure via Mod Settings (or edit Config.reds manually). Install BEFORE Skillful Attributes and Skillful for best compatibility.
- **Performance:** None

### Enhanced Craft

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/4378>
- **Version:** 4.0.9
- **Released:** 2022-04-19
- **Summary:** Extends the crafting menu with weapon variant selection (basic and iconic skins), custom weapon naming, and configurable recipe quality requirements for iconic appearances.
- **Why:** Vanilla crafting produces identical weapons with no personality. This adds cosmetic variety — choose between weapon skins and name your crafted guns — without affecting stats or balance. Iconic appearances are cosmetic only, not actual iconic weapons.
- **Conflicts:** None known. Explicitly compatible with Upgrade Weapons Unlocked and Weapon Conditioning.
- **Dependencies:** Codeware, Input Loader, RED4ext, redscript, TweakXL (v1.4.2+). Optional: ArchiveXL, Mod Settings (for in-game settings menu).
- **MO2 Notes:** Extract to game root. Configure via Mod Settings -> Enhanced Craft. Iconic skins require higher-quality recipes by default (Epic+); configurable to Rare+ or Legendary only. Custom naming uses a text input dialog during crafting.
- **Performance:** None

### Upgrade Weapons Unlocked

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/9889>
- **Version:** 1.3.0
- **Released:** 2023-10-11
- **Summary:** Restores non-iconic weapon upgrades removed in patch 2.0. Configurable upgrade costs, optional quality-tier gating, and an option to make items iconic when upgraded to ++ tier. Merges with Preem Weaponsmith.
- **Why:** CDPR removed non-iconic weapon upgrades in 2.0, leaving only iconics upgradable. This restores that path with balance levers — upgrade costs are configurable (including vanilla pricing), and you can limit upgrades to +/++ only to prevent power creep. Works with Weapon Conditioning's repair system.
- **Conflicts:** Any mod that replaces `GetUpgradableList`, `GetItemFinalUpgradeCost`, `UpgradeItem`, `ApplyQualityModifier`, or `IsUpgradable` and loads after this mod. Explicitly compatible with Weapon Conditioning, Enhanced Craft, Soft Crafting, and Better HMGs.
- **Dependencies:** redscript (v0.5.16+), TweakXL (v1.5.0+). Optional: Mod Settings.
- **MO2 Notes:** Extract to game root. Configure via Mod Settings or manually edit `r6/scripts/UpgradeWeaponsUnlocked/UpgradeWeaponsUnlocked.reds`. Set `upgradeReduction` to 0 (default) for vanilla costs or 2.0 for 20% reduction. Toggle `nonIconicsEnabled` to limit non-iconic upgrades to + tier only.
- **Performance:** None

### Depeche Mods - Unified Weapon Modification

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/25350>
- **Version:** 1.3.3
- **Released:** 2025-10-29
- **Summary:** Smart vendor system extracts and repurchases weapon mods when selling, safe mod swapping without destruction, and optional Tech ability gates for high-tier mod installation. 19-language localization.
- **Why:** Vanilla weapon modding is destructive — swapping a scope destroys the old one, vendors pay nothing for attached mods, and arbitrary restrictions block mod removal. This makes modding fair: vendors pay full value including attachments, nothing is lost on swap, and Tech ability can gate high-tier tinkering (optional).
- **Conflicts:** Mods overwriting `InventoryItemModeLogicController` or `VendorDataManager.SellItemsToVendor` (Attachments Unlocked, Auto Unequip Weapon Mods, Extract The Mods In Weapon Shops, Replace Weapon Mods, Unequip Mods, Unlock Me The Mods, Vendor Filters — none in this modlist). Disable Weapon Conditioning's add-on system (unequippable mods/quality matching) to avoid overlap.
- **Dependencies:** redscript, ArchiveXL (localizations). Optional: Mod Settings, Slots Slots Slots.
- **MO2 Notes:** Extract to game root. Configure via Mod Settings -> Depeche Mods. Features configurable per type: Smart Vendor extraction, safe swapping, Tech ability gates (disabled by default), combat blocking, holster requirement. If using Weapon Conditioning, disable its add-on system in WC's Mod Settings.
- **Performance:** None

### Skillful

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/9309>
- **Version:** 2.0.3
- **Released:** 2023-09-27
- **Summary:** Spinoff from Skillful Attributes adding EXP multipliers for skill proficiencies, character levels, and street cred. Awards extra perk points and cyberware capacity at milestone levels. User-configurable via Mod Settings.
- **Why:** Required by Skillful Attributes, but also stands alone as a progression accelerator that rewards investment in skills. Perk points and cyberware capacity at milestones make leveling feel more rewarding at every step.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Mod Settings, redscript, TweakXL. Codeware may be needed.
- **MO2 Notes:** Extract to game root. Configure via Mod Settings. Install BEFORE Skillful Attributes. Read redscript requirements page for any additional dependencies.
- **Performance:** None

### Skillful Attributes

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/9281>
- **Version:** 1.3.1
- **Released:** 2023-09-27
- **Summary:** Attribute levels increase through skill proficiency — the more you fight a certain way, the better you get at the related attributes. Replaces flat attribute-point leveling with use-based progression. Now requires Skillful.
- **Why:** Vanilla attribute allocation is pure menu management — you distribute points at level-up regardless of how you play. This rewards actual playstyle: use Blade weapons and your Reflexes improve naturally, reinforcing build identity through gameplay.
- **Conflicts:** None known. Designed to work with Skillful.
- **Dependencies:** ArchiveXL, Mod Settings, redscript. Requires Skillful (#9309). Codeware may be needed.
- **MO2 Notes:** Extract to game root. Configure via Mod Settings. REQUIRES Skillful (#9309) to function. Install Weapon Conditioning before this for best compatibility.
- **Performance:** None

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

### Flesh and Chrome

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27988>
- **Version:** 1.24.0
- **Released:** 2026-03-11
- **Summary:** Expands stamina into a full fatigue and recovery system. Creates a natural daily rhythm between action, rest, food, and chrome management. Stamina regen slows with fatigue; sleep, food, and rest restore it.
- **Why:** Vanilla stamina is a short combat resource that recharges in seconds. This makes stamina a persistent resource you manage across the day — when to push harder, when to rest, what to eat, how much chrome to install.
- **Conflicts:** Compatible with Cyberware-EX and most combat mods. May conflict with mods that alter base stamina behavior.
- **Dependencies:** Codeware, redscript, DigitalVixen Core, Redscript Configuration Framework. Recommended: Consumable Animations.
- **MO2 Notes:** Extract to game root. Optional addon: Flesh and Chrome - Carry Overhaul (#28375) for inventory-weight integration. Review mod page for optional file choices.
- **Performance:** None

### Immersive Healing

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/26281>
- **Version:** 3.3.0
- **Released:** 2025-12-15
- **Summary:** Replaces the cooldown-based healing system with individual health items in your inventory. Healing items are lootable, purchasable, and must be managed like any other consumable. Includes animation and sound overhauls.
- **Why:** Vanilla healing is arcadey — press a button and wait for a cooldown. This makes healing a resource-management decision: carry enough health items, use them strategically, and restock between engagements.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Codeware, Cyber Engine Tweaks, Input Loader, Native Settings UI, RED4ext, redscript, TweakXL (v1.11.1+)
- **MO2 Notes:** Extract to game root. Configure via Native Settings UI -> Mods. Multiple file versions available (choose based on your other mods).
- **Performance:** None

### Immersive Grenades

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/25334>
- **Version:** 3.3.0
- **Released:** 2025-10-28
- **Summary:** No more charges — grenades are tracked as individual items integrated into the world. Each grenade you find or buy is a physical object. Also reworks the Ticking Time Bomb perk. Supports integration with custom grenade mods.
- **Why:** Vanilla grenade charges are abstract and replenish for free. Tracking grenades as items makes explosive tactics a deliberate choice with resource consequences rather than a spammable panic button.
- **Conflicts:** May conflict with mods that alter grenade behavior or the Ticking Time Bomb perk
- **Dependencies:** ArchiveXL, Cyber Engine Tweaks, Native Settings UI, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Configure via Native Settings UI. Supports optional integration with custom grenade mods (Big Chungus Grenade, Chomper, GASH, etc.).
- **Performance:** None

### Immersive Throwables

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/25074>
- **Version:** 1.0.0
- **Released:** 2025-10-17
- **Summary:** Throwing a weapon unequips it and drops it at the impact location instead of going on cooldown. You must physically retrieve thrown weapons or lose them. Adds real consequence to knife and axe throws.
- **Why:** Vanilla throwable weapons magically return to your inventory. This makes each throw a tactical decision — if you miss or can't reach the landing spot, you lose that weapon for the rest of the fight.
- **Conflicts:** Compatible with Silent Silencers and Throwing Knives
- **Dependencies:** ArchiveXL, Cyber Engine Tweaks, Input Loader, Native Settings UI, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Configure via Native Settings UI. Pairs with Throwable Weapon Reworked for stamina-based recovery.
- **Performance:** None

### Throwable Weapon Reworked

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/27255>
- **Version:** 1.0
- **Released:** 2026-02-02
- **Summary:** Redesigns throwable weapon recovery to be stamina-based. Character growth, builds, and cyberware choices affect how quickly you recover thrown weapons. Preserves each weapon's original characteristics while tying recovery to your build.
- **Why:** Vanilla throwable recovery is flat and disconnected from character progression. Making it stamina-based gives attribute points and cyberware choices direct gameplay impact on thrown weapon viability.
- **Conflicts:** None known. Pairs with Immersive Throwables for full throwing overhaul.
- **Dependencies:** ArchiveXL, redscript, TweakXL. Recommended: Stamina Regen Fixes.
- **MO2 Notes:** Extract to game root. Works automatically — optional configuration.
- **Performance:** None

### The Immersive Way

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/30352>
- **Version:** Verify
- **Released:** July 2026
- **Summary:** Adds third-person immersive scenes for Fem V using the Native Interactions Framework, with optional Dark Future integration for survival-contextual actions.
- **Why:** Extends the Native Interactions Framework with additional immersive scenes, giving Fem V third-person context for daily activities. Dark Future integration ties survival mechanics to visual storytelling, deepening the RPG experience.
- **Conflicts:** None known. Requires Native Interactions Framework.
- **Dependencies:** Native Interactions Framework (#10479). Optional: Dark Future (#16300).
- **MO2 Notes:** Extract to game root. Fem V only. Install after Native Interactions Framework and Dark Future.
- **Performance:** None

### Specialized Ripperdocs

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/23399>
- **Version:** 1.1.1
- **Released:** 2025-08-11
- **Summary:** Each ripperdoc sells only two types of cyberware. Automatically sorts all cyberware — including modded items — to match those specializations. Iconic items are vendor-exclusive with a built-in CET lookup table.
- **Why:** Vanilla ripperdocs are interchangeable — every vendor sells everything. This forces exploration and makes ripperdoc choices meaningful. Finding an iconic Sandevistan now requires visiting the specialist who carries it, adding RPG depth to cyberware acquisition.
- **Conflicts:** None known. Designed to complement Ripperdoc Cyberware Specializations but functions independently.
- **Dependencies:** Cyber Engine Tweaks
- **MO2 Notes:** Extract to game root. Built-in CET window (requires button click) shows where each iconic is sold. Works seamlessly with Ripperdoc Vendor UI Enhancements (#23180) for map tooltip integration.
- **Performance:** None

### Black Chrome - Cyberware Expansion

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/16031>
- **Version:** 1.1.10
- **Released:** 2024-07-31
- **Summary:** Adds new cyberware items across all categories. Fair and balanced additions that expand chrome variety without breaking game balance.
- **Why:** Even with Specialized Ripperdocs, the vanilla cyberware pool can feel shallow on repeat playthroughs. Black Chrome adds meaningful variety — new OS options, new arm mods, new leg implants — while maintaining the "fair and balanced" design philosophy by the same author as Neuralware and SynthDose.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Cyber Engine Tweaks, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. 13 translation packs available. Same author as Neuralware (#19798) — evaluate both together. Install before Neuralware if using both.
- **Performance:** None

### Neuralware - Chipware Expansion

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/19798>
- **Version:** 1.2.1
- **Released:** 2025-03-10
- **Summary:** 40+ new neural implants with a chipware system — software chips that consume RAM, hardware chips with cooldowns, and skill chips. Relic becomes a neural chip after acquisition. Perk reworks for Chipware Connoisseur and Driver Update.
- **Why:** Deepens the cyberware system with a new neural capacity resource and chip management layer. Software chips require licenses that expire (or can be cracked), adding an ongoing resource sink. The neural capacity trade-off forces meaningful build decisions — every chip slot matters.
- **Conflicts:** Incompatible with: Cyberware RNG Bonuses Removed (#15543), More Melees More Fun (#14910), More Cyberware Capacity per Level (#10276), Ripperdoc Current Capacity Bug Fix (#11241). Raven Gemini II (#16209) mostly works but breaks attribute skill bonus chips.
- **Dependencies:** ArchiveXL, Codeware, Cyber Engine Tweaks, Input Loader, Mod Settings, RED4ext, redscript, Reflex is Cool, TweakXL, VendorsXL. Optional: Audioware (custom sounds), CustomHackingSystem (chipware cracking), Bug Fix - Base Fists (#14130).
- **MO2 Notes:** Extract to game root. Install after Black Chrome if using both (same author). Moderately complex — test chip interactions before committing to a playthrough. 18 open bugs tracked on Nexus.
- **Performance:** Light (chip effects and UI additions)

### Much Better Eddies

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/30532>
- **Version:** 1.3
- **Released:** 2026-07-12
- **Summary:** Full economy overhaul — per-district reputation system with buy/sell price scaling, quest reward rebalance, and a Lester-style black-market fixer line (Dead Channel).
- **Why:** Vanilla economy breaks by midgame — you're a millionaire with nothing meaningful to spend on. This rebuilds the curve: jobs are your income, loot is supplemental, and every district's reputation affects prices. Fits the "no cheat" philosophy by making the economy tighter, not easier.
- **Conflicts:** NOT compatible with Economy Punk, Economy of 2077, Economy Tweaks, Economy Rebalance, Atelier Price Fixer. Compatible with Dark Future and Virtual Atelier.
- **Dependencies:** Cyber Engine Tweaks, RED4ext, redscript, Native Settings UI, Codeware, TweakXL, Browser Extension
- **MO2 Notes:** Extract to game root. Configure via Native Settings UI -> Mods -> Much Better Eddies. Five presets: Vanilla, Easy, Standard (default), Hard, Custom. New game recommended; existing saves need cleanup of acquired wealth.
- **Performance:** Light (reputation tracking per district)

---

## Install Order

1. Cyberware-EX
2. Convo Skill Check Scaling
3. Weapon Conditioning (Tier System Overhaul)
4. Enhanced Craft
5. Upgrade Weapons Unlocked
6. Depeche Mods - Unified Weapon Modification
7. Skillful
8. Skillful Attributes
9. Renaissance Punk - Perk Scaling
10. Flesh and Chrome
11. Immersive Healing
12. Immersive Grenades
13. Immersive Throwables
14. Throwable Weapon Reworked
15. The Immersive Way
16. Specialized Ripperdocs
17. Black Chrome - Cyberware Expansion
18. Neuralware - Chipware Expansion
19. Much Better Eddies

**Notes:**
- **Skillful** must be installed **before** Skillful Attributes (Skillful Attributes requires it)
- **Weapon Conditioning** should be installed before Skillful/Skillful Attributes for best compatibility
- **Enhanced Craft** and **Upgrade Weapons Unlocked** are crafting-system additions that sit between Weapon Conditioning and the Skillful duo — they modify the crafting UI and upgrade paths without affecting skill progression
- **Depeche Mods** — if using Weapon Conditioning, disable WC's add-on system (unequippable mods/quality matching) in WC's Mod Settings to avoid overlap
- **Flesh and Chrome** addons (Carry Overhaul) go after the main Flesh and Chrome install
- **Specialized Ripperdocs** goes before Black Chrome and Neuralware so cyberware is correctly distributed across ripperdocs
- **Black Chrome** and **Neuralware** are by the same author — install Black Chrome first if using both
- **Much Better Eddies** should be installed last in this category due to its broad economy overrides — install after all other gameplay mods
