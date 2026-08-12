# Mod Ideas (not included in the PDF)

Future or unverified mod candidates supplied by the user. Never added to the guide without the user's explicit supply; this project does not research mods.

## Advanced waves - LWOTC Community QoL Collection (user-supplied 2026-08-12)

Source: Steam Workshop collection id 3573264680 - "LWOTC Community QoL Collection" (90 items, curated by the LWOTC community). User instruction: use this list for mod suggestions for the more advanced waves.

Status: **all 58 net-new mods below were added to the guide as mod cards on 2026-08-12** (one card per mod, in exactly one category file, per the modlist rules). This section is kept as the provenance record and the collection's config notes.

Context: this is the community-curated QoL list for **Long War of the Chosen (LWOTC)**. Per the collection: "No gameplay altering mods have been included, with the exception of Reliable Ever Vigilant, which we all agree is how it should have been anyway." The advanced waves may target an LWOTC-based build - a question for the user (see STATUS.md). Mods marked **[LWOTC]** are LWOTC-specific.

Of the 90 items, 32 are already in the Core Collection baseline (not re-listed here). The 58 net-new suggestions below are organized into the guide's 8 categories.

### Config notes from the collection page (user-supplied, 2026-08-12)

- **Extended Information** will cause shot flyovers to show 0% hit chance. Fix: in-game menu -> Mod Options -> Extended Information -> disable Aim Assist.
- **Unit Flag Extended** shows loot icons on enemies by default. To require scanning: edit `XComWOTCLootIndicator_Extended.ini` in the mod's config, set `loot indicator requires scanning` to true.
- **[WOTC] Detailed Soldier Lists Redux** shows mobility after gear modifiers by default. For base mobility: set `bAddGear_Mob = true` to `false` in `XComGame.ini`.
- inukealot's config additions for QoL mods (only two still relevant: Still Stop Wasting My Time and Enemy Preview: Extended): <https://github.com/long-war-2/lwotc/wiki/Config-Compatibility-Changes-for-mods>

### Core & Framework (5)

- Better Second Wave Mod Support - <https://steamcommunity.com/sharedfiles/filedetails/?id=1149493976> - allows multiple mods to add second wave options without localization conflicts; some options modifiable in campaign.
- [WOTC] Additional Soldier Console Commands - <https://steamcommunity.com/sharedfiles/filedetails/?id=1370543410> - adds console commands usable from the armory and one for tactical missions; primary purpose is helping debug/learn the game.
- [WOTC] XpanD's Console Commands - <https://steamcommunity.com/sharedfiles/filedetails/?id=3113132590> - adds several new console commands; part utility, part developer stuff, part blatant cheating.
- [WOTC] CommanderHUD - <https://steamcommunity.com/sharedfiles/filedetails/?id=3505513412> - framework: lets abilities be added to the top-right CommanderHUD; no effect on its own, other mods must use the feature.
- Gameplay Patch compendium for LWOTC (QoL/Fixes) - <https://steamcommunity.com/sharedfiles/filedetails/?id=3578777067> - **[LWOTC]** - turns off gameplay-affecting default options of various mods to preserve LWOTC balance.

### Quality of Life (12)

- Stop Wasting My Time - WotC - <https://steamcommunity.com/sharedfiles/filedetails/?id=620600092> - speeds up the game by removing pointless pauses and other time-wasters; all changes purely cosmetic.
- Remove Missing Mods for WotC - <https://steamcommunity.com/sharedfiles/filedetails/?id=1127050498> - removes links to mods you are no longer using; disturbs as little as possible and leaves no trace.
- [WOTC] Faster Reload Animations - <https://steamcommunity.com/sharedfiles/filedetails/?id=1140240051> - significantly increases reload animation speed.
- Narrative Control - <https://steamcommunity.com/sharedfiles/filedetails/?id=1334298434> - restrict the constant flow of NPC chatter: remove Bradford's narrative events entirely, remove geoscape narratives, or any combination.
- [WotC] Instant Loot - <https://steamcommunity.com/sharedfiles/filedetails/?id=1440233515> - removes popup and animations on loot pickups; configurable via MCM.
- [WOTC] Dude, Where's My Loot? - <https://steamcommunity.com/sharedfiles/filedetails/?id=2878818143> - fixes issues with loot not dropping when it arguably should; fixed version of Loot Mind Control.
- Negative Mobility Fix - <https://steamcommunity.com/sharedfiles/filedetails/?id=2806444314> - fixes negative mobility from modded gear/abilities; more relevant the more mods you run.
- [WOTC] Controllable Put Down Unit - <https://steamcommunity.com/sharedfiles/filedetails/?id=2796040662> - lets you control where you put down a carried body (pairs with Phantom Evac, Corpses Alert Enemies, Hideable Bodies).
- Pause World Time In Hours - <https://steamcommunity.com/sharedfiles/filedetails/?id=2949521981> - combines Pause World Time and Hours Instead of Days; geoscape clock does not tick until you scan or fly.
- Pause Scanning [WOTC] - <https://steamcommunity.com/sharedfiles/filedetails/?id=1154579172> - auto-stops scanning when a soldier heals, recovers from shaken, finishes removing traits, or completes a bond level-up.
- Instant Avenger Menus - WotC - <https://steamcommunity.com/sharedfiles/filedetails/?id=1124410215> - makes all Avenger transitions instant plus other time savers; smoother on lower framerates.
- Still Stop Wasting My Time - <https://steamcommunity.com/sharedfiles/filedetails/?id=1793418015> - port of Quicker Abilities + geoscape speedup: 3x geoscape speed (scanning, avenger/skyranger movement) and faster ability animations.

### UI & HUD (33)

