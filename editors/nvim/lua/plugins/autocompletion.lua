return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    {'L3MON4D3/LuaSnip'},
  },
  config = function()
    -- Here is where you configure the autocompletion settings.
    -- The arguments for .extend() have the same shape as `manage_nvim_cmp`: 
    -- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v2.x/doc/md/api-reference.md#manage_nvim_cmp
    require("lsp-zero.cmp").extend()
    local cmp = require("cmp")
    local cmp_keymaps = require("config.keymap.autocompletion")
    cmp.setup({
      mapping = cmp_keymaps.keymaps(cmp)
    })
  end
}
