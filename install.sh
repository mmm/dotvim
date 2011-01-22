#!/bin/bash

if [ $# -lt 1 ] || [ $1 != "makelinks" ]; then
  echo
  echo "This script will backup config files and create the following links:"
  echo "  $HOME/.vim/vimrc => $HOME/.vimrc"
  echo "  $HOME/.vim/gvimrc => $HOME/.gvimrc"
  echo
  echo "if you really want to do this,"
  echo "run it again with the 'makelinks' argument:"
  echo "  $0 makelinks"
  echo
  exit 1
fi

#
# depends heavily on repo being at $HOME/.vim
#

for i in vimrc gvimrc; do
  if [ -f "$HOME/.$i" -a ! -L "$HOME/.$i" ]; then
    mkdir -p $HOME/.vim/tmp
    mv $HOME/.$i $HOME/.vim/tmp
  fi
  ( cd $HOME; ln -sf .vim/$i .$i )
done

