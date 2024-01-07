vim.g.mapleader = " "

local keymaps = {
	["<leader><ESC>"] = ":nohl<CR>",
	["<leader>sv"] = "<C-w>v",
	["<leader>sh"] = "<C-w>s",
	["<leader>c"] = ":close<CR>",
	["<leader><leader>"] = "<C-w>w",
	["<leader>h"] = "<C-w>h",
	["<leader>l"] = "<C-w>l",
	["<leader>k"] = "<C-w>k",
	["<leader>j"] = "<C-w>j",
	["<leader>="] = "<C-w>=",
	["-"] = ":vertical resize -2<CR>",
	["+"] = ":vertical resize +2<CR>",
	["<leader><CR>"] = ":w!<CR>",
	["<leader>n"] = ":bnext<CR>",
	["<leader>p"] = ":bprevious<CR>",
	["<leader>tt"] = ":term<CR>",
	["<C-n>"] = ":tabnew<CR>",
	["<C-l>"] = ":tabnext<CR>",
	["<C-h>"] = ":tabprev<CR>",
	--["<leader>lj"] = ":m .-2<CR>==",
	-- ["<leader>lk"] = ":m .+1<CR>==",
}

for k, v in pairs(keymaps) do
	vim.api.nvim_set_keymap("n", k, v, { noremap = true, silent = true })
end
