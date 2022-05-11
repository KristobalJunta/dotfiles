" ~/.vimrc by @KristobalJunta

set number
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)

set smarttab
set shiftwidth=4
set expandtab
set smartindent
set tabstop=4
set ai "Auto indent
set si "Smart indent
set pastetoggle=<F10>

" Files autorefresh
set autoread

" Backspace indentation behaviour

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Search

set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch

" Syntax coloring
syntax enable

try
    colorscheme desert
catch
endtry

set background=dark


set encoding=utf8

" Backups & files

set nobackup
set nowb
set noswapfile
