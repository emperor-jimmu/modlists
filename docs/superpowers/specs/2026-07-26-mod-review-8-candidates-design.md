# Mod Review: 8 Candidate Mods — Design Doc

**Date**: 2026-07-26
**Session**: Mod candidate evaluation for Driftwood modpack (NeoForge 1.21.1)

## Context

Eight mod candidates were submitted for review. Each was evaluated against:
- NeoForge 1.21.1 compatibility
- Redundancy with existing mods
- The four pillars (power fantasy, easy-to-standard curve, 200h+ runway, chill living)
- Performance impact (target: 70-80 FPS on RTX 4080 SUPER, 4K, Complementary Unbound shaders)
- Integration rule (every mod must connect to at least one other mod's progression)
- Chill Rule (nothing hostile to idle play)

## Decisions

### Added

| Mod | Wave | Section | Justification |
|-----|------|---------|---------------|
| Chunky (Forge/NeoForge) | Wave 0 | Infrastructure | Zero dependencies, zero conflicts. Pregenerates chunks to eliminate exploration stutter. Complements NoisiumForked (faster gen) and Distant Horizons (LOD). Used once per world via `/chunky` commands. |

### Skipped

| Mod | Reason |
|-----|--------|
| Physics Mod | History of bugs with 3D Skin Layers (memory leak, v2.6.9) and Iris (red tint, v2.6.8). Both in the pack. 58.9 MB for effectively just ragdolls (collapsing structures must be disabled per Chill Rule). Individual feature toggles and ragdoll limits exist, but risk profile too high. |
| Panda's Falling Trees | User preference. Tree-felling is QoL but not essential to the pack vision. |
| EnhancedVisuals | Overlaps with Camera Overhaul (screen shake) and Effectual (atmospheric effects). Damage vignettes risk conflicting with Chill Rule during building sessions. CreativeCore dependency is already in the pack — zero dependency cost, but content overlap kills it. |
| Alex's Mobs (Unofficial Port) | Requires unofficial Citadel port (same author, Raguto). Both ports 6 months without updates. High fragility risk. User opted against creature mod alternatives (Naturalist, Critters & Companions, Friends&Foes) — current mob lineup sufficient. |
| C2ME NeoForge | Parallelizes chunk generation but warns of mod worldgen incompatibility. NoisiumForked (algorithmic optimization) + ModernFix (bottleneck patches) already cover chunk-gen performance for singleplayer. Seed non-determinism issue makes terrain unpredictable with Terralith + Tectonic. |
| Patrix 32x | 32x PBR resource pack — "significantly heavier than other packs at the same resolution." Incomplete mob/item coverage creates visual inconsistency. Current 16x pack lineup is lighter, complete, and already tested at target FPS. |

### Blocked (Hard Reject)

| Mod | Reason |
|-----|--------|
| JJThunder To The Max | "No known compatibilities with other world generation mods/datapacks." Would break Terralith, Tectonic, BetterEnd, Darker Depths, and all YUNG's structure mods. Mario platformer theme doesn't match pack aesthetic. |

## Implementation Tasks

### Add Chunky to Wave 0

1. Add Chunky to GUIDE.md Wave 0 Infrastructure section with:
   - Mod table entry (CurseForge link)
   - `/chunky` command documentation in First Launch Checklist
   - Recommended radius: 5000 blocks for initial world setup
2. Add to STATUS.md under "Added Mods"
3. No config overrides needed (command-line tool, no gameplay config)

### STATUS.md Update

- Add "Mod Review — 8 Candidates (Jul 2026)" section under Completed Decisions documenting all outcomes
