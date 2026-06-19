#!/usr/bin/env bash
# ============================================================
#  macos/defaults.sh — Sparky Venture Labs dotfiles
#  Applies sensible macOS system preferences via defaults write
#  Run: bash macos/defaults.sh
# ============================================================

echo "Applying macOS defaults..."

# ── Finder ───────────────────────────────────────────────────
# Show hidden files
defaults write com.apple.finder AppleShowAllFiles YES
# Show file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Show path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true
# Show status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true
# Default to list view in Finder
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
# Disable warning when changing file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# Search current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# ── Dock ─────────────────────────────────────────────────────
# Auto-hide dock
defaults write com.apple.dock autohide -bool true
# Remove dock auto-hide delay
defaults write com.apple.dock autohide-delay -float 0
# Speed up dock animation
defaults write com.apple.dock autohide-time-modifier -float 0.3
# Don't show recent apps in dock
defaults write com.apple.dock show-recents -bool false

# ── Screenshots ──────────────────────────────────────────────
# Save screenshots to Desktop (auto-organizer will move them)
defaults write com.apple.screencapture location -string "${HOME}/Desktop"
# Save as PNG
defaults write com.apple.screencapture type -string "png"
# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# ── Keyboard ─────────────────────────────────────────────────
# Fast key repeat
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# ── Trackpad ─────────────────────────────────────────────────
# Tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# ── Safari ───────────────────────────────────────────────────
# Show full URL in address bar
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# ── Activity Monitor ─────────────────────────────────────────
# Show all processes
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# ── Restart affected apps ────────────────────────────────────
killall Finder Dock SystemUIServer 2>/dev/null

echo "Done. Some changes may require a logout/restart to take effect."
