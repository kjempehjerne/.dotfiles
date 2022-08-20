" --- SETTERS
syntax on
set noerrorbells
set colorcolumn=80
set scrolloff=10
set number relativenumber
set nu rnu
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set incsearch
set noshowmode
set splitbelow
set termguicolors
set updatetime=50
set cmdheight=1
set linespace=50
set nuw=10


" --- PLUGINS
call plug#begin('~/.config/nvim/plugged')
Plug 'jremmen/vim-ripgrep'
Plug 'vim-utils/vim-man'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'chr4/nginx.vim'
Plug 'posva/vim-vue'
Plug 'hoob3rt/lualine.nvim'
Plug 'sainnhe/gruvbox-material'

Plug 'tjdevries/colorbuddy.vim'
Plug 'tjdevries/gruvbuddy.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" // lsp -- built-in
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'

Plug 'numToStr/Comment.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'monsonjeremy/onedark.nvim'


"// telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'ThePrimeagen/git-worktree.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'flazz/vim-colorschemes'

"// harpoon
Plug 'ThePrimeagen/harpoon'
call plug#end()

lua require("kjempehjerne")

lua require'nvim-treesitter.configs'.setup { indent = { enable = true }, highlight = { enable = true }, incremental_selection = { enable = true }, textobjects = { enable = true }}
" let g:solarized_termcolors=256
" let g:gruvbox_material_background = 'medium'
" let g:gruvbox_material_palette = 'material'
" colorscheme gruvbox-material

"Allow ripgrep to allways search from the current git root
if executable('rg')
    let g:rg_derive_root='true'
endif

let g:netrw_browse_split=2
let g:netrw_banner=0
let g:vue_pre_processors = ['scss', 'less']
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" --- REMAPS
let mapleader = " "
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
" inoremap <C-j> <esc>
nnoremap <leader>x :!chmod +x %<CR>
nnoremap <silent> <C-f> :silent !tmux neww tmux-sessionizer<CR>
nnoremap <leader>t :terminal<CR>
nnoremap <leader>pv :Ex<CR>
nnoremap <leader>k <C-w>k
nnoremap <leader>j <C-w>j
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>o <C-w>o

