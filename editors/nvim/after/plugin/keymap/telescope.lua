local Remap = require('raducostinas.keymap')
local nnoremap = Remap.nnoremap
local nmap = Remap.nmap
local builtin = require('telescope.builtin')

nnoremap('<C-p>', ':Telescope')
nnoremap('<leader><space>', function()
    builtin.buffers()    
end)
nnoremap('<leader>?', function()
    builtin.oldfiles()    
end)
nnoremap('<leader>ff', function()
    builtin.find_files()    
end)
nnoremap('<leader>fg', function()
    builtin.live_grep()
end)
nnoremap('<leader>fb', function()
    builtin.buffers()
end)
nnoremap('<leader>fs', function()
    builtin.current_buffer_fuzzy_find()
end)
