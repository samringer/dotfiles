set nocompatible              " required
filetype off                  " required

"set the runtime path to include Vundle and initialize
"set rtp+=~/home/samr/.vim/bundle/Vundle.vim
"set rtp=/home/samr/.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'w0rp/ale'
Plugin 'nvie/vim-flake8'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'

" Tmux and vim navigator
Bundle 'christoomey/vim-tmux-navigator'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Getting python indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

"Adding support for utf8
set encoding=utf-8

"Get search results always in the centre of the screen
set scrolloff=999

"Make code look nice
let python_highlight_all=1
syntax on

"Adding hybrid line numbering
:set number relativenumber

"Stops vim from splitting lines
set formatoptions-=tc

"Vim window resizing
set splitbelow
set splitright

"Turn off swap files
set noswapfile
set nobackup
set nowb

"Keep undo history across sessions
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" Better search
set hlsearch
set incsearch

"NERDtree mapping
nmap <C-n> :NERDTreeToggle<CR>

"NERDtree relative line numbers
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

"Better NERDtree closing
let NERDTreeQuitOnOpen = 1

"Allow mouse scrolling
:set mouse=a 

"Better highlighting
set background=light

"Buffer stuff
set hidden

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
