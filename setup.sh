#!/bin/sh

mkdir ./plugins

cd ./plugins

git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting

cd ..

ln -s ~/.config/zsh/.zshrc ~/.zshrc

