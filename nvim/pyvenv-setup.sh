#!/bin/bash
pyvenv-3.5 --clear --system-site-packages --copies ~/pyvenvs/neovim
source ~/pyvenvs/neovim/bin/activate
pip install wheel
pip install --upgrade pip
pip install neovim
