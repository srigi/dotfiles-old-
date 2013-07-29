# Path to your oh-my-zsh configuration
ZSH="$HOME/.dotfiles/zsh/oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="../../themes/srigi"

# Disable auto-update checks
#DISABLE_AUTO_UPDATE="true"

# Update interval
export UPDATE_ZSH_DAYS=30

# Use case-sensitive completion
#CASE_SENSITIVE="true"

# Disable autosetting terminal title
DISABLE_AUTO_TITLE="true"

plugins=(brew cp git svn node npm composer rvm osxautocwd)

# Load OH MY ZSH
source $ZSH/oh-my-zsh.sh

# Load setopt definitions
[[ -s "$HOME/.dotfiles/zsh/setopt" ]] && source "$HOME/.dotfiles/zsh/setopt"

# Load zstyle definitions
[[ -s "$HOME/.dotfiles/zsh/zstyle" ]] && source "$HOME/.dotfiles/zsh/zstyle"

# load custom functions definitions
[[ -s "$HOME/.dotfiles/zsh/functions" ]] && source "$HOME/.dotfiles/zsh/functions"

# Load aliases
[[ -s "$HOME/.dotfiles/zsh/aliases" ]] && source "$HOME/.dotfiles/zsh/aliases"
