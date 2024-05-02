local set = vim.opt
set.number = true
set.relativenumber = true
set.syntax = 'on'


-- let g:airline_statusline_ontop=1
vim.g.airline_solairzed_bg = 'dark'
vim.g.airline_theme = 'papercolor'
-- set.clipboard = "unnamedplus"

set.foldmethod = "indent"
set.foldlevel = 1
set.foldenable = false
set.foldexpr = "nvim_treesitter#foldexpr()"




vim.cmd [[colorscheme tokyonight]]
