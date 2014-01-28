files="Xresources bash_profile bashrc gitconfig gitignore_global hgignore_global hgrc vimrc"

# This is being finicky.
for file in $files; do
    echo "Copying and converting file names"
    cp ~/.$file ~/dotfiles/_$file
    rm ~/dotfiles/.$file
done