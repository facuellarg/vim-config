require('config/mapping/barbar')
require('config/mapping/copilot')

vim.g.mapleader = " "

-- vim.g.go_def_mode = 'gopls'
-- vim.g.go_info_mode = 'gopls'

vim.keymap.set("n", "<leader>q", ":q<enter>")
vim.keymap.set("n", "<leader>w", ":w<enter>")

vim.keymap.set("i", "<C-i>", "<Esc>I")
vim.keymap.set("i", "<C-a>", "<Esc>A")

--copy to clipboard
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>Y", '"+yg_')
vim.keymap.set("n", "<leader>Y", '"+yg_')

-- paste from clipboard
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>P", '"+P')
vim.keymap.set("v", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>P", '"+P')



-- Navigating between split windows
vim.api.nvim_set_keymap('n', '<C-k>', ':wincmd k<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':wincmd j<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', ':wincmd h<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':wincmd l<CR>', { silent = true })

-- nvimtree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { silent = true })


-- Telescope
vim.keymap.set("n", "<C-p>", ":Telescope find_files<enter>")
