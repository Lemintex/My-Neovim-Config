local lsps = {
	"lua_ls",
	"gopls",
}
return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" },
			})
		end,
	},
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"nvimtools/none-ls.nvim",
		},
		config = function()
			require("mason-null-ls").setup({
				ensure_installed = { "stylua" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			for _, lsp in ipairs(lsps) do
				lspconfig[lsp].setup({
					capabilities = capabilities,
				})
			end
			local wk = require("which-key")

			wk.add({
				{ "K", vim.lsp.buf.hover },
				{ "gd", vim.lsp.buf.definition, desc = "Goto definition" },
				{ "<leader>ca", vim.lsp.buf.code_action, desc = "Code action" },
			})
		end,
	},
}
