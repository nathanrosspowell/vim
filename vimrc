" Active pathogen first.
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Activate all of the plugins functionality.
filetype plugin indent on

" System Function.
fun! MySys()
      return "linux"
endfun

" Stop vi support.
set nocompatible

" Turn off modelines
set modelines=0

" Turn on line numbers.
set number

" Tab = 4 spaces in size.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Use ; like :
nnoremap ; :

" Code folding. Use za command.
set foldmethod=indent
set foldlevel=99

" Use Zenburn colour scheme
set t_Co=256
set background=dark
colorscheme zenburn

" Set the font.
if has( "gui_running" )
    if has( "gui_gtk2" )
        set guifont=Inconsolata\ 10
    elseif has( "gui_win32" )
        set guifont=Consolas:h10:cANSI
    endif
endif

" Softwrap up and down lines
nnoremap j gj
nnoremap k gk

" Easier window navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" FORCE the use of hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" <Leader> additions

" Quick open .vimrc
nmap <leader>v :tabedit $MYVIMRC<CR>

" Cut all trailing white space
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Source the vimrc file after saving it
if has("autocmd")
    if MySys() == "windows"
        autocmd bufwritepost _vimrc source $MYVIMRC
    else
        autocmd bufwritepost vimrc source $MYVIMRC
    endif
endif

" Better clipboard copy and paste.
set clipboard=unnamed

" C/C++ settings.
au BufRead,BufNewFile *.inl set filetype=cpp
au BufNewFile,BufRead *.inl set syntax=cpp11
au BufNewFile,BufRead *.cpp set syntax=cpp11
au BufNewFile,BufRead *.h set syntax=cpp11
au BufNewFile,BufRead *.hpp set syntax=cpp11

" Arduino file types
au BufRead,BufNewFile *.ino set filetype=cpp
au BufNewFile,BufRead *.ino set syntax=cpp11
