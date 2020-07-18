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
\   "ui",
\   "general",
\   "plugin-settings"
\]

for file in configs
  let x = expand("~/.config/nvim/".file.".vim")
  if filereadable(x)
    execute 'source' x
  endif
endfor

colorscheme nord

let g:gruvbox_contrast_dark = 'light'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

set modelines=1
