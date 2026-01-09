# dotfiles

## Step 1: Install Claude Code

```bash
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Claude Code
brew install claude
```

## Step 2: Run Claude

```bash
claude
```

Then tell Claude:

> Clone and install my dotfiles from https://github.com/littlemooon/dotfiles

---

## Instructions for Claude

Clone the dotfiles repo and run the install script:

```bash
brew install git
git clone https://github.com/littlemooon/dotfiles.git ~/a/dotfiles
bash ~/a/dotfiles/install.sh
```

After installation, run these post-install steps:

```bash
gh auth login
mise install
```

### What Gets Installed

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

**Configs (via stow):**
- zsh, git, gh, jj, ghostty, starship, mise
- claude, opencode, codex, mcp
