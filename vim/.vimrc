set nocompatible

" set default 'runtimepath' (without ~/.vim folders)
let &runtimepath = printf('%s/vimfiles,%s,%s/vimfiles/after', $VIM, $VIMRUNTIME, $VIM)

" what is the name of the directory containing this file?
let s:portable = expand('<sfile>:p:h')

" add the directory to 'runtimepath'
let &runtimepath = printf('%s,%s,%s/after', s:portable, &runtimepath, s:portable)

" colors
set t_Co=256
syntax on

" tabs
set expandtab
set shiftwidth=2
set softtabstop=2

set number
hi LineNr ctermfg=grey

" natural splitting
set splitbelow
set splitright

" enable mouse - for resizing windows and keeping co-workers sane
set mouse=a

" disable swap files
set noswapfile

" write files as they are, don't mess with line endings etc
set binary

" disable the completion preview window
set completeopt-=preview

" minimal session files
set sessionoptions=blank,curdir,folds,help,tabpages,winsize

" run vundle
set rtp+=~/.config/vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'yosiat/oceanic-next-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'marijnh/tern_for_vim'

Plugin 'scrooloose/syntastic'
let g:syntastic_check_on_open=1

Plugin 'Valloric/YouCompleteMe'
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
