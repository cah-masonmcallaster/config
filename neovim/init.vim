" Allow in non-standard shells
set shell=sh

" Indention
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent

" General enhancements
set ruler
set number
set relativenumber
set hlsearch
set updatetime=250
set autoread
set linebreak
set scrolloff=2
set backspace=2
set hidden
set wrap
set breakindent
set formatoptions=l
set lbr
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:❡,precedes:«,extends:»

" Color & syntax
filetype plugin on
set termguicolors
syntax on
let g:nord_bold = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1
colorscheme nord
au BufNewFile,BufRead /*.rasi setf css

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Ale
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 1
let g:ale_sign_error = ''
let g:ale_sign_warning = ''

" Airline
let g:airline_theme='nord'

" Keymapping
noremap <C-s> :setlocal spell spelllang=en_us<CR>
noremap <C-a> :set nospell<CR>
