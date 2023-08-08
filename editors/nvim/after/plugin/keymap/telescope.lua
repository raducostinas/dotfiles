local remap = require('raducostinas.keymap')
local nnoremap = remap.nnoremap
local builtin = require('telescope.builtin')
local themes = require('telescope.themes')

nnoremap('<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })

nnoremap('<leader><space>', builtin.buffers, { desc = '[ ] Find existing buffers' })

nnoremap('<leader>/', function()
    builtin.current_buffer_fuzzy_find(themes.get_dropdown({
        winblend = 10,
        previewer = false,
    }))
end, { desc = '[/] Fuzzily search in current buffer' })

nnoremap('<leader>gf', builtin.git_files, { desc = 'Search [G]it [F]iles' })

nnoremap('<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })

nnoremap('<leader>sh', builtin.help_tags, { desc = '[S]earch [H]' })

nnoremap('<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })

nnoremap('<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })

nnoremap('<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
