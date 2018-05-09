if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')
Plug 'w0ng/vim-hybrid'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
Plug 'arcticicestudio/nord-vim'
Plug 'NerdyPepper/agila.vim'
Plug 'morhetz/gruvbox'
Plug 'baskerville/vim-sxhkdrc'
Plug 'junegunn/goyo.vim'
Plug 'xero/sourcerer.vim'
Plug 'itchyny/lightline.vim'
Plug 'dylanaraps/wal.vim'
call plug#end()


