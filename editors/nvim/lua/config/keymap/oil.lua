local utils = require("utils.keymap")
local nnoremap = utils.nnoremap
local M = {}

function M.keymaps()
  nnoremap(
    "<leader>F",
    "<cmd>Oil --float<cr>",
    { desc = "Open parent directory in float" }
  )

  nnoremap(
    "<leader>-",
    "<cmd>Oil<cr>",
    { desc = "Open parent directory" }
  )
end

return M
