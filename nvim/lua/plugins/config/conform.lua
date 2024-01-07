local config = function()
	require("conform").setup({
		formatters_by_ft = {
			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			svelte = { "prettier" },
			css = { "prettier" },
			html = { "prettier" },
			json = { "prettier" },
			yaml = { "prettier" },
			markdown = { "prettier" },
			lua = { "stylua" },
		},
		format_on_save = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 1000,
		},
		format = {
			timeout_ms = 3000,
			async = false,
			quiet = false,
		},
	})
end

return {
	"stevearc/conform.nvim",
	config = config,
}
