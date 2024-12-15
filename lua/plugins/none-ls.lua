return {
	"nvimtools/none-ls.nvim",
	config = function()
		local nls = require("null-ls").builtins
		nls.formatting.biome.with({
			args = {
				"check",
				"--apply-unsafe",
				"--formatter-enabled=true",
				"--organize-imports-enabled=true",
				"--skip-errors",
				"$filename",
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { silent = true })
	end
}
