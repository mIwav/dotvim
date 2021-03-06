" set pythonthreedll "C:\Python34\DLLs\python3.dll"
" Plugin Setup
set nocompatible
filetype off

call plug#begin('~/vimfiles/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
call plug#end()

" Setting some decent VIM settings for programming
filetype plugin indent on       " turn on filetype detection, plugins and indentation
" set number 			" turn on line numbers
set ai                          " set auto-indenting on for programming
set showmatch                   " automatically show matching brackets. works like it does in bbedit.
set vb                          " turn on the "visual bell" - which is much quieter than the "audio blink"
set ruler                       " show the cursor position all the time
set laststatus=2                " make the last line where the status is two lines deep so you can see status always
set backspace=indent,eol,start  " make that backspace key work the way it should
set nocompatible                " vi compatible is LAME
set background=dark             " Use colours that work well on a dark background (Console is usually black)
set showmode                    " show the current mode
syntax on                       " turn syntax highlighting on by default
set nowrap			" turn linewrapping off
set encoding=utf-8		" set default encoding

set statusline=%<%F%h%m%r\ [%{&ff}]\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})%=%l,%c%V\ %P
" set statusline=%<%F%h%m%r\ [%{&ff}]\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})%=%l,%c%V\ %P
" color wombat256mod
set wildmenu 					" turn on the completion menu
set wildmode=longest,list

" set colorcolumn=120 " set a visual column at 120 chars
highlight ColorColumn ctermbg=233
set history=10000
set undolevels=100000
" Disable backups
set nobackup
set nowritebackup
set noswapfile
set showcmd

" Search Options
set incsearch
set ignorecase
set smartcase
set hlsearch

" Setting up how splits should occur
set splitright
set splitbelow

" Disable textwrapping during writing
set fo-=t

" Settings especially for python
" let $PYTHONHOME="/c/WinPython_x32_2_7_10/Python27/python-2.7.10/"
" set pythondll=/c/WinPython_x32_2_7_10/Python27/python-2.7.10/
" au BufNewFile,BufRead *.py
"     \ set expandtab " Use spaces instead of tabs
"     \ set tabstop=8
"     \ set softtabstop=4
"     \ set shiftwidth=4
"     \ set textwidth=79
"     \ set autoindent

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" au BufNewFile,BufRead *.c,*.h
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set expandtab

" au BufNewFile,BufRead *.py,*,pyc,*.c,*.h,*.cpp,*.hpp match BadWhiteSpace /\s\+$/

" Key Remappings
" Front tick triggers escape.
" imap ´´ <Esc>

vmap <Tab> >gv
vmap <S-Tab> <gv

" Remap leader key
let mapleader=","

" Remap split jumps
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Quicksave
noremap <Leader>w :update<CR>
vnoremap <Leader>w <C-C>:update<CR>
inoremap <Leader>w <C-O>:update<CR>

" Fast Quit
noremap <Leader>e :quit<CR>


" paste from outside buffer
nnoremap <Leader>p :set paste<CR>"+p:set nopaste<CR>
vnoremap <Leader>p <Esc>:set paste<CR>gv"+p:set nopaste<CR>

" copy to outside buffer
vnoremap <Leader>y "+y
"select all
nnoremap <Leader>a ggVG

map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" g:slime_target="conemu"

