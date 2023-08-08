require('gruvbox').setup({
  usercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
  palette_overrides = {
    neutral_red = '#CC241D',
    neutral_orange = '#CC241D',
    bright_red = '#FB4934',
    bright_orange = '#FB4934',
    neutral_green = '#689D6A',
    bright_green = '#8EC07C',
    neutral_blue = '#30A2FF',
    bright_blue = '#00C4FF',
    neutral_purple = '#EA1179',
    light_purple = '#F79BD3',
  }
})

vim.cmd('colorscheme gruvbox')
