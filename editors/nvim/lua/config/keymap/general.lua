
if not pcall(require, "utils.keymap") then
  return
end

local utils = require("utils.keymap")
local nnoremap = utils.nnoremap
local vnoremap = utils.vnoremap
local xnoremap = utils.xnoremap

nnoremap(
  "FF",
  vim.cmd.Format,
  { desc = "[F]ormat file with Eslint" }
)
-- Explorer
nnoremap("<leader>vp", vim.cmd.Oil)

-- Move line up and down in visual mode
vnoremap(
  "J",
  ":m '>+1<CR>gv=gv",
  { desc = "Move down selected lines in visual mode" }
)

vnoremap(
  "K",
  ":m '<-2<CR>gv=gv",
  { desc = "Move up selected lines in visual mode" }
)

nnoremap("J", "mzJ`z")

xnoremap("<leader>p", "\"_dP")

nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")
nnoremap("<leader>Y", "\"+Y")

nnoremap(
  "[d",
  vim.diagnostic.goto_prev,
  { desc = "Go to previous diagnostic message" }
)

nnoremap(
  "]d",
  vim.diagnostic.goto_next,
  { desc = "Go to next diagnostic message" }
)

nnoremap(
  "<leader>e",
  vim.diagnostic.open_float,
  { desc = "Open floating diagnostic message" }
)

nnoremap(
  "<leader>q",
  vim.diagnostic.open_float,
  { desc = "Open diagnostics list" }
)
