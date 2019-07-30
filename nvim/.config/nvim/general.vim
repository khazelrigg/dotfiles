set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

filetype indent on
set lazyredraw
set showmatch

set incsearch
set ignorecase
set smartcase
set showmatch
set hlsearch
nnoremap <tab> %
vnoremap <tab> %

inoremap jk <esc>
let mapleader = ","
nnoremap <leader><space> :noh<cr>
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <tab> %
vnoremap <tab> %
map <F12> :so $MYVIMRC<cr>
nnoremap <silent> <leader>t :NERDTreeToggle<CR>
nnoremap <silent> <leader>c :TagbarToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
