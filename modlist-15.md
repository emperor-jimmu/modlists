# Legacy of the Dragonborn

## Core Mod Baseline

### Core Idea

This section owns the `Legacy of the Dragonborn` baseline for `Elder Wilds`: the museum itself, the collection-driven play loop it introduces, and the immediate support mods needed to make that framework practical inside a larger curated load order.

The goal is to treat `Legacy of the Dragonborn` as a foundational content pillar for the final list, not as a late optional extra bolted onto an already-finished setup.

### Suggested Options

- Master mod route: use `Legacy of the Dragonborn` as the non-negotiable centerpiece if `Elder Wilds` is committing to museum progression, artifact collection, and the supported patch ecosystem that follows from that decision.
- Companion utility route: add `The Curator's Companion` if the list wants cleaner in-game tracking for what the museum can display and what the player has already found.
- Integration baseline route: plan around the official `Legacy of the Dragonborn` patch collection once the supporting quest, item, and world-content stack is firm enough to justify concrete patch picks.
- User-specified LoTD support route: include the additional Nexus entries `13279`, `16080`, and `131107` as part of the LoTD ecosystem under active curation for this list.

### Recommendation

Treat `Legacy of the Dragonborn` as a deliberate list pillar. Start from the museum-first assumption, keep `The Curator's Companion` as the most likely quality-of-life companion, and treat the official patch collection as required integration infrastructure once the related content mods are locked.

### Why This Is The Right Baseline

If `Elder Wilds` is going to incorporate `Legacy of the Dragonborn`, the list should acknowledge the real design consequence: artifact discovery, unique-item routing, and compatibility planning all change. That makes `Legacy of the Dragonborn` closer to a structural content framework than to an ordinary quest mod. Planning around it early is cleaner than trying to retrofit it after world content, quest expansions, and item mods are already scattered across the repo.

## Supported Content Mods And Museum Integration

### Core Idea

This subsection tracks the kinds of mods that should be evaluated partly through the `Legacy of the Dragonborn` lens: quest mods, new lands, artifact packs, item expansions, player homes, and other content that may gain museum displays, sorting support, relic integration, or official patch coverage.

### Working Guidance For Elder Wilds

- Use `Legacy of the Dragonborn` support as an explicit evaluation criterion for later quest and content picks, not as an afterthought.
- Prefer content mods with mature `Legacy of the Dragonborn` integration when two otherwise similar candidates solve the same design goal.
- Keep museum-supported content distinct from content that merely coexists with `Legacy of the Dragonborn` but adds no meaningful display, relic, or progression value.
- Do not let museum support override core fit, tone, performance, or maintenance quality if a supported mod is otherwise a weak match for `Elder Wilds`.

### Candidate Mod Buckets To Track

- Official master content: `Legacy of the Dragonborn` — <https://www.nexusmods.com/skyrimspecialedition/mods/11802>.
- Museum tracking support: `The Curator's Companion` — <https://www.nexusmods.com/skyrimspecialedition/mods/38529>.
- Official patch hub: `Legacy of the Dragonborn Patches (Official)` — <https://www.nexusmods.com/skyrimspecialedition/mods/30980>.
- User-provided verified Nexus entries to retain in this LoTD planning set: <https://www.nexusmods.com/skyrimspecialedition/mods/13279>, <https://www.nexusmods.com/skyrimspecialedition/mods/16080>, and <https://www.nexusmods.com/skyrimspecialedition/mods/131107>.
- Content with common `Legacy of the Dragonborn` integration pressure: major quest mods, artifact packs, unique-item expansions, new lands, treasure-hunt content, and player-home mods that may overlap with relic storage or collection routing.

## Patch Strategy For LoTD Support

### Core Idea

This subsection owns the patch philosophy for a `Legacy of the Dragonborn` build. The main decision is not whether patches exist, but how disciplined the list will be about only enabling the specific museum patches that correspond to finalized content picks.

### Recommendation

