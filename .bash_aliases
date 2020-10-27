unalias la

alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias acmsniff="interceptty -s 'ispeed 115200 ospeed 115200' /dev/ttyACM0 /tmp/ttyACM0"
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias apingrok="ngrok http 4001"
alias apty="sudo apt-get install -y"
alias brc="source ~/.bashrc"
alias ..="cd .."
alias c="clear"
alias desk="cd ~/Desktop"
alias devices="cat /proc/devices"
alias dir="dir --color=auto"
alias docs="cd ~/Documents"
alias dotfiles='cd ${HOME}/projects/personal/dotfiles'
alias fs="cat /proc/filesystems"
alias genpasswd="strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'; echo"
alias gfordebug="gfortran -g -fbacktrace -ffpe-trap=zero,overflow,underflow -o"
alias gpgls="gpg --list-secret-keys --keyid-format LONG"
alias gpge="gpg --armor --export"
alias gping="ping g.cn -c 2"
alias h="history"
alias isodate="date -u +'%Y-%m-%dT%H:%M:%SZ'"
alias j="jobs"
alias ldmrs="sudo /etc/init.d/lightdm restart"
alias ls="ls -lax --color=auto"
alias lsa="stat -c '%A %a %n'"
alias lsusers="cut -d: -f1 /etc/passwd"
alias mirror="wget --mirror --page-requisites --adjust-extension --no-parent --convert-links"
alias myip="curl ipinfo.io"
alias mympd="mpd -v --no-daemon --stderr ~/.mpd.conf"
alias nmrs="sudo /etc/init.d/network-manager restart"
alias o="xdg-open"
alias p="cd ~/projects"
alias pipall="pip list --outdated | cut -d' ' -f1 | xargs pip install --upgrade"
alias ppsql="PGPASSWORD=postgres psql -U postgres -W"
alias ppgcli="PGPASSWORD=postgres pgcli -U postgres"
alias ptree="pstree -p"
alias pyhttp2="python2 -m SimpleHTTPServer"
alias pyhttp3="python3 -m http.server"
alias runinflux="sudo influxd -config /etc/influxdb/influxdb.conf"
alias script="script -aq"
alias src="apt source"
alias swatch="watch ss -stplu"
alias sysup="sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove"
alias turnoff="sudo poweroff"
alias v="vim"
alias ytmp3="youtube-dl -x --audio-format mp3 --audio-quality 0"
alias sst="ss -tunapl"

# this fixes issue with high CPU usage after laptop is woken up from sleep
alias msrw19="sudo wrmsr -a 0x19a 0x0"
alias msrr19="sudo rdmsr -a 0x19a"

alias aceclient="acestreamplayer.engine --client-console"

# python
alias venv="virtualenv --python=python3 venv"
alias venv2="virtualenv --python=python2 venv2"
alias svenv="source venv/bin/activate"
alias svenv2="source venv2/bin/activate"

# node/npm
alias n="npm"
alias ni="npm install"
alias nis="npm install --save"
alias nid="npm install --save-dev"
alias nig="npm install -g"
alias nit="npm install-test"
alias nits="npm install-test --save"
alias nitd="npm install-test --save-dev"
alias nu="npm uninstall"
alias nus="npm uninstall --save"
alias nud="npm uninstall --save-dev"
alias np="npm publish"
alias nup="npm unpublish"
alias nul="npm link"
alias nod="npm outdated"
alias nrb="npm rebuild"
alias nud="npm update"
alias nr="npm run"
alias nls="npm list"
alias nlsg="npm list --global"

# yarn aliases
alias ya="yarn add"
alias yga="yarn global add"
alias yad="yarn add --dev"
alias yi="yarn init"
alias ys="yarn start"
alias yr="yarn remove"

# git
alias g="git"
alias gcm="git checkout main"
# pull operation on all folders with dir
alias gpullall='for i in *; do if [[ -d "$i" && -d "${i}/.git" ]]; then git -C "${i}" pull; fi; done'
alias gru="git remote set-url origin"

