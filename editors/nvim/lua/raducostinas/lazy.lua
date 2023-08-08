-- Install package manager
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({

  -- Theme
  { 'ellisonleao/gruvbox.nvim', priority = 1000 },

  -- File manager
  'mbbill/undotree',

  -- Git
  'tpope/vim-fugitive',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- LSP Configuration & Plugins
  {
    'VonHeikemen/lsp-zero.nvim', 
    branch = 'v2.x', 
    dependencies = {
      -- LSP Support
      'neovim/nvim-lspconfig',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Autocompletion
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
    },
  },

  -- Adds git related signs to the gutter, as well as utilities for managing changes
  'lewis6991/gitsigns.nvim',
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- Add indentation guides even on blank lines
  'lukas-reineke/indent-blankline.nvim',
  {
    -- Highlight, edit and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },
  -- Fuzzy Finder (files, lsp, etc)
  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' }
  },
  -- Fuzzy Finder Algorithm which requires local dependencies to be built.
  -- Only if `make` is available. Make sure you have the system requirements installed.
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    -- NOTE: If you are having trouble with this installation, refer to the README for telescope-fzf-native for more instructions
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
  },

  'wakatime/vim-wakatime'
})
