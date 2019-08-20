let mapleader = ","
set undofile
syntax on
filetype indent plugin on
set tabstop=4 expandtab shiftwidth=4
set tw=80
set ignorecase
set smartcase
set ruler
set mouse=a
set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵
"map :trail /\S\zs\s\+$
:command F pwd|file
:command E Ex
set clipboard=unnamedplus
set background=dark

" netrw
" -----
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_altv=1
let g:netrw_winsize=50
 
" highlighting/search
" -------------------
set showmatch
set hlsearch
hi Search ctermbg=grey
"nnoremap <esc> :noh<return><esc>

" vim-go
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()
set autowrite
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>t <Plug>(go-test)

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

" tags
" ----
set tags=./tags,tags;$HOME
nnoremap <C-]> <Esc>:exe "ptjump " . expand("<cword>")<Esc>
"nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T

" pathogen plugin manager, solarized
execute pathogen#infect()
colorscheme solarized
