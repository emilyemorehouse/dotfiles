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
  ionic resources --icon

  mv -f resources/ios/icon/* resources/.tmp
  rm -f resources/icon.psd

  cp -f resources/icon-android.psd resources/icon.psd
  ionic resources --icon

  rm -f resources/ios/icon/*
  mv -f resources/.tmp/* resources/ios/icon

  rm -rf resources/.tmp
  rm -f resources/icon.psd

  ionic resources --splash
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
VIRTUALENVWRAPPER_PYTHON=/Library/Frameworks/Python.framework/Versions/2.7/bin/python
# source /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper.sh

export NVM_DIR="/Users/emilyemorehouse/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
