return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { 
        "nvim-telescope/telescope-fzf-native.nvim", 
        build = "make",
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
    },
    cmd = "Telescope",
    keys = require("config.keymap.telescope"),
    opts = {
      defaults = {
        mappings = {
          i = {
            ['<C-u>'] = false,
            ['<C-d>'] = false,
          }
        }
      }
    },
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("fzf")
    end,
  }
}
