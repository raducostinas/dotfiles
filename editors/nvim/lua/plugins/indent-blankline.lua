-- Add indentation guides even on blank lines
return {
  'lukas-reineke/indent-blankline.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = require("config.indent-blankline"),
}
