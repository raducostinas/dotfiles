return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-lua/popup.nvim",
  },
  event = { 'BufReadPre', 'BufNewFile' },
  keys = require("config.keymap.harpoon"),
  opts = {
    global_settings = {
      enter_on_sendcmd = true,
    },
  },
}

