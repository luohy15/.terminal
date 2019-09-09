#!/bin/bash

source ./list.sh
function pro_conf() {
    sudo pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple pip -U
    sudo pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
    for p in ${PIP_LIST[@]}
    do
        sudo pip3 install $p
    done
    for n in ${NPM_LIST[@]}
    do
        sudo npm install -g $n
    done
}
if [ -f /etc/os-release ]; then
    . /etc/os-release
    case $ID in
        "ubuntu")
            for s in ${BASIC_LIST[@]}
            do
                sudo apt install -y $s
            done
            ;;
        "centos" | "rhel")
            for s in ${BASIC_LIST[@]}
            do
                sudo yum install -y $s
            done
            ;;
        "arch")
            if [[ $ID == "arch" ]]
            then
                for s in ${BASIC_LIST[@]}
                do
                    pacman -Qi $s &> /dev/null
                    if [ $? = 1 ]; then
                        sudo pacman -S --noconfirm $s
                    fi
                done
                for s in ${PRO_LIST[@]}
                do
                    pacman -Qi $s &> /dev/null
                    if [ $? = 1 ]; then
                        sudo pacman -S --noconfirm $s
                    fi
                done
            fi
            pro_conf
            ;;
        *)
            ;;
    esac
else
    function brew_install_or_upgrade() {
        if brew ls --versions myformula > /dev/null; then
            brew install $1
        else
            brew upgrade $1
        fi
    }
    for s in ${BASIC_LIST[@]}
    do
        brew_install_or_upgrade $s
    done
    for s in ${PRO_LIST[@]}
    do
        brew_install_or_upgrade $s
    done
    pro_conf
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
