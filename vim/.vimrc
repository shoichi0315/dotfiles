set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()

Bundle 'tpope/vim-surround'
Bundle 'AutoClose'
Bundle 'thinca/vim-quickrun'
Bundle 'motemen/git-vim'
Bundle 'Align'
Bundle 'mattn/webapi-vim'
Bundle 'taku-o/vim-toggle'
Bundle 'mattn/zencoding-vim'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimfiler'
Bundle 'open-browser.vim'

filetype plugin indent on

" leader
let mapleader=","

" Utils ------------------------------------
nnoremap <Space>w :<C-u>write<CR>
nnoremap <Space>q :<C-u>q<CR>
nnoremap <Space>h :<C-u>nohlsearch<CR>
nnoremap <Space>co :<C-u>e %:h<CR>

nnoremap VV 0v$h
nnoremap v$ v$h

nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

nnoremap <Leader>q q:k
nnoremap <Leader>h :help<Space>
nnoremap <C-j> <C-^>
nnoremap count g<C-g>
"-------------------------------------------

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
filetype on
set list listchars=trail:_,tab:^\ 

" Tab
set tabstop=4
set shiftwidth=4

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_underbar_completion = 1
imap <C-k> <Plug>(neocomplcache_snippets_expand)
smap <C-k> <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-l> neocomplcache#complete_common_string()

" vimfiler
let g:vimfiler_as_default_explorer  = 1
let g:vimfiler_safe_mode_by_default = 0

" Unite
"let g:unite_enable_start_insert = 1
nnoremap <silent> <Leader>f :<C-u>Unite file<CR>
nnoremap <silent> <Leader>m :<C-u>Unite file_mru<CR>
nnoremap <silent> <Leader>b :<C-u>Unite buffer<CR>
"nnoremap <silent> <Leader>a :<C-u>Unite buffer file_mru<CR>

" open-browser
nmap <Leader>open <Plug>(openbrowser-open)
vmap <Leader>open <Plug>(openbrowser-open)

" tags
augroup tagsset
  autocmd!
  autocmd FileType *java set tags=~/.vim/tags/javatags
augroup END
