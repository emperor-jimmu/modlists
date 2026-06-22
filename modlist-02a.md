# PGPatcher

**MO2 Separator:** `02 Graphics` → `02a PGPatcher`

## PGPatcher Workflow → `02a`

### Core Idea

- `PGPatcher` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/120946> → `02a`
- PGPatcher is a post-installation patcher that generates parallax and PBR-compatible meshes from the installed texture and mesh stack. It is not a texture or mesh mod itself — it analyses the installed assets and produces a generated patch.
- The patcher must run after the main texture, mesh, parallax, and PBR candidate set is mostly chosen, so it works against a stable asset baseline.

### Recommendation

- Keep `PGPatcher` output in its own generated mod folder in `Mod Organizer 2`, separate from source mods. → `02a`
- Run it after installing or changing PBR texture packs, parallax-enabled textures, or major mesh or parallax support mods that affect the same assets. → `02a`
- Let the generated patch load after the source texture and mesh mods it supports. → `02a`
- Re-run it whenever a major landscape, architecture, ruins, or clutter texture pack is replaced. → `02a`
- Test the patched output in the same fixed scenes used by the graphics testing protocol in [`modlist-02b.md`](modlist-02b.md). → `02a`
- Only keep the generated output if it produces a visible improvement without new artifacts. → `02a`
- PGPatcher is a hard requirement for mods such as `Steel Armor Redone - PBR and Complex Material` (see Characters & Creatures in [`modlist-02b.md`](modlist-02b.md)). → `02a`

### Risks & Compatibility

- Running PGPatcher before the texture stack is stable means regenerating the patch each time a texture mod changes.
- The generated output can conflict with hand-authored parallax meshes — always test before committing the generated patch.

### Acceptance Criteria

- PGPatcher generates a clean patch without errors. → `02a`
- The generated patch produces a visible improvement (depth, parallax, material response) without introducing new artifacts. → `02a`
- The generated patch lives in its own dedicated MO2 mod, separate from source assets. → `02a`
- The patch is re-generated whenever the installed texture or PBR stack changes. → `02a`
