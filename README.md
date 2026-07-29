# Modlists

A monorepo for building, storing, and maintaining game modlists. Each modlist lives in its own directory at the project root with full git history preserved.

## Collection

| Modlist   | Game                        | Directory                    | Status |
|-----------|-----------------------------|------------------------------|--------|
| Minecraft | Minecraft (NeoForge 1.21.1) | [`minecraft/`](./minecraft/) | Active |
| Skyrim    | Skyrim SE                   | [`skyrim/`](./skyrim/)       | Active |
| Cyberpunk | Cyberpunk 2077              | [`cyberpunk/`](./cyberpunk/) | Active |
| ETS2      | Euro Truck Simulator 2      | [`ets2/`](./ets2/)           | Active |
| RimWorld  | RimWorld                    | [`rimworld/`](./rimworld/)   | Active |

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
minecraft/              # Minecraft modpack (NeoForge 1.21.1)
├── config/
├── datapacks/
├── AGENTS.md
├── GUIDE.md
└── ...
skyrim/                 # Skyrim SE modlist
├── AGENTS.md
└── ...
cyberpunk/              # Cyberpunk 2077 modlist
├── AGENTS.md
└── ...
ets2/                   # Euro Truck Simulator 2 modlist
├── AGENTS.md
└── ...
rimworld/               # RimWorld modlist
├── AGENTS.md
└── ...
production/             # Production deployment config
README.md               # collection index
AGENTS.md               # agent instructions
```

## Requirements

- Git 2.x+
