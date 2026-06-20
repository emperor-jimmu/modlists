# Targeted Bugfix Mods

## Core Idea

Use this section for focused fixes that solve specific vanilla annoyances, edge-case crashes, or presentation problems without bloating the non-negotiable runtime stack already covered in `modlist-01.md`.

## Suggested Options

- Dialogue and subtitle safety route: use `Fuz Ro D-oh - Silent Voice` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/15109> if the list will include any unvoiced dialogue content or mods that rely on subtitle-only delivery.
- Large-scene actor behavior route: use `Actor Limit Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32349> if crowded scenes, facial animation, or lip-sync reliability matter enough to justify a dedicated engine-side fix for that problem.
- Merchant overflow route: use `Barter Limit Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/77173> if economy expansion risks merchants exceeding the vanilla gold cap.
- Equipment-state reliability route: use `Equip Enchantment Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/42839> if enchantments failing to apply or dropping off while equipped is a problem worth fixing explicitly.
- Follower collision sanity route: use `I'm Walkin' Here NG with Pets` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/122516> if ally and pet body-blocking keeps interrupting exploration or dialogue.
- Stealth-theft cleanup route: use `Mum's the Word NG` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/77409> if worthless stolen-item tagging keeps creating obvious low-value friction.
- NPC state recovery route: use `NPC AI Process Position Fix - NG` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/69326> if waiting, sleeping, or fast travel leaves NPC processing in visibly broken states.
- Save-label clarity route: use `Regional Save Names` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/49698> if better save naming materially helps testing, troubleshooting, and profile hygiene.
- Accidental-hostility cleanup route: use `Simple Offence Suppression` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/41764> if ordinary combat noise or stray hits keep turning neutral NPCs hostile in ways that feel more buggy than meaningful.
- Movement behavior cleanup route: use `Better Jumping SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/18967> if the project wants more consistent jumping control without turning movement into a separate overhaul decision.
- Ambient sanity-fix route: use `Bard Instrumentals Mostly - Sing Rarely` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/10927> if repetitive tavern singing becomes a noticeable immersion problem during normal play.
- Targeted stability route: use `LeveledList Crash Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/129136> if the final plugin/content mix makes leveled-list crash protection worth a dedicated fix beyond the broader foundation layer.
- Low-level engine bugfix route: use `Bug Fixes SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/33261> (meh321 SKSE plugin; fixes crafting-menu, perk-application, and water-behavior engine bugs not covered by `SSE Engine Fixes`. 56k endorsements, broad community validation.)
- Navmesh-reliability route: use `Navigator - Navmesh Fixes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/52641> if follower pathing, animal AI, or NPC navigation in complex worldspaces shows observable failure (stuck NPCs, looping behavior) that simple navmesh fixes cannot resolve. 9k endorsements; heavier integration test recommended before committing.)

## Recommendation

Start with the high-value, clearly explainable route. Treat `Fuz Ro D-oh - Silent Voice`, `Actor Limit Fix`, `Equip Enchantment Fix`, `NPC AI Process Position Fix - NG`, and `Simple Offence Suppression` as the strongest baseline candidates in this bucket because they each address recognizable vanilla problems without redefining an entire gameplay system. Add `Barter Limit Fix` if economy scale makes it relevant, `I'm Walkin' Here NG with Pets` and `Mum's the Word NG` if their specific irritations actually show up in play, keep `Better Jumping SE` and `Bard Instrumentals Mostly - Sing Rarely` as lighter quality fixes, use `Regional Save Names` if testing hygiene would genuinely benefit, and evaluate `LeveledList Crash Fix` only once the heavier content stack is real enough to justify it.

## Why This Is The Right Baseline

`Elder Wilds` already has a foundations section for mandatory runtime frameworks and low-level prerequisites. This section should stay narrower: concrete fixes for specific problems players will actually feel. The Lexy-inspired candidates that fit best here are the ones that repair obvious scene behavior, equipment-state reliability, NPC processing, combat-adjacent hostility, save clarity, and similar player-facing friction without becoming a new framework category. That keeps this file useful as a disciplined bucket for targeted vanilla-problem fixes instead of turning it into a second foundations page.

## Working Guidance For Elder Wilds

