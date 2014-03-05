SEGMENT_SEPARATOR='⮀'
CURRENT_BG='NONE'

# Begin a segment
# @argument background color
# @argument foreground color
prompt_segment() {
  local bg fg
  bg="%K{$1}"
  fg="%F{$2}"
  if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
    echo -n " $bg%F{$CURRENT_BG}$SEGMENT_SEPARATOR$fg "
  else
    echo -n "$bg$fg "
  fi
  [[ -n $3 ]] && echo -n $3
  CURRENT_BG=$1
}

# Close any open segments
prompt_end() {
  echo -n " %k%F{$CURRENT_BG}$SEGMENT_SEPARATOR%f "
  CURRENT_BG='NONE'
}

# Paint user@hostname
prompt_context() {
  local user=`whoami`
  if [[ "$user" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment 216 235 "%(!.%F{yellow}.)$user@%m"
  fi
}

# Paint current working directory
prompt_dir() {
  prompt_segment 33 234 '%~'
}

# Paint git branch & dirty status
function prompt_git {
  local ref dirty
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>/dev/null); then
    ref=$(git symbolic-ref HEAD 2> /dev/null) || ref="➦ $(git show-ref --head -s --abbrev | head -n1 2>/dev/null)"
    dirty=$(parse_git_dirty)

    if [[ -n $dirty ]]; then
      prompt_segment 89 85
    else
      prompt_segment 40 234
    fi

    echo -n "${ref#refs/heads/}"
  fi
}

# Paint current RVM Ruby & gemset
function prompt_rvm {
  prompt_segment 24 146 `rvm-prompt v p g`
}

function build_prompt() {
  prompt_context
  prompt_dir
  #prompt_rvm
  prompt_git
  prompt_end
}


PROMPT='$(build_prompt)'
