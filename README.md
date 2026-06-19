# dotfiles

Mac setup and configuration files. Everything needed to get a development environment running from scratch on Apple Silicon.

---

## What's in here

| File/Folder | What it does |
|---|---|
| `.zshrc` | Shell config — aliases, PATH, prompt |
| `Brewfile` | All Homebrew packages, casks, and tools |
| `git/.gitconfig` | Global git config (no personal info) |
| `macos/defaults.sh` | macOS system preference tweaks via `defaults write` |
| `launchagents/` | Personal launchd automation agents |

---

## Setup on a new Mac

**1. Install Homebrew:**
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**2. Install everything from the Brewfile:**
```bash
brew bundle --file=Brewfile
```

**3. Apply macOS defaults:**
```bash
bash macos/defaults.sh
```

**4. Symlink dotfiles:**
```bash
ln -s $(pwd)/.zshrc ~/.zshrc
ln -s $(pwd)/git/.gitconfig ~/.gitconfig
```

---

## Notes

- Built for Apple Silicon (M-series) Macs
- Assumes Homebrew installed at `/opt/homebrew`
- All personal info removed — update git/.gitconfig with your own details before use
