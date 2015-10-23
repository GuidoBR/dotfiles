echo "Installing Haskell Platform..."
sudo apt-get install haskell-platform
ln -s .ghci ~/.ghci
# -----------------------------------
echo "Installing Git..."
sudo apt-get install git
ln -s .git ~/.git
# -----------------------------------
echo "Installing PostgreSQL..."
sudo apt-get install postgresql
ln -s .psqlrc ~/.psqlrc 
# -----------------------------------
echo "Installing Tmux..."
sudo apt-get install tmux
ln -s .tmux.conf ~/.tmux.conf
# -----------------------------------
echo "Installing Vim..."
sudo apt-get install vim
ln -s .vimrc ~/.vimrc
# -----------------------------------
# echo "Installing Zsh - oh-my-zsh ..."
# -----------------------------------
# sudo apt-get install vim
# ln -s .vimrc ~/.vimrc
