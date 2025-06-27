export EDITOR="emacsclient -c -a emacs"
export SUDO_EDITOR="$EDITOR"

[ -t 1 ] && exec zsh
