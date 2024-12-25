" Key bindings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> <cmd>CHADopen<CR>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
nnoremap <C-Right> :tabn<CR>
nnoremap <C-Left> :tabp<CR>
nnoremap <C-Up> :tabnew<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-Down> :tabc<CR>
nnoremap <C-a-down> :tabo<CR>
nnoremap <unique> <C-D> <cmd>call smoothie#do("\<C-D>") <CR>
vnoremap <unique> <C-D> <cmd>call smoothie#do("\<C-D>") <CR>
nnoremap : <cmd>FineCmdline<CR>
" Key bindings end

au FileType css,scss let b:prettier_exec_cmd = "prettier-stylelint"

packloadall

let NERDTreeMinimalUI=1

" Configs
set relativenumber
set nocompatible
set tabpagemax=15
set clipboard=unnamed
set number
" End Configs

" Tabs configurations
:set tabstop=4
:set shiftwidth=4
:set expandtab
" Tabs end

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set encoding=UTF-8

" Plugins
call plug#begin()

Plug 'junegunn/seoul256.vim'

Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

Plug 'https://github.com/junegunn/vim-easy-align.git'

Plug 'fatih/vim-go', { 'tag': '*' }

Plug 'sheerun/vim-polyglot'

Plug 'psliwka/vim-smoothie'

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

Plug 'giusgad/pets.nvim'

Plug 'vim-airline/vim-airline'

Plug 'jiangmiao/auto-pairs'

Plug 'Yggdroot/indentLine'

Plug 'ayu-theme/ayu-vim'

Plug 'ap/vim-css-color'

Plug 'Exafunction/codeium.vim'

Plug 'MunifTanjim/nui.nvim'

Plug 'VonHeikemen/fine-cmdline.nvim'

Plug 'nvimdev/dashboard-nvim'

Plug 'https://github.com/wolandark/vim-live-server.git'

Plug 'mechatroner/rainbow_csv'

Plug 'junegunn/vim-easy-align'

Plug 'chrisbra/csv.vim'

Plug 'arzg/vim-colors-xcode'

Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

Plug 'sainnhe/everforest'

call plug#end()

augroup nerdtreehidecwd
  autocmd!
  autocmd FileType nerdtree setlocal conceallevel=3
          \ | syntax match NERDTreeHideCWD #^[</].*$# conceal
          \ | setlocal concealcursor=n
augroup end

set fillchars=eob:⠀ 

" Theme
set termguicolors
colorscheme everforest
