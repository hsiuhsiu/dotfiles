function git_dirty {
  [[ -z $(git status --porcelain 2> /dev/null) ]] || echo "*"
}

function ps1_git {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/<\1>$(git_dirty)/"
}

function ps1_conda {
  if [ -z ${CONDA_PREFIX+x} ]; then
    echo ""
  else
    printf "($(basename $CONDA_DEFAULT_ENV)) "
  fi
}

function prompt {
  local PROMPT_SYMBOL="\$"

  local NO_COLOR="\[\033[0m\]"
  local GIT_COLOR="\[\033[1;35m\]"
  local CONDA_COLOR="\[\033[1;35m\]"
  local TIME_COLOR="\[\033[1;34m\]"
  local USER_COLOR="\[\033[1;34m\]"
  local MAC_USER_COLOR="\[\033[2;33m\]"
  local HOST_COLOR="\[\033[1;34m\]"
  local PATH_COLOR="\[\033[0;32m\]"
  if [[ ${EUID} == 0 ]] ; then
    local PROMPT_COLOR="\[\033[1;31m\]"
  else
    local PROMPT_COLOR="\[\033[0;37m\]"
  fi

  if [ `uname` = "Linux" ]; then
    PS1="$TIME_COLOR[\A] $USER_COLOR\u$HOST_COLOR@\h: $PATH_COLOR\w "
  elif [ `uname` = "Darwin" ]; then # For Mac OSX
    PS1="$MAC_USER_COLOR[\A] $MAC_USER_COLOR\u: $PATH_COLOR\w "
  fi


  PS1+="$CONDA_COLOR\[\$(ps1_conda)\]$NO_COLOR"
  PS1+="$GIT_COLOR\[\$(ps1_git)\]\n$PROMPT_COLOR$PROMPT_SYMBOL $NO_COLOR"
  PS2='continue-> '
  PS4='$0.$LINENO+ '
}

prompt
