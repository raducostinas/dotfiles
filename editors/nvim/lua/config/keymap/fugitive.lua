return {
  {
    "<C-t>",
    function()
      vim.cmd("Git")
    end,
    desc = "[G]it status",
  },
  {
    "<leader>ga",
    function()
      vim.cmd("Git fetch --all -p<cr>")
    end,
    desc = "[G]it [F]etch [A]ll",
  },
  {
    "<leader>gps",
    function()
      vim.cmd("Git push<cr>")
    end,
    desc = "[G]it [P]u[S]h",
  },
  {
    "<leader>gpl",
    function()
      vim.cmd("Git pull<cr>")
    end,
    desc = "[G]it [P]u[L]l",
  }
}
