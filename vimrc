syntax on
set encoding=utf-8

"system clipboard
set clipboard=unnamedplus

set spell
set spelllang=de

set wrap
set linebreak

" Line Numbers
set number
set numberwidth=4
set relativenumber

" Better Search
set ignorecase
set smartcase

" Better movement
set scrolloff=8

" Set indenttation
set autoindent expandtab tabstop=4 shiftwidth=4 textwidth=79 fileformat=unix

"Python indenttation
"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix
let python_highlight_all=1

"set html indenttation
"au BufNewFile,BufRead *.js, *.html, *.css
"    \ set tabstop=2
"    \ set softtabstop=2
"    \ set shiftwidth=2

"Mark bad whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


" Plugin Section

call plug#begin()

Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'mhinz/vim-startify'
Plug 'kshenoy/vim-signature'

Plug 'habamax/vim-asciidoctor'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jnurmine/Zenburn'

Plug 'vim-airline/vim-airline'

"Python Section
Plug 'vim-scripts/indentpython.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'

" LaTeX Section
" Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lervag/vimtex'
Plug 'tpope/vim-surround'
Plug 'vim-autoformat/vim-autoformat'
Plug 'honza/vim-snippets'

call plug#end()

"
" Key changes and stuff
"spelling suggestions in normal and insert modes:  
inoremap \s <esc>hea<C-X><C-S>
nnoremap \s hea<C-X><C-S>

" Split navigations

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"undo to end of sentences
inoremap ! !<C-g>u
inoremap . .<C-g>u
inoremap ? ?<C-g>u
inoremap , ,<C-g>u

inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

nnoremap j jzz
nnoremap k kzz

" Enable folding
set foldmethod=indent
set foldlevel=99

"Enable folding with spacebar
nnoremap <space> za


"Color Scheme

set t_Co=256

set background=dark
colorscheme PaperColor


autocmd vimenter *.md Goyo
autocmd vimenter *.md Limelight
autocmd vimenter *.adoc Goyo
