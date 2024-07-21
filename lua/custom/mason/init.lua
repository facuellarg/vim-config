require("mason").setup()
require("mason-lspconfig").setup({
	-- Here you can specify which LSP servers to automatically install
	-- For example, to ensure 'pyright' and 'tsserver' are installed:
	ensure_installed = {},
	-- Automatically install LSP servers without prompting
	automatic_installation = true,
})
