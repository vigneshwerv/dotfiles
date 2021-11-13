#!/usr/bin/env zsh
set +x

# setup symlinks to home directory
ln -s .tmux.conf $HOME/.tmux.conf >/dev/null 2>&1
ln -s .vimrc $HOME/.vimrc >/dev/null 2>&1
