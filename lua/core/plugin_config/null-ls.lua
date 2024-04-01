local null_ls = require("null-ls")

null_ls.setup({
  mappings = {
    ["<leader>cf"] = vim.lsp.buf.format(nil, 1000),
  },
})
local opts = {
  sources = {
    null_ls.builtins.formatting.clang_format,
  }
}
return opts
