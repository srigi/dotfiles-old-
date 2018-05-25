# load exports
[[ -s "$HOME/.dotfiles/exports" ]] && source "$HOME/.dotfiles/exports"

# load color definitions
[[ -s "$HOME/.dotfiles/bash/colors" ]] && source "$HOME/.dotfiles/bash/colors"

# load custom functions definitions
[[ -s "$HOME/.dotfiles/bash/functions" ]] && source "$HOME/.dotfiles/bash/functions"

# load aliases definitions
[[ -s "$HOME/.dotfiles/bash/aliases" ]] && source "$HOME/.dotfiles/bash/aliases"

export PS1="${yellow}\u${green}@\h ${biblue}\w \$(prompt_git)\n${white}\$ "

# Load directory jumper Z
[[ -s "$HOME/bin/z.sh" ]] && source "$HOME/bin/z.sh"
