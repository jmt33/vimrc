#!/bin/bash

git clone http://github.com/jmt33/vimrc.git ~/.vim
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cp  $HOME/.vim/.vimrc  $HOME/.vim/.gvimrc ~/
vim +BundleInstall +BundleClean! +qa
rm  $HOME/.vim/vimrc -rf