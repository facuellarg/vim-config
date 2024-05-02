require('Comment').setup {
	-- ignores empty lines
	
	ignore = '^$',
	toggler = {
		---line-comment keymap
		line = '<C-/>',
		---block-comment keymap
		block = '<C-S-/>',
	},
	opleader = {
		---Line-comment keymap
		line = '<C-/>',
		---Block-comment keymap
		block = '<C-S-/>',
	},
	mappings = {
		basic = true,
		extra = true,
	},
}
