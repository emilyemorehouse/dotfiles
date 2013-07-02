# Function to list directory after changing
function cl () {
    cd "$@" && ls
    }

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

#alias cdls='cd $1 &&  ls -lah'
alias c='clear'
alias la='ls -a'
alias ll='ls -l'
alias l='ls -laAhF'
alias dir='ls -a'

export PATH="$PATH:/usr/local/smlnj-110.75/bin"

# change directory aliases
alias cd.='cd .. && ls -lah'
alias cd....='cd ../../../'
alias cd.....='cd ../../../../'
alias cd......='cd ../../../../../'
alias cd..='cd ..'

# network connection aliases
alias airdown='sudo /sbin/ifconfig en1 down'
alias airup='sudo /sbin/ifconfig en1 up'
alias ethdown='sudo /sbin/ifconfig en0 down'
alias ethup='sudo /sbin/ifconfig en0 up'

# show/hide all hidden files using script
alias togglehidden='sh ~/dotfiles/togglehidden.sh'

# show/hide all hidden files using standard commands; requires finder restart
# alias showall='defaults write com.apple.Finder AppleShowAllFiles TRUE'
# alias hideall='defaults write com.apple.Finder AppleShowAllFiles FALSE'

export CLICOLOR=1
export LSCOLORS=FxbxbxdxDxegedabaeaced
export TERM=xterm-256color
PS1='\[\e[1;35m\]\u\[\e[0m\]@\[\e[0;37m\]\h\[\e[0m\]:\[\e[1;33m\]\W\[\e[0m\]\$ '
