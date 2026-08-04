#import "../../theme.typ": *

== Wave 0 — Foundations (Vanilla + UI/QoL)

Wave 0 is the beginner's wave: the game plays vanilla, with mods that only make it easier to *see*, *operate*, and *plan*.

#pending[Wave 0 modlist — owner input required]

=== Rules for This Wave

- *UI & QoL only.* Mods may change the interface, the camera, inventory ergonomics, information display, or performance. They may not change combat balance, monster behavior, drops, or any gameplay value.
- Anything that alters gameplay stats or mechanics belongs to Wave 1+ and must clear the power-spike gate there.

=== Template Card

When the owner supplies an entry, replace the placeholders below. Duplicate the card for each additional mod.

#modcard(
  "Mod name — user to provide",
  url: none,
  version: none,
  deps: none,
  impact: none,
  notes: none,
)

```typ
#modcard(
  "Mod name",
  url: "https://example.com/mod-page",
  version: "1.0.0",
  deps: "none, or REFramework (install first)",
  impact: "What it changes in play.",
  notes: "Load order / config notes.",
)
```

#note[
  Wave 0's QoL base is the one layer that stays relevant in every later wave. If a Wave 0 mod proves essential, the owner may keep it enabled across waves — note that on the card.
]
