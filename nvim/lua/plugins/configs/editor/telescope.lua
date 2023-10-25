local telescope = require("telescope")

telescope.load_extension("project")
telescope.load_extension("file_browser")
telescope.load_extension("neoclip")

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>")
vim.keymap.set("n", "<leader>fp", "<cmd>Telescope project<cr>")
vim.keymap.set("n", "<leader>fe", "<cmd>Telescope file_browser<cr>")
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope neoclip<cr>")
