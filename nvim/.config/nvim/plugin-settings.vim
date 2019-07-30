" ┏━┓╺┳╸┏━┓╺┳╸╻ ╻┏━┓╻  ╻┏┓╻┏━╸
" ┗━┓ ┃ ┣━┫ ┃ ┃ ┃┗━┓┃  ┃┃┗┫┣╸ 
" ┗━┛ ╹ ╹ ╹ ╹ ┗━┛┗━┛┗━╸╹╹ ╹┗━╸
" lightline http://git.io/lightline
" █▓▒░ wizard status line



let s:base03 = [ '#151513', 233 ]
let s:base02 = [ '#222222', 256 ]
let s:base01 = [ '#4e4e43', 239 ]
let s:base00 = [ '#666656', 242  ]
let s:base0 = [ '#808070', 244 ]
let s:base1 = [ '#949484', 246 ]
let s:base2 = [ '#a8a897', 248 ]
let s:base3 = [ '#e8e8d3', 253 ]
let s:yellow = [ '#7A7A57', 11 ]
let s:orange = [ '#7A7A57', 3 ]
let s:red = [ '#5F8787', 1 ]
let s:magenta = [ '#8181A6', 13 ]
let s:cyan = [ '#87ceeb', 12 ]
let s:green = [ '#7A7A57', 3 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:base02, s:magenta ], [ s:base3, s:base01 ] ]
let s:p.normal.right = [ [ s:base02, s:base1 ], [ s:base2, s:base01 ] ]
let s:p.inactive.right = [ [ s:base02, s:base00 ], [ s:base0, s:base02 ] ]
let s:p.inactive.left =  [ [ s:base0, s:base02 ], [ s:base00, s:base02 ] ]
let s:p.insert.left = [ [ s:base02, s:cyan ], [ s:base3, s:base01 ] ]
let s:p.replace.left = [ [ s:base02, s:red ], [ s:base3, s:base01 ] ]
let s:p.visual.left = [ [ s:base02, s:green ], [ s:base3, s:base01 ] ]
let s:p.normal.middle = [ [ s:base0, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base00, s:base02 ] ]
let s:p.tabline.left = [ [ s:base3, s:base00 ] ]
let s:p.tabline.tabsel = [ [ s:base3, s:base02 ] ]
let s:p.tabline.middle = [ [ s:base01, s:base1 ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:base02, s:yellow ] ]
let s:p.normal.warning = [ [ s:yellow, s:base01 ] ]

let g:lightline#colorscheme#sourcerer#palette = lightline#colorscheme#flatten(s:p)

set noshowmode "Don't need mode with status
set laststatus=2
let g:lightline = {
  \ 'colorscheme': 'sourcerer',
  \ 'active': {
  \   'left': [ [ 'filename' ],
  \             [ 'linter',  'gitbranch' ] ],
  \   'right': [ [ 'percent', 'lineinfo' ],
  \              [ 'fileencoding', 'filetype' ] ]
  \ },
  \ 'component_function': {
  \   'modified': 'WizMod',
  \   'readonly': 'WizRO',
  \   'gitbranch': 'WizGit',
  \   'filename': 'WizName',
  \   'filetype': 'WizType',
  \   'fileencoding': 'WizEncoding',
  \   'mode': 'WizMode',
  \ },
  \ 'component_expand': {
  \   'linter': 'WizErrors',
  \ },
  \ 'component_type': {
  \   'readonly': 'error',
  \   'linter': 'error'
  \ },
  \ 'separator': { 'left': '▓▒░', 'right': '░▒▓' },
  \ 'subseparator': { 'left': '▒', 'right': '░' }
  \ }

function! WizMod()
  return &ft =~ 'help\|vimfiler' ? '' : &modified ? '» ' : &modifiable ? '' : ''
endfunction

function! WizRO()
  return &ft !~? 'help\|vimfiler' && &readonly ? '× ' : ''
endfunction

function! WizGit()
  return exists('*fugitive#head') ? fugitive#head() : ''
endfunction

function! WizName()
  let l:name = expand('%:t')
  if l:name =~ 'NetrwTreeListing'
    return ''
  endif
  return ('' != WizRO() ? WizRO() : WizMod()) .
        \ ('' != expand('%:t') ? expand('%:t') : '[none]') 
endfunction

function! WizType()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : '') : ''
endfunction

function! WizEncoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &enc : &enc) : ''
endfunction

function! WizErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  return l:counts.total == 0 ? '' : printf('×%d', l:counts.total)
endfunction

augroup alestatus
  au!
  autocmd User ALELint call lightline#update()
augroup end


" Rainbow Parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" vim-live-latex
let g:livepreview_previewer = 'zathura'

" Python-mode
let  g:pymode_python = 'python3'


"Neomake
" When writing a buffer (no delay).
call neomake#configure#automake('w')
" When writing a buffer (no delay), and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing (no delay).
call neomake#configure#automake('rw', 1000)
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 1s; no delay when writing).
call neomake#configure#automake('nrwi', 500)

"Deoplete
let g:deoplete#enable_at_startup = 1

" Undotree
if has ("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

" Javascript
let g:javascript_plugin_jsdoc = 1
