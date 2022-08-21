if [ `uname` = "Linux" ]; then
  alias ls='ls -hF --color=auto'
  alias la="ls -AF"
  alias ll="ls -lFA"
  alias lm="ls -lFA | more"
  alias lu="ls -lFu"
  alias lU="ls -lFU"
elif [ `uname` = "Darwin" ]; then # For Mac OSX
  export CLICOLOR=1
  export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
  alias la="ls -AF"
  alias ll="ls -lOFA"
  alias lm="ls -lOFA | more"
  alias lu="ls -lFuT"
  alias lU="ls -lFUT"
  alias vim="/usr/bin/vim"
fi

alias -g ..='..'
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias vir="vim -R"

# applications
alias server='python -m SimpleHTTPServer'
alias ptt='ssh bbsu@ptt.cc'
alias cryptopp='clang++ -L/Users/yihsiu/Documents/cryptopp/ -lcryptopp -I/Users/yihsiu/Documents/'

# misc
alias c="clear"
alias h="history"
alias path="echo ${PATH//:/$'\n'}"
