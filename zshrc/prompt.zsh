function git_dirty {
  [[ -z $(git status --porcelain 2> /dev/null) ]] || echo "*"
}

function ps1_git {
  typeset -g GITSTATUS_PROMPT=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/<\1>$(git_dirty)/")
}

function ps1_conda {
  if [ -z ${CONDA_PREFIX+x} ]; then
    echo ""
  else
    printf "($(basename $CONDA_DEFAULT_ENV)) "
  fi
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd ps1_git
add-zsh-hook precmd prompt

function prompt {
  PROMPT="%F{3}[%*]%f %n@%m:%F{10}%~%f"
  PROMPT+=" %F{13}${GITSTATUS_PROMPT}%f"
  PROMPT+="
%# "
  PS2='continue-> '
  PS4='$0.$LINENO+ '
}

prompt
