#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Function to remove files and create symbolic links.
create_new_symlink () {
    if [ -f $2 ];
    then
        echo Removing file $2
        rm $2
    elif [ -h $2 ];
    then
        echo Removing symbolic link to $2
        rm $2
    fi
    echo New  symbolic link $1 to $2
    ln -s --relative $1 $2
}
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Install all needed software.
package_list=(
    curl
    vim
    ttf-inconsolata
    exuberant-ctags
)
sudo apt-get install ${package_list[@]}
sudo apt-get autoremove
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Get the current dir of this script.
current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd current_dir
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Symbolic links for vim
create_new_symlink . ~/.vim
# Symbolic links for vimrc
create_new_symlink vimrc ~/.vimrc
# Symbolic links for gvimrc
create_new_symlink gvimrc ~/.gvimrc
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Make sure there is a plugin directory.
if [ ! -d bundle ]
then
    mkdir bundle
fi
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# git submodules.
git submodule update --init --recursive
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
popd
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
