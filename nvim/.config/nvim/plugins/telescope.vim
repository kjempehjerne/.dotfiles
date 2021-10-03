lua require('kjempehjerne')

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For >")})<CR>
nnoremap <leader>pf :lua require('telescope.builtin').find_files()<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>

nnoremap <leader>vrc :lua require('kjempehjerne.telescope').search_dotfiles()<CR>
