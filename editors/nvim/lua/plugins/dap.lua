return {
  "mfussenegger/nvim-dap",
  dependencies = {
    { "rcarriga/nvim-dap-ui" },
    { "theHamsta/nvim-dap-virtual-text" },
  },
  keys = require("config.keymap.dap"),
  opts = {},
  config = function(plugin, opts)
    require("nvim-dap-virtual-text").setup {
      commented = true,
    }

    local dap, dapui = require("dap"), require("dapui")
    dapui.setup {}

    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end

    -- set up debugger
    for k, _ in pairs(opts.setup) do
      opts.setup[k](plugin, opts)
    end
  end,
}
