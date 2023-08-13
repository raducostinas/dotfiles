require("config.options")

-- Autocmds and keymaps can wait to load
local lazyVimGroup = vim.api.nvim_create_augroup("LazyVim", { clear = true })
vim.api.nvim_create_autocmd("User", {
  group = lazyVimGroup, 
  pattern = "VeryLazy",
  callback = function()
    require("config.keymap.general")
  end
})

require("config.lazy")
