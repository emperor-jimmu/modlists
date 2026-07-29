# Modlists

A monorepo for storing and developing game modlists (Minecraft, Skyrim, etc.). Each modlist lives in its own subdirectory with its own git history preserved via `git subtree`.

## Collection

| Modlist | Directory | Status |
|---------|-----------|--------|
| Minecraft Setup | [`minecraft-setup/`](./minecraft-setup/) | Active |

## Management

- Each modlist is an independent `git subtree` — full history preserved, modifiable independently
- To push changes back to a standalone repo: `git subtree push --prefix=modlists/<name> <remote> <branch>`
- To pull upstream changes: `git subtree pull --prefix=modlists/<name> <remote> <branch>`
- To add a new modlist from an existing repo: `git subtree add --prefix=modlists/<name> <remote> <branch>`
- To add a new modlist from scratch: `mkdir -p modlists/<name>` and develop normally
