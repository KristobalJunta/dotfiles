set nocompatible            " disable compatibility to old-time vi

set title
set number                  " add line numbers

syntax on
set cc=88
set cursorline
set noswapfile
set fileencoding=utf-8

" Search settings
set showmatch               " show matching 
set ignorecase smartcase    " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search

" Indent settings
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed

" set backupdir=~/.cache/vim " Directory to store backup files.
" set clipboard=unnamedplus   " using system clipboard

" fully disable mouse
set mouse=

filetype plugin on
filetype plugin indent on   " allow auto-indenting depending on file type

" Ignore certain files and folders when globing
set wildignore+=*.o,*.obj,*.dylib,*.bin,*.dll,*.exe
set wildignore+=*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**
set wildignore+=*.jpg,*.png,*.jpeg,*.bmp,*.gif,*.tiff,*.svg,*.ico
set wildignore+=*.pyc,*.pkl
set wildignore+=*.DS_Store
set wildignore+=*.aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz,*.xdv
set wildignorecase  " ignore file and dir name cases in cmd-completion

" Break line at predefined characters
set linebreak
" Character to show before the lines that have been soft-wrapped
set showbreak=↪

" List all matches and complete till longest common string
set wildmode=list:longest

" Minimum lines to keep above and below cursor when scrolling
set scrolloff=3

" Ask for confirmation when handling unsaved or read-only files
set confirm

