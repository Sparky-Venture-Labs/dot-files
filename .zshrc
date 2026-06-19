# ============================================================
#  .zshrc — Sparky Venture Labs dotfiles
#  Apple Silicon Mac (M-series)
# ============================================================

# ── Homebrew ─────────────────────────────────────────────────
eval "$(/opt/homebrew/bin/brew shellenv)"

# ── PATH ─────────────────────────────────────────────────────
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# ── Editor ───────────────────────────────────────────────────
export EDITOR="nano"

# ── History ──────────────────────────────────────────────────
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

# ── Aliases — Navigation ─────────────────────────────────────
alias ..="cd .."
alias ...="cd ../.."
alias ll="ls -lah"
alias la="ls -la"
alias ~="cd ~"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dev="cd ~/Developer"

# ── Aliases — Git ────────────────────────────────────────────
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gl="git log --oneline --graph --decorate"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gpf="git push --force"

# ── Aliases — macOS ──────────────────────────────────────────
alias showfiles="defaults write com.apple.finder AppleShowAllFiles YES && killall Finder"
alias hidefiles="defaults write com.apple.finder AppleShowAllFiles NO && killall Finder"
alias flushdns="sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder && echo 'DNS flushed'"
alias cleanup="find . -name '.DS_Store' -delete && echo 'Cleaned .DS_Store files'"

# ── Aliases — launchd ────────────────────────────────────────
alias launchlist="launchctl list | grep -v com.apple"
alias launchwatchlog="tail -f ~/Library/Logs/AutoUnzip/auto_unzip.log"
alias screenshotlog="tail -f ~/Library/Logs/ScreenshotOrganizer/organizer.log"

# ── Aliases — Homebrew ───────────────────────────────────────
alias brewup="brew update && brew upgrade && brew cleanup"
alias brewlist="brew list --formula"

# ── Aliases — Network ────────────────────────────────────────
alias myip="curl -s https://ipinfo.io/ip"
alias localip="ipconfig getifaddr en0"
alias pingtest="ping -c 5 8.8.8.8"

# ── Prompt ───────────────────────────────────────────────────
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' (%b)'
setopt PROMPT_SUBST
PROMPT='%F{blue}%~%f%F{yellow}${vcs_info_msg_0_}%f %F{green}→%f '
