-- Add indentation guides even on blank lines
return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  event = { 'BufReadPre', 'BufNewFile' },
  config = require("config.indent-blankline"),
}
