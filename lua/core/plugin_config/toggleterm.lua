local term = require("toggleterm")
term.setup({
  size = 20,
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = '1',
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  direction = 'horizontal',
  close_on_exit = true,
  shell = vim.o.shell,
})

vim.api.nvim_set_keymap('n', '<leader>t', ':lua require("toggleterm").toggle()<CR>',
  { noremap = true, silent = true, desc = 'Toggle terminal' })
