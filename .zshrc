# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="srigi"

# Comment this out to disable weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
#COMPLETION_WAITING_DOTS="true"

# Plugins can be found in ~/.oh-my-zsh/plugins/
# Custom plugins go to    ~/.oh-my-zsh/custom/plugins/
plugins=(git svn rvm osxautocwd)

source $ZSH/oh-my-zsh.sh


# ======================
# [== MAIN USER CONF ==]
# ======================

export PATH=$PATH:$HOME/bin:/$HOME/.rvm/bin
export NODE_PATH=$HOME/node_modules:/usr/local/lib/node_modules
export EDITOR='/usr/bin/nano'
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# [Aliases]
alias ls='ls -bFGhl'
alias lsa='ls -AbFGhl'
alias yuic='java -jar ~/bin/yuic'
alias svnlog='svn log | less'

alias -s html="open"
alias -s {js,php,txt}=$EDITOR
alias -s {jpg,JPG,jpeg,JPEG,png,PNG,gif,GIF}="open"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#setopt auto_cd                 # Change dir without cd
#setopt extended_glob           # Regex globbing
#setopt notify                  # Report the status if background jobs immediately
#setopt complete_in_word        # Not just at the end
setopt always_to_end           # When complete from middle, move cursor
#setopt no_match                # Show error if pattern has no matches
setopt no_beep                 # Disable beeps
setopt list_packed             # Compact completion lists
setopt list_types              # Show types in completion
#setopt rec_exact               # Recognize exact, ambiguous matches
#setopt hist_verify             # When using ! cmds, confirm first
setopt hist_ignore_all_dups    # Ignore dups in command history
setopt hist_ignore_space       # Don't add commands prepended by whitespace to history
setopt append_history          # Allow multiple sessions to append to the history file
setopt extended_history        # Save additional info to history file
setopt inc_append_history      # Append commands to history immediately
#setopt prompt_subst            # Enable variable substitution in prompt
#setopt correct                 # Command correction
#setopt short_loops             # Allow short loops
setopt auto_pushd              # Automatically push directories onto dirstack
setopt auto_remove_slash 		# Automatically remove slash from a completion if next typed character is a word delimiter

#zstyle ':completion:*' completer _complete _ignored
#zstyle ':completion:*' expand prefix suffix
#zstyle ':completion:*' group-name ''
#zstyle ':completion:*' ignore-parents parent pwd .. directory
#zstyle ':completion:*' insert-unambiguous true
#zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
#zstyle ':completion:*' menu select
#zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*' squeeze-slashes true
#zstyle ':completion::complete:*' use-cache 1
#zstyle ':completion::complete:*' cache-path ~/.zshcache
#zstyle ':completion:*:*:kill:*' menu yes select
#zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
#zstyle ':completion:*:*:killall:*:processes' command 'ps --forest -A -o pid,user,cmd'
#zstyle ':completion:*:processes-names' command 'ps axho command'
#zstyle ':completion:*:processes' command 'ps -au$USER -o pid,time,cmd|grep -v "ps -au$USER -o pid,time,cmd"'
#zstyle ':completion:*:cd:*' ignored-patterns '(*/)#lost+found'
#zstyle ':completion:*:matches' group yes
#zstyle ':completion:*:options' description yes
#zstyle ':completion:*:options' auto-description '%d'
#zstyle ':completion:*:descriptions' format $'\e[01;33m-- %d --\e[0m'
#zstyle ':completion:*:messages' format $'\e[01;35m-- %d --\e[0m'
#zstyle ':completion:*:warnings' format $'\e[01;31m-- no matches found --\e[0m'
#zstyle ':completion:*:manuals' separate-sections true
#zstyle ':completion:*:manuals.*' insert-sections true
#zstyle ':completion:*:man:*' menu yes select
#zstyle ':completion:*:rm:*' ignore-line yes
#zstyle ':completion:*:cp:*' ignore-line yes
#zstyle ':completion:*:mv:*' ignore-line yes
