DIR=$(cd "$(dirname "$0")"; pwd)
echo $DIR

echo "append source command in .bashrc"
echo -e "\nsource ${DIR}/bashrc/main.sh" >> ~/.bashrc

echo "create .bash_profile"
rm -f ~/.bash_profile
echo -e "source ~/.bashrc" > ~/.bash_profile

echo "create .gitconfig (symbolic link)"
ln -s ~/.gitconfig ${DIR}/git/gitconfig
echo "create .gitignore_global (symbolic link)"
ln -s ~/.gitignore_global ${DIR}/git/gitignore_global
