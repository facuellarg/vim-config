vim.g.mapleader = " "

-- vim.g.go_def_mode = 'gopls'
-- vim.g.go_info_mode = 'gopls'

vim.keymap.set("n", "<leader>q", ":q<enter>")
vim.keymap.set("n", "<leader>w", ":w<enter>")

vim.keymap.set("i", "<C-i>", "<Esc>I")
vim.keymap.set("i", "<C-a>", "<Esc>A")


vim.keymap.set("n", "<C-p>", ":Telescope find_files<enter>")


vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-H>", 'copilot#Previous()', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-K>", 'copilot#Next()', { silent = true, expr = true })

-- Navigating between split windows
vim.api.nvim_set_keymap('n', '<C-k>', ':wincmd k<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':wincmd j<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', ':wincmd h<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':wincmd l<CR>', { silent = true })

-- nvimtree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { silent = true })
