#! /bin/zsh

# install neovim
# brew install neovim

ln -sf ${PWD}/.vimrc ~/.vimrc 

mkdir ~/.config
mkdir ~/.config/nvim
touch ~/.config/nvim/init.vim
echo "set runtimepath+=~/.vim,~/.vim/after" >> ~/.config/nvim/init.vim
echo "set packpath+=~/.vim" >> ~/.config/nvim/init.vim
echo sou"rce ~/.vimrc" >> ~/.config/nvim/init.vim
