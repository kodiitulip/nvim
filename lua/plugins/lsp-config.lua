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
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"tailwindcss",
					"cssls",
					"css_variables",
					"cssmodules_ls",
					"ast_grep",
					"eslint",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				on_attach = function(client)
					client.server_capabilities.documentFormattingProvider = false
				end,
				capabilities = capabilities,
			})
			lspconfig.tailwindcss.setup({
				on_attach = function(_, bufnr)
					require("tailwindcss-colors").buf_attach(bufnr)
				end,
				capabilities = capabilities,
			})
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})
			lspconfig.css_variables.setup({
				capabilities = capabilities,
			})
			lspconfig.cssmodules_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ast_grep.setup({
				capabilities = capabilities,
			})
			lspconfig.eslint.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, { silent = true })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { silent = true })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { silent = true })
		end,
	},
}
