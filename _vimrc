" Setting some decent VIM settings for programming

filetype plugin indent on       " turn on filetype detection, plugins and indentation
set number 			  " turn on line numbers
" set ai                          " set auto-indenting on for programming
" set showmatch                   " automatically show matching brackets. works like it does in bbedit.
set vb                          " turn on the "visual bell" - which is much quieter than the "audio blink"
" set ruler                       " show the cursor position all the time
set laststatus=2                " make the last line where the status is two lines deep so you can see status always
set backspace=indent,eol,start  " make that backspace key work the way it should
set nocompatible                " vi compatible is LAME
set background=dark             " Use colours that work well on a dark background (Console is usually black)
set showmode                    " show the current mode
syntax on                       " turn syntax highlighting on by default

" Show EOL type and last modified timestamp, right after the filename
set statusline=%<%F%h%m%r\ [%{&ff}]\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})%=%l,%c%V\ %P
" color wombat256mod
set wildmenu 					" turn on the completion menu

set colorcolumn=80 " set a visual column at 80 chars
" highlight ColorColumn ctermbg=233
set history=1000
set undolevels=1000
"Disable backups
set nobackup
set nowritebackup
set noswapfile
