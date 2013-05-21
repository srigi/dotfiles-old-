# replace <HOMEDIR_PATH> part with ~
function prompt_cwd {
  print -D $PWD
}


function parse_git_dirty {
  local SUBMODULE_SYNTAX=''

  if [[ $POST_1_7_2_GIT -gt 0 ]]; then
        SUBMODULE_SYNTAX="--ignore-submodules=dirty"
  fi

  if [[ -n $(git status -s ${SUBMODULE_SYNTAX} 2> /dev/null) ]]; then
    echo  "%F{red}✗"
  else
    echo  "%F{026}✓"
  fi
}


function prompt_git {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "%F{green}[ %F{yellow}${ref#refs/heads/} $(parse_git_dirty) %F{green}] "
}


function prompt_rvm {
  rbv=`rvm-prompt`
  rbv=${rbv#ruby-}
  [[ $rbv == *"@"* ]] || rbv="${rbv}@default"
  echo "%F{green}[ %F{yellow}$rbv %F{green}]"
}



PROMPT='%F{yellow}%n%F{green}@%m %F{blue}$(prompt_cwd) $(prompt_git)$(prompt_rvm)
%B%F{cyan}→%f%b %F{white}'
