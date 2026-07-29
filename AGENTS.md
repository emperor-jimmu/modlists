# Modlists Monorepo — AGENTS.md

This is a monorepo for game modlists (Minecraft, Skyrim, etc.). Each modlist is a self-contained project under `modlists/<name>/`.

## Structure

- Root is a standard git repo — make changes, commit, push as normal
- `modlists/<name>/` — each modlist is an independent project with its own config, guides, and AGENTS.md
- `minecraft-setup/` was imported via `git subtree` — its full history is preserved in this repo
- Do NOT use `git submodule` commands — subtrees were used instead

## Working conventions

- When asked about a specific modlist, read its `AGENTS.md` first for project-specific instructions
- Each modlist has its own goals, tech stack, and standards — don't conflate them
- Root-level files (this file, README.md, .gitignore) describe the collection — don't modify them unless the task is about the repo structure itself
- Other directories at root (aud-themer/, evaluation/, etc.) are unrelated projects with their own .git repos — don't touch them unless explicitly asked

## Adding a new modlist

To add a modlist from an existing GitHub repo:
```
git subtree add --prefix=modlists/<name> <remote> main
```

To create from scratch:
```
mkdir -p modlists/<name> && develop normally
```

See README.md for full instructions.
