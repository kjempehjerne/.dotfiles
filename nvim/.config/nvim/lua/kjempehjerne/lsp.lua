local nvim_lsp = require('lspconfig')
vim.lsp.set_log_level("debug")
nvim_lsp.tsserver.setup {
    cmd = { "typescript-language-server", "--stdio" }
}
