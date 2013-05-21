# load exports
[[ -s "$HOME/.dotfiles/exports" ]] && source "$HOME/.dotfiles/exports"

# load custom functions definitions
[[ -s "$HOME/.dotfiles/bash/functions" ]] && source "$HOME/.dotfiles/bash/functions"

# load aliases definitions
[[ -s "$HOME/.dotfiles/bash/aliases" ]] && source "$HOME/.dotfiles/bash/aliases"

# load color definitions & setup prompt
[[ -s "$HOME/.dotfiles/bash/colors" ]] && source "$HOME/.dotfiles/bash/colors"
export PS1="${green}\u${bigreen}@${green}\h ${biblue}\w ${yellow}\$(git_prompt)\n${white}\$ "

# Load directory jumper Z
[[ -s "$HOME/bin/z.sh" ]] && source "$HOME/bin/z.sh"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
