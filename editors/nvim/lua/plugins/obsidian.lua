return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  event = {
    "BufReadPre ~/00-Obsidian/**.md",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = require("config.obsidian"),
}
