DIR=$(cd "$(dirname "$0")"; pwd)
echo $DIR

echo "append source command in .bashrc"
echo -e "\nsource ${DIR}/bashrc/main.sh" >> ~/.bashrc

rm -f ~/.bash_profile
echo "create .bash_profile"
echo -e "source ~/.bashrc" > ~/.bash_profile
