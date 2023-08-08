vim.opt.guicursor = 'n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175'
vim.opt.background = "dark"
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

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.clipboard = 'unnamedplus'

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000ms = 4s) leads to noticeable delays and poor user experience.
vim.opt.updatetime = 50

vim.opt.colorcolumn = '80'

vim.g.mapleader = ' '

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.completeopt = 'menuone,noselect'

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
