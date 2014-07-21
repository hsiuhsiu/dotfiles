DIR=$(cd "$(dirname "$0")"; pwd)
echo $DIR

echo "append source command in .bashrc"
echo -e "\nsource ${DIR}/bashrc/main.sh" >> ~/.bashrc

echo "create .bash_profile"
rm -f ~/.bash_profile
echo -e "source ~/.bashrc" > ~/.bash_profile

echo "link .gitconfig"
ln -s ~/.gitconfig ${DIR}/git/gitconfig
echo "link .gitignore_global"
ln -s ~/.gitignore_global ${DIR}/git/gitignore_global

echo "link .vim/"
ln -s ${DIR}/vim ~/.vim

echo "append source command in .vimrc"
echo -e "\nso ${DIR}/vim/vimrc/main.vim" >> ~/.vimrc
