# Modlists

A monorepo for building, storing, and maintaining game modlists. Each modlist lives in its own directory at the project root with full git history preserved.

## Collection

A root-level directory is a modlist iff it contains its own `AGENTS.md` — the repo's directory listing is the current index, so this file never needs to be updated when a modlist is added. For example:

- [`minecraft/`](./minecraft/) — Minecraft modpack (NeoForge 1.21.1)
- [`skyrim/`](./skyrim/) — Skyrim SE modlist

Each modlist directory is self-contained, with its own `AGENTS.md` (project instructions), guides, config, and build scripts.

## Adding a new modlist

### From an existing GitHub repo

```bash
# Add the repo as a remote (one time)
git remote add <name> <github-url>

# Pull it into the monorepo as a subtree
git subtree add --prefix=<name> <name> main

# Remove the remote (optional — keeps it clean; old repo stays on GitHub)
git remote remove <name>
```

**Example** — adding an existing Skyrim modlist:

```bash
git remote add skyrim https://github.com/emperor-jimmu/skyrim-modlist.git
git subtree add --prefix=skyrim skyrim main
git remote remove skyrim
```

### From scratch (new modlist)

```bash
mkdir -p <name>
# Start developing — add files, commit normally
```

Either way, finish by creating `<name>/AGENTS.md` — that file is what defines the directory as a modlist.

## Working with modlists

- **Add files**: `git add <name>/<file>` — standard git
- **Commit**: `git commit` — all modlists share one commit history
- **Push**: `git push` — the whole collection goes together
- **Each modlist's config/docs**: each `<name>/` directory is self-contained, with its own `AGENTS.md`, config files, guides, etc.

### Syncing back to a standalone repo (if needed)

```bash
git subtree push --prefix=<name> <remote> <branch>
```

## Structure

```bash
README.md               # collection guide (this file)
AGENTS.md               # agent instructions
<name>/                 # one directory per modlist — any number
├── AGENTS.md           # marks this directory as a modlist
└── ...                 # config, guides, build scripts, assets
minecraft/              # example modlist
├── config/
├── datapacks/
├── AGENTS.md
├── GUIDE.md
└── ...
```

## Requirements

- Git 2.x+
