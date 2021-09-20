"""" vim-plug autoinstall
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"""" vim-plug plugins
call plug#begin('~/.vim/plugged')

" Lightline status line
Plug 'itchyny/lightline.vim'

" Rainbow pairs
Plug 'luochen1990/rainbow'

" Surround
Plug 'tpope/vim-surround'

" Nerd Tree
Plug 'preservim/nerdtree'

" Rust
" Plug 'rust-lang/rust.vim'

" Indentation guidelines
Plug 'yggdroot/indentline'

Plug 'vim-latex/vim-latex'

" Code completion, youcompleteme
"Plug 'valloric/youcompleteme'
call plug#end()
set number
set relativenumber
syntax on
set encoding=utf-8 " encoding used for displaying file
set ruler " show the cursor position all the time
set showmatch " highlight matching braces
set showmode " show insert/replace/visual mode
set confirm " confirm :q in case of unsaved changes
set fileencoding=utf-8 " encoding used when saving file
set nobackup " do not keep the backup~ file
set hlsearch " highlight search results
set ignorecase " do case insensitive search...
set incsearch " do incremental search
set smartcase " ...unless capital letters are used
filetype on " enable file type detection
filetype plugin on " load the plugins for specific file types
filetype indent on " automatically indent code
set autoindent
set smartindent
set nocompatible 
set wrap " enable text wrapping
set linebreak " avoid break in the middle of a word
set cursorline  " highlight current line
set wildmenu  " visual autocomplete for command menu
set lazyredraw " redraw only when we need to
set showcmd " show command in bottom bar
set showmatch  " highlight matching brackets
set laststatus=2 "
set nopaste

"""" Search
set hlsearch " highlight matches
if has('mouse')
  set mouse=a
endif

" Things
filetype plugin on

" Lightline
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'powerlineish',
      \ }

" Rainbow
let g:rainbow_active = 1

"""" Keybinds
nnoremap <silent> <C-n> :tabnew<CR>

" Nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
let NERDTreeShowHidden=1
