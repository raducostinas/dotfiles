local gitsigns = require("gitsigns")
local utils = require("utils.keymap")
local nnoremap = utils.nnoremap
local M = {}

function M.keymaps(bufnr)
  nnoremap(
    "<leader>gp",
    gitsigns.preview_hunk,
    { buffer = bufnr, remap = false, desc = "[G]it [P]review Hunk" }
  )

  nnoremap(
    "<leader>gb",
    gitsigns.toggle_current_line_blame,
    { buffer = bufnr, remap = false, desc = "[G]it [B]lame" }
  )
end

return M
