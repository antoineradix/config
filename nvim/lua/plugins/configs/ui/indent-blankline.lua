require("ibl").setup({
	indent = {
		char = "│",
		tab_char = "│",
	},
	whitespace = { remove_blankline_trail = true },
	scope = { enabled = false },
	exclude = {
		filetypes = {
			"help",
			"man",
			"text",
			"markdown",
			"checkhealth",
			"dashboard",
			"mason",
		},
	},
})
