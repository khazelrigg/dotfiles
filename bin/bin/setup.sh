#!/bin/bash

# Clone necessary repos
clone () {
        repo=https://github.com/$1
        dirname=${repo##*/}
        git clone $repo $HOME/bin/$dirname
}

repos=(fullsalvo/wzb-utils
       ganifladi/blurme
       meskarune/i3lock-fancy
       stark/Color-Scripts)

for repo in ${repos[@]}; do
        clone $repo
done

# Symlink important files
userHome=$HOME
files=(i3lock-fancy/lock
        wzb-utils/rhisk
        wzb-utils/reload-desktop
        blurme/blurme)

symlink() {
        for file in ${files[@]}; do
                fileName=${file##*/}
                sudo ln -s $userHome/bin/$file /usr/local/bin/$fileName
        done
}
symlink

#Install zim
git clone --recursive https://github.com/zimfw/zimfw.git ${ZDOTDIR:-${HOME}}/.zim

setopt EXTENDED_GLOB
for template_file in ${ZDOTDIR:-${HOME}}/.zim/templates/*; do
  user_file="${ZDOTDIR:-${HOME}}/.${template_file:t}"
  touch ${user_file}
  ( print -rn "$(<${template_file})$(<${user_file})" >! ${user_file} ) 2>/dev/null
done

chsh -s =zsh
urxvt -e "source ${ZDOTDIR:-${HOME}}/.zlogin"
