# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# apt aliases
alias agi="sudo apt-get install"
alias agu="sudo apt-get update"
alias agdu="sudo apt-get upgrade"
alias acs="apt-cache search"
alias sdi="sudo dpkg -i"

# yum alias
alias ycu='sudo yum check-update'
alias yi='sudo yum install'
alias yli='sudo yum localinstall --nogpgcheck'
alias ypr='sudo yum provides'
alias yprw='sudo yum provides $(which $1)'
alias yr='sudo yum remove'
alias ys='sudo yum search'
alias yu='sudo yum update'
alias yut='sudo yum --enablerepo=updates-testing update'
alias yyi='sudo yum -y install'
alias yyr='sudo yum -y remove'
alias yys='sudo yum -C search'
alias yyu='sudo yum -y update'
alias yyyi='sudo yum -Cy install'

# brew aliases
alias bs="brew search"
alias bu="brew update"
alias bi="brew install"
alias bd="brew doctor"
alias bri="brew info"
alias br="brew remove"
alias bl="brew list"
alias bci="brew cask install"
alias bcs="brew cask search"

# pacman aliases
alias pac='sudo pacman -S'   # install
alias pacu='sudo pacman -Syu'    # update, add 'a' to the list of letters to update AUR packages if you use yaourt
alias pacr='sudo pacman -Rs'   # remove
alias pacs='sudo pacman -Ss'      # search
alias paci='sudo pacman -Si'      # info
alias paclo='sudo pacman -Qdt'    # list orphans
alias pacro='sudo paclo && sudo pacman -Rns $(pacman -Qtdq)' # remove orphans
alias pacc='sudo pacman -Scc'    # clean cache
alias paclf='sudo pacman -Ql'   # list files

# other aliases
alias tmux="tmux -2"
alias rm="rm -i"
alias cl="clear"
alias tgz='tar -zxvf'
alias tbz='tar -jxvf'

# export&source
export DISABLE_AUTO_TITLE='true'
export RPROMPT=$'%*'
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:$PATH"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# system specific
kernelName=`uname -s | tr -d '\n'`
if [[ $kernelName = "Linux" ]]; then
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        case $ID in
            "ubuntu")
                source /etc/profile.d/autojump.zsh
                ;;
            "centos")
                source /usr/share/autojump/autojump.zsh
                export JAVA_HOME=/home/aiops/jdk1.8.0_191
                export PATH=$JAVA_HOME/bin:$PATH
                export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
                export ZOOKEEPER_HOME=/home/aiops/zookeeper-3.4.10
                export HADOOP_HOME=/mnt/hdp/hadoop-2.7.6
                export PATH=$ZOOKEEPER_HOME/bin:$PATH
                ;;
            *)
                ;;
        esac
    fi
fi
if [[ $kernelName = "Darwin" ]]; then
    alias ctags="`brew --prefix`/bin/ctags"
    alias vim="`brew --prefix`/bin/mvim -v"
    [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
fi

