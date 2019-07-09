= Italic in vim and tmux = 
* $ tic -o $HOME/.terminfo tmux.terminfo 
* $ tic -o $HOME/.terminfo tmux-256color.terminfo
* $ tic -o $HOME/.terminfo xterm-256color.terminfo

== .tmux.conf ==
* set-option -g default-terminal "tmux-256color"
* set -as terminal-overrides ',xterm*:Tc:sitm=\E[3m'