- Keep this file disciplined and selective. Do not dump every small fix mod here just because it sounds reasonable.
- If a fix is effectively a required runtime framework, it belongs in `modlist-01.md`, not here.
- Prefer bugfix mods that solve clearly observable problems over vague “just in case” additions.
- Add specialized crash or data fixes only when the final stack actually creates the conditions they are meant to protect.
- Treat lightweight immersion fixes like bard-behavior cleanup as optional polish, not mandatory baseline infrastructure.
- Prefer fixes that are easy to explain in one sentence: broken subtitles, broken enchantment application, broken NPC update state, bad save labeling, accidental hostility, blocked movement, or capped merchant gold.

## What Elder Wilds Should Prioritize

- Fixes that protect modded content from breaking immersion or usability during normal play.
- Fixes that remove obvious vanilla friction without dragging in a large new subsystem.
- Clear distinction between essential foundations and optional targeted fixes.
- Stability additions that are easy to justify from actual load-order complexity.
- Player-facing fixes whose value is obvious during ordinary testing rather than only in rare edge-case theory.

## Research Tasks

- Confirm `Fuz Ro D-oh - Silent Voice` behavior and compatibility on Steam `1.6.1170` in the final setup.
- Confirm `Actor Limit Fix`, `Equip Enchantment Fix`, and `NPC AI Process Position Fix - NG` behave cleanly on the chosen runtime and mod stack.
- Decide whether `Simple Offence Suppression` and `I'm Walkin' Here NG with Pets` solve real play-friction in this list rather than adding low-value convenience.
- Check whether `Barter Limit Fix` is actually needed once economy and loot decisions are more settled.
- Decide whether `Regional Save Names` is worth keeping as testing-support polish.
- Decide whether `Mum's the Word NG` belongs here as a genuine vanilla-friction fix or is too preference-shaped for the final list.
- Decide whether `Better Jumping SE` fits the intended movement feel after third-person gameplay choices are locked.
- Check whether bard repetition is noticeable enough in ordinary tavern play to justify `Bard Instrumentals Mostly - Sing Rarely`.
- Revisit `LeveledList Crash Fix` once the content stack is heavier and leveled-list stress is more realistic.
- Keep this section separate from broader perk, movement, audio, or framework decisions owned elsewhere in the repo.

## Risks To Check

- Some “bugfix” mods are really behavior or design changes in disguise; avoid labeling preference mods as mandatory fixes.
- Convenience fixes can quietly accumulate until the list is solving irritations the player never actually cared about.
- A few Lexy-style fixes are better treated as inspiration than automatic adoption because this repo is not trying to clone Lexy’s full baseline.
- `Better Jumping SE` can drift from bugfix territory into movement-tone territory if it starts carrying more weight than intended.
- Specialized crash fixes are easy to over-prescribe before the actual failure mode exists in the load order.
- Small immersion fixes can accumulate into unnecessary clutter if every mild annoyance gets its own plugin.

## Acceptance Criteria

- This section stays focused on concrete, explainable fixes rather than becoming a catch-all miscellaneous bucket.
- Every recommended mod here solves a specific player-facing problem or believable stability risk.
- Core runtime foundations remain owned by `modlist-01.md` and are not duplicated here.
- Lexy-inspired additions are filtered to repo-appropriate fixes rather than copied wholesale.
- `mods-checklist.md` contains only the verified bugfix picks that this section actually recommends.

## Post-Install Smoke Test

After completing this section, verify stability with the coc console command at these 6 locations:

| # | Command | Location | Stress Profile |
|---|---------|----------|----------------|
| 1 | `coc Whiterun` | Whiterun | Major city — NPCs, shadows, architecture density |
| 2 | `coc Solitude` | Solitude | Large city — water reflections, long draw distances |
| 3 | `coc RiftenOrigin` | Riften | Canopy lighting, heavy NPC AI packages |
| 4 | `coc MarkarthOrigin` | Markarth | Dwemer stone, waterfalls, extreme verticality |
| 5 | `coc Riverwood` | Riverwood | Forest exterior — grass, trees, landscape LOD |
| 6 | `coc BleakFallsBarrow01` | Bleak Falls Barrow | Interior dungeon — close-quarters lighting |
| 7 | `coc WhiterunBanneredMare` | Bannered Mare (Whiterun) | Tavern interior — fire lighting, patron NPCs, confined space |

**Pass criteria:** No crash on load. No missing textures. ≥60 FPS maintained (uncap framerate, use `tgm` for god mode if needed).

If any location fails, the most recently installed mod or generation step is the first suspect.
