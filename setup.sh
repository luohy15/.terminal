#!/bin/bash

source ./list.sh
if [ -f /etc/os-release ]; then
    . /etc/os-release
    case $ID in
        "ubuntu")
            for s in ${LIST[@]}
            do
                sudo apt install -y $s
            done
            ;;
        "centos" | "rhel")
            for s in ${LIST[@]}
            do
                sudo yum install -y $s
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

. /etc/os-release
if [[ $ID != "centos" && $ID != "rhel" ]]
then
    sudo pip install -i https://pypi.tuna.tsinghua.edu.cn/simple pip -U
    sudo pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
    for p in ${PIP_LIST[@]}
    do
        pip install $p
    done
    for n in ${NPM[@]}
    do
        npm install -g $p
    done
fi
if [ ! -d ~/.oh-my-zsh ]
then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
if [ ! -d ~/.fzf ]
then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
fi
bash symlink.sh
vim +PlugInstall +qall
