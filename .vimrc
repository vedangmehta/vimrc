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

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'Rip-Rip/clang_complete'
Plugin 'oblitum/rainbow'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'

call vundle#end()

filetype on
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

syntax enable
set background=dark
colorscheme solarized
