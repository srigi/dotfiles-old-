ZSH_THEME_GIT_PROMPT_PREFIX="$fg[yellow]($fg[green]"
ZSH_THEME_GIT_PROMPT_SUFFIX="$fg[yellow])"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[white]*"


function prompt_intro () {    # prompt intro sequence, same as in precmd() but without colors
  print -P "%n@%m:_"          # replace <SPACE>s with <UNDERSCORE>s
}

function prompt_cwd () {
  print -D $PWD               # replace <HOMEDIR_PATH> part with ~
}

function prompt_git () {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

function put_spacing () {
  local pi=$(prompt_intro)    # get string
  (( pi=${#pi}))              # get string length

  local pc=$(prompt_cwd)
  (( pc=${#pc}))

  # This one needs GNU sed. BSD sed (Mac OS) is not featuring hex sequence matching.
  # Use Homebrew to instal "gnu-sed" and reference it with full path
  local pg=$(prompt_git | /usr/local/bin/gsed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g")   # strip color escape sequences from string
  (( pg=${#pg} ))

  local p_total
  (( p_total = pi + pc + pg ))

  local spacing=""
  local spacing_count
  (( spacing_count = ${COLUMNS} - p_total ))

  for i in {1..$spacing_count}; do
    spacing="${spacing} "
  done
  echo $spacing
}


function precmd () {
  print -rP "$fg_bold[cyan]%n$fg[green]@%m: $fg[blue]$(prompt_cwd)$(put_spacing)$(prompt_git)"
}


PROMPT='%{$fg_bold[cyan]%}→ %{$reset_color%}%{$fg[white]%}'
