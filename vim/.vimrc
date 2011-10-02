set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()

Bundle 'tpope/vim-surround'
Bundle 'AutoClose'
Bundle 'thinca/vim-quickrun'
Bundle 'motemen/git-vim'

filetype plugin indent on

" Utils
nnoremap <Space>w :<C-u>up<CR>
nnoremap <Space>h :<C-u>nohlsearch<CR>
nnoremap <Space>co :<C-u>e %:h<CR>
nnoremap V 0v$h
noremap v$ v$h

nnoremap ; :
nnoremap : ;

" status line
set laststatus=2

" .vimrc
nnoremap <Space>. :<C-u>edit $MYVIMRC<CR>
nnoremap <Space>s. :<C-u>source $MYVIMRC<CR>

" encoding
set encoding=utf-8

syntax on

" general
set hidden
set nobackup
set number

" Tab
set tabstop=4
set shiftwidth=4

" quickrun
silent! nmap <unique> <Space>r <Plug>(quickrun)
