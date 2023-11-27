local config = function()
	require('neoclip').setup()

	vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
	vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
	vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
	vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>")
	vim.keymap.set("n", "<leader>fp", "<cmd>Telescope project<cr>")
	vim.keymap.set("n", "<leader>fn", "<cmd>Telescope neoclip<cr>")
end

return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-project.nvim",
		"AckslD/nvim-neoclip.lua",
	},
	config = config,
}