# bad spellings
alias sl="ls"
alias mdkir="mkdir"

# heroku
alias hl="heroku login --sso"
alias hpsql="heroku psql --app"
alias hpgcli="heroku pgcli --app"
alias hbash="heroku run bash --app"
alias hmaint="heroku maintenance:on --app"
alias hmaintoff="heroku maintenance:off --app"
alias hzero="heroku ps:scale web=0 --app"
alias hone="heroku ps:scale web=1 --app"
alias hpurge="heroku repo:purge_cache --app"
alias hps="heroku ps --app"
alias hpexec="heroku ps:exec --app"
alias hrs="heroku restart --app"

# elixir/mix
alias m="mix"
alias mdg="mix deps.get"
alias mn="mix new"
alias mpn="mix phx.new"
alias mps="mix phx.server"
alias mer="mix ecto.reset"
alias mch="mix coveralls.html"
alias mtow="mix test --only wip"
alias mrh="mix run --no-halt"
alias mri="mix release.init"
alias mpr="mix phx.routes"
alias mts="mix test --stale"
alias mtw="mix test.watch"
alias megm="mix ecto.gen.migration"
alias mcw="mix compile --warnings-as-errors --all-warnings"
alias mi="iex -S mix"

# elixir/hex
alias mhs="mix hex.search"
alias mhd="mix hex.docs online"
alias mho="mix hex.outdated"
alias mha="mix hex.audit"

# elixir/xref
alias mxu="mix xref unreachable"
alias mxd="mix xref deprecated"
alias mxc="mix xref callers"
alias mxg="mix xref graph"
alias mxgd="mix format graph --format dot"

# go stuff
alias godoch="godoc -http=:5000"
alias gb="go build -x"
alias gr="go run -x"
alias get="go get"
alias getu="go get -u"
alias goproj="cd ~/projects/go"
alias god="go doc" # eg. go doc runtime Version
alias gods="go doc -src" # eg. go doc -src runtime Version

# react/react-native stuff
alias rn="react-native"
alias rnand="react-native run-android"
alias rnios="react-native run-ios"
alias rnland="react-native log-android"
alias rnlios="react-native log-ios"

# asdf stuff
alias asdfu="asdf plugin-update --all"
alias asdfl="asdf list-all"
alias asdfi="asdf install"
alias asdfg="asdf global"

# docker stuff
alias dlint="docker run --rm -i hadolint/hadolint"

# kubernetes stuff
alias k="kubectl"

# terraform
alias tf="terraform"
alias tfp="terraform plan"
alias tfi="terraform init"

# dpkg & others
alias pkgs="dpkg --status"

# hax0r stuff
alias opensmbshares="nmap -T4 -v -oA shares --script smb-enum-shares --script-args smbuser=username,smbpass=password -p445"  # opensmbshares 192.168.0.0/24

# vim
alias qvim="MIX_ENV=test vim -n -u NONE -i NONE -n"
alias qnvim="MIX_ENV=test nvim -n -u NONE -i NONE -n"

# tmux
alias tmls="tmux lsk"   # list all tmux key bindings

alias deadex="git ls-files lib | xargs ctags -f - | unused --stdin"
alias deadcode="git ls-files | xargs ctags -f - | unused --stdin"

if [[ -f "${HOME}/.bash_aliases_secret" ]]; then
  source "${HOME}/.bash_aliases_secret"
fi

ag=$(command -v ag)
[[ "$?" -eq 0 ]] && alias ag="ag --path-to-ignore ~/.agignore"

exa=$(command -v exa)
[[ "$?" -eq 0 ]] && alias ls="exa --long --header --git"

bat=$(command -v bat)
if [[ "$?" -eq 0 ]]; then
  alias cat="bat"
  alias catp="bat --style=plain --paging=never --tabs 0"
fi

if type nvim &> /dev/null; then
  alias vim="node -v && MIX_ENV=test nvim"
fi
