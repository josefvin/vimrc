syntax on
filetype indent plugin on
set ignorecase
set smartcase
set showmatch
set tw=80
set ruler
set undofile
set tabstop=4 expandtab shiftwidth=4
set mouse=a
:command F pwd|file
:command E Ex
let g:netrw_liststyle=3
let g:netwr_banner = 0
set tags=./tags,tags;$HOME
nnoremap <C-]> <Esc>:exe "ptjump " . expand("<cword>")<Esc>
"nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T
set hlsearch
hi Search ctermbg=grey
set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵
"map :trail /\S\zs\s\+$
