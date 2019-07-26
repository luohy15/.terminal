#!/bin/bash

bash symlink.sh
source ./list.sh
if [ -f /etc/os-release ]; then
    . /etc/os-release
    case $ID in
        "ubuntu")
            for s in ${LIST[@]}
            do
                apt install -y $s
            done
            ;;
        "centos")
            for s in ${LIST[@]}
            do
                yum install -y $s
            done
            ;;
        "arch")
            for s in ${LIST[@]}
            do
                pacman -Qi $s &> /dev/null
                if [ $? = 1 ]; then
                    sudo pacman -S --noconfirm $s
                fi
            done
            ;;
        *)
            ;;
    esac
fi
for p in ${PIP_LIST[@]}
do
    pip install $p
done
for n in ${NPM[@]}
do
    npm install -g $p
done
if [ ! -d ~/.oh-my-zsh ]
then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
if [ ! -d ~/.fzf ]
then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
fi
