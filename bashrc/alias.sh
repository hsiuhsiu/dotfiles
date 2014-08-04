if [ `uname` = "Linux" ]; then
  alias ls='ls -hF --color=auto'
  alias la="ls -AF"
  alias ll="ls -lF"
  alias lm="ls -lFA | more"
  alias lu="ls -lFu"
  alias lU="ls -lFU"
elif [ `uname` = "Darwin" ]; then # For Mac OSX
  export CLICOLOR=1
  export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
  alias la="ls -AF"
  alias ll="ls -lOF"
  alias lm="ls -lOFA | more"
  alias lu="ls -lFuT"
  alias lU="ls -lFUT"
fi

alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

alias h="history"
alias vir="vim -R"
