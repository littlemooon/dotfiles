# dotfiles

## Pre-format Checklist

- Back up `~/.gitconfig.local` (name/email).
- Back up `~/.ssh` keys and confirm `~/.ssh/config` points to existing keys.
- Keep any app-specific exports you care about (e.g., 1Password, browser profiles).

---

## Install (Human)

Run these commands in order:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install git

git clone https://github.com/littlemooon/dotfiles.git ~/a/dotfiles
bash ~/a/dotfiles/install.sh
```

Post-install (manual):

```bash
gh auth login
mise install
```

Optional (if using HTTPS with gh):

```bash
gh auth setup-git
```

Optional (verify stow links without changing anything):

```bash
stow -t ~ -n home
```

---

## What the Installer Does

`install.sh` performs:
- macOS defaults + Xcode CLI tools + sets zsh default shell (interactive prompts may appear)
- Homebrew install/update + `brew bundle` + `mise install`
- `stow -t ~ home`

If the install stops partway through, re-run:

```bash
bash ~/a/dotfiles/install.sh
```

---

## Stow Layout

All dotfiles live under a single package:

```
/home
  /.zshrc
  /.zsh-aliases.sh
  /.zsh-plugins.txt
  /.ssh/config
  /.mcp.json
  /.config/ghostty/config
  /.config/git/config
  /.config/gh/config.yml
  /.config/jj/config.toml
  /.config/mise/config.toml
  /.config/opencode/*
  /.config/starship.toml
```

---

## What Gets Installed

**CLI Tools:**
- [mise](https://mise.jdx.dev/) - runtime version manager (node, bun)
- [starship](https://starship.rs/) - fast prompt
- [zoxide](https://github.com/ajeetdsouza/zoxide) - smarter cd
- [fzf](https://github.com/junegunn/fzf) - fuzzy finder
- [ripgrep](https://github.com/BurntSushi/ripgrep) - fast grep
- [eza](https://github.com/eza-community/eza) - modern ls
- [bat](https://github.com/sharkdp/bat) - modern cat
- [fd](https://github.com/sharkdp/fd) - modern find
- [delta](https://github.com/dandavison/delta) - better git diffs

**Apps:**
- Ghostty, VS Code, 1Password, Firefox, Slack, Spotify, VLC
- See [Brewfile](./Brewfile) for full list

---

## Notes

Create `~/.gitconfig.local` with your name/email:

```
[user]
	name = Your Name
	email = your.email@example.com
```

- `install.sh` can prompt for Xcode CLI tools and shell changes.
