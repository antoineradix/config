local config = function()
	local nvimtree = require("nvim-tree")

	--vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#3FC5FF ]])
	--vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#3FC5FF ]])

	nvimtree.setup({
		disable_netrw = true,
		hijack_netrw = true,
		open_on_tab = true,
		view = {
			width = 35,
			relativenumber = true,
			side = "right",
		},
		renderer = {
			indent_markers = {
				enable = true,
			},
			icons = {
				glyphs = {
					folder = {
						arrow_closed = "",
						arrow_open = "",
					},
				},
			},
		},
		actions = {
			open_file = {
				window_picker = {
					enable = true,
				},
			},
		},
	})

	vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeFocus<CR>")
	vim.keymap.set("n", "<leader>et", "<cmd>NvimTreeToggle<CR>")
	vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")
	vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFile<CR>")
	vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>")

	vim.api.nvim_create_autocmd("VimEnter", {
		callback = function()
			vim.cmd("NvimTreeToggle")
			vim.cmd.execute([["normal \<C-w>w"]])
		end,
	})
	vim.cmd([[autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif]])
end

return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = config,
}
