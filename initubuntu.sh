#!/bin/bash
# for mirrors
sudo sed -i 's/us.archive.ubuntu.com/mirrors.aliyun.com/g'  /etc/apt/sources.list
sudo apt update

# for add-apt-repository 
sudo apt install python-software-properties
sudo apt install software-properties-common

# for shadowsocks
sudo add-apt-repository ppa:hzwhuang/ss-qt5
sudo apt update
sudo apt install shadowsocks-qt5

# basic tools
sudo apt install git vim tmux htop npm cppman ncdu silversearcher-ag \ 
                 exuberant-ctags graphviz

# fzf
mkdir -p ~./download
cd ~./download
wget https://github.com/junegunn/fzf/archive/0.17.5.tar.gz -O fzf.tar.gz 
tar xvf fzf.tar.gz
cd fzf-0.17.5
./install      # will install in ~/.fzf

# Anaconda
mkdir -p ~./download
cd ~./download
wget http://mirrors.ustc.edu.cn/anaconda/archive/Anaconda3-5.3.1-Linux-x86_64.sh
bash Anaconda3-5.3.1-Linux-x86_64.sh -p ~/.anaconda3

# cheat
pip install cheat     # may need to `sudu su - root && chown -R user:user /home/user/.cache ` first


# hexo
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
source ~/.bashrc
nvm install stable
sudo apt install git-core
npm install -g hexo-cli

# secureCrt ansi color
#<binary name="ANSI Color RGB">27 28 22 00 ff 00 00 00 ff 00 00 00 a0 a0 00 00 13 ec 23 00 ff ff 00 00 ff ff ff 00 f8 f8 f2 00 80 80 80 00 a6 e2 2e 00 66 ed db 00 f9 26 72 00 f9 26 72 00 e6 db 74 00 00 ff ff 00 66 d9 ef 00</binary>
