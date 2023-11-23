local builtin = require("telescope.builtin")
local utils = require("utils.keymap")
local nnoremap = utils.nnoremap
local inoremap = utils.inoremap
local M = {}

function M.keymaps(bufnr)
  local opts = {buffer = bufnr, remap = false}

  nnoremap(
    "<leader>rn",
    vim.lsp.buf.rename,
    { buffer = bufnr, remap = false, desc = "[R]e[N]ame" }
  )

  nnoremap(
    "<leader>ca",
    vim.lsp.buf.code_action,
    { buffer = bufnr, remap = false, desc = "[C]ode [A]ction" }
  )

  nnoremap(
    "gd",
    vim.lsp.buf.definition,
    { buffer = bufnr, remap = false, desc = "[G]o to [D]efinition" }
  )

  nnoremap(
    "gr",
    vim.lsp.buf.references,
    { buffer = bufnr, remap = false, desc = "[G]o to [R]eferences" }
  )

  nnoremap(
    "gI",
    vim.lsp.buf.implementation,
    { buffer = bufnr, remap = false, desc = "[G]o to [I]mplementation" }
  )

  nnoremap(
    "<leader>D",
    vim.lsp.buf.type_definition,
    { buffer = bufnr, remap = false, desc = "Type [D]efinition" }
  )

  nnoremap(
    "<leader>ds",
    builtin.lsp_document_symbols,
    { buffer = bufnr, remap = false, desc = "[D]ocument [S]ymbols" }
  )

  nnoremap(
    "<leader>ws",
    vim.lsp.buf.workspace_symbol,
    { buffer = bufnr, remap = false, desc = "[W]orkspace [S]ymbols" }
  )

  nnoremap(
    "K",
    vim.lsp.buf.hover,
    { buffer = bufnr, remap = false, desc = "Hover Documentation" }
  )

  nnoremap(
    "<leader>vd",
    vim.diagnostic.open_float,
    opts
  )

  nnoremap(
    "[d",
    vim.diagnostic.goto_next,
    opts
  )

  nnoremap(
    "]d",
    vim.diagnostic.goto_prev,
    opts
  )

  nnoremap(
    "<leader>BF",
    vim.lsp.buf.format,
    opts
  )

  inoremap(
    "<C-h>",
    vim.lsp.buf.signature_help,
    opts
  )

end

return M

