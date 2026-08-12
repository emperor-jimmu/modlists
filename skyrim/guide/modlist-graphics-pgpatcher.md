# PGPatcher

---

## PGPatcher Workflow

PGPatcher is a post-installation patcher that generates parallax and PBR-compatible meshes from the installed texture and mesh stack. It must run after the main texture, mesh, parallax, and PBR candidate set is mostly chosen so it works against a stable asset baseline.

| Mod                                                                     | Type     | Notes                                                                         |
|-------------------------------------------------------------------------|----------|-------------------------------------------------------------------------------|
| [PGPatcher](https://www.nexusmods.com/skyrimspecialedition/mods/120946) | Baseline | Post-installation parallax/PBR mesh generator. Keep output in own MO2 folder. |

### Workflow Rules

1. Run after installing/changing PBR texture packs, parallax-enabled textures, or major mesh/parallax support mods.
2. Let the generated patch load after the source texture/mesh mods it supports.
3. Re-run whenever a major landscape, architecture, ruins, or clutter texture pack is replaced.
4. Only keep generated output if it produces visible improvement without new artifacts.
5. Hard requirement for mods such as [Steel Armor Redone - PBR and Complex Material](https://www.nexusmods.com/skyrimspecialedition/mods/175453).

### Alternatives

- Skip route: rely on hand-authored parallax meshes from individual texture packs and skip post-processing entirely.

### Risks & Compatibility

- **Do not install Auto Parallax (79473) or Complex Parallax Materials (95134)** — PGPatcher replaces both (see → `Graphics - Community Shaders` → Parallax Framework Dependencies). Never add either as a dependency for a candidate mod.
- Running PGPatcher before the texture stack is stable means regenerating the patch each time a texture mod changes.
- Generated output can conflict with hand-authored parallax meshes — always test before committing the generated patch.
