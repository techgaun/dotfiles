# dotfiles [![Build Status](https://travis-ci.org/techgaun/dotfiles.svg?branch=master)](https://travis-ci.org/techgaun/dotfiles)

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
- my [bash functions](.functions)
- ssh config

## Reinstall vim

- If you wish to re-install/upgrade vim, you can set `FORCE_VIMINSTALL` to some value and
this will enforce installation of vim stuff while running `setup.sh` even if vim is already configured.

```shell
FORCE_VIMINSTALL=yup ./setup.sh
```

## Notes

- For `git diff`, I'm using [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy) so make sure you have if you use this .gitconfig
- Put your personal information for ssh on `~/.ssh/config.local`. This requires OpenSSH >= 7.3. See [Install Instruction](https://gist.github.com/techgaun/df66d37379df37838482c4c3470bc48e) for OpenSSH7.4 on Ubuntu 16.04
