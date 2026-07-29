# Expanded Systems

## Overview

This section owns the gameplay systems that expand Skyrim beyond its 2011 baseline: character creation, progression, magic, perks, survival, crafting, economy, followers, and social systems. Each pillar of the Expanded Systems section lives in its own sub-file.

The system is designed to be evaluated in order — progression choices (races, standing stones, perks) come before magic, survival, crafting, and social systems that build on them.

## Sub-Files

| Area                    | File                                                       | Separator                                    | Topics                                                                               |
|-------------------------|------------------------------------------------------------|----------------------------------------------|--------------------------------------------------------------------------------------|
| Character & Progression | [`Character & Progression`](modlist-expanded-character.md) | `Expanded Systems - Character & Progression` | Alternate starts, races, standing stones, traits, religion, vampire/werewolf/shouts  |
| Magic & Perks           | [`Magic & Perks`](modlist-expanded-magic.md)               | `Expanded Systems - Magic & Perks`           | Perk overhauls, magic expansion, stealth/detection                                   |
| Survival & Needs        | [`Survival & Needs`](modlist-expanded-survival.md)         | `Expanded Systems - Survival & Needs`        | Survival frameworks, hygiene, death alternative                                      |
| Crafting & Economy      | [`Crafting & Economy`](modlist-expanded-crafting.md)       | `Expanded Systems - Crafting & Economy`      | Alchemy, cooking, smithing, enchanting, economy |
| Followers & Reputation  | [`Followers & Reputation`](modlist-expanded-followers.md)  | `Expanded Systems - Followers & Reputation`  | Crime/reputation, follower frameworks, romance/marriage                              |

## Key Principles

- Simonrim progression family (`Adamant`, `Mysticism`, `Thaumaturgy`, etc.) is the locked baseline. EnaiRim (`Ordinator`, `Apocalypse`, etc.) is rejected.
- Survival, difficulty, and balance interactions across the full load order are owned by `modlist-survival-combat.md` → `Survival & Combat`
- All system choices must be evaluated for third-person gamepad usability and compatibility with the `Legacy of the Dragonborn` museum pillar → `Legacy of the Dragonborn`
