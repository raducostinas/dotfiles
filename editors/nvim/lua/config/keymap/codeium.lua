local utils = require("utils.keymap")
local inoremap = utils.inoremap
local M = {}

function M.keymaps()
  inoremap(
    "<C-g>",
    function()
      return vim.fn['codeium#Accept']()
    end,
    { expr = true, silent = true, desc = "[C]odeium accept" }
  )

  inoremap(
    "<C-x>",
    function()
      return vim.fn['codeium#Clear']()
    end,
    { expr = true, silent = true, desc = "[C]odeium [C]lear" }
  )

  inoremap(
    "<C-;>",
    function()
      return vim.fn['codeium#CycleCompletions'](1)
    end,
    { expr = true, silent = true, desc = "[C]odeium cycle completions +" }
  )

  inoremap(
    "<C-,>",
    function()
      return vim.fn['codeium#CycleCompletions'](-1)
    end,
    { expr = true, silent = true, desc = "[C]odeium cycle completions -" }
  )
end

return M
