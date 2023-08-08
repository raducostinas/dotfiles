local remap = require('raducostinas.keymap')
local nnoremap = remap.nnoremap

nnoremap('<C-u>', vim.cmd.UndotreeToggle)
