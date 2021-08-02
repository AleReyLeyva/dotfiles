
" Vim configuration file 

set guicursor+=i-ci:ver20-Cursor

set number
set relativenumber

set ignorecase
set showcmd
set showmode
set showmatch
set hlsearch

set wildmenu
set wildmode=list:longest

filetype on
filetype plugin on
filetype indent on

call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'raimondi/delimitmate'
Plug 'plasticboy/vim-markdown'
Plug 'alvan/vim-closetag'
Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'alx741/vim-hindent' " Optional

call plug#end()
let g:coc_global_extensions = [ 'coc-tsserver' ]
let g:user_emmet_leader_key=','

let NERDTreeQuitOnOpen=1

let mapleader=" "
let g:airline_powerline_fonts = 1

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
map <C-n> :NERDTreeToggle<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
:imap ii <Esc>
