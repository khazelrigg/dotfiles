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

let configs = [
\   "plugins",
\   "plugin-settings"
\]

for file in configs
  let x = expand("~/.config/nvim/".file.".vim")
  if filereadable(x)
    execute 'source' x
  endif
endfor

colorscheme {{ neovim.colorscheme }}
syntax enable
let g:gruvbox_contrast_dark = 'light'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
set background=dark

set tabstop=4
set softtabstop=4
set expandtab

set number
set cursorline
filetype indent on
set lazyredraw
set showmatch

set incsearch
set hlsearch
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

nnoremap <silent> <leader>t :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:ctrlp_match_window='bottom,order:ttb'
let g:ctrlp_working_path_mode=0
let g:ctrlp_switch_buffer=0

let g:goyo_height = "90%"
let g:goyo_width = "30%"

set modelines=1

hi clear SignColumn

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

augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc,/home/kmrn/.config/nvim/init.vim so $MYVIMRC | so $MYGVIMRC | endif
augroup END
" vim:foldmethod=marker:foldlevel=1
