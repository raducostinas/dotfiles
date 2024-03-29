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
      { "jonarrien/telescope-cmdline.nvim" },
      { "nvim-tree/nvim-web-devicons" }
    },
    cmd = "Telescope",
    keys = require("config.keymap.telescope"),
    opts = {
      defaults = {
        border = true,
        layout_config = {
          vertical = { width = 0.5 },
        },
        sorting_strategy = "ascending",
        mappings = {
          i = {
            ['<C-u>'] = false,
            ['<C-d>'] = false,
          }
        }
      },
      pickers = {
        find_files = {
          theme = "dropdown",
        }
      },
      extensions = {
        file_browser = {
          hijack_netrw = true,
          mappings = {
            ["i"] = {},
            ["n"] = {}
          }
        }
      }
    },
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("fzf")
      telescope.load_extension("cmdline")
      telescope.load_extension("file_browser")
    end,
  }
}
