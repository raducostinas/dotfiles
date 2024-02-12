vim.g.loaded_ruby_provider = 0
vim.g.mapleader = ' '
vim.g.raducostinas_color = 'gruvbox'
vim.g.raducostinas_lualine_color = 'gruvbox'

vim.errorbells = false

local options = vim.opt;

options.guicursor = 'n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175'
options.background = "dark"
options.nu =  true
options.relativenumber = true
options.expandtab = false
options.tabstop = 2
options.softtabstop = 2
options.shiftwidth = 2
options.showmode = false
options.smartindent= true
options.wrap = true
options.scrolloff = 8
options.signcolumn = "yes"
options.clipboard = 'unnamedplus'
options.cmdheight = 1
options.updatetime = 50
options.colorcolumn = '80'
options.hlsearch = false
options.incsearch = true
options.termguicolors = true
options.completeopt = 'menuone,noselect'
options.list = true
options.isfname:append("@-@")
options.listchars:append({ space = '⋅' })
options.listchars:append({ eol = '↴' })
