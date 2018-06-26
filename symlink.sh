# ln ~/.terminal/* to ~/.*
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
        unlink ~/$dir/$subdir
        ln -s ~/.terminal/$dir/$subdir ~/$dir/$subdir
    done
done
