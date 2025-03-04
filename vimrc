" Enable line numbers
set number


" Enable syntax highlighting
syntax on


" Set tab width to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab


" Enable mouse support
set mouse=a
nmap <F2> :NERDTreeToggle<CR>

" Set custom keybindings
inoremap jj <Esc>


" Install vim-plug (plugin manager)
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
      silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

call plug#begin('~/.vim/plugged')

" List plugins
Plug 'preservim/nerdtree'

call plug#end()

