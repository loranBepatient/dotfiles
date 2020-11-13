syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set rnu
set nowrap
set noswapfile
set backup
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set noshowmode

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'git@github.com:joshdick/onedark.vim.git'
Plug 'itchyny/lightline.vim'
Plug 'prettier/vim-prettier', {'do': 'yarn install'}
call plug#end()

colorscheme onedark
set background=dark
set laststatus=2

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command=['.git/']
let mapleader = " " 
let g:netrw_browse_split=2
let g:netrw_winsize=25
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

let g:ctrlp_use_caching=0

map <C-n> :NERDTreeToggle<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>
