return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup(require("config.oil"))
    require("config.keymap.oil").keymaps()
  end
}
