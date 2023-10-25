local treesitter = require("nvim-treesitter")

treesitter.setup({
	highlight = {
		enable = true,
	},

	indent = { enable = true },

	autotag = {
		enable = true,
	},

	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"tsx",
		"yaml",
		"html",
		"css",
		"markdown",
		"markdown_inline",
		"svelte",
		"bash",
		"lua",
		"dockerfile",
		"gitignore",
		"go",
	},

	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<C-space>",
			node_incremental = "<C-space>",
			scope_incremental = false,
			node_decremental = "<bs>",
		},
	},
})

-- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
-- context_commentstring = {
-- 	enable = true,
-- 	enable_autocmd = false,
-- },
