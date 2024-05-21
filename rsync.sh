#!/bin/zsh -x
rsync --exclude .DS_Store --verbose ~/dotfiles/.* ~
