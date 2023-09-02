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
