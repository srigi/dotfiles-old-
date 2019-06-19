# load exports
[[ -s "$HOME/.dotfiles/exports" ]] && source "$HOME/.dotfiles/exports"

# load color definitions
[[ -s "$HOME/.dotfiles/bash/colors" ]] && source "$HOME/.dotfiles/bash/colors"

# load custom functions definitions
[[ -s "$HOME/.dotfiles/bash/functions" ]] && source "$HOME/.dotfiles/bash/functions"

alias ..='cd ..'
alias ...='cd ../..'
alias md='mkdir -p'

export PS1="${yellow}\u${green}@\h ${biblue}\w \$(prompt_git)\n${white}\$ "
