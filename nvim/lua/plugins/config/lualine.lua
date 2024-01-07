local config = function()
	require("lualine").setup({
		options = {
			theme = "tokyonight",
			--component_separators = "",
			--section_separators = "",
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			always_divide_middle = true,
			globalstatus = true,
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = {
				{
					"filename",
					path = 3,
				},
			},
			lualine_x = { "encoding", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		inactive_sections = {
			lualine_c = { "filename" },
			lualine_x = { "location" },
		},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	config = config,
}
