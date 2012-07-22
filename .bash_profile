server() {
  open "http://localhost:${1}" && python -m SimpleHTTPServer $1
}

function parse_git_dirty {
	git diff --quiet HEAD &>/dev/null
	[[ $? == 1 ]] && echo "*"
}

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

export PS1='\[\e[1;32m\]\u\[\e[0;36m\]@\[\e[1;32m\]\h \[\e[1;34m\]\w\[\e[m\] \[\e[0;32m\]$(parse_git_branch)\[\e[m\]$(parse_git_dirty)\n\[\e[1;32m\]\$\[\e[m\] \[\e[0;37m\]'
export PATH=$PATH:/usr/local/sbin:$HOME/bin:$HOME/.rvm/bin
export NODE_PATH=$HOME/node_modules:/usr/local/lib/node_modules
export EDITOR='/usr/bin/vim'

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias ls='ls -bFGhl'
alias lsa='ls -AbFGhl'
alias yuic='java -jar ~/bin/yuic'
alias svnlog='svn log | less'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
