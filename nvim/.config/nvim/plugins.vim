if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')
" Colors
Plug 'xero/sourcerer.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'
Plug 'kien/rainbow_parentheses.vim'
" UI
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
" Syntax
Plug 'vim-syntastic/syntastic'
Plug 'baskerville/vim-sxhkdrc'

Plug 'xuhdev/vim-latex-live-preview'
call plug#end()

