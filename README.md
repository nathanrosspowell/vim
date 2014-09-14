Vim
=======================================================================

A barebones vim setup.


Setup
-----------------------------------------------------------------------

#### Linux

Clone this repro and run the install script `install.bash` to get 
everything set up.

All of the plugins are set up as a git submodule. Including the 
[vim-pathogen][pathogen] plugin which makes all of this possible.

#### Windows

On Windows you should install the latest version from [vim.org][vimdownloads] then follow the instructions of the latest [release zip][release] from this repro.

Acknowledgements
-----------------------------------------------------------------------

* Tim Pope's:
  * [vim-pathogen][pathogen]
  * [vim-fugitive][fugitive]
  * [vim-sensible][sensible]
 
* Drew Neil of [vimcasts.org][vimcasts]:
  * [Vimcast #27][vimcast27] - Synchronizing plugins with git submodules and pathogen
  
* [Vim.org][vimorg] resources:
  * [gVim on Windows guide][vimwin]


[pathogen]: https://github.com/tpope/vim-pathogen
[fugitive]: https://github.com/tpope/vim-fugitive
[sensible]: https://github.com/tpope/vim-sensible
[vimcasts]: http://vimcasts.org/
[vimcast27]: http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
[vimorg]: http://vim.org
[vimwin]: http://www.vim.org/ugrankar.pdf
[vimdownloads]: http://www.vim.org/download.php
[release]: https://github.com/nathanrosspowell/vim/releases
