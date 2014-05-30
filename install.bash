#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Install all needed software.
packageList=(
    curl
    vim
    ttf-inconsolata
    exuberant-ctags
)
sudo apt-get install ${packagelist[@]}
sudo apt-get autoremove
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Symbolic links for vim
if [ -f ~/.vim ];
then
    rm ~/.vim
fi
ln -s ~/vim/ ~/.vim
# Symbolic links for vimrc
if [ -f ~/.vimrc ];
then
    rm ~/.vimrc
fi
ln -s ~/vim/vimrc ~/.vimrc
# Symbolic links for gvimrc
if [ -f ~/.gvimrc ];
then
    rm ~/.gvimrc
fi
ln -s ~/vim/gvimrc ~/.gvimrc
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Make sure there is a plugin directory.
if [ ! -d bundle ]
then
    mkdir bundle
fi
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# git submodules.
git submodule init
git submodule update
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Launch vim. This will output errors if things went wrong.
vim README.md