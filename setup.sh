#!/bin/bash

source list.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
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
