# Modlists

A monorepo for building, storing, and maintaining game modlists. Each modlist lives in its own directory at the project root with full git history preserved.

## Collection

| Modlist   | Game                        | Directory                    | Status |
|-----------|-----------------------------|------------------------------|--------|
| Arma 3    | Arma 3                      | [`arma3/`](./arma3/)         | Active |
| Minecraft | Minecraft (NeoForge 1.21.1) | [`minecraft/`](./minecraft/) | Active |
| Skyrim    | Skyrim SE                   | [`skyrim/`](./skyrim/)       | Active |
| Cyberpunk | Cyberpunk 2077              | [`cyberpunk/`](./cyberpunk/) | Active |
| ETS2      | Euro Truck Simulator 2      | [`ets2/`](./ets2/)           | Active |
| GTA IV    | Grand Theft Auto IV         | [`gtaiv/`](./gtaiv/)         | Active |
| GTA V     | Grand Theft Auto V          | [`gtav/`](./gtav/)           | Active |
| RDR2      | Red Dead Redemption 2       | [`rdr2/`](./rdr2/)           | Active |
| RimWorld  | RimWorld                    | [`rimworld/`](./rimworld/)   | Active |
| Starfield | Starfield                   | [`starfield/`](./starfield/) | Active |
| X4        | X4: Foundations             | [`x4-foundations/`](./x4-foundations/) | Active |

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
arma3/                  # Arma 3 modlist
├── AGENTS.md
└── ...
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
gtaiv/                  # Grand Theft Auto IV modlist
├── AGENTS.md
└── ...
gtav/                   # Grand Theft Auto V modlist
├── AGENTS.md
└── ...
rdr2/                   # Red Dead Redemption 2 modlist
├── AGENTS.md
└── ...
starfield/              # Starfield modlist
├── AGENTS.md
└── ...
x4-foundations/         # X4: Foundations modlist
├── AGENTS.md
└── ...
README.md               # collection index
AGENTS.md               # agent instructions
```

## Requirements

- Git 2.x+
