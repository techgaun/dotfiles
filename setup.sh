#!/bin/bash

SRC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sf "${SRC_DIR}/.gitignore" "${HOME}/.gitignore"
ln -sf "${SRC_DIR}/.gitconfig" "${HOME}/.gitconfig"
ln -sf "${SRC_DIR}/.tmux.conf" "${HOME}/.tmux.conf"
ln -sf "${SRC_DIR}/.bash_aliases" "${HOME}/.bash_aliases"
