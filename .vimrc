" Vim config

call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'Shougo/deoplete.nvim'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'Shougo/neco-vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-vinegar'
Plug 'editorconfig/editorconfig-vim'
Plug 'rust-lang/rust.vim'
Plug 'w0rp/ale'
Plug 'JuliaEditorSupport/julia-vim'

call plug#end()

" Enable theme
syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" javacomplete2 plugin configuration
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" Set leader key
:imap jj <Esc>

" Set hybrid numbering - relative/absolute line numbers
set relativenumber
if v:version > 703
	set number
endif

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

set ruler              " show the cursor position all the time

set scrolloff=4     " Ensure there are 4 lines between the cursor and the top of bottom of the page

set tabstop=2       " The width of a TAB is set to 2.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 2.

set shiftwidth=2    " Indents will have a width of 2

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces
