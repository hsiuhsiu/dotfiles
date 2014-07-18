if [ `uname` = "SunOS" ] || [ `uname` = "Linux" ]; then
    export TERM="xtermc"
    alias ls='ls -h --color=auto'
    alias vi="vim"
elif [ `uname` = "Darwin" ]; then
    export CLICOLOR=1
    export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
fi

if [ `uname` = "Darwin" ]; then
  alias ll="ls -lOF"
  alias lm="ls -lOFA | more"
  alias lu="ls -lFuT"
  alias lU="ls -lFUT"
else
  alias ll="ls -lF"
  alias lm="ls -lFA | more"
  alias lu="ls -lFu"
  alias lU="ls -lFU"
fi

alias la="ls -AF"
alias ls="ls -F"

alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

alias h="history"