- Show More Buff Details - <https://steamcommunity.com/sharedfiles/filedetails/?id=709499969> - shows when each non-permanent effect ends and the stat bonuses granted by buffs/perks.
- [WotC] Bond To Header - <https://steamcommunity.com/sharedfiles/filedetails/?id=1397839793> - presents available bonds in a stable header in the Avenger HUD instead of random screen positions.
- [WotC] UI - Colored Ammo Bar - <https://steamcommunity.com/sharedfiles/filedetails/?id=1949300408> - shows equipped ammo type via a colored ammo bar, no need to hover the weapon icon.
- [WOTC] Unit Flag Extended - <https://steamcommunity.com/sharedfiles/filedetails/?id=2285967646> - extended unit flag icons (follows Additional Icons); see config note above about loot indicators.
- [WOTC] Show Tech Rewards - <https://steamcommunity.com/sharedfiles/filedetails/?id=2347354900> - shows what each Research or Proving Ground project gives, including mod-added ones.
- [WOTC] Tactical UI Kill Counter Redux - <https://steamcommunity.com/sharedfiles/filedetails/?id=2405013108> - adds simple per-team kill counters to the tactical UI.
- [WOTC] Soldier Info Redux - <https://steamcommunity.com/sharedfiles/filedetails/?id=2415446578> - WOTC update of Grimy's Tactical Kill Counter; soldier kill info in tactical.
- [WOTC] Barracks Status Display - <https://steamcommunity.com/sharedfiles/filedetails/?id=2540649820> - turns the single long soldier-status line in the hangar into a compact block.
- [WOTC] Select Soldier Icons Redux - <https://steamcommunity.com/sharedfiles/filedetails/?id=2960880496> - redux of Soldier Select Icons (soldier icons in selection screens).
- [WotC] Better Cost Strings - <https://steamcommunity.com/sharedfiles/filedetails/?id=2995259605> - shows inventory counts and highlights sparse artifacts/resources in cost strings; requires X2WOTCCommunityHighlander v1.26.0+.
- [WOTC] Filtered Menus - <https://steamcommunity.com/sharedfiles/filedetails/?id=3271654182> - adds filters to most menus, e.g. the build items screen, reducing options shown.
- [LWOTC] ICONIC Missions - Unique Geoscape Icons for LWOTC - <https://steamcommunity.com/sharedfiles/filedetails/?id=3560714437> - **[LWOTC]** - unique geoscape icons for each mission.
- WotC Enhanced AoE Preview - <https://steamcommunity.com/sharedfiles/filedetails/?id=1124333578> - shows actual damage preview on AoE targets; non-damaging AoE still highlights affected health bars.
- [WOTC] LOS Preview Ability - <https://steamcommunity.com/sharedfiles/filedetails/?id=1123163799> - adds an ability to all soldiers to preview LOS range by tiles, beyond movement range; also previews movement range.
- [WOTC] More Target Icons 2024 - <https://steamcommunity.com/sharedfiles/filedetails/?id=2010827399> - suite of new target icons, mostly for modded enemy units.
- [WOTC] No Drop Down Lists: Bond Slot - <https://steamcommunity.com/sharedfiles/filedetails/?id=3512173534> - extension of No Drop Down Lists for the Training Center Bond Level Up slot.
- [WOTC] LOS Preview To CommanderHUD - <https://steamcommunity.com/sharedfiles/filedetails/?id=3505515834> - moves LOS Preview abilities to the CommanderHUD (requires CommanderHUD mod).
- [Vanilla/WotC] Black Market Soldier Stats - <https://steamcommunity.com/sharedfiles/filedetails/?id=3004108595> - shows stats of soldiers offered at the Black Market; configurable highlight of above/below-average stats.
- [WOTC] Enemy Preview - Extended - <https://steamcommunity.com/sharedfiles/filedetails/?id=2924342363> - extends the optional Target Preview UI with vision range info and effect impacts based on the preview tile.
- [WOTC] Improved Weapon Upgrade UI - <https://steamcommunity.com/sharedfiles/filedetails/?id=2042829719> - adjusts weapon model position in the Weapon Upgrade UI for readability.
- ChosenData - <https://steamcommunity.com/sharedfiles/filedetails/?id=3015648739> - brings the geoscape Chosen-progress view into the Commander's Quarters.
- [WOTC] Improved Black Market UI - <https://steamcommunity.com/sharedfiles/filedetails/?id=3349050094> - improves Black Market sell screen performance; no lag with large item counts.
- [WOTC] Photobooth UI Fixes - <https://steamcommunity.com/sharedfiles/filedetails/?id=3307455200> - fixes Photobooth UI/functionality, including a crash with hundreds of installed poses.
- [WOTC] Visibility Memory (QoL) - <https://steamcommunity.com/sharedfiles/filedetails/?id=2797492518> - keeps sighted enemies visible until end of turn after a unit loses sight.
- CapturedSoldiersList - <https://steamcommunity.com/sharedfiles/filedetails/?id=2883035174> - adds a tab in the Bar/Memorial listing troops currently in ADVENT/Chosen hands.
- [WOTC] Custom Item Name Formats - <https://steamcommunity.com/sharedfiles/filedetails/?id=2868237788> - customize item name colors and add prefixes/suffixes; defaults include colors for vanilla and many mods.
- [WOTC] Gotcha Again Redux - <https://steamcommunity.com/sharedfiles/filedetails/?id=3002469584> - merge of Gotcha Again with Peek From Concealment and MissClick Protection; no manual ini conflict fixes needed. (Supersedes baseline [WotC] Gotcha Again.)
- [WOTC] Mom, I'm Immune - <https://steamcommunity.com/sharedfiles/filedetails/?id=3646566000> - adds a passive ability to all units listing the damage types they are immune to.
- [LWOTC] Faceless Detection Power - <https://steamcommunity.com/sharedfiles/filedetails/?id=3677863362> - **[LWOTC]** - shows Faceless detection power in the Haven Management window.
- [WOTC] [BETA] Extended Information Redux - <https://steamcommunity.com/sharedfiles/filedetails/?id=3706139879> - **BETA** - UI enhancement, rewrite of Perfect Information: hit/crit/graze/miss chances in flyovers etc. (Note: overlaps baseline WOTC - Extended Information!; see config note about Aim Assist.)
- [LWOTC] Strength Increase Notifier - <https://steamcommunity.com/sharedfiles/filedetails/?id=3723136195> - **[LWOTC]** - geoscape notifications when ADVENT Strength or Force Level changes; optional pause. (Collection notes: non-LWOTC players should use a different mod instead.)
- [WOTC] F1 Shortcut - <https://steamcommunity.com/sharedfiles/filedetails/?id=3708752404> - adds a clickable F1 shortcut to every unit flag on the battlefield.
- [WOTC] Instant Research Requirements - <https://steamcommunity.com/sharedfiles/filedetails/?id=3728376477> - shows requirements for instant research (e.g. required corpses for an instant autopsy) and current stored amounts.

