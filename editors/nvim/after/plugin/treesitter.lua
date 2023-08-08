local config = require('nvim-treesitter.configs')

config.setup {
    sync_install = true,
    modules = {},
    ignore_install = {},
    ensure_installed = {
        'javascript',
        'typescript',
        'tsx',
        'lua',
        'rust',
        'go',
        'vimdoc',
        'vim'
    },
    auto_install = false,
    highlight = { enable = false },
    indent = { enable = true },
}
