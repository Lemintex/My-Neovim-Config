vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- tab options
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>sh', ':nohlsearch<CR>', { desc = 'Clear search highlights' })

-- Better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

-- Code format
vim.api.nvim_set_keymap('n', '<leader>cf', '<cmd>lua vim.lsp.buf.format(nil, 1000)<CR>',
  { noremap = true, silent = true })

vim.api.nvim_set_keymap('t', '<C-\\>', '<C-\\><C-n>', { noremap = true })