### Classes & Skills (4)

- [WOTC] Universal Threat Assessment - <https://steamcommunity.com/sharedfiles/filedetails/?id=3155092427> - fixes Specialist's Threat Assessment (Aid Protocol) so it works on Templars and other classes that should use a pistol.
- [WOTC] Improved Wrath Targeting - <https://steamcommunity.com/sharedfiles/filedetails/?id=3311002488> - improves Skirmisher's Wrath targeting: choose the destination tile (up to 8+) for the grapple.
- Sacrifice Targeting Fix - <https://steamcommunity.com/sharedfiles/filedetails/?id=2648230104> - Sacrifice ability always previews the target location where the SPARK stops, regardless of mouse cursor position.
- [WOTC] Reliable Ever Vigilant Redux - <https://steamcommunity.com/sharedfiles/filedetails/?id=3546124299> - stops Ever Vigilant from being invalidated by free neutral/uncontrollable actions; no custom effect game state. (Supersedes baseline [WOTC] Reliable Ever Vigilant; the collection's sole gameplay-altering exception.)

### Cosmetics & Visuals (4)

- Grey Smoke Grenade - <https://steamcommunity.com/sharedfiles/filedetails/?id=742478385> - gives Smoke Grenades and Smoke Bombs grey smoke and a blinking light instead of pink.
- [WOTC] Holographic Scanning - <https://steamcommunity.com/sharedfiles/filedetails/?id=2234141519> - scanned units look like mimic beacon holograms instead of the solid red look.
- EvilBob's Dejanker - <https://steamcommunity.com/sharedfiles/filedetails/?id=3314878803> - fixes up "good enough" graphical stuff and broken/missing text entries; inspired by Avenger Dejanker.
- (WOTC) Zip Mode Combat Protocol Camera Fix - <https://steamcommunity.com/sharedfiles/filedetails/?id=1278585557> - fixes the Combat Protocol camera in zip mode (camera showed a Specialist close-up while the Gremlin was already at the target).

### Audio & Sound (0)

No net-new audio mods in this collection.

## Optional plugin collections (user-supplied via the baseline collection page, 2026-08-12)

The [WOTC] Core Collection page (id 2165341111) lists these as optional plugins, not part of the 75-item baseline:

- [WOTC] Core Collection - Text - <https://steamcommunity.com/sharedfiles/filedetails/?id=2270881676> - "improves and expands various in-game descriptions and text. English only."

## Additional resources pointed to by the baseline page (user-supplied, 2026-08-12)

- Alternative and Optional Mods discussion: <https://steamcommunity.com/workshop/filedetails/discussion/2165341111/2784864483546834478/>
- List of Problematic Mods: <https://www.reddit.com/r/xcom2mods/wiki/index/problematic_mods>
- List of Mods with Fixes Available: <https://www.reddit.com/r/xcom2mods/wiki/index/mods_with_fixes>
- List of Superseded Mods: <https://www.reddit.com/r/xcom2mods/wiki/index/superseded_mods>
