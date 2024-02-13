local sections = {
  lualine_a = {'mode'},
  lualine_b = {'branch', 'diff', 'diagnostics'},
  lualine_c = {'filename'},
  lualine_x = {'encoding', 'fileformat', 'filetype'},
  lualine_y = {'progress'},
  lualine_z = {'location'}
}

local theme = 'tokyonight'

if vim.g.raducostinas_lualine_color then
  theme = vim.g.raducostinas_lualine_color
end

local options = {
  theme,
  icons_enabled = true,
  component_separators = '|',
  section_separators = '',
}

return {
  options = options,
  sections = sections,
}
