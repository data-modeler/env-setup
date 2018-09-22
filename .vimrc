" loads pathogen
execute pathogen#infect()

" use the solarized colorscheme
syntax enable
set background=dark
let g:solarized_termtrans=1
colorscheme solarized

" show line numbers
set number

" show line marking 80 characters
set colorcolumn=80

" show <leader> key at bottom
set showcmd

" insert a blank line without insert mode
" (Enter = blank line after; Shift-Enter = before)
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" disable jedi-vim autocompletion on dot (it's too slow)
let g:jedi#popup_on_dot = 0
