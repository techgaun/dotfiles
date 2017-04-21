#!/bin/bash

pyenv install 3.6.0
pyenv virtualenv 3.6.0 neovim
pyenv activate neovim
pip install neovim
pyenv which python

pyenv install 2.7.12
pyenv virtualenv 2.7.12 neovim2
pyenv activate neovim2
pip install neovim
pyenv which python

# set g:python_host_prog and g:python3_host_prog accordingly
