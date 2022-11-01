local Remap = require('raducostinas.keymap')
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

-- greatest reamp ever
xnoremap('<leader>p', '\"_dP')


-- Split resize
nnoremap('<leader>>', '10<C-W>>')
nnoremap('<leader><', '10<C-W><')

nnoremap('<leader>w', ':w<CR>')
nnoremap('<leader>q', ':q<CR>')
nnoremap('<leader>Q', ':q!<CR>')

nmap('<leader>T', ':enew<CR>')
nmap('<leader>l', ':bnext<CR>')
nmap('<leader>h', ':bprevious<CR>')
nmap('<leader>bd', ':bdelete<CR>')
nmap('<leader>bq', ':bp <BAR> bd #<CR>')
nmap('<leader>bl', ':ls<CR>')


-- Use ctrl-[hjkl] to select the active split!
nnoremap('<C-K>', '<C-W><C-K>')
nnoremap('<C-J>', '<C-W><C-J>')
nnoremap('<C-H>', '<C-W><C-H>')
nnoremap('<C-L>', '<C-W><C-L>')

nmap('<CR>¬', 'gg=G<C-o><C-o>')

nmap('<leader>lnt', ':Prettier<CR>')
