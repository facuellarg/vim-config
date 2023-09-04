require('Comment').setup {
	-- ignores empty lines
	ignore = '^$',
	toggler = {
		---line-comment keymap
		line = '<C-_>',
		---block-comment keymap
		block = '<C-S-_>',
	},
	opleader = {
		---Line-comment keymap
		line = '<C-_>',
		---Block-comment keymap
		block = '<C-S-_>',
	},
	mappings = {
		basic = true,
		extra = true,
	},
}
