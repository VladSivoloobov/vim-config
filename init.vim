" Key bindings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
nnoremap <C-Right> :tabn<CR>
nnoremap <C-Left> :tabp<CR>
nnoremap <C-Up> :tabnew<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-Down> :tabc<CR>
nnoremap <C-a-down> :tabo<CR>
" Key bindings end

let NERDTreeMinimalUI=1

" Configs
set relativenumber
set nocompatible
set tabpagemax=15
" End Configs

" Tabs configurations
:set tabstop=4
:set shiftwidth=4
:set expandtab
" Tabs end

set encoding=UTF-8

" Plugins
call plug#begin()

Plug 'junegunn/seoul256.vim'

Plug 'https://github.com/junegunn/vim-easy-align.git'

Plug 'fatih/vim-go', { 'tag': '*' }

Plug 'sheerun/vim-polyglot'

Plug 'ryanoasis/vim-devicons'

Plug 'neoclide/coc.nvim', { 'branch': 'release' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'nsf/gocode', { 'rtp': 'vim' }

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

Plug '~/my-prototype-plugin'

Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

Plug 'maxmellon/vim-jsx-pretty'

call plug#end()

" Theme
colorscheme catppuccin-mocha