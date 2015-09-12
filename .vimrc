syntax enable

set nocompatible
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

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'

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

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

colorscheme buttercream
