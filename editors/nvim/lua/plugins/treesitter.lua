-- Highlight, edit and navigate code
return   {
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  build = ':TSUpdate',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    require("nvim-treesitter.configs").setup(require("config.treesitter"))
  end,
}
