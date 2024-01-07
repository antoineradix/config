return {
	"williamboman/mason.nvim",
	lazy = true,
	event = "BufReadPre",
	cmd = "Mason",
	opts = {
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
			},
		},
	},
	config = function()
		local mason = require("mason")
		mason.setup()
	end,
}
