##################### ALIASES AND HELPFUL KEYBINDINGS #####################

# Auto list directory when changing
# This is one of my favorite things ever.
function cl () {
    cd "$@" && clear && ls -laAhF
}
# Change and list directory on creation
function md () {
    mkdir -p "$@" && cl "$@"
}
function makescreens() {
    pageres http://localhost:8100/"$@" < ~/Development/CuttleDev/Projects/screen-resolutions.txt
}
# Clone down Cuttlesoft repository
function cuttleclone() {
    hg clone ssh://hg@bitbucket.org/cuttlesoft/"$@"
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

##################### ALL DA PATH SETTINGS #####################
export PATH=/usr/local/share/npm/bin:$PATH
# export PATH="/usr/bin/python:${PATH}"
# export PYTHONPATH=usr/bin/python

export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin/python:${PATH}"
export PYTHONPATH=/Library/Frameworks/Python.framework/Versions/2.7/bin/python

export PATH="$PATH:/usr/local/smlnj-110.75/bin"
export PATH="/usr/local/heroku/bin:$PATH"
export CLASSPATH=".:/usr/local/lib/antlr-4.0-complete.jar:$CLASSPATH"
export PATH=$PATH:/opt/local
export PATH=$PATH:/opt/local/bin
export PATH="$PATH:/usr/bin/perl"
export PATH="$PATH:/usr/texbin"

# Postgres path settings
export PATH="$PATH:/Library/PostgreSQL/9.3/bin"
export PGDATA="/Library/PostgreSQL/9.3/data"
export PGHOST=localhost

# RVM path settings
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/Users/emilyemorehouse/.rvm/gems/ruby-2.2.1/bin"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export ANDROID_HOME='/Users/emilyemorehouse/Development/Resources/android-sdk-macosx'
# export PATH=${PATH}:$ANDROID_HOME/bin
# export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
# export JAVA_HOME="/usr/lib/jvm/java-1.7.0-openjdk-i386"
export ANT_HOME="/opt/ant"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:$ANT_HOME/bin"
export PATH=${PATH}:/Users/emilyemorehouse/Development/android-sdk-macosx/tools:/Users/emilyemorehouse/Development/android-sdk-macosx/platform-tools


##################### MISC: colors and settings #####################
# TERMINAL COLORS
export CLICOLOR=1
export LSCOLORS=FxbxbxdxDxegedabaeaced
export TERM=xterm-256color
PS1='\[\e[1;35m\]\u\[\e[0m\]@\[\e[0;33m\]\h\[\e[0m\]:\[\e[1;31m\]\W\[\e[0m\]\> '

# VENV wrapper settings
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Development
VIRTUALENVWRAPPER_PYTHON=/Library/Frameworks/Python.framework/Versions/2.7/bin/python
source /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh

export NVM_DIR="/Users/emilyemorehouse/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
