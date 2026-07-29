# Modlists

A monorepo for building, storing, and maintaining game modlists. Each modlist lives in its own directory under `modlists/` with full git history preserved.

## Collection

| Modlist | Game | Directory | Status |
|---------|------|-----------|--------|
| Minecraft Setup | Minecraft (NeoForge 1.21.1) | [`modlists/minecraft-setup/`](./modlists/minecraft-setup/) | Active |

## Adding a new modlist

### From an existing GitHub repo

```bash
# Add the repo as a remote (one time)
git remote add <name> <github-url>

# Pull it into the monorepo as a subtree
git subtree add --prefix=modlists/<name> <name> main

# Remove the remote (optional — keeps it clean; old repo stays on GitHub)
git remote remove <name>
```

**Example** — adding an existing Skyrim modlist:

```bash
git remote add skyrim https://github.com/you/skyrim-modlist.git
git subtree add --prefix=modlists/skyrim skyrim main
git remote remove skyrim
```

### From scratch (new modlist)

```bash
mkdir -p modlists/<name>
# Start developing — add files, commit normally
```

## Working with modlists

- **Add files**: `git add modlists/<name>/<file>` — standard git
- **Commit**: `git commit` — all modlists share one commit history
- **Push**: `git push` — the whole collection goes together
- **Each modlist's config/docs**: each `modlists/<name>/` directory is self-contained, with its own `AGENTS.md`, config files, guides, etc.

### Syncing back to a standalone repo (if needed)

```bash
git subtree push --prefix=modlists/<name> <remote> <branch>
```

## Structure

```
modlists/
├── minecraft-setup/        # Minecraft modpack (NeoForge 1.21.1)
│   ├── config/
│   ├── datapacks/
│   ├── AGENTS.md
│   ├── GUIDE.md
│   └── ...
├── README.md               # collection index
```

## Requirements

- Git 2.x+
