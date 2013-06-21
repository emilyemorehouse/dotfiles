# Script to create symlinks from home directory to any tracked dotfiles in ~/dotfiles
###############################################################################

# VARIABLES
# dotfiles directory
dir=~/dotfiles   
olddir=~/dotfiles_old		
# list of files/folders to symlink in homedir
files="bash_profile bashrc gitconfig gitignore_global hgignore_global hgrc Xresources"

###############################################################################

# Switch to home directory
cd ~
pwd


if [ ! -d $olddir ]; then
    echo "old_dotfiles does not exist"
    #create dotfiles_old in homedir
    echo "Creating $olddir for backup of any existing dotfiles in ~"
    mkdir -p $olddir
    echo "DONE"

    # change to the dotfiles directory
    echo "Changing to the $dir directory"
    cd $dir
    echo "DONE"

    # move existing dotfiles in homedir to dotfiles_old then create symlinks
    for file in $files; do
        echo "Copying any existing dotfiles from ~ to $olddir"
        cp  ~/.$file ~/dotfiles_old/
        echo "Creating symlink to $file in home directory."
        ln -s ~/.$file $dir/_$file
    done
fi
echo "Backups are completed."
