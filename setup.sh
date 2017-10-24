#!/usr/local/bin/bash
# Symlink dotfiles into home folder

dir=$PWD
backup_dir=$dir/backup
dotfiles=".bashrc .bash_profile .vimrc .tmux.conf" 

if [ ! -d $backup_dir ]; then
  mkdir $backup_dir
fi

for file in $dotfiles; do
  # If the file already exists, move it to a backup folder
  if [ -f ~/$file ]; then
    mv ~/$file $backup_dir
  fi
  # If a Symlink doesn't exist, symlink the .dotfile
  if [ ! -L ~/$file ]; then
    ln -s $PWD/$file ../
    echo "Symlinked $file"
  fi
done
