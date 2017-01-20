# dotfiles

> My dotfiles revamped

This dotfiles repo is what I use to setup my systems.

## Setup

- Clone this repo and run `setup.sh` script
- Start feeling the awesomeness

## Whats in here

- vim configurations that I use along with [spf13-vim](https://github.com/techgaun/spf13-vim)
- tmux configuration
- bash aliases
- bash prompt based on [this](https://github.com/mathiasbynens/dotfiles/blob/master/.bash_prompt)
- global gitignore and my git configuration
- global editorconfig
- httpie configuration

## Reinstall vim

- If you wish to re-install/upgrade vim, you can set `FORCE_VIMINSTALL` to some value and
this will enforce installation of vim stuff while running `setup.sh` even if vim is already configured.

```shell
FORCE_VIMINSTALL=yup ./setup.sh
```
