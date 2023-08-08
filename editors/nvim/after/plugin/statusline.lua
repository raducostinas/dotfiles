local sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
}
local options = {
    theme = 'gruvbox',
    icons_enabled = true,
    component_separators = '|',
    section_separators = '',
}

require('lualine').setup({
    options = options,
    sections = sections,
})