Use the official `Legacy of the Dragonborn` patch collection as the default patch source wherever it cleanly covers a chosen mod. Add third-party `Legacy of the Dragonborn` patches only when the official collection does not cover a finalized mod and the patch has a clear maintenance story.

### Working Guidance For Elder Wilds

- Treat `Legacy of the Dragonborn Patches (Official)` as the primary integration layer.
- Do not pre-install broad patch bundles for mods that are still only hypothetical.
- Only keep patches for mods that survive into the actual final stack.
- Re-check load order, museum sorting behavior, and display activation after each major content addition.
- Keep patch ownership readable so `Legacy of the Dragonborn` compatibility does not disappear into an opaque misc-patches bucket.

## Submods And Quality-Of-Life Support

### Core Idea

This subsection tracks the immediate `Legacy of the Dragonborn` ecosystem around the master mod: collection tracking, museum usability, and any later chosen add-ons that materially improve the museum loop without redefining the rest of the modlist.

### Suggested Options

- Tracking support: `The Curator's Companion` as the leading companion mod for collection-state visibility.
- Patch support: `Legacy of the Dragonborn Patches (Official)` as the expected main patch package.
- Additional included ecosystem entries: keep the user-provided Nexus pages `13279`, `16080`, and `131107` in the LoTD support bucket for this modlist.
- Additional submods: only add museum-side submods or display extensions if they solve a real usability or integration problem in the finalized stack.

### Risks To Check

- `Legacy of the Dragonborn` can quietly drag the whole load order toward completionist design even when another section wants a lighter exploration tone.
- It increases patching pressure across quests, artifacts, and world-content mods, so late list churn becomes more expensive.
- Museum-first progression can change the perceived value of loot and unique-item mods in ways that affect later curation decisions.
- Utility add-ons can accumulate quickly if every museum friction point gets its own extra plugin.

## What Elder Wilds Should Prioritize

- A clear decision that `Legacy of the Dragonborn` is part of the list's identity, not a maybe-later branch.
- Clean museum integration for any finalized supported quest or artifact mods.
- Preservation of explicitly requested LoTD-related additions even where exact mod titles still need to be re-read from Nexus in a browser session.
- Disciplined patch selection tied to real chosen mods rather than speculative future content.
- A museum loop that complements exploration and world-content goals instead of overwhelming them.
- Clear documentation of which later sections are expected to account for `Legacy of the Dragonborn` support.

## Research Tasks

- Verify the canonical Nexus page for `Legacy of the Dragonborn` before adding it to `mods-checklist.md`. **Verified: <https://www.nexusmods.com/skyrimspecialedition/mods/11802>**
- Verify the canonical Nexus page for `The Curator's Companion` before adding it to `mods-checklist.md`. **Verified: <https://www.nexusmods.com/skyrimspecialedition/mods/38529>**
- Verify the canonical Nexus page for `Legacy of the Dragonborn Patches (Official)` before adding it to `mods-checklist.md`. **Verified: <https://www.nexusmods.com/skyrimspecialedition/mods/30980>**
- Re-open the user-provided Nexus pages `13279`, `16080`, and `131107` in an interactive browser session later to record their exact canonical mod titles alongside the already-supplied URLs.
- As `modlist-08.md` and later content sections expand, record which chosen mods have official `Legacy of the Dragonborn` support and which require third-party patches.
- Decide whether any museum-side submods beyond `The Curators Companion` are justified by actual play friction rather than by ecosystem sprawl.
- Check whether storage, display activation, and museum progression create any conflicts with the intended roleplay and pacing tone of `Elder Wilds`.

## Acceptance Criteria

- `Elder Wilds` explicitly treats `Legacy of the Dragonborn` as a supported core content pillar.
- The master mod, key companion utility, and official patch collection are identified in one dedicated section file.
- Later quest and content decisions can refer back to a clear `Legacy of the Dragonborn` integration policy.
- Only verified Nexus URLs should be added to `mods-checklist.md` once link verification is complete.
