--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin

  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
end)
