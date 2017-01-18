#!/bin/bash

SRC_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sf "${SRC_DIR}/.gitignore" "${HOME}/.gitignore"
ln -sf "${SRC_DIR}/.gitconfig" "${HOME}/.gitconfig"
