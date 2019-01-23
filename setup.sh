#!/bin/bash

SRC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
NVIM_DIR="${HOME}/.config/nvim"
SPACEVIM_DIR="${HOME}/.SpaceVim.d"

if [[ ! -d "${HOME}/.SpaceVim" || "x${FORCE_SPACEVIMINSTALL}" != "x" ]]; then
  curl -sLf https://spacevim.org/install.sh | bash
fi

[[ ! -e "${HOME}/.httpie" ]] && mkdir "${HOME}/.httpie"

[[ -L "${HOME}/.functions" ]] || ln -sf "${SRC_DIR}/.functions" "${HOME}/.functions"

[[ -L "${HOME}/.custom-files" ]] || ln -sf "${SRC_DIR}/.custom-files" "${HOME}/.custom-files"

[[ -f "${HOME}/.functions/tmuxinator.bash" ]] || wget 'https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.bash' -O "${HOME}/.functions/tmuxinator.bash"

[[ -d "${NVIM_DIR}" ]] || mkdir -p "${NVIM_DIR}"

[[ -d "${SPACEVIM_DIR}" ]] || mkdir -p "${SPACEVIM_DIR}"

[[ -d "${NVIM_DIR}/autoload" ]] || curl -fLo "${NVIM_DIR}/autoload/plug.vim" --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

[[ -d "${HOME}/.tmux/plugins/tpm" ]] || git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ln -sf "${SRC_DIR}/.ackrc" "${HOME}/.ackrc"
ln -sf "${SRC_DIR}/.agignore" "${HOME}/.agignore"
ln -sf "${SRC_DIR}/.bash_aliases" "${HOME}/.bash_aliases"
ln -sf "${SRC_DIR}/.bash_prompt" "${HOME}/.bash_prompt"
ln -sf "${SRC_DIR}/.bashrc.defaults" "${HOME}/.bashrc.defaults"
ln -sf "${SRC_DIR}/curl-timing.txt" "${HOME}/.curl-timing.txt"
ln -sf "${SRC_DIR}/.ctags" "${HOME}/.ctags"
ln -sf "${SRC_DIR}/.gemrc" "${HOME}/.gemrc"
ln -sf "${SRC_DIR}/.gitconfig" "${HOME}/.gitconfig"
ln -sf "${SRC_DIR}/.gitignore" "${HOME}/.gitignore"
ln -sf "${SRC_DIR}/.globalrc" "${HOME}/.globalrc"
ln -sf "${SRC_DIR}/httpie/config.json" "${HOME}/.httpie/config.json"
ln -sf "${SRC_DIR}/.iex.exs" "${HOME}/.iex.exs"
ln -sf "${SRC_DIR}/.iftoprc" "${HOME}/.iftoprc"
ln -sf "${SRC_DIR}/.mpd.conf" "${HOME}/.mpd.conf"
# ln -sf "${SRC_DIR}/nvim/init.vim" "${HOME}/.config/nvim/init.vim"
ln -sf "${SRC_DIR}/nvim/init.vim" "${HOME}/.SpaceVim.d/init.vim"
ln -sf "${SRC_DIR}/.psqlrc" "${HOME}/.psqlrc"
ln -sf "${SRC_DIR}/.pgclirc" "${HOME}/.pgclirc"
ln -sf "${SRC_DIR}/.pythonrc.py" "${HOME}/.pythonrc.py"
ln -sf "${SRC_DIR}/ssh_config" "${HOME}/.ssh/config"
ln -sf "${SRC_DIR}/.tern-config" "${HOME}/.tern-config"
ln -sf "${SRC_DIR}/.tigrc" "${HOME}/.tigrc"
ln -sf "${SRC_DIR}/.tmux.conf" "${HOME}/.tmux.conf"

# update perms wherever necessary
chmod 600 ~/.ssh/config

if ! grep ".bashrc.defaults" ~/.bashrc > /dev/null; then
  echo "source ~/.bashrc.defaults" >> ~/.bashrc
fi

[[ ! -e "${HOME}/.bin" ]] && mkdir "${HOME}/.bin"

for f in ${SRC_DIR}/scripts/*; do
  ln -sf "$f" "${HOME}/.bin/"
done
