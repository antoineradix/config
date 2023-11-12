local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use({ "nvim-lua/plenary.nvim", commit = "9ce85b0f7dcfe5358c0be937ad23e456907d410b" })

	-- Coding
	use({ "L3MON4D3/LuaSnip", commit = "a9f692590e1eb2dd40d7485082b8f958f4f3f4dd" })
	use({ "hrsh7th/nvim-cmp", commit = "51f1e11a89ec701221877532ee1a23557d291dd5" })
	use({ "hrsh7th/cmp-nvim-lsp", commit = "44b16d11215dce86f253ce0c30949813c0a90765" })
	use({ "hrsh7th/cmp-buffer", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" })
	use({ "hrsh7th/cmp-path", commit = "91ff86cd9c29299a64f968ebb45846c485725f23" })
	use({ "echasnovski/mini.pairs", commit = "6f6bd7ed5757b40bc29c73dac0d743e4e6978124" })
	use({ "echasnovski/mini.surround", commit = "68ce058ef9716d7d955b79363845d2dd003d6500" })
	use({ "echasnovski/mini.comment", commit = "2c7a512dad27e34a26d0f7d5d5bc2579f88167dc" })

	-- Colorscheme
	use({ "catppuccin/nvim", commit = "dcef0a062de380885193fb0f919217d58b979753", as = "catppuccin" })

	-- Editor
	use({ "nvim-telescope/telescope.nvim", commit = "74ce793a60759e3db0d265174f137fb627430355" })
	use({ "nvim-telescope/telescope-project.nvim", commit = "7c64b181dd4e72deddcf6f319e3bf1e95b2a2f30" })
	use({ "nvim-telescope/telescope-file-browser.nvim", commit = "6e51d0cd6447cf2525412220ff0a2885eef9039c" })
	use({ "AckslD/nvim-neoclip.lua", commit = "4e406ae0f759262518731538f2585abb9d269bac" })
	use({ "lewis6991/gitsigns.nvim", commit = "5a9a6ac29a7805c4783cda21b80a1e361964b3f2" }) -- need to config
	use({ "moll/vim-bbye", commit = "25ef93ac5a87526111f43e5110675032dbcacf56" })
	use({ "szw/vim-maximizer", commit = "2e54952fe91e140a2e69f35f22131219fcd9c5f1" })

	-- Formatting
	use({ "stevearc/conform.nvim", commit = "280055248661a4fc7b692db2d5ee80a465ebb577" })

	-- Linting
	use({ "mfussenegger/nvim-lint", commit = "e366dc5ed4002d3489d03200c0b132ce2b1ba532" })

	-- LSP
	use({ "neovim/nvim-lspconfig", commit = "e5425e7a52da2fd6357fc7d5b6afde285fcb8cef" })
	use({ "williamboman/mason.nvim", commit = "cd7835b15f5a4204fc37e0aa739347472121a54c" })
	use({ "williamboman/mason-lspconfig.nvim", commit = "e7b64c11035aa924f87385b72145e0ccf68a7e0a" })
	use({ "WhoIsSethDaniel/mason-tool-installer.nvim", commit = "e4f34741daa9cf95de68a603d3e7a6844a69fdf0" })

	-- TreeSitter
	use({ "nvim-treesitter/nvim-treesitter", commit = "eb3faef3a44641e5875581e901b0a8df8da2bde4", run = ":TSUpdate" })

	-- UI
	use({ "nvim-tree/nvim-web-devicons", commit = "3af745113ea537f58c4b1573b64a429fefad9e07" })
	use({ "nvim-lualine/lualine.nvim", commit = "7533b0ead663d80452210c0c089e5105089697e5" })
	use({ "lukas-reineke/indent-blankline.nvim", commit = "9301e434dd41154ffe5c3d5b8a5c9acd075ebeff" })

	-- School
	use({ "42Paris/42header", commit = "71e6a4df6d72ae87a080282bf45bb993da6146b2" })
	use({ "cacharle/c_formatter_42.vim", commit = "7a2d50f6683d6f58a2c95375524b4406d6bdc2c3" })

	if packer_bootstrap then
		require("packer").sync()
	end
end)
