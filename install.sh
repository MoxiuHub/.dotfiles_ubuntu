#!/bin/bash
cd ~

rm -rf .bashrc
rm -rf .fzf
rm -rf .fzf.bash
rm -rf .fzf.zsh
rm -rf .hushlogin
rm -rf .p10k.zsh
rm -rf .profile
rm -rf .vim
rm -rf .vimplus
rm -rf .vimrc
rm -rf .zshenv
rm -rf .zshrc

ln -s ~/.dotfile/.bashrc ~/.bashrc
ln -s ~/.dotfile/.fzf ~/.fzf
ln -s ~/.dotfile/.fzf.bash ~/.fzf.bash
ln -s ~/.dotfile/.fzf.zsh ~/.fzf.zsh
ln -s ~/.dotfile/.hushlogin ~/.hushlogin
ln -s ~/.dotfile/.p10k.zsh ~/.p10k.zsh
ln -s ~/.dotfile/.profile ~/.profile
ln -s ~/.dotfile/.vim ~/.vim
ln -s ~/.dotfile/.vimplus ~/.vimplus
ln -s ~/.dotfile/.vimrc ~/.vimrc
ln -s ~/.dotfile/.zshenv ~/.zshenv
ln -s ~/.dotfile/.zshrc ~/.zshrc


