
echo "Installing Dot files"
echo "Installing Screenrc file"
ln -s $(pwd)/.screenrc ~/.screenrc

echo "Installing tmux file"
ln -s $(pwd)/.tmux.conf ~/.tmux.conf

echo "Installing bash aliases"
ln -s $(pwd)/.bash_aliases ~/.bash_aliases
echo "Done"
