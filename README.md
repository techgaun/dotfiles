# dotfiles [![Build Status](https://travis-ci.org/techgaun/dotfiles.svg?branch=main)](https://travis-ci.org/techgaun/dotfiles)

> My dotfiles

This dotfiles repo is what I use to setup my systems.

## Setup

- Clone this repo and run `setup.sh` script
- Start feeling the awesomeness

## Whats in here

- vim configurations that I use along with SpaceVim and Neovim
- tmux configuration
- bash aliases
- bash prompt based on [this](https://github.com/mathiasbynens/dotfiles/blob/master/.bash_prompt)
- global gitignore and my git configuration
- global editorconfig
- httpie configuration
- my [bash functions](.functions)
- ssh config
- rest of the awesomeness that I might not have remembered to document here

## Reinstall vim

- If you wish to re-install/upgrade spacevim, you can set `FORCE_SPACEVIMINSTALL` to some value and
this will enforce installation of vim stuff while running `setup.sh` even if vim is already configured.

```shell
FORCE_SPACEVIMINSTALL=yup ./setup.sh
```

## Notes

- For `git diff`, I'm using [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy) so make sure you have if you use this .gitconfig
- Put your personal information for ssh on `~/.ssh/config.local`. This requires OpenSSH >= 7.3. See [Install Instruction](https://gist.github.com/techgaun/df66d37379df37838482c4c3470bc48e) for OpenSSH7.4 on Ubuntu 16.04
- Put your private bash aliases on `~/.bash_aliases_secret`.
- You can update [crontab](crontab) file and then run: `crontab crontab` to reload the crons.
- If you wish you to update crontab from your own crontab, you can run: `crontab -l > crontab` in this repo.

## Directory Structure

```bash
      1 .
      2 ├── .custom-files
      3 │   └── eye_inv.ico
      4 ├── .functions
      5 │   ├── codepoint
      6 │   ├── colors
      7 │   ├── extract
      8 │   ├── gitignore
      9 │   ├── gitpwn
     10 │   ├── gogo
     11 │   ├── golistdeps
     12 │   ├── gostatic
     13 │   ├── hccopy
     14 │   ├── heroku-copy
     15 │   ├── man
     16 │   ├── mdview
     17 │   ├── msgerr
     18 │   ├── pylatest
     19 │   ├── sslcert
     20 │   ├── tmuxinator.bash
     21 │   └── tre
     22 ├── httpie
     23 │   └── config.json
     24 ├── nvim
     25 │   ├── init-my.vim
     26 │   ├── init.vim
     27 │   ├── pyenv-setup.sh
     28 │   └── pyvenv-setup.sh
     29 ├── scripts
     30 │   ├── diff-highlight
     31 │   └── diff-so-fancy
     32 ├── .ackrc
     33 ├── .agignore
     34 ├── .bash_aliases
     35 ├── .bash_prompt
     36 ├── .bashrc.defaults
     37 ├── .ctags
     38 ├── curl-timing.txt
     39 ├── .editorconfig
     40 ├── .gemrc
     41 ├── .gitconfig
     42 ├── .gitignore
     43 ├── .globalrc
     44 ├── .iex.exs
     45 ├── .iftoprc
     46 ├── LICENSE
     47 ├── .mpd.conf
     48 ├── .psqlrc
     49 ├── .pythonrc.py
     50 ├── README.md
     51 ├── setup.sh
     52 ├── ssh_config
     53 ├── tags
     54 ├── .tern-config
     55 ├── .tigrc
     56 ├── .tmux.conf
     57 └── .travis.yml
     58
     59 5 directories, 51 files
```
