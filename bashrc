# --------------------------- ALIASES AND FUNCTIONS--------------------------- #

# Auto list directory when changing
# This is one of my favorite things ever.
function cl () {
    cd "$@" && clear && ls -laAhF
}
# Change and list directory on creation
function md () {
    mkdir -p "$@" && cl "$@"
}function makescreens() {
    pageres http://localhost:8100/"$@" < ~/Development/CuttleDev/Projects/screen-resolutions.txt
}
# Clone down Cuttlesoft repository
function cuttleclone() {
    git clone ssh://git@github.com/cuttlesoft/"$@"
}
# Change to Cuttlesoft project folder
function cuttleproject() {
    cl ~/Development/CuttleDev/Project/Clients/"$@"
}

# Make resources for an Ionic project with different icons for each platform
function ionicresources() {
  mkdir resources/.tmp

  cp -f resources/icon-ios.psd resources/icon.psd
  ionic cordova resources --icon

  mv -f resources/ios/icon/* resources/.tmp
  rm resources/icon.psd

  cp -f resources/icon-android.psd resources/icon.psd
  ionic cordova resources --icon

  rm resources/ios/icon/*
  mv -f resources/.tmp/* resources/ios/icon

  rm resources/.tmp
  rm resources/icon.psd

  ionic cordova resources --splash
}

# general aliases
alias c='clear'
alias la='ls -a'
alias ll='ls -l'
alias l='ls -laAhF'
alias dir='ls -a'
alias cmon='sudo $(history -p !!)'
alias rm='rmtrash'

# change directory aliases
alias cd.='cd .. && ls -lah'
alias cd..='cd ..'
alias cd....='cd ../../../'
alias cd.....='cd ../../../../'
alias cd......='cd ../../../../../'

# Misc aliases
alias antlr4='java -jar /usr/local/lib/antlr-4.0-complete.jar'
alias grun='java org.antlr.v4.runtime.misc.TestRig'
alias fix_mamp='ln -s /Applications/MAMP/tmp/mysql/mysql.sock /tmp/mysql.sock'

# Python-specific aliases
alias py_ex='chmod +x *.py'
alias mkv='mkvirtualenv'
alias mktv='mktmpenv'
alias mkv3='mkvirtualenv --python=/usr/local/bin/python3'
alias rmv='rmvirtualenv'

# Ionic Helpers
alias platform_reset='ios_reset && android_reset'
alias ios_reset='ionic platform rm ios && ionic platform add ios'
alias android_reset='ionic platform rm android && ionic platform add android'

# Project Quick Starts
alias ws='cl ~/Development/CuttleDev/Projects/Clients/WeatherSTEM/weatherstem.mobile && subl . && ionic serve'

# show/hide all hidden files using script
alias togglehidden='sh ~/Development/Configs/dotfiles/togglehidden.sh'

# network connection aliases
alias airdown='sudo networksetup -setairportpower en0 off'
alias airup='sudo networksetup -setairportpower en0 on'
alias wifi_passwd='security find-generic-password -ga labnol | grep password'

# mysql
alias mysql.start="sudo /usr/local/mysql/support-files/mysql.server start"
alias mysql.stop="sudo /usr/local/mysql/support-files/mysql.server stop"
alias mysql.restart="sudo /usr/local/mysql/support-files/mysql.server restart"
alias mysql.status="sudo /usr/local/mysql/support-files/mysql.server status"

# ------------------------------- PATH SETTINGS ------------------------------ #
# custom path settings
export MANPATH=/usr/local/man:$MANPATH
export PATH=/usr/local/bin:$PATH  # give /usr/local/bin the highest precedence
export PATH=$PATH:HOME/bin:/usr/local/opt/python/libexec/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.6/bin
export PATH=$PATH:$HOME/.fastlane/bin
export PATH=$PATH:/usr/local/mysql/bin

# Android path settings
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/bin
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/26.0.2

# Yarn path settings
export PATH=$PATH:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin

# ------------------------------- MISC SETTINGS ------------------------------ #
# TERMINAL COLORS
export CLICOLOR=1
export LSCOLORS=FxbxbxdxDxegedabaeaced
export TERM=xterm-256color
PS1='\[\e[1;35m\]\u\[\e[0m\]@\[\e[0;33m\]\h\[\e[0m\]:\[\e[1;31m\]\W\[\e[0m\]\> '

# VENV wrapper settings
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Development
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
source /usr/local/bin/virtualenvwrapper.sh

export NVM_DIR="/Users/emilyemorehouse/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# ASCII settings for click (http://click.pocoo.org/5/python3/)
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# ------------------------ TINY CARE TERMINAL SETTINGS ----------------------- #
# List of accounts to read the last tweet from, comma separated
# The first in the list is read by the party parrot.
export TTC_BOTS='tinycarebot,selfcare_bot,magicrealismbot'

# Use this to have a different animal say a message in the big box.
# export TTC_SAY_BOX='mario'

# List of folders to look into for `git` commits, comma separated.
export TTC_REPOS='~/Development/CuttleDev,~Development/OSS/Alive,~/Development/Conferences'

# The max directory-depth to look for git repositories in
# the directories defined with `TTC_REPOS`. Note that the deeper
# the directory depth, the slower the results will be fetched.
export TTC_REPOS_DEPTH=6

# Which method is to be used to read the git commits ('gitstandup' | 'gitlog').
# If you're having problems seeing your commits in the dahsboard, set
# this value to gitlog.
export TTC_GITBOT='gitlog'

# Location/zip code to check the weather for. Both 90210 and "San Francisco, CA"
# _should_ be ok (the zip code doesn't always work -- use a location
# first, if you can). It's using weather.service.msn.com behind the curtains.
export TTC_WEATHER='Denver'

# Set to false if you're an imperial lover <3
export TTC_CELSIUS=false

# Unset this if you _don't_ want to use Twitter keys and want to
# use web scraping instead.
export TTC_APIKEYS=false

# Refresh the dashboard every 20 minutes.
export TTC_UPDATE_INTERVAL=20

# Turn off terminal title
export TTC_TERMINAL_TITLE=false

# Twitter api keys
export TTC_CONSUMER_KEY='...'
export TTC_CONSUMER_SECRET='...'
export TTC_ACCESS_TOKEN='...'
export TTC_ACCESS_TOKEN_SECRET='...'

# ------------------------- RBENV INIT (leave at end) ------------------------ #
eval "$(rbenv init -)"
