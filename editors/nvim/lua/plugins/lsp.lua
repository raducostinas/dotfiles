return {
  'neovim/nvim-lspconfig',
  cmd = 'LspInfo',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'williamboman/mason.nvim' },
  },
  config = function()
    -- This is where all the LSP shenanigans will live
    local lsp = require("lsp-zero")
    local lsp_config = require("config.lsp")

    lsp.ensure_installed(lsp_config.servers())
    lsp.set_sign_icons(lsp_config.set_icons())

    local on_attach = function(_, bufnr)
      -- see :help lsp-zero-keybindings
      -- to learn the available actions
      require("config.keymap.lsp").keymaps(bufnr)

      -- Create a command `:Format` local to the LSP buffer
      vim.api.nvim_buf_create_user_command(
        bufnr,
        'Format',
        function()
          vim.lsp.buf.format()
        end,
        { desc = 'Format current buffer with LSP' }
      )
    end

    lsp.on_attach(on_attach)

    -- (Optional) Configure lua language server for neovim
    local lua_ls_setup = require("config.lua-ls")
    require('lspconfig').lua_ls.setup(lua_ls_setup)

    local dart_ls_setup = require("config.dart-ls")
    require('lspconfig').dartls.setup({
      on_attach = on_attach,
      settings = dart_ls_setup,
  });

    lsp.skip_server_setup({'jdtls'})

    lsp.setup()
  end
}
