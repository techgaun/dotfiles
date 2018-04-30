alias lsusers="cut -d: -f1 /etc/passwd"
alias dir="dir --color=auto"
alias pyhttp3="python3 -m http.server"
alias pyhttp2="python2 -m SimpleHTTPServer"
alias apty="sudo apt-get install -y"
alias ls="ls -lax --color=auto"
alias docs="cd ~/Documents"
alias desk="cd ~/Desktop"
alias p="cd ~/projects"
alias gping="ping g.cn -c 2"
alias turnoff="sudo poweroff"
alias genpasswd="strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'; echo"
alias ..="cd .."
alias ...="cd ../.."
alias h="history"
alias j="jobs"
alias myip="curl ipinfo.io"
alias runinflux="sudo influxd -config /etc/influxdb/influxdb.conf"
alias ppsql="PGPASSWORD=postgres psql -U postgres -W"
alias apingrok="ngrok http 4001"
alias mirror="wget --mirror --page-requisites --adjust-extension --no-parent --convert-links"
alias script="script -aq"
alias brc="source ~/.bashrc"
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias swatch="watch ss -stplu"
alias nmrs="sudo /etc/init.d/network-manager restart"
alias pipall="pip list --outdated | cut -d' ' -f1 | xargs pip install --upgrade"
alias mympd="mpd -v --no-daemon --stderr ~/.mpd.conf"
alias dotfiles="cd ${HOME}/projects/personal/dotfiles"
alias ldmrs="sudo /etc/init.d/lightdm restart"
alias acmsniff="interceptty -s 'ispeed 115200 ospeed 115200' /dev/ttyACM0 /tmp/ttyACM0"
alias sysup="sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove"
alias ytmp3="youtube-dl -x --audio-format mp3 --audio-quality 0"
alias src="apt source"
alias msrw19="sudo wrmsr -a 0x19a 0x0"
alias msrr19="sudo rdmsr -a 0x19a"

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
alias gcm="git checkout master"

# bad spellings
alias sl="ls"
alias mdkir="mkdir"

# heroku
alias hl="heroku login --sso"
alias hpsql="heroku psql --app"
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
alias mn="mix new"
alias mpn="mix phx.new"
alias mps="mix phx.server"
alias mer="mix ecto.reset"
alias mch="mix coveralls.html"
alias mtow="mix test --only wip"
alias mrh="mix run --no-halt"
alias mpr="mix phx.routes"
alias mts="mix test --stale"
alias mtw="mix test.watch"
alias megm="mix ecto.gen.migration"

# elixir/hex
alias mhs="mix hex.search"
alias mhd="mix hex.docs open"
alias mho="mix hex.outdated"
alias mha="mix hex.audit"

# go stuff
alias godoch="godoc -http=:5000"
alias gb="go build -x"
alias gr="go run -x"
alias get="go get"
alias getu="go get -u"
alias goproj="cd ~/projects/go"

# react/react-native stuff
alias rn="react-native"
alias rnand="react-native run-android"
alias rnios="react-native run-ios"
alias rnland="react-native log-android"
alias rnlios="react-native log-ios"

# hax0r stuff
alias opensmbshares="nmap -T4 -v -oA shares --script smb-enum-shares --script-args smbuser=username,smbpass=password -p445"  # opensmbshares 192.168.0.0/24

alias qvim="vim -n -u NONE -i NONE -n"
alias qnvim="nvim -n -u NONE -i NONE -n"

alias deadex="git ls-files lib | xargs ctags -f - | unused --stdin"
alias deadcode="git ls-files | xargs ctags -f - | unused --stdin"

if [[ -f "${HOME}/.bash_aliases_secret" ]]; then
  source ${HOME}/.bash_aliases_secret
fi

ag=$(command -v ag)
[[ "$?" -eq 0 ]] && alias ag="ag --path-to-ignore ~/.agignore"

if type nvim &> /dev/null; then
  alias vim="nvim"
fi
