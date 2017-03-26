#!/bin/bash

SRC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# setup spf13-vim if not installed already or FORCE_VIMINSTALL is set
if [[ ! -d "${HOME}/.spf13-vim-3" || "x${FORCE_VIMINSTALL}" != "x" ]]; then
  curl -L -o - https://github.com/techgaun/spf13-vim/raw/3.0/bootstrap.sh | \
    REPO_URI="https://github.com/techgaun/spf13-vim.git" REPO_BRANCH="tg-custom" sh
fi

[[ ! -e "${HOME}/.httpie" ]] && mkdir "${HOME}/.httpie"

[[ -L "${HOME}/.functions" ]] || ln -sf "${SRC_DIR}/.functions" "${HOME}/.functions"

ln -sf "${SRC_DIR}/.ackrc" "${HOME}/.ackrc"
ln -sf "${SRC_DIR}/.bash_aliases" "${HOME}/.bash_aliases"
ln -sf "${SRC_DIR}/.bash_prompt" "${HOME}/.bash_prompt"
ln -sf "${SRC_DIR}/.bashrc.defaults" "${HOME}/.bashrc.defaults"
ln -sf "${SRC_DIR}/.gemrc" "${HOME}/.gemrc"
ln -sf "${SRC_DIR}/.gitconfig" "${HOME}/.gitconfig"
ln -sf "${SRC_DIR}/.gitignore" "${HOME}/.gitignore"
ln -sf "${SRC_DIR}/httpie/config.json" "${HOME}/.httpie/config.json"
ln -sf "${SRC_DIR}/.iex.exs" "${HOME}/.iex.exs"
ln -sf "${SRC_DIR}/.iftoprc" "${HOME}/.iftoprc"
ln -sf "${SRC_DIR}/.psqlrc" "${HOME}/.psqlrc"
ln -sf "${SRC_DIR}/ssh_config" "${HOME}/.ssh/config"
ln -sf "${SRC_DIR}/.tmux.conf" "${HOME}/.tmux.conf"
ln -sf "${SRC_DIR}/.vimrc.bundles.local" "${HOME}/.vimrc.bundles.local"
ln -sf "${SRC_DIR}/.vimrc.local" "${HOME}/.vimrc.local"

# update perms wherever necessary
chmod 600 ~/.ssh/config

if ! grep ".bashrc.defaults" ~/.bashrc > /dev/null; then
  echo "source ~/.bashrc.defaults" >> ~/.bashrc
fi

[[ ! -e "${HOME}/.bin" ]] && mkdir "${HOME}/.bin"

for f in ${SRC_DIR}/scripts/*; do
  ln -sf $f "${HOME}/.bin/"
done
