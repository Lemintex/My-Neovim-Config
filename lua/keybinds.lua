-- custom groups are weird
local wk = require("which-key")
wk.add({
	{ "<leader>f", group = "File" },
	{ "<leader>c", group = "Code" },

  { "<leader>q", ":q<CR>", desc = "Quit" },
  { "<leader>w", ":w<CR>", desc = "Save" },
})
