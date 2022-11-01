local pickers = require('telescope.pickers')
local finders = require('telescope.finders')
local previewers = require('telescope.previewers')
local action_state = require('telescope.actions.state')
local conf = require('telescope.config').values
local actions = require('telescope.actions')

require('telescope').setup({
    defaults = {
        file_ignore_patterns = { "node_modules" },
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix = ">",
        color_devicons = true,

        file_previewer = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

        mappings = {
          i = {
            ["<C-x>"] = false,
            ["<C-q>"] = actions.send_to_qflist,
            ["<CR>"] = actions.select_default,
          },
        },
    },
    pickers = {
      find_files = {
        theme = "dropdown",
        previewer = false,
        shorten_path = false,
        hidden = true,
      },
    },
})

require('telescope').load_extension('fzf')   
