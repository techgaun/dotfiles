#!/bin/bash

SRC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# setup spf13-vim if not installed already or FORCE_VIMINSTALL is set
if [[ ! -d "${HOME}/.spf13-vim-3" || "x${FORCE_VIMINSTALL}" != "x" ]]; then
  REPO_URI="https://github.com/techgaun/spf13-vim.git" \
    curl -L -o - https://github.com/techgaun/spf13-vim/raw/3.0/bootstrap.sh | sh
fi

ln -sf "${SRC_DIR}/.gitignore" "${HOME}/.gitignore"
ln -sf "${SRC_DIR}/.gitconfig" "${HOME}/.gitconfig"
ln -sf "${SRC_DIR}/.tmux.conf" "${HOME}/.tmux.conf"
ln -sf "${SRC_DIR}/.bash_aliases" "${HOME}/.bash_aliases"
ln -sf "${SRC_DIR}/.vimrc.local" "${HOME}/.vimrc.local"
ln -sf "${SRC_DIR}/.vimrc.bundles.local" "${HOME}/.vimrc.bundles.local"
ln -sf "${SRC_DIR}/.bashrc.defaults" "${HOME}/.bashrc.defaults"

if ! grep ".bashrc.defaults" ~/.bashrc > /dev/null; then
  echo "source ~/.bashrc.defaults" >> ~/.bashrc
fi
