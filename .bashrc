# load exports
[[ -s "$HOME/.dotfiles/exports" ]] && source "$HOME/.dotfiles/exports"

# load color definitions
[[ -s "$HOME/.dotfiles/bash/colors" ]] && source "$HOME/.dotfiles/bash/colors"

# load custom functions definitions
[[ -s "$HOME/.dotfiles/bash/functions" ]] && source "$HOME/.dotfiles/bash/functions"

export PS1="${yellow}\u${green}@\h ${biblue}\w \$(prompt_git)\n${white}\$ "

# load aliases definitions
[[ -s "$HOME/.dotfiles/bash/aliases" ]] && source "$HOME/.dotfiles/bash/aliases"

# Load directory jumper Z
[[ -s "$HOME/bin/z.sh" ]] && source "$HOME/bin/z.sh"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
