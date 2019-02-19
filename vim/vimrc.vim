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
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'sandeepcr529/buffet.vim'

" Tmux and vim navigator
Bundle 'christoomey/vim-tmux-navigator'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab

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

"Buffet mapping
map <C-h> :Bufferlist<CR>

"NERDtree mapping
nmap <C-a> :NERDTreeToggle<CR>

"Make NERDTREE look cleaner
let NERDTreeDirArrows = 1
let g:NERDTreeNodeDelimiter = "\u00a0"

"NERDtree relative line numbers
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

"Better NERDtree closing
let NERDTreeQuitOnOpen = 1

"Custom NERDtree split keys
let NERDTreeMapOpenVSplit='v'
let NERDTreeMapOpenSplit='hh'

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
