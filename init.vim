" Key bindings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> <cmd>CHADopen<CR>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
nnoremap <unique> <C-D> <cmd>call smoothie#do("\<C-D>") <CR>
vnoremap <unique> <C-D> <cmd>call smoothie#do("\<C-D>") <CR>
nnoremap : <cmd>FineCmdline<CR>
nnoremap <C-c> :ToggleTerm <CR>
nnoremap <F8> :Vista <CR>

autocmd VimEnter * CHADopen
autocmd VimEnter * :ToggleTerm

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

Plug 'hushicai/tagbar-javascript.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'nsf/gocode', { 'rtp': 'vim' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

Plug '~/my-prototype-plugin'

Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

Plug 'vim-airline/vim-airline-themes'

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

Plug 'toniz4/vim-stt'

Plug 'alvan/vim-closetag'

Plug 'mattn/emmet-vim'

Plug 'liuchengxu/vista.vim'

Plug 'Xuyuanp/scrollbar.nvim'

Plug 'camspiers/animate.vim'

call plug#end()

augroup ScrollbarInit
  autocmd!
  autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
  autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
augroup end

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

" Vista options...
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'method' ] ]
      \ },
      \ 'component_function': {
      \   'method': 'NearestMethodOrFunction'
      \ },
      \ }

" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works for the kind renderer, not the tree renderer.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'ctags'

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
let g:vista_executive_for = {
  \ 'cpp': 'vim_lsp',
  \ 'php': 'vim_lsp',
  \ }

" Declare the command including the executable and options used to generate ctags output
" for some certain filetypes.The file path will be appened to your custom command.
" For example:
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']

" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
