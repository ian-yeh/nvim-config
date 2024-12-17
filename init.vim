set runtimepath+=~\AppData\Local\nvim
set runtimepath+=~\AppData\Local\nvim-data

syntax on
set number
set relativenumber

inoremap jk <Esc>

set matchpairs-={:}

call plug#begin()

" colour schemes
Plug 'morhetz/gruvbox'
Plug '0xstepit/flow.nvim'
Plug 'scottmckendry/cyberdream.nvim'

Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'romgrk/barbar.nvim'

" for LSP config
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

call plug#end()

colorscheme gruvbox
lua require('lsp_config')


" NOTE: If barbar's option dict isn't created yet, create it
let g:barbar_auto_setup = v:false " disable auto-setup
lua << EOF
require'barbar'.setup {
  icons = {
    button = '',
    gitsigns = {
      added = {enabled = false},
      changed = {enabled = false},
      deleted = {enabled = false},
    },
    filetype = {
      enabled = false
    }
  }
}
EOF

set cursorline

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set autoindent

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

inoremap {<cr> {<cr>}<c-o>O
inoremap [<cr> [<cr>]<c-o>O
inoremap (<cr> (<cr>)<c-o>O<

map  <C-l> :BufferNext<CR>
map  <C-h> :BufferPrevious<CR>
map  <C-n> :tabnew<CR>

map <C-m> :NERDTree<CR>

map <C-s> :w<CR>

nnoremap <BS> X

set clipboard=unnamed
