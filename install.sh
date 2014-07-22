DIR=$(cd "$(dirname "$0")"; pwd)
echo $DIR

echo "append source command in .bashrc"
echo -e "\nsource ${DIR}/bashrc/main.sh" >> ~/.bashrc

echo "create .bash_profile"
rm -f ~/.bash_profile
echo -e "source ~/.bashrc" > ~/.bash_profile

echo "link .gitconfig"
ln -s  ${DIR}/git/gitconfig~/.gitconfig
echo "link .gitignore_global"
ln -s ${DIR}/git/gitignore_global ~/.gitignore_global

echo "link .vim/"
ln -s ${DIR}/vim ~/.vim

echo "append source command in .vimrc"
echo -e "\nso ${DIR}/vim/vimrc/main.vim" >> ~/.vimrc
