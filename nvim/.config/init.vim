"  ██ ▄█▀ ███▄ ▄███▓ ██▀███   ███▄    █   ██████     ██▒   █▓ ██▓ ███▄ ▄███▓ ██▀███   ▄████▄
"  ██▄█▒ ▓██▒▀█▀ ██▒▓██ ▒ ██▒ ██ ▀█   █ ▒██    ▒    ▓██░   █▒▓██▒▓██▒▀█▀ ██▒▓██ ▒ ██▒▒██▀ ▀█
" ▓███▄░ ▓██    ▓██░▓██ ░▄█ ▒▓██  ▀█ ██▒░ ▓██▄       ▓██  █▒░▒██▒▓██    ▓██░▓██ ░▄█ ▒▒▓█    ▄
" ▓██ █▄ ▒██    ▒██ ▒██▀▀█▄  ▓██▒  ▐▌██▒  ▒   ██▒     ▒██ █░░░██░▒██    ▒██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒
" ▒██▒ █▄▒██▒   ░██▒░██▓ ▒██▒▒██░   ▓██░▒██████▒▒      ▒▀█░  ░██░▒██▒   ░██▒░██▓ ▒██▒▒ ▓███▀ ░
" ▒ ▒▒ ▓▒░ ▒░   ░  ░░ ▒▓ ░▒▓░░ ▒░   ▒ ▒ ▒ ▒▓▒ ▒ ░      ░ ▐░  ░▓  ░ ▒░   ░  ░░ ▒▓ ░▒▓░░ ░▒ ▒  ░
" ░ ░▒ ▒░░  ░      ░  ░▒ ░ ▒░░ ░░   ░ ▒░░ ░▒  ░ ░      ░ ░░   ▒ ░░  ░      ░  ░▒ ░ ▒░  ░  ▒
" ░ ░░ ░ ░      ░     ░░   ░    ░   ░ ░ ░  ░  ░          ░░   ▒ ░░      ░     ░░   ░ ░
" ░  ░          ░      ░              ░       ░           ░   ░         ░      ░     ░ ░
"                                                        ░                           ░

" Plug {{{
call plug#begin('~/.local/share/nvim/plugged')
Plug 'w0ng/vim-hybrid'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'baskerville/vim-sxhkdrc'
call plug#end()
" }}}

" Colors {{{
colorscheme hybrid
syntax enable
set background=dark
" }}}

" Spaces and Tabs {{{
set tabstop=4
set softtabstop=4
set expandtab
" }}}

" UI Settings {{{
set number
set cursorline
filetype indent on
set lazyredraw
set showmatch
" }}}

" Searching {{{
set incsearch
set hlsearch
set ignorecase
set smartcase
set showmatch
set hlsearch
nnoremap <tab> %
vnoremap <tab> %
" }}}

" Folding {{{

" }}}

" Shortcuts {{{
inoremap jk <esc>
let mapleader = ","
nnoremap <leader><space> :noh<cr>
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <tab> %
vnoremap <tab> %
" }}}

" Airline {{{
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_extensions = ['whitespace', 'tabline']
let g:airline_theme='hybrid'
let g:airline#extensions#tabline#enabled = 1

" }}}

" NERD Tree {{{
nnoremap <silent> <leader>t :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" }}}

" CtrlP {{{
let g:ctrlp_match_window='bottom,order:ttb'
let g:ctrlp_working_path_mode=0
let g:ctrlp_switch_buffer=0
" }}}

" Misc {{{
set modelines=1
" }}}

" Synstastic {{{
hi clear SignColumn

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
        au!
        au FileType tex let b:syntastic_mode = "passive"
augroup end
" }}}


" vim:foldmethod=marker:foldlevel=0
