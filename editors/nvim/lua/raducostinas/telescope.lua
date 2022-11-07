local pickers = require('telescope.pickers')
local finders = require('telescope.finders')
local previewers = require('telescope.previewers')
local action_state = require('telescope.actions.state')
local conf = require('telescope.config').values
local actions = require('telescope.actions')
local utils = require('telescope.utils')

require('telescope').setup({
    extensions = {
      file_browser = {
        hidden = true,
      },
      command_palette= {
        {
          "File",
          { "Neovim Config Files", ":lua require'raducostinas.telescope'.nvim_config()", 1 },
          { "File Browser", ":lua require('telescope').extensions.file_browser.file_browser()", 1 },
        },
        {
          "Terminal",
          {"Vertical Right", ":vsp | terminal", 1},
        },
      },
    },
    defaults = {
      preview = {
        timeout = 500,
        msg_bg_fillchar = '',
      },
      multi_icon = " ",
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",
      },
      prompt_prefix = "❯ ",
      selection_caret = "❯ ",
      sorting_strategy = "ascending",
      color_devicons = true,
      layout_config = {
        prompt_position = "bottom",
        horizontal = {
          width_padding = 0.04,
          height_padding = 0.1,
          preview_width = 0.6,
        },
        vertical = {
          width_padding = 0.05,
          height_padding = 1,
          preview_height = 0.5,
        },
      },
      mappings = {
        n = {
          ['<Del>'] = actions.close,
        },
        i = {
          ['<esc>'] = actions.close,
        },
      },
      dynamic_preview_title = true,
      windblend = 4,
    },
})

-- 🔭 Extensions --
-- https://github.com/nvim-telescope/telescope-file-browser.nvim
require("telescope").load_extension "file_browser"
-- https://github.com/nvim-telescope/telescope-fzf-native.nvim#telescope-fzf-nativenvim
require('telescope').load_extension('fzf')   
-- https://github.com/LinArcX/telescope-command-palette.nvim
require('telescope').load_extension('command_palette')

local M = {}
local layout_config = {
  preview_width = 0.65,
  width = 0.75,
}

function M.nvim_config()
  require('telescope.builtin').find_files({
    prompt_title = " NVim Config Browse",
    cwd = "~/.dotfiles/editors/nvim/",
    layout_strategy = "horizontal",
    layout_config = layout_config,
  })
end

return M
