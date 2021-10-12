if command -v brew >/dev/null; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
fi

case $TERM in
  xterm*|rxvt*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
  *)
    TITLEBAR=""
    ;;
esac

DIR=${0:a:h}
source ${DIR}/prompt.zsh
source ${DIR}/alias.zsh

export VISUAL=vim
export EDITOR="$VISUAL"
export SVN_EDITOR="/usr/bin/vim"

set -o vi
