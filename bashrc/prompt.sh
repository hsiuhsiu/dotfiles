function prompt {
  local NO_COLOR="\[\033[0m\]"
  local BLACK="\[\033[0;30m\]"
  local DARK_GRAY="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local DARK_RED="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local DARK_GREEN="\[\033[1;32m\]"
  local BROWN="\[\033[0;33m\]"
  local YELLOW="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local DARK_BLUE="\[\033[1;34m\]"
  local MAGENTA="\[\033[0;35m\]"
  local DARK_MAGENTA="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local DARK_CYAN="\[\033[1;36m\]"
  local LIGHT_GRAY="\[\033[0;37m\]"
  local WHITE="\[\033[1;37m\]"
  case $TERM in
    xterm*|rxvt*)
      TITLEBAR='\[\033]0;\u@\h:\w\007\]'
      ;;
    *)
      TITLEBAR=""
      ;;
  esac
  if [[ ${EUID} == 0 ]] ; then
    PROMPT_COLOR=$DARK_RED
  else
    PROMPT_COLOR=$LIGHT_GRAY
  fi
  if command -v __git_ps1 >/dev/null; then
    GIT_BRANCH='-$(__git_ps1 %s)-'
  else
    GIT_BRANCH=""
  fi
  PS1="$DARK_BLUE[\A] $DARK_BLUE\u@\h$DARK_GRAY: $GREEN\w $BLUE$GIT_BRANCH \n$PROMPT_COLOR\$ $NO_COLOR"
  PS2='continue-> '
  PS4='$0.$LINENO+ '
}

prompt
