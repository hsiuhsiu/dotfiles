if command -v brew >/dev/null; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
fi

# get self file's parent directory
DIR=$(dirname ${BASH_SOURCE[0]})

source ${DIR}/prompt.sh
source ${DIR}/alias.sh

alias server='python -m SimpleHTTPServer'
alias ptt='ssh bbsu@ptt.cc'

# Rocket Fuel
export PATH=$PATH:/Users/yhchen/git/repo/rrepo
PATH=$PATH:/usr/local/mysql/bin # Add for mysql
#export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
