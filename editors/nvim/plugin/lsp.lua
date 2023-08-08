local lsp = require('lsp-zero').preset({})
local remap = require('raducostinas.keymap')
local builtin = require('telescope.builtin')
local nnoremap = remap.nnoremap

lsp.preset('recommended')


lsp.ensure_installed({
  'tsserver',
  'eslint',
  'lua_ls',
  'rust_analyzer',
  'angularls',
  'ansiblels',
  'java_language_server',
  'gradle_ls',
})

lsp.nvim_workspace()

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ['<C-Space>'] = cmp.mapping.complete(),
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.on_attach(function(_, bufnr)
  local opts = {buffer = bufnr, remap = false}

  nnoremap('<leader>rn', vim.lsp.buf.rename, { buffer = bufnr, remap = false, desc = '[R]e[N]ame' })

  nnoremap('<leader>ca', vim.lsp.buf.code_action, { buffer = bufnr, remap = false, desc = '[C]ode [A]ction' })

  nnoremap('gd', vim.lsp.buf.definition, { buffer = bufnr, remap = false, desc = '[G]o to [D]efinitionefinition' })

  nnoremap('gr', vim.lsp.buf.references, { buffer = bufnr, remap = false, desc = '[G]o to [R]eferences' })

  nnoremap('gI', vim.lsp.buf.implementation, { buffer = bufnr, remap = false, desc = '[G]o to [I]mplementation' })

  nnoremap('<leader>D', vim.lsp.buf.type_definition, { buffer = bufnr, remap = false, desc = 'Type [D]efinition' })

  nnoremap('<leader>ds', builtin.lsp_document_symbols, { buffer = bufnr, remap = false, desc = '[D]ocument [S]ymbols' })

  nnoremap('<leader>ws', vim.lsp.buf.workspace_symbol, { buffer = bufnr, remap = false, desc = '[W]orkspace [S]ymbols' })
  nnoremap('K', vim.lsp.buf.hover, { buffer = bufnr, remap = false, desc = 'Hover Documentation' })


  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)

  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)

  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)

  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

  -- Create a command `:Format` local to the LSP buffer
  vim.api.nvim_buf_create_user_command(bufnr, 'Format', function()
    vim.lsp.buf.format()
  end, { desc = 'Format current buffer with LSP' })

end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
  })
