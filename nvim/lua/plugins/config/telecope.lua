local config = function()
	require("neoclip").setup()
	require("telescope").load_extension("fzf")

	require("telescope").setup({
		defaults = {
			layout_config = {
				horizontal = {
					preview_width = 0.7,
					results_width = 0.3,
				},
				width = 0.99,
				height = 0.99,
			},
			file_ignore_patterns = { "node_modules" },
			generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
			file_previewer = require("telescope.previewers").vim_buffer_cat.new,
			grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
			qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
		},
		extensions = {
			fzf = {
				fuzzy = true,
				override_generic_sorter = true,
				override_file_sorter = true,
			},
		},
	})

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
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	config = config,
}
