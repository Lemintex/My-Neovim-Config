require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "clangd" },
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, { desc = 'Rename' })
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code Action' })

  vim.keymap.set('n', '<leader>cd', vim.lsp.buf.definition, { desc = 'Definition' })
  vim.keymap.set('n', '<leader>ci', vim.lsp.buf.implementation, { desc = 'Implementation' })
  vim.keymap.set('n', '<leader>cR', require('telescope.builtin').lsp_references, { desc = 'References' })
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

require("lspconfig").lua_ls.setup {
  on_attach = on_attach
}

require("lspconfig").clangd.setup {
  on_attach = on_attach
}
vim.api.nvim_create_autocmd("BufWritePre", {
  buffer = buffer,
  callback = function()
    vim.lsp.buf.format { async = false }
  end
})
