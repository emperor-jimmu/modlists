= Advanced Strategy Guide

== Optimizing for Modded Gameplay

Heavy mods require tweaking to maintain stable FPS:

=== Memory and Performance

- Install *HeapAdjuster* or *HeapLimitAdjuster* for memory limit increases
- Use *Gameconfig.xml* tuned to your RAM (8GB/16GB/32GB variants exist)
- Set *-GPUCount* and *-availablevidmem* launch parameters in Steam/RGL
- Disable VSync in-game, cap FPS via GPU driver

=== Load Order

ASI mods load alphabetically from the root folder. If two ASI mods conflict:
1. Rename one to load later (e.g., *zzz_myMod.asi* loads last)
2. Check each mod's documentation for recommended load position

=== Troubleshooting

#table(
  columns: (auto, auto),
  [*Symptom*], [*Likely Fix*],
  [Crash on startup], [Outdated ScriptHookV or missing Gameconfig.xml],
  [Crash on loading save], [Corrupted save or missing mod dependency],
  [Textures not loading], [Packfile limit reached — use HeapAdjuster],
  [Infinite loading screen], [Conflicting .rpf mods — check *mods* folder],
  [FPS drops], [Too many 4K textures — reduce texture quality],
)

== Hidden Content Routes

With content mods installed, explore:
- (To be documented with specific mod content)
