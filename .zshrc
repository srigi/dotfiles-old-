# Reapply POSTGRES_PATH to the front of the PATH
PATH=${PATH//$POSTGRES_PATH:/}
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH:$HOME/bin

# Don't paint user@hostname on prompt for user...
DEFAULT_USER='srigi'

# Path to your oh-my-zsh configuration
ZSH="$HOME/.dotfiles/zsh/oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="../../themes/srigi"

# Disable auto-update checks
#DISABLE_AUTO_UPDATE="true"

# Update interval
export UPDATE_ZSH_DAYS=30

# Disable autosetting terminal title
DISABLE_AUTO_TITLE="true"

plugins=(brew cp gitfast)

# Load OH MY ZSH
source $ZSH/oh-my-zsh.sh

# Load setopt definitions
[[ -s "$HOME/.dotfiles/zsh/setopt" ]] && source "$HOME/.dotfiles/zsh/setopt"

# Load zstyle definitions
[[ -s "$HOME/.dotfiles/zsh/zstyle" ]] && source "$HOME/.dotfiles/zsh/zstyle"

# Load aliases
[[ -s "$HOME/.dotfiles/zsh/aliases" ]] && source "$HOME/.dotfiles/zsh/aliases"

# Load directory jumper Z
[[ -s "$HOME/bin/z.sh" ]] && source "$HOME/bin/z.sh"

if [ -t 1 ]; then           # check if stdout is a terminal
	ncolors=$(tput colors)  # see if it supports colors

	if test -n "$ncolors" && test $ncolors -ge 8; then
		WHITE=$(tput setaf 0)
		MAGENTA=$(tput setaf 9)
		PURPLE=$(tput setaf 141)
		ORANGE=$(tput setaf 172)
		GREEN=$(tput setaf 190)

		export LESS_TERMCAP_md=$ORANGE  # highlight section titles in man
	fi
fi
