#!/bin/bash

function stowFn() {
    stow -R -v -d . -t ~ -S $1;
}

echo "Borrando archivos"

rm -rf ~/.scripts;
rm -rf ~/.tmux.conf;
rm -rf ~/.config/surfraw;
rm -rf ~/.config/nvim ~/.vimrc;

echo "Volviendo a vincular"

stowFn bin;
stowFn tmux;
stowFn surfraw;
stowFn neovim;

exit 0
