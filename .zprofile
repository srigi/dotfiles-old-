# Load directory jumper Z
[[ -s "$HOME/bin/z.sh" ]] && source "$HOME/bin/z.sh"

# Load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Load rbenv
if which rbenv > /dev/null; then
	eval "$(rbenv init -)";
	[[ -s /usr/local/opt/rbenv/completions/rbenv.zsh ]] && source /usr/local/opt/rbenv/completions/rbenv.zsh
fi
