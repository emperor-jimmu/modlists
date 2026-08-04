#import "../../theme.typ": *

== How the Modlist Works

The modlist is *the owner's list*. This project never researches, validates, or adds mods — every entry below is supplied by the owner, and every entry is treated as authoritative. What this chapter does is define the rules the list plays by, and show exactly how an entry is written.

=== Wave Rules

Each wave has its own mod philosophy, and it is a hard rule:

- *Wave 0 — vanilla + UI/QoL only.* Wave 0 mods exist to make the game easier to *see*, easier to *operate*, or easier to *plan*. Nothing in this wave may change combat balance, damage, monster stats, drops, or any gameplay value.
- *Waves 1 and 2 — content + mechanics, no pure power spikes.* A mod is welcome here if it adds content (new monsters, moves, areas, equipment paths, difficulty variants) or new mechanics, or changes systems in a way that creates decisions or trade-offs. A mod is *not* welcome if it is a pure power spike: it simply makes the hunter stronger (more damage, more health, better drops) with no new content, no new mechanics, and no cost.

#note[
  "No pure power spikes" does not mean "no strong mods" — it means strength must arrive *through* content or mechanics, not instead of them. When a card is ambiguous, the owner decides.
]

=== Compatibility Target

Everything in this list targets game version *16.0.3.1* (latest 16.x patch on PC/Steam). The owner records version or release-date information on each card when available; per project rule, that information is used as the compatibility heuristic against the target — the project itself performs no verification.

=== Entry Format

Each mod is one card with four fields. Missing fields are marked "User to provide" — never invented:

- *Name + URL* — clickable link to the mod's page, exactly as the owner supplies it.
- *Dependencies* — mods or frameworks that must be installed first (in FM5000, install these before the mod itself).
- *System / mechanic impact* — what the mod changes and how it affects play.
- *Notes* — load order, configuration, quirks, anything else worth knowing.

Cards are written in the wave files that follow using the `modcard` helper. When the owner adds a mod, it is one function call:

```typ
#modcard(
  "Mod name",
  url: "https://example.com/mod-page",
  version: "1.2.3 (optional)",
  deps: "REFramework — install first (user-supplied)",
  impact: "What the mod changes in play.",
  notes: "Load order / config notes, or leave out.",
)
```

=== Conflicts

If two mods collide (they overwrite the same files, or must never be enabled together), the resolution is recorded in `conflicts-mods.md` — a user-owned note file that is *not* included in this PDF. Load-order fixes are applied in Fluffy Manager 5000 (lower in the list wins) and noted on the affected cards.

=== Current State

The wave modlist sections below currently contain *templates only* — the entries themselves are pending owner input. The cards are placeholders; the rules above are already in force for whatever the owner adds.
