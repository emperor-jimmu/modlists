# PGPatcher

**MO2 Separator:** `Graphics` → `Graphics - PGPatcher`

## PGPatcher Workflow → `Graphics - PGPatcher`

### Core Idea

- `PGPatcher` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/120946> → `Graphics - PGPatcher`
- PGPatcher is a post-installation patcher that generates parallax and PBR-compatible meshes from the installed texture and mesh stack. It is not a texture or mesh mod itself — it analyses the installed assets and produces a generated patch.
- The patcher must run after the main texture, mesh, parallax, and PBR candidate set is mostly chosen, so it works against a stable asset baseline.

### Options

- Use route: install PGPatcher and run it after the texture and mesh stack is stable to generate parallax/PBR meshes.
- Skip route: rely on hand-authored parallax meshes included in individual texture packs and skip the post-processing patcher entirely.

### Recommendation

- Keep `PGPatcher` output in its own generated mod folder in `Mod Organizer 2`, separate from source mods. → `Graphics - PGPatcher`
- Run it after installing or changing PBR texture packs, parallax-enabled textures, or major mesh or parallax support mods that affect the same assets. → `Graphics - PGPatcher`
- Let the generated patch load after the source texture and mesh mods it supports. → `Graphics - PGPatcher`
- Re-run it whenever a major landscape, architecture, ruins, or clutter texture pack is replaced. → `Graphics - PGPatcher`
- Test the patched output in the same fixed scenes used by the graphics testing protocol in [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md). → `Graphics - PGPatcher`
- Only keep the generated output if it produces a visible improvement without new artifacts. → `Graphics - PGPatcher`
- PGPatcher is a hard requirement for mods such as `Steel Armor Redone - PBR and Complex Material` (see Characters & Creatures in [`modlist-graphics-shaders.md`](modlist-graphics-shaders.md)). → `Graphics - PGPatcher`

### Risks & Compatibility

- Running PGPatcher before the texture stack is stable means regenerating the patch each time a texture mod changes.
- The generated output can conflict with hand-authored parallax meshes — always test before committing the generated patch.

### Acceptance Criteria

- PGPatcher generates a clean patch without errors. → `Graphics - PGPatcher`
- The generated patch produces a visible improvement (depth, parallax, material response) without introducing new artifacts. → `Graphics - PGPatcher`
- The generated patch lives in its own dedicated MO2 mod, separate from source assets. → `Graphics - PGPatcher`
- The patch is re-generated whenever the installed texture or PBR stack changes. → `Graphics - PGPatcher`
