
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

alias cd='cd && ls -lah'
alias c='clear'
alias cd.='cd .. && ls -lah'
alias la='ls -a'
alias ll='ls -l'
alias l='ls -lah'
export PATH="$PATH:/usr/local/smlnj-110.75/bin"

PS1='\[\e[0;31m\]\u\[\e[0m\]@\[\e[0;37m\]\h\[\e[0m\]:\[\e[0;37m\]\w\[\e[0m\]\$ '


export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabaeaced

