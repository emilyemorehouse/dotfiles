# ALIASES AND HELPFUL KEYBINDINGS
# Function to list directory after changing
# This is one of my favorite things ever.
function cl () {
    cd "$@" && clear && ls -laAhF
    }
function md () {
    mkdir "$@" && cl "$@"
    }
alias c='clear'
alias la='ls -a'
alias ll='ls -l'
alias l='ls -laAhF'
alias dir='ls -a'

# change directory aliases
alias cd.='cd .. && ls -lah'
alias cd..='cd ..'
alias cd....='cd ../../../'
alias cd.....='cd ../../../../'
alias cd......='cd ../../../../../'

alias antlr4='java -jar /usr/local/lib/antlr-4.0-complete.jar'
alias grun='java org.antlr.v4.runtime.misc.TestRig'

alias py_ex='chmod +x *.py'

# Quick access for files
alias goto_su='cl ~/Remote\ Storage/Google\ Drive/SUMMER\ 2014/'
alias goto_py='cl ~/Remote\ Storage/Google\ Drive/SPRING\ 2014/CIS4930\ Python'
alias goto_ncsi='cl ~/Development/NCSI/NCSI_Repo'
alias goto_llama='cl ~/Documents/FSU\ -\ All/2013-2014/2014-01\ SPRING\ CLASSES/CIS4933\ Honors\ Thesis/'


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

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh


# show/hide all hidden files using script
alias togglehidden='sh ~/dotfiles/togglehidden.sh'


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

export PATH=${PATH}:/Users/emilyemorehouse/Development/Android/adt-bundle-mac-x86_64-20140702/sdk/tools:/Users/emilyemorehouse/Development/Android/adt-bundle-mac-x86_64-20140702/sdk/platform-tools


