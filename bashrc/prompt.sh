function prompt {
  local PROMPT_SYMBOL="\$"
  GIT_BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')
  GIT_DIRTY=$([[ -z $(git status --porcelain) ]] || echo "*")

  local NO_COLOR="\[\033[0m\]"
  local GIT_COLOR="\[\033[1;35m\]"
  local TIME_COLOR="\[\033[1;34m\]"
  local USER_COLOR="\[\033[1;34m\]"
  local HOST_COLOR="\[\033[1;34m\]"
  local PATH_COLOR="\[\033[0;32m\]"
  if [[ ${EUID} == 0 ]] ; then
    local PROMPT_COLOR="\[\033[1;31m\]"
  else
    local PROMPT_COLOR="\[\033[0;37m\]"
  fi

  PS1="$TIME_COLOR[\A] $USER_COLOR\u$HOST_COLOR@\h: $PATH_COLOR\w"
  PS1+="$GIT_COLOR$GIT_BRANCH$GIT_DIRTY\n$PROMPT_COLOR$PROMPT_SYMBOL $NO_COLOR"
  PS2='continue-> '
  PS4='$0.$LINENO+ '
}

prompt
