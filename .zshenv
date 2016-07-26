# Load exports
[[ -s "$HOME/.dotfiles/exports" ]] && source "$HOME/.dotfiles/exports"

# Load rbenv
if which rbenv > /dev/null; then
	eval "$(rbenv init -)";
	[[ -s /usr/local/opt/rbenv/completions/rbenv.zsh ]] && source /usr/local/opt/rbenv/completions/rbenv.zsh
fi

# Load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
