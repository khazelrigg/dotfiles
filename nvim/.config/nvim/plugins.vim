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
Plug 'mbbill/undotree'
Plug 'nathanaelkane/vim-indent-guides'

" Syntax
Plug 'vim-syntastic/syntastic'
Plug 'baskerville/vim-sxhkdrc'
Plug 'majutsushi/tagbar'
Plug 'digitaltoad/vim-pug'
Plug 'pangloss/vim-javascript'

" Python
Plug 'python-mode/python-mode', { 'branch': 'develop'}
Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim'


Plug 'ryanoasis/vim-devicons'
call plug#end()
