# Modlists Monorepo — AGENTS.md

This is a monorepo for game modlists (Minecraft, Skyrim, etc.). Each modlist is a self-contained project at the project root in `<name>/`.

## Structure

- Root is a standard git repo — make changes, commit, push as normal
- `<name>/` — each modlist is an independent project with its own config, guides, and AGENTS.md
- A root-level directory is a modlist iff it contains its own `AGENTS.md` — the presence of that file is what registers it, so adding a modlist never requires editing these root files
- Infrastructure directories (`.superpowers/`, `.playwright-mcp/`, dotfiles, etc.) are not modlists
- Most modlists were imported via `git subtree` — their full history is preserved in this repo. A few were created from scratch; `git log` shows which
- Do NOT use `git submodule` commands — subtrees were used instead

## Working conventions

- When asked about a specific modlist, read its `AGENTS.md` first for project-specific instructions
- Each modlist has its own goals, tech stack, and standards — don't conflate them
- Root-level files (this file, README.md, .gitignore) describe the collection — don't modify them unless the task is about the repo structure itself

## Adding a new modlist

To add a modlist from an existing GitHub repo:

```bash
git subtree add --prefix=<name> <remote> main
```

To create from scratch:

```bash
mkdir -p <name> && develop normally
```

Either way, finish by creating `<name>/AGENTS.md` — that file is what defines the directory as a modlist.

See README.md for full instructions.
