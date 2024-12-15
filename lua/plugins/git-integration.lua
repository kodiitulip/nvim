return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require('gitsigns').setup()
			-- Testing the git shit
			vim.keymap.set('n', "<leader>gp", ":Gitsigns preview_hunk<CR>", { silent = true })
			vim.keymap.set('n', "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { silent = true })
		end,
	},
	{
		"tpope/vim-fugitive",
	}
}
