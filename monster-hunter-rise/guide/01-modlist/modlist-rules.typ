#import "../../theme.typ": *

== How the Modlist Works

The modlist is *the owner's list*. Entries are added only at the owner's direction — and when the owner asks the project to research mods (as it did for Wave 0's UI/UX + graphics focus), every entry is a real, verifiable mod with a real link; nothing is ever invented. This chapter defines the rules the list plays by and shows exactly how an entry is written.

=== Wave Rules

Each wave has its own mod philosophy, and it is a hard rule:

- *Wave 0 — vanilla + UI/QoL only.* Wave 0 mods exist to make the game easier to *see*, easier to *operate*, or easier to *plan*. Nothing in this wave may change combat balance, damage, monster stats, drops, or any gameplay value.
- *Waves 1 and 2 — content + mechanics, no pure power spikes.* A mod is welcome here if it adds content (new monsters, moves, areas, equipment paths, difficulty variants) or new mechanics, or changes systems in a way that creates decisions or trade-offs. A mod is *not* welcome if it is a pure power spike: it simply makes the hunter stronger (more damage, more health, better drops) with no new content, no new mechanics, and no cost.

#note[
  "No pure power spikes" does not mean "no strong mods" — it means strength must arrive *through* content or mechanics, not instead of them. When a card is ambiguous, the owner decides.
]

=== Compatibility Target

Everything in this list targets game version *16.0.3.1* (latest 16.x patch on PC/Steam). The owner records version or release-date information on each card when available; per project rule, that information is used as the compatibility heuristic against the target — the project itself performs no verification.

=== Conflicts

If two mods collide (they overwrite the same files, or must never be enabled together), the resolution is recorded in `conflicts-mods.md` — a user-owned note file that is *not* included in this PDF. Load-order fixes are applied in Fluffy Manager 5000 (lower in the list wins) and noted on the affected cards.

=== Current State

Wave 0 is populated (UI/UX + graphics). Waves 1 and 2 below still contain templates only — their entries await the owner's direction.
