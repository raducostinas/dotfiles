local remap = require('raducostinas.keymap')
local nnoremap = remap.nnoremap
local vnoremap = remap.vnoremap
local xnoremap = remap.xnoremap

-- Explorer
nnoremap('<leader>vp', vim.cmd.Ex)

vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")
nnoremap('J', 'mzJ`z')
nnoremap('<C-d>', '<C-d>zz')
nnoremap('<C-u>', '<C-u>zz')

xnoremap('<leader>p', "\"_dP")

nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")
nnoremap("<leader>Y", "\"+Y")

nnoremap("[d", vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
nnoremap("]d", vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
nnoremap("<leader>e", vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
nnoremap("<leader>q", vim.diagnostic.open_float, { desc = 'Open diagnostics list' })
