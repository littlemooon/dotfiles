# Agent Instructions

## Repository Overview
- Dotfiles are managed via a single stow package at `home/`.
- `install.sh` is the only installer and includes macOS defaults, Homebrew setup, and `stow -t ~ home`.

## Do/Do Not
- Do NOT create or reintroduce per-package stow dirs (e.g., `zsh/`, `git/`, `opencode/`).
- Do NOT add Claude or Codex configs (`home/.claude`, `home/.codex`) unless explicitly requested.
- Prefer minimal, focused changes; avoid refactors unrelated to the request.

## Structure Rules
- All dotfiles must live under `home/` using paths relative to `~`.
- Example: `home/.config/gh/config.yml` → `~/.config/gh/config.yml`.

## Install Flow
- Keep install logic in `install.sh` only.
- If changing install steps, also update `README.md`.

## Git
- Do NOT commit or push unless explicitly asked by the user.
- Never rewrite history (`rebase`, `commit --amend`, force push) unless explicitly requested.

## Stow Commands
- Verify: `stow -t ~ -n home`
- Apply: `stow -t ~ home`

## Documentation
- `README.md` is human-first and should list explicit commands to install.
- If you add or remove configs in `home/`, update the “Stow Layout” section.
