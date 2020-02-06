#!/bin/bash

echo "Welcome at stanvk's terminal and vim configurator."
echo "Are you sure you want to proceed? [y/n]"
read answer

if [ $answer != y ]
then
	echo "Alright, until next time!"
	exit
fi

echo "Installing Z-Shell via apt"
sudo apt-get install zsh

echo "Installing powerline and fonts-powerline via apt"
sudo apt-get install powerline fonts-powerline

echo "Installing Oh-My-Zsh into ~/.oh-my-zsh"
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo "Creating Z-shell configuration file in ~/.zshrc"
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

echo "Installing Powerlevel10k zsh theme"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k

echo "Configuring zsh powerlevel10k theme"
$theme='powerlevel10k/powerlevel10k'
sed -i 's/^ZSH_THEME="robbyrussel".*/ZSH_THEME="${theme}"/' ~/.zshrc

echo "Setting zsh as standard shell"
chsh -s /bin/zsh

echo "Installing Plug.vim"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Moving vim configuration file"
mv .vimrc-template ~/.vimrc

echo "--- End of installer ---"
echo "Restart computer and start terminal to configure zsh"
