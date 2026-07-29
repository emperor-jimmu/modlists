# World Progression Philosophy

> **Adopted Combination:** `#1` — **Static with Hard Threat** (see [Suggested Combinations](#suggested-combinations)). The static-with-threat dial is the base; the "Living the World" pillar is layered on top — the home is a real anchor (survival warmth, food, rest, family), and the player quests when they want, not on the main quest's clock.

This document owns the design dial that connects four concerns: **leveling**, **encounter zones**, **loot distribution**, and **difficulty**. They are not independent picks — change one and the other three shift. The modlist's section files cite this document when they need to justify a concrete pick.

No concrete mod picks live here. The owning sections (notably → [Crafting & Economy](modlist-expanded-crafting.md) for loot distribution, → [Survival, Difficulty, and Balance](modlist-survival-combat.md) for encounter zones and difficulty) make the final call. This document presents the three styles, analyzes them across shared axes, and ends with **suggested combinations** for different list identities — the curator picks the combination that matches the list's intent.

**Tagging convention:** Mods in the section files are tagged in a `Dial` column with one or more combination codes (`#1`, `#2`, `#3`, `#4`, `all`, `none`). `#1` is the adopted combination for Elder Wilds; mods tagged `#1` (or `all`) are on-dial, others are off-dial for the list's intent and need explicit justification.

---

## The Three Styles

**Deleveled** — World no longer scales to the player. A Bandit Chief is dangerous at level 1 and level 50; loot tables are decoupled from player level so a high-tier weapon can be found in a low-level dungeon. `Open World Loot` (SkyPatched) is the locked implementation.

**Static Leveling** — World is fixed but the loot tables are hand-curated rather than the messy vanilla lists. Top-tier gear is rare, but it isn't gated behind specific zones — it's gated behind a curated drop table that the player learns over time. `Open World Loot` (default philosophy) is the closest popular implementation.

**Vanilla With Curated Lists** — Keep leveled lists essentially as Bethesda shipped them, but curate content additions (new weapons, armors, jewelry) to fit the existing economy rather than inflating it. The base game is the default; new items plug in cleanly. `Trade and Barter` style interventions, content packs that match vanilla tier-spread, light Rarity-style interference at the edges.

---

## The Interlocked Dial

The four concerns are coupled, and the dial really has **six knobs** — the four named plus the **experience mod** (how fast the player levels and what skill-ups do) and the **perks overhaul** (what perks do and how perk points are spent). All six need to sing together or the list feels incoherent:

- **Leveling style** (deleveled / static / vanilla) — what gear the world offers at what level.
- **Encounter zones** — what threat the world offers at what location.
- **Loot distribution** — what the player can actually pick up off that threat.
- **Difficulty** — how hard any given encounter feels.
- **Experience mod** — how fast the player accumulates levels and skill-ups relative to those four knobs.
- **Perks overhaul** — what the player can build into, which determines whether a given dial feels like a wall or a puzzle.

Common failure patterns when the six knobs don't sing:

- **Deleveled loot + encounter-zone overhaul** stacks gating. The world closes in fast; progression has to come from skill, knowledge, and LoTD-style meta-progression, not from better gear.
- **Vanilla loot + no encounter overhaul** produces the canonical problem: by level 30, glass and ebony are everywhere and nothing feels like a reward.
- **Static loot + encounter-zone overhaul** is the most common "modern list" dial — it gates the *threat* without gating the *gear*, so the player feels strong against a curated threat ladder.
- **Deleveled loot + survival framework** can overshoot into punitive early-game, especially in cold biomes where food and warmth are themselves scarce.
- **Heavy perks overhaul + fast XP** floods the player with build options before they've explored the world — the list feels like a build simulator rather than a world.
- **Vanilla perks + slow XP + deleveled loot** starves the player of both gear and build options; every fight is a coin-flip.
- **Heavy perks overhaul + deleveled loot** is actually a *natural* pairing: the player can build into a counter for any encounter the world throws at them, which softens delevel's flat-late-game problem and gives the perks tree real purpose.

A list that locks a strong position on one or two knobs without thinking through the other four will feel incoherent. This document is the place to think it through.

---

## Deleveled

### Power Fantasy

Late-game power fantasy is **weaker**: the world never feels "below you" because the world is the world. Early-game power fantasy is **stronger in a punishing way**: nothing hands you gear, you have to earn every step. For a list that wants the player to feel small and threatened, this is the right dial. For a list that wants the player to feel like they're growing into a legend, it can feel like the dial never moves.

### Longterm Play

**Excellent for replayability** — knowing where the best gear is, or where the hardest fights are, doesn't trivialize the playthrough because the player level doesn't unlock anything. A new character in six months has the same discovery space. **Weak for in-list long-term progression** — if the player plans to spend 200+ hours in a single character, the lack of a power curve can feel flat late.

### Exploration & Discovery

**Excellent incentive structure.** "I should go everywhere, because anything I find could be a game-changer." Pairs well with `Legacy of the Dragonborn` (museum-as-reward) and big-world lists. A high-tier weapon found at level 5 is a story, not a balance violation.

### NPC & Encounter Balance

NPCs stay dangerous; the curve is flat. Pairs cleanly with encounter-zone overhauls that *add* a curve (so the world still has a sense of progression through the map even if the player's gear doesn't track). The risk is the **over-gated trap**: delevel + encounter overhaul + harsh survival + low early-game loot = the first ten levels feel like a wall. `Survival & Combat` already flags this combination as the "overshoot from moody into over-gated" pattern.

### Modlist Synergy

**The hardest style to balance with content-heavy modlists.** Every new leveled-list mod (every new weapon, armor, jewelry, alchemy ingredient) has to be tested against the deleveled tables — does this new sword break the world at level 5? Does this new jewelry inflate the merchant economy? The more mods in the list, the more curation work. Lists that are content-rich (like this one, with Heavy Armory, Immersive Armors, Immersive Jewelry, Narrative Loot, C.O.I.N., etc.) pay a high cost for running deleveled.

### Risks

- Punitive early-game, especially combined with survival frameworks.
- Content-mod curation overhead scales with modlist size.
- Late-game power-fantasy curve can feel flat.
- Easy to over-gate when combined with encounter-zone overhauls.

### Experience & Perks

**Pairs naturally with a heavy perks overhaul and slow-to-moderate XP.** Without leveled lists to gate gear, the player's power growth comes almost entirely from perks and skill-ups, so a rich perks tree carries real weight and a fast-XP setup would front-load that growth. A heavy-perks / slow-XP / deleveled-loot triple is the cleanest expression of the "earn every step" fantasy. Vanilla perks with fast XP undermines this — the player levels up faster than they can spend points and the world still doesn't give them anything.

---

## Static Leveling

### Power Fantasy

**Balanced.** The player grows into a legend against a threat that also has structure. Late-game still feels earned because curated late-game loot is meaningfully better than curated early-game loot, but a high-level player isn't drowning in game-breaking gear. For a list that wants both the growth fantasy and the threat, this is the natural dial.

### Longterm Play

**Strong for in-list long-term progression** — the player has a 100-hour power curve, and curated loot tables mean the curve is well-paced. **Acceptable for replayability** — a new character will find roughly the same gear at the same general progression points, but the discovery of *where* is still open. LoTD-style meta-progression carries replayability.

### Exploration & Discovery

**Incentive structure is moderate.** "Go everywhere to find good gear" is still true, but the curve is shallower than deleveled because the player knows tier-1 zones won't drop tier-5 items. Pairs well with maps and markers, with the museum, and with curated content packs that respect the tier spread.

### NPC & Encounter Balance

**The cleanest combination with encounter-zone overhauls.** Encounter zones add a *spatial* progression (Whiterun hold is easier than the Rift, the Rift is easier than Skrim wide); static loot adds a *temporal* progression (early-game player has starter gear, late-game player has curated late-tier gear). The two dials don't fight.

### Modlist Synergy

**The most content-mod-friendly style.** New weapons, armors, jewelry, and ingredients slot into curated tier slots. A new weapon mod that adds ten glass-tier swords integrates naturally; the same mod in a deleveled list has to be tested for "does this break level-5 progression." Lists that are content-rich benefit from static's lower curation overhead.

### Risks

- The vanilla-curated-lists approach can feel like "vanilla with extra steps" if the curation isn't visibly better than Bethesda's default tables.
- Late-game still risks the glass/ebony-everywhere problem if the curator isn't careful with the tier-4 and tier-5 entries.
- Less distinctive than deleveled — the dial is "more polished" not "different feel."

### Experience & Perks

Pairs naturally with a heavy perks overhaul and a power-fantasy XP curve (high level cap, rewarding quest/discovery, no skill grinding). The player levels up faster than vanilla through quests and exploration while the static threat world keeps every level meaningful.

---

## Vanilla With Curated Lists

### Power Fantasy

**Closest to Bethesda's intent.** The player grows into a legend against a world that grows with them. Late-game the world hands you legendary glass and ebony because you earned it. For a list that wants to honor the original game and add modern systems on top, this is the right dial.

### Longterm Play

**Strong for in-list long-term progression** (same as static). **Weaker for replayability** — a new character finds the same gear in the same places at the same levels. The strongest replayability lever is `Legacy of the Dragonborn` (different museum-fill order, different artifact quest chains, different pacing) rather than the loot dial itself.

### Exploration & Discovery

**Weakest incentive structure of the three styles.** The player learns the loot ladder quickly and the motivation to "go everywhere" weakens. Lists that want exploration incentive need to add it through other levers: `Legacy of the Dragonborn` museum-fill, Evolving Locations content, hand-placed world encounters, `Interesting NPCs` style content, etc.

### NPC & Encounter Balance

**Pairs cleanly with the least intervention.** Vanilla encounter zones + vanilla loot + light difficulty tuning produces a coherent, low-curation list. Adding heavy encounter-zone overhauls to vanilla loot often overshoots (the world gates but the gear doesn't, producing late-game "I'm level 50 in glass armor and a Bandit Chief one-shots me" frustration).

### Modlist Synergy

**The lowest curation overhead.** New content packs that respect vanilla tier-spread integrate trivially. The cost is that the list feels like "vanilla plus mods" rather than "a designed list."

### Risks

- Late-game loot inflation is the canonical failure mode of this style.
- Exploration incentive is weak; other systems have to carry it.
- Distinctiveness depends entirely on what you put on top of vanilla (art, content, mechanics) — the loot dial alone doesn't sell a list.
- Easy to under-tune and end up with the unmodded game's pacing problems.

### Experience & Perks

**Pairs naturally with vanilla or light perks and a moderate-to-fast XP curve.** The Bethesda-style growth fantasy works best when the player is unlocking perks at the rate Bethesda intended — fast enough to feel the build opening up, slow enough that the unlock matters. A heavy perks overhaul here can work, but the dial is doing less of the lifting, so the perks tree has to be the thing that makes the playthrough feel different. Slow XP with vanilla perks and vanilla loot produces a list that feels underpowered even at level 30 — the most common "is this modlist even on?" failure mode for this style.

---

## Suggested Combinations

These are **suggestions for different list identities**, not a ranking. The owning sections still pick the concrete mods; the combinations just steer those picks in compatible directions. The curator picks the combination that matches the list's intent.

### 1. "Big, Dark, Awe-Inspiring World" — Deleveled Or Static With Hard Threat

**Suggested dial:** Static leveling (preferred) or deleveled (committed), encounter-zone overhaul (`Arena` baseline or RiS Encounter Zones), harsher difficulty, deliberate loot scarcity at tier 1-2, **heavy perks overhaul (Simonrim-class depth) with slow-to-moderate XP** so the player's power growth comes from build choices against a flat world, not from gear inflation. Survival framework (cold, hunger, fatigue, disease) is on-dial — it makes the home a real anchor.

**What it serves:** Exploration that makes Skyrim feel vast and threatening. The player feels small, the world feels dangerous, gear feels earned, and the perks tree is the primary expression of "I'm getting stronger." Pairs naturally with `Legacy of the Dragonborn` because the museum becomes the player's long-term reward ladder. The "Living the World" layer sits on top: a player home with a family, choosing when to quest, living a life in between the dragon-born moments.

**Trade-offs:** High curation overhead for content mods if deleveled. Risk of over-gating early-game if survival and encounter overhaul stack. Late-game power curve depends heavily on the perks tree carrying it; a shallow perks overhaul breaks the fantasy.

**Owned by:** → [Crafting & Economy](modlist-expanded-crafting.md) for the loot-distribution mod, → [Survival, Difficulty, and Balance](modlist-survival-combat.md) for encounter-zone and difficulty mods.

### 2. "Living The World / Museum-And-Collection" — Vanilla With Curated Lists

**Suggested dial:** Vanilla with curated lists, light or no encounter-zone intervention, balanced difficulty (Simply Balanced tier), LoTD-anchored progression carrying the long-term reward ladder, **moderate perks overhaul (Path of the Berserker or Adamant tier) with vanilla-or-slightly-slow XP** to preserve Bethesda's growth pacing while giving the build a little more shape.

**What it serves:** A list that wants to add modern systems and lots of new content on top of a Skyrim that still feels like Skyrim. The museum is the meta-progression; the loot dial is "vanilla with polish, not overhaul." Honors Bethesda's pacing intent while modernizing everything around it.

**Trade-offs:** Late-game loot inflation is the canonical failure mode — mitigation is required curation of any new gear mods. Exploration incentive is weak; LoTD and content mods have to carry it. Distinctiveness depends on what you put on top. A heavy perks overhaul (Simonrim) here can overpower the "Skyrim that still feels like Skyrim" intent — the perks tree starts to feel like it's from a different game.

**Owned by:** → [Crafting & Economy](modlist-expanded-crafting.md) for trade-and-barter-style interventions and content-mod curation rules, → [Survival, Difficulty, and Balance](modlist-survival-combat.md) for minimal encounter-zone intervention and balanced difficulty.

### 3. "Power Fantasy" — Vanilla Or Static, Lenient

**Suggested dial:** Vanilla with curated lists (preferred) or static, no encounter-zone overhaul, lenient difficulty, **vanilla or light perks with vanilla-to-fast XP** so the growth fantasy matches Bethesda's intent. Late-game gear arrives as Bethesda intended; the player becomes a legend.

**What it serves:** A list that wants the player to feel like a growing hero, not a survivor. Pairs well with the "Dragonborn quest as the spine" playstyle — if the user is going to play the main quest, the loot dial should support that arc.

**Trade-offs:** Same late-game inflation risk as combination 2. Risk of feeling like an unmodded game in the first 20 levels. Exploration incentive is the weakest of the three styles; needs other systems to compensate. A heavy perks overhaul contradicts the "Bethesda's growth pacing" intent and tends to overshoot into a build-simulator feel by mid-game.

**Owned by:** → [Crafting & Economy](modlist-expanded-crafting.md) for trade-and-barter and minimal loot intervention, → [Survival, Difficulty, and Balance](modlist-survival-combat.md) for the lenient difficulty pick and minimal encounter-zone changes.

### 4. "Longterm Replayability" — Static, Moderate Gating, Tunable Difficulty

**Suggested dial:** Static leveling, moderate encounter-zone intervention (Arena tier, not harsher), difficulty mod with tuning knobs (Simply Balanced, not Blade and Blunt), curated content packs that respect the tier spread, **moderate-to-heavy perks overhaul (Path of the Berserker or Simonrim tier) with moderate XP** so a new character has a fresh build-puzzle to work through every restart.

**What it serves:** A list the curator wants to come back to in six months and start fresh. Static gives the new character a fresh-but-familiar power curve; moderate encounter-zone intervention gives the world structure without punishing early exploration; a tunable difficulty mod lets the new character be tuned up or down as the player prefers; a moderate-to-heavy perks overhaul means each new character has a different build to commit to.

**Trade-offs:** Static-with-curated-lists is the most balanced but the least distinctive dial — the list has to differentiate through art, content, and mechanics. The "vanilla-with-extra-steps" risk is real.

**Owned by:** → [Crafting & Economy](modlist-expanded-crafting.md) for the static-with-curated-lists implementation (Open World Loot default or hand-rolled curated leveled lists), → [Survival, Difficulty, and Balance](modlist-survival-combat.md) for moderate encounter-zone changes and tunable difficulty.

---

## How To Use This Document

When a section file picks a mod that touches the loot / encounter / difficulty / XP / perks dial, it should briefly note which **suggested combination** the pick serves. Example: "Picking `Open World Loot` (curated default) supports combination 1 (Big, Dark, World) or 4 (Longterm Replayability) and is not the right pick for combination 3 (Power Fantasy / vanilla-loot)."

When two sections make picks that would push the list toward different combinations, the conflict is a signal to revisit this document and pick the combination explicitly. The document does not own the final answer — it owns the framework for making the answer coherent. The owning sections for the six knobs are: → [Crafting & Economy](modlist-expanded-crafting.md) (loot distribution), → [Survival, Difficulty, and Balance](modlist-survival-combat.md) (encounter zones + difficulty), → [Magic & Perks](modlist-expanded-magic.md) (perks overhaul + XP mod), with → [Character & Progression](modlist-expanded-character.md) holding the cross-cutting growth philosophy.
