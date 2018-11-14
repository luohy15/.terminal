sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
kernelName=$(uname -s)
case $kernelName in
	Linux*)
	;;
yum install -y python-pip
pip install powerline-status
