local set = vim.opt
require('my-packer')
require('custom/lspconfig')

-- local lspconfig = require("lspconfig")
-- local capabilities = require("cmp_nvim_lsp").default_capabilities()

require('Comment').setup{
	toggler = {
		---line-comment keymap
		line = '<C-_>',
		---block-comment keymap
		block = 'gbc',
	},
	opleader = {
		---Line-comment keymap
		line = '<C-_>',
		---Block-comment keymap
		block = 'gb',
	},
	mappings={
		basic = true,
		extra = true,
	},
}

-- local servers = { 'lua_ls','clangd','rust_analyzer', 'pyright', 'tsserver' }
-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     -- on_attach = my_custom_on_attach,
--     capabilities = capabilities,
--   }
-- end


-- lspconfig.gopls.setup {
-- 	capabilities = capabilities,
-- 	cmd={"gopls"},
-- 	filetpes={"go"},
-- }

-- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)


set.number = true

vim.g.mapleader=" "

vim.g.go_def_mode='gopls'
vim.g.go_info_mode='gopls'

vim.keymap.set("n","<leader>q",":q<enter>")
vim.keymap.set("n","<leader>w",":w<enter>")

vim.keymap.set("i","<C-i>", "<Esc>I")
vim.keymap.set("i","<C-a>", "<Esc>A")


vim.keymap.set("n","<C-p>",":Telescope find_files<enter>")

-- -- luasnip setup
-- local luasnip = require 'luasnip'
--
-- -- nvim-cmp setup
-- local cmp = require 'cmp'
-- cmp.setup {
--   snippet = {
--     expand = function(args)
--       luasnip.lsp_expand(args.body)
--     end,
--   },
--   mapping = cmp.mapping.preset.insert({
--     ['<C-u>'] = cmp.mapping.scroll_docs(-4), -- Up
--     ['<C-d>'] = cmp.mapping.scroll_docs(4), -- Down
--     -- C-b (back) C-f (forward) for snippet placeholder navigation.
--     ['<C-Space>'] = cmp.mapping.complete(),
--     ['<CR>'] = cmp.mapping.confirm {
--       behavior = cmp.ConfirmBehavior.Replace,
--       select = true,
--     },
--     ['<Tab>'] = cmp.mapping(function(fallback)
--       if cmp.visible() then
--         cmp.select_next_item()
--       elseif luasnip.expand_or_jumpable() then
--         luasnip.expand_or_jump()
--       else
--         fallback()
--       end
--     end, { 'i', 's' }),
--     ['<S-Tab>'] = cmp.mapping(function(fallback)
--       if cmp.visible() then
--         cmp.select_prev_item()
--       elseif luasnip.jumpable(-1) then
--         luasnip.jump(-1)
--       else
--         fallback()
--       end
--     end, { 'i', 's' }),
--   }),
--   sources = {
--     { name = 'nvim_lsp' },
--     { name = 'luasnip' },
--   },
-- }

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-H>", 'copilot#Previous()', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-K>", 'copilot#Next()', { silent = true, expr = true })

-- Navigating between split windows
vim.api.nvim_set_keymap('n', '<C-k>', ':wincmd k<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':wincmd j<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', ':wincmd h<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':wincmd l<CR>', { silent = true })




