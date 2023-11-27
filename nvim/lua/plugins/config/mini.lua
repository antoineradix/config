-- https://github.com/echasnovski/mini.surround/blob/main/doc/mini-surround.txt 
return {
		{
			"echasnovski/mini.surround",
			lazy = false,
			config = function()
				require("mini.surround").setup()
			end,
		},
		{
			"echasnovski/mini.comment",
			lazy = false,
			config = function()
				require("mini.comment").setup()
			end,
		},
		{
			"echasnovski/mini.pairs",
			lazy = false,
			config = function()
				require("mini.pairs").setup()
			end,
		},
}
