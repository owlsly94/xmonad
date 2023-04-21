return require'packer'.startup(function()
    -- Packer manager
   use { 'wbthomason/packer.nvim' }
   -- Catppucin colors
   use { "catppuccin/nvim", as = "catppuccin" }
   -- Tree
   use { 'nvim-tree/nvim-tree.lua' }
   use { 'nvim-tree/nvim-web-devicons' }
   -- LSP
   use { 'neovim/nvim-lspconfig' }
   use { 'hrsh7th/nvim-cmp' }
   use { 'hrsh7th/cmp-nvim-lsp' }
   use { 'saadparwaiz1/cmp_luasnip' }
   use { 'L3MON4D3/LuaSnip' }
   use { 'onsails/lspkind.nvim' }
   -- Fansy Notifications
   use { 'rcarriga/nvim-notify' }
   -- Lualine
   use { 'nvim-lualine/lualine.nvim' }
   -- Top Bar
   use { 'romgrk/barbar.nvim' }
   use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { {'nvim-lua/plenary.nvim'} } }
   -- Mason
   use { 'williamboman/mason.nvim', run = ":MasonUpdate" }
   use { 'williamboman/mason-lspconfig.nvim' }
   -- Colorizer for CSS
   use { 'norcalli/nvim-colorizer.lua' }
   use {
       'nvim-treesitter/nvim-treesitter',
       run = function()
           local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
           ts_update()
       end,
   }
end)
