return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local bind = vim.keymap.set

			local builtin = require("telescope.builtin")
			local wk = require("which-key")

			wk.add({
				{ "<leader>ff", builtin.find_fies, desc = "Find files" },
				{ "<leader>fg", builtin.live_grep, desc = "Grep files" },
			})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
