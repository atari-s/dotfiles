"execute pathogen#infect()

syntax on
filetype plugin indent on

set encoding=utf-8
set number
set tabstop=2
set expandtab
set shiftwidth=2
set shiftround
set splitbelow
set splitright
set textwidth=80
set colorcolumn=+1
set list
set listchars=trail:.,tab:->
set nohlsearch
set timeoutlen=300
set ttimeoutlen=10

set nobackup
set noswapfile
set undodir=~/.vim/undo//
set history=1000
set undolevels=1000

set pastetoggle=<F2>
" set rtp+=~/.dotfiles/.vim/bundle/lldb.nvim

set cindent
set cinoptions={2,2s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
" set cinoptions={s,f0,>s,ns,^-sg0i0(0u0w1Ws

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=4\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=4\x7"
endif
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

let mapleader = "\<Space>"
let g:syntastic_javascript_checkers = ['jshint']

let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
" let g:syntastic_ocaml_checkers = ['merlin']
set rtp^="/Users/aya/.opam/system/share/ocp-indent/vim"

let g:deoplete#enable_at_startup = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:python_host_prog = '/usr/bin/python'

nmap <leader>l :set list!<CR>

map <C-n> :NERDTreeToggle<CR>
map <Leader>n :bn<CR>
map <Leader>p :bp<CR>
" map <C-v> "+y

map <Leader>i >>
map <Leader>u <<

"nnoremap <C-S-i> >>
"nnoremap <C-S-u> <<

let NVIM_TUI_ENABLE_TRUE_COLOR=1
colors jellybeans

autocmd BufWritePre * :%s/\s\+$//e

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

imap kj <Esc>
