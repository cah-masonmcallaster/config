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

" Color & syntax
filetype plugin on
set termguicolors
syntax on
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

" Dev Icons
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*\.spec\.ts$'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*\.spec\.js$'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*\.test\.ts$'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*\.test\.js$'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*\.stories\.ts$'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*\.stories\.js$'] = ''

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Ale
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 1
let g:ale_sign_error = 'X'
let g:ale_sign_warning = '!'

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Deoplete
let g:deoplete#enable_at_startup = 1

" Custom Keymapping
noremap <C-j> :tabprevious<CR>
noremap <C-k> :tabnext<CR>
noremap <C-h> :NERDTreeToggle<CR>
noremap <C-o> :copen<CR>
noremap <C-p> :cclose<CR>
noremap <C-e> :SyntasticCheck<CR>
noremap <C-I> :bn<CR>
