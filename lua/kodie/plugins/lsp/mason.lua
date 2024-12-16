return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		-- import mason_tool_installer
		local mason_tool = require("mason-tool-installer")

		-- enable mason
		mason.setup({})

		-- enable mason_lspconfig and setup language servers
		mason_lspconfig.setup({
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
			automatic_installation = true,
		})

		-- enable mason_tool_installer and setting it up
		mason_tool.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"isort",
				"black",
				"pylint",
				"eslint_d",
			},
		})
	end,
}
