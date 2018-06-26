## files: tmux.conf zshrc vimrc
for f in tmux.conf zshrc vimrc tmuxp config/powerline
do
    echo $f
    if [[ ! -L ~/.$f ]]; then
        rm ~/.$f
    else
        unlink ~/.$f # rather than rm $f
    fi
    ln -s ~/.terminal/$f ~/.$f
done

## subdirs
for dir in .vim
do
    for subdir in `ls $dir`
    do
        echo $dir/$subdir
        if [[ ! -L ~/$dir/$subdir ]]; then
            rm ~/$dir/$subdir
        else
            unlink ~/$dir/$subdir
        fi
        ln -s ~/.terminal/$dir/$subdir ~/$dir/$subdir
    done
done
