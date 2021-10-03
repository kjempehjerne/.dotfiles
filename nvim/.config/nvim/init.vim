" --- SETTERS
syntax on
set noerrorbells
set colorcolumn=80
set scrolloff=8
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set incsearch

" --- PLUGINS
call plug#begin('~/.config/nvim/plugged')
Plug 'jremmen/vim-ripgrep'
Plug 'vim-utils/vim-man'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'posva/vim-vue'
Plug 'chr4/nginx.vim'

" // lsp -- built-in
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'

"// telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'ThePrimeagen/git-worktree.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

lua require("kjempehjerne")

colorscheme gruvbox
set background=dark

"Allow ripgrep to allways search from the current git root
if executable('rg')
    let g:rg_derive_root='true'
endif

let g:netrw_browse_split=2
let g:netrw_banner=0

" --- REMAPS
let mapleader = " "
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
inoremap <C-j> <esc>
nnoremap <leader>x :!chmod +x %<CR>
