local options = {
	number = true,
	relativenumber = true,
	termguicolors = true,
	cmdheight = 0,
	completeopt = "menuone,noinsert,noselect",
	copyindent = true,
	cursorline = true,
	fileencoding = "utf-8",
	fillchars = { eob = " " },
	ignorecase = true,
	laststatus = 3,
	lazyredraw = true,
	mouse = "a",
	pumheight = 10,
	scrolloff = 8,
	shiftwidth = 4,
	showmode = false,
	sidescrolloff = 8,
	signcolumn = "yes",
	smartcase = true,
	swapfile = false,
	tabstop = 4,
	timeoutlen = 300,
	undodir = vim.fn.expand("~/.vim/undodir"),
	undofile = true,
	undolevels=10000,
	updatetime = 300,
	wrap = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
