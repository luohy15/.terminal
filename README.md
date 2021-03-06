# Terminal setup based on ansible

## Modules

### zsh

[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh): zsh configuration framework

[fzf](https://github.com/junegunn/fzf): 🌸 A command-line fuzzy finder

[powerline](https://github.com/powerline/powerline): statusline plugin

alias: some alias for package manager

### tmux

[powerline](https://github.com/powerline/powerline): statusline plugin

[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator): move between vim panes and tmux splits seamlessly

shortcut: reload, split, resize, switch

### vim

[vim-plug](https://github.com/junegunn/vim-plug): 🌺 Minimalist Vim Plugin Manager

[fzf](https://github.com/junegunn/fzf): 🌸 A command-line fuzzy finder

[powerline](https://github.com/powerline/powerline): statusline plugin

[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator): move between vim panes and tmux splits seamlessly

## Setup

Requires root privileges:

```
ansible-playbook main.yml
```

If your need to enter a password, run with `--ask-become-pass` :

```
ansible-playbook main.yml --ask-become-pass
```
