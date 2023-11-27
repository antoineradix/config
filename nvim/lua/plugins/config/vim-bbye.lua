return {
	"moll/vim-bbye",
	lazy = false,
	config = function()
		vim.keymap.set('n', '<leader>d', ":Bdelete<CR>|")
		vim.keymap.set('n', '<leader>D', ":bdelete<CR>|")
	end,
}
