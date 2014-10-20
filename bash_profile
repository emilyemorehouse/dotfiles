if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

##
# Your previous /Users/emilyemorehouse/.bash_profile file was backed up as /Users/emilyemorehouse/.bash_profile.macports-saved_2014-06-05_at_15:44:35
##

# MacPorts Installer addition on 2014-06-05_at_15:44:35: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

