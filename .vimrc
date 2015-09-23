syntax enable

set nocompatible
set nospell
set tabstop=4
set softtabstop=4
set expandtab
set number
set relativenumber
set autoindent
set smartindent
set backspace=indent,eol,start
set rtp+=~/.vim/bundle/Vundle.vim
set cursorline
set incsearch
set hlsearch 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set nohlsearch
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
set modelines=0
set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set showmatch
set gdefault
set smartcase
set ignorecase
set laststatus=2
set undofile

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'Rip-Rip/clang_complete'
Plugin 'oblitum/rainbow'
Plugin 'altercation/vim-colors-solarized'
Plugin 'google/vim-colorscheme-primary'
Plugin 'morhetz/gruvbox'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'

call vundle#end()

filetype off
filetype plugin indent on 

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>','</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3',
                        \'FireBrick']
let g:rainbow_ctermfgs = ['darkcyan', 'darkmagenta', 'darkgreen', 'gray',
                        \'brown']

"colorscheme solarized
syntax enable
set t_Co=256
set background=dark

let hour = strftime("%H")

if hour <= 8
	colorscheme primary
else
	colorscheme gruvbox
endif