#!/bin/bash

olddir=~/andydotfiles_ex                              # old dotfiles backup directory
files="bashrc vimrc vim zshrc oh-my-zsh gitconfig"    # list of files/folders to symlink in homedir

echo "Uninstalling andydotfiles2"

for file in $files; do
  echo -n "Deleting symlinks to $file in home directory"
  rm -rf ~/.$file
  echo -n "Moving dotfiles from $olddir to ~"
  mv $olddir/$file ~/.$file
done

echo "Completed!"
