require('config/mapping/barbar')
require('config/mapping/telescope')
require('config/mapping/nvimtree')
require('config/mapping/copilot')

vim.g.mapleader = " "


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


-- scape terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
-- close terminal buffer
vim.keymap.set("t", "<leader><Esc>", "<C-\\><C-n>:bd!<enter>")

--open new terminal below
vim.keymap.set("n", "<leader>tt", ":below 10sp term://bash<enter>i")

-- Navigating between split windows
vim.api.nvim_set_keymap('n', '<C-k>', ':wincmd k<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':wincmd j<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', ':wincmd h<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':wincmd l<CR>', { silent = true })


-- Open vertical split and horizontal split
vim.keymap.set("n", "<leader>v", ":vsplit<enter>")
vim.keymap.set("n", "<leader>h", ":split<enter>")


-- go definition
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")

--go to usage
vim.keymap.set("n", "gu", "<cmd>lua vim.lsp.buf.references()<CR>")
vim.keymap.set("n", "gU", "<cmd>lua vim.lsp.buf.hover()<CR>")

--rename symbol
vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")


function ToggleFolding()
	vim.opt.foldenable = not vim.opt.foldenable
end

vim.keymap.set("n", "<leader>ff", ":lua ToggleFolding()<CR>")
