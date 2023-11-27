local config = function()
	require("ibl").setup({
		whitespace = { remove_blankline_trail = true },
		scope = { enabled = false },
	})
end

return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	config = config,
}
