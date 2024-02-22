return {
  "Exafunction/codeium.vim",
  event = { 'BufReadPre', 'BufNewFile' },
  config = function ()
    require("config.keymap.codeium").keymaps()
  end
}
