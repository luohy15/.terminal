LIST=(
"cmake"
"zsh"
"git"
"autojump-zsh"
"python-pip"
)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
kernelName=`uname -s | tr -d '\n'`
if [[ $kernelName = "Linux" ]]; then
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        case $ID in
            "ubuntu")
                ;;
            "centos")
                for s in $LIST
                do
                    yum install -y $s
                done
                ;;
            *)
                ;;
        esac
    fi
else if [[ $kernelName = "Darwin" ]]; then
    ;
fi
pip install powerline-status
