#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo apt install git vim

# for vim 8
mkdir -p download
wget -P download http://mirrors.ustc.edu.cn/vim/unix/vim-8.1.tar.bz2
./configure --with-features=huge --enable-multibyte \
    --enable-rubyinterp=yes \
    --enable-pythoninterp=yes \
    --enable-python3interp=yes \
    --enable-perlinterp=yes \
    --enable-luainterp=yes \
    --with-tlib=ncurses \
    --enable-gui=gtk2 --enable-cscope --prefix=$HOME/.local
make && make install
# nee add alias vim="~/.local/bin/vim" to .bash_alias

# for YouCompleteMe
#sudo apt install build-essential cmake python3-dev
#cd ~/.vim/bundle/YouCompleteMe
#python3 install.py --clang-completer
 

# in vim type : PlugInstall
