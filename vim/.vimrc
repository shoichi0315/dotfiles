set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()

Bundle 'surround.vim'

filetype plugin indent on

nnoremap <Space>w :<C-u>w<CR>

set nobackup
