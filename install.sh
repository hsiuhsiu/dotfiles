DIR=$(cd "$(dirname "$0")"; pwd)

INSTALL_ALL=false
while getopts ":a" opt; do
  case $opt in
    a)
      INSTALL_ALL=true
      echo "Install everything!!" >&2
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done

promptyn () {
  while true; do
    read -p "$1 " yn
    case $yn in
      [Yy]* ) return 0;;
      [Nn]* ) return 1;;
      * ) echo "Please answer yes or no.";;
    esac
  done
}

if [ "$INSTALL_ALL" = true ] || promptyn "Install .bashrc? (append a source command in ~/.bahsrc)"; then
  printf "Installing .bashrc ... "
  #touch ~/.bashrc
  #echo -e "\nsource ${DIR}/bashrc/main.sh" >> ~/.bashrc
  printf "done\n"
fi

if [ "$INSTALL_ALL" = true ] || promptyn "Install .bash_profile? (replace the old one) "; then
  printf "Installing .bash_profile ... "
  touch ~/.bashrc
  #rm -f ~/.bash_profile
  #echo -e "source ~/.bashrc" > ~/.bash_profile
  printf "done\n"
fi

if [ "$INSTALL_ALL" = true ] || promptyn "Install git configurations? (replace old ones by symbolic links)"; then
  printf "Installing git configurations ... "
  #rm -f ~/.gitconfig
  #ln -s ${DIR}/git/gitconfig ~/.gitconfig
  #rm -f ~/.gitignore_global
  #ln -s ${DIR}/git/gitignore_global ~/.gitignore_global
  printf "done\n"
fi

if [ "$INSTALL_ALL" = true ] || promptyn "Install git configurations? (replace old ones by symbolic links)"; then
  printf "Installing vim configurations ... "
  #rm -rf ~/.vim
  #ln -s ${DIR}/vim ~/.vim
  #rm -f ~/.vimrc
  #ln -s ${DIR}/vim/vimrc ~/.vimrc
  printf "done\n"
fi

