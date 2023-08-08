local telescope = require('telescope')

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      }
    }
  }
})

-- Enable telescope fzf native, if installed
pcall(telescope.load_extension, 'fzf')
