return {
  "folke/twilight.nvim",
  event = { 'BufReadPre', 'BufNewFile' },
  opts = require("config.twilight"),
  config = function ()
    vim.cmd("TwilightEnable")
  end
}
