CUR_SESSION=${1:-$(tmux ls | sed -n '/(attached)/s/:.*//p')}
CONF=$HOME/.terminal/tmuxp/$CUR_SESSION.yaml
if [[ -f $CONF ]]
then
    echo "exist"
    rm -f $CONF
fi
printf '\ny\n\ny\n' | tmuxp freeze $CUR_SESSION
