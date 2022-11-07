vim.opt.guicursor = ''

vim.opt.nu =  true
vim.opt.relativenumber = true

vim.errorbells = false

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.showmode = false

vim.opt.smartindent= true

vim.opt.wrap = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.clipboard = 'unnamedplus'

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000ms = 4s) leads to noticeable delays and poor user experience.
vim.opt.updatetime = 50

vim.opt.colorcolumn = '80'

-- vim.opt.foldmethod = 'indent'
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldnestmax = 10
vim.opt.foldenable = false
vim.opt.foldlevel = 2

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = ' '
