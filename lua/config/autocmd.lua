vim.api.nvim_create_autocmd("BufWritePre", {
	-- buffer = buffer,
	callback = function()
		-- if vim.bo.filetype == "lua" then
		vim.lsp.buf.format { async = false }
	end

})


vim.api.nvim_create_autocmd("LspAttach", {
	callback = function()
		-- vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
		-- vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")

		-- --go to usage
		vim.keymap.set("n", "gu", "<cmd>lua vim.lsp.buf.references()<CR>")
		vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")

		--rename symbol
		vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
		vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
		vim.keymap.set("n", "<leader>cf", "<cmd>lua vim.lsp.buf.format()<CR>")
		vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
		-- 	vim.cmd [[
		-- nnoremap <buffer> <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
		-- nnoremap <buffer> <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
		-- nnoremap <buffer> <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
		-- nnoremap <buffer> <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
		-- nnoremap <buffer> <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
		-- nnoremap <buffer> <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
		-- nnoremap <buffer> <silent> <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
		-- nnoremap <buffer> <silent> <leader>ca <cmd>lua vim.lsp.buf.code_action()<CR>
		-- nnoremap <buffer> <silent> <leader>cf <cmd>lua vim.lsp.buf.formatting()<CR>
		-- nnoremap <buffer> <silent> <leader>ee <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
		-- nnoremap <buffer> <silent> <leader>en <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
		-- nnoremap <buffer> <silent> <leader>ep <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
		-- ]]
	end
})



vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		require("vim.highlight").on_yank({ higroup = "Search", timeout = 300 })
	end
})
