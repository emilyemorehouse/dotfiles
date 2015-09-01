# ALIASES AND HELPFUL KEYBINDINGS
# Function to list directory after changing
# This is one of my favorite things ever.
function cl () {
    cd "$@" && clear && ls -laAhF
    }
function md () {
    mkdir -p "$@" && cl "$@"
    }
function make_screens() {
    pageres http://localhost:8100/"$@" < ~/Development/CuttleDev/Projects/screen-resolutions.txt
}
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

alias antlr4='java -jar /usr/local/lib/antlr-4.0-complete.jar'
alias grun='java org.antlr.v4.runtime.misc.TestRig'

alias py_ex='chmod +x *.py'
alias fix_mamp='ln -s /Applications/MAMP/tmp/mysql/mysql.sock /tmp/mysql.sock'

# Quick access for files
alias goto_su='cl ~/Remote\ Storage/Google\ Drive/SUMMER\ 2014/'
alias goto_py='cl ~/Remote\ Storage/Google\ Drive/SPRING\ 2014/CIS4930\ Python'
alias goto_ncsi='cl ~/Development/NCSI/NCSI_Repo'
alias goto_llama='cl ~/Documents/FSU\ -\ All/2013-2014/2014-01\ SPRING\ CLASSES/CIS4933\ Honors\ Thesis/'

# Ionic Helpers
alias platform_reset='ios_reset && android_reset'
alias ios_reset='ionic platform rm ios && ionic platform add ios'
alias android_reset='ionic platform rm android && ionic platform add android'

# Project Quick Starts
alias ws='cl ~/Development/CuttleDev/Projects/WeatherSTEM/weatherstem.mobile && subl . && ionic serve'
alias ws_android='cordova build --release android && jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore platforms/android/ant-build/CordovaApp-release-unsigned.apk alias_name && /Users/emilyemorehouse/Development/Resources/adt-bundle-mac-x86_64-20140702/sdk/build-tools/android-4.4W/zipalign -v 4 platforms/android/ant-build/CordovaApp-release-unsigned.apk WeatherSTEM.apk'
alias altru='cl ~/Development/CuttleDev/Projects/Altruist/altruist.mobile && subl . && ionic serve'
# ALL DA PATH SETTINGS
export PATH=/usr/local/share/npm/bin:$PATH

export PATH="/usr/bin/python:${PATH}"
export PYTHONPATH=usr/bin/python

export PATH="$PATH:/usr/local/smlnj-110.75/bin"

export PATH="/usr/local/heroku/bin:$PATH"

export CLASSPATH=".:/usr/local/lib/antlr-4.0-complete.jar:$CLASSPATH"

export PATH="$PATH:/Library/PostgreSQL/9.3/bin"
export PGDATA="/Library/PostgreSQL/9.3/data"
export PGHOST=localhost

export PATH="$PATH:/usr/bin/perl"

export PATH="$PATH:/usr/texbin"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh


# show/hide all hidden files using script
alias togglehidden='sh ~/Development/Configs/dotfiles/togglehidden.sh'


# network connection aliases
alias airdown='sudo networksetup -setairportpower en0 off'
alias airup='sudo networksetup -setairportpower en0 on'


# TERMINAL COLORS
export CLICOLOR=1
export LSCOLORS=FxbxbxdxDxegedabaeaced
export TERM=xterm-256color
PS1='\[\e[1;35m\]\u\[\e[0m\]@\[\e[0;33m\]\h\[\e[0m\]:\[\e[1;31m\]\W\[\e[0m\]\> '


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export PATH=$PATH:/opt/local
export PATH=$PATH:/opt/local/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export ANDROID_HOME='/Users/emilyemorehouse/Development/Resources/adt-bundle-mac-x86_64-20140702/sdk'
# export PATH=${PATH}:$ANDROID_HOME/bin
# export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
# export JAVA_HOME="/usr/lib/jvm/java-1.7.0-openjdk-i386"
export ANT_HOME="/opt/ant"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:$ANT_HOME/bin"

export PATH=${PATH}:/Users/emilyemorehouse/Development/adt-bundle-mac-x86_64-20140702/sdk/tools:/Users/emilyemorehouse/Development/adt-bundle-mac-x86_64-20140702/sdk/platform-tools


