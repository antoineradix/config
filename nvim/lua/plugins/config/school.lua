return {
	{
		"42Paris/42header",
		config = function()
			vim.g.user42 = "aradix"
			vim.g.mail42= "aradix@student.42.fr"
			vim.keymap.set("n", "<leader>h", "<cmd>Stdheader<cr>")
		end,
	},
	{
		"cacharle/c_formatter_42.vim",
		config = function()
			vim.g.c_formatter_42_set_equalprg = 1
			vim.g.c_formatter_42_format_on_save = 0
			vim.keymap.set("n", "<leader>fc", "<cmd>CFormatter42<cr>")
		end,
	}
}
