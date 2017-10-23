" theme

syntax enable
set background=dark
colorscheme solarized

" system

set number
set relativenumber
set cursorline
set noshowmode
filetype on
set noswapfile
set incsearch
set hlsearch

" key mapping

inoremap jj <Esc>
nnoremap ; :
let mapleader=" "
nmap <leader><CR> O<Esc>j
nmap <CR> o<Esc>k
nnoremap <silent> <Esc> :noh<CR>

set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" indent

set autoindent
autocmd FileType javascript,yaml,json setlocal shiftwidth=2 tabstop=2 expandtab

" fzf

nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>w :Windows<CR>
nnoremap <silent> <leader>a :Ag<CR>
nnoremap <silent> <leader>g :Commits<CR>

let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'

" NERDTREE
map <C-n> :NERDTreeToggle<CR>

" TAGBAR
nmap <C-t> :TagbarToggle<CR>

" syntastic

let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
let g:syntastic_javascript_checkers=['eslint']

" nerdcommenter

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" airline

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='zenburn'

" gundo

nnoremap <leader>u :GundoToggle<CR>

" plugins
call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'Valloric/YouCompleteMe'
Plug 'ternjs/tern_for_vim', {'build': 'npm install'}

Plug 'vim-syntastic/syntastic'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-repeat'

Plug 'tpope/vim-surround'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdcommenter'

Plug 'airblade/vim-gitgutter'

Plug 'pangloss/vim-javascript'

Plug 'easymotion/vim-easymotion'

Plug 'elzr/vim-json'

Plug 'scrooloose/nerdtree'

Plug 'majutsushi/tagbar'

Plug 'raimondi/delimitmate'

Plug 'tpope/vim-markdown'

Plug 'christoomey/vim-tmux-navigator'

Plug 'bronson/vim-trailing-whitespace'

Plug 'mxw/vim-jsx'

Plug 'sjl/gundo.vim'

call plug#end()
