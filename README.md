# Modlists

A monorepo for building, storing, and maintaining game modlists. Each modlist lives in its own directory at the project root with full git history preserved.

## Collection

| Modlist         | Game                            | Directory                                          | Status |
|-----------------|---------------------------------|----------------------------------------------------|--------|
| Arma 3          | Arma 3                          | [`arma3/`](./arma3/)                               | Active |
| Automobilista 2 | Automobilista 2                | [`automobilista-2/`](./automobilista-2/)           | Active |
| Assetto Corsa   | Assetto Corsa                   | [`asseto-corsa/`](./asseto-corsa/)                 | Active |
| Baldur's Gate 3 | Baldur's Gate 3                 | [`baldurs-gate-3/`](./baldurs-gate-3/)             | Active |
| CK3             | Crusader Kings 3                | [`ck3/`](./ck3/)                                   | Active |
| Minecraft       | Minecraft (NeoForge 1.21.1)     | [`minecraft/`](./minecraft/)                       | Active |
| Project Zomboid | Project Zomboid                 | [`project-zomboid/`](./project-zomboid/)           | Active |
| Skyrim          | Skyrim SE                       | [`skyrim/`](./skyrim/)                             | Active |
| Cyberpunk       | Cyberpunk 2077                  | [`cyberpunk/`](./cyberpunk/)                       | Active |
| ETS2            | Euro Truck Simulator 2          | [`ets2/`](./ets2/)                                 | Active |
| Fallout 4       | Fallout 4                       | [`fallout-4/`](./fallout-4/)                       | Active |
| Factorio        | Factorio                        | [`factorio/`](./factorio/)                         | Active |
| F1 25           | F1 25                           | [`f1-25/`](./f1-25/)                               | Active |
| FS25            | Farming Simulator 25            | [`fs25/`](./fs25/)                                 | Active |
| GTA IV          | Grand Theft Auto IV             | [`gtaiv/`](./gtaiv/)                               | Active |
| GTA V           | Grand Theft Auto V              | [`gtav/`](./gtav/)                                 | Active |
| Kenshi          | Kenshi                          | [`kenshi/`](./kenshi/)                             | Active |
| KSP             | Kerbal Space Program            | [`kerbal-space-program/`](./kerbal-space-program/) | Active |
| Mass Effect     | Mass Effect (Legendary Edition) | [`masseffect/`](./masseffect/)                     | Active |
| M&B II          | Mount & Blade II: Bannerlord    | [`mb2-bannerlord/`](./mb2-bannerlord/)             | Active |
| Open Rails      | Open Rails                      | [`open-rails/`](./open-rails/)                     | Active |
| Oxygen Not Included | Oxygen Not Included          | [`oxygen-not-included/`](./oxygen-not-included/)   | Active |
| RDR2            | Red Dead Redemption 2           | [`rdr2/`](./rdr2/)                                 | Active |
| Shogun 2        | Total War: Shogun 2             | [`shogun2/`](./shogun2/)                           | Active |
| RimWorld        | RimWorld                        | [`rimworld/`](./rimworld/)                         | Active |
| Starfield       | Starfield                       | [`starfield/`](./starfield/)                       | Active |
| Starbound       | Starbound                       | [`starbound/`](./starbound/)                       | Active |
| Stardew Valley  | Stardew Valley                  | [`stardew-valley/`](./stardew-valley/)             | Active |
| Stellaris       | Stellaris                       | [`stellaris/`](./stellaris/)                       | Active |
| Terraria        | Terraria                        | [`terraria/`](./terraria/)                         | Active |
| Three Kingdoms  | Total War: Three Kingdoms       | [`threekingdoms/`](./threekingdoms/)               | Active |
| Warhammer 3     | Total War: Warhammer 3          | [`warhammer-3/`](./warhammer-3/)                   | Active |
| Witcher 3       | The Witcher 3                   | [`witcher-3/`](./witcher-3/)                       | Active |
| X4              | X4: Foundations                 | [`x4-foundations/`](./x4-foundations/)             | Active |

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
asseto-corsa/           # Assetto Corsa modlist
├── AGENTS.md
└── ...
automobilista-2/        # Automobilista 2 modlist
├── AGENTS.md
└── ...
baldurs-gate-3/         # Baldur's Gate 3 modlist
├── AGENTS.md
└── ...
ck3/                    # Crusader Kings 3 modlist
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
fallout-4/              # Fallout 4 modlist
├── AGENTS.md
└── ...
factorio/               # Factorio modlist
├── AGENTS.md
└── ...
f1-25/                  # F1 25 modlist
├── AGENTS.md
└── ...
fs25/                   # Farming Simulator 25 modlist
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
kerbal-space-program/   # Kerbal Space Program modlist
├── AGENTS.md
└── ...
kenshi/                 # Kenshi modlist
├── AGENTS.md
└── ...
masseffect/             # Mass Effect Legendary Edition modlist
├── AGENTS.md
└── ...
mb2-bannerlord/         # Mount & Blade II: Bannerlord modlist
├── AGENTS.md
└── ...
open-rails/             # Open Rails modlist
├── AGENTS.md
└── ...
oxygen-not-included/    # Oxygen Not Included modlist
├── AGENTS.md
└── ...
project-zomboid/        # Project Zomboid modlist
├── AGENTS.md
└── ...
rdr2/                   # Red Dead Redemption 2 modlist
├── AGENTS.md
└── ...
shogun2/                # Total War: Shogun 2 modlist
├── AGENTS.md
└── ...
starfield/              # Starfield modlist
├── AGENTS.md
└── ...
starbound/              # Starbound modlist
├── AGENTS.md
└── ...
stardew-valley/         # Stardew Valley modlist
├── AGENTS.md
└── ...
stellaris/              # Stellaris modlist
├── AGENTS.md
└── ...
terraria/               # Terraria modlist
├── AGENTS.md
└── ...
threekingdoms/          # Total War: Three Kingdoms modlist
├── AGENTS.md
└── ...
warhammer-3/            # Total War: Warhammer 3 modlist
├── AGENTS.md
└── ...
witcher-3/              # The Witcher 3 modlist
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
