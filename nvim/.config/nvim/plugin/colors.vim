



let g:kjempehjerne_colorscheme = "onedark"
fun! ColorMyPencils()
    " let g:gruvbox_material_background = "medium"
    " let g:gruvbox_material_palette = "material"
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    " maybe remove this
    " let g:gruvbox_invert_selection='0'

    " set background=dark
    " if has('nvim')
    "     call luaeval('vim.cmd("colorscheme " .. _A[1])', [g:kjempehjerne_colorscheme])
    " else
    "     colorscheme 'onedark'
    " end

    " highlight ColorColumn ctermbg=0 guibg=grey
    hi SignColumn guibg=none
    hi CursorLineNR guibg=None
    highlight Normal guibg=none
    " highlight NonText guibg=none
    highlight Normal ctermbg=none guibg=none
    highlight NonText ctermbg=none guibg=none
    highlight EndOfBuffer ctermbg=none guibg=none
    " highlight LineNr guifg=#ff8659
    " highlight LineNr guifg=#aed75f
    highlight LineNr guifg=#5eacd3
    highlight netrwDir guifg=#5eacd3 guibg=none
    highlight qfFileName guifg=#aed75f
    hi TelescopeBorder guifg=#5eacd
endfun
" call ColorMyPencils()

" Vim with me
nnoremap <leader>cmp :call ColorMyPencils()<CR>
nnoremap <leader>vwb :let g:kjempehjerne_colorscheme =
