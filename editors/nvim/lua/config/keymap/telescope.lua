return {
  {
    "<leader>T",
    function()
      vim.cmd("Telescope")
    end,
    desc = "Open [T]elescope"
  },
  {
    "<leader>?",
    function()
      require("config.telescope").opened_files()
    end,
    desc = "[?] Find recently opened files"
  },
  {
    "<leader><space>",
    function()
      require("config.telescope").buffers()
    end,
    desc = "[ ] Find existing buffers"
  },
  {
    "<leader>sf",
    function()
      require("config.telescope").project_files()
    end,
    desc = "Search [G]it [F]iles"
  },
  {
    "<leader>sdf",
    function()
      require("config.telescope").dotfiles()
    end,
    desc = "[S]earch in [D]ot [F]iles"
  },
  {
    "<leader>scf",
    function()
      require("config.telescope").nvim_config()
    end,
    desc = "Search in n[V]im [C]on[F]ig folder"
  },
  {
    "<leader>spl",
    function()
      require("config.telescope").nvim_plugins()
    end,
    desc = "Search in n[V]im [P][L][G]ugin folder"
  },
  {
    "<leader>sh",
    function()
      require("config.telescope").help_tags()
    end,
    desc = "[S]earch [H]"
  },
  {
    "<leader>sw",
    function()
      require("config.telescope").grep_word()
    end,
    desc = "[S]earch current [W]ord"
  },
  {
    "<leader>sg",
    function()
      require("config.telescope").grep_string()
    end,
    desc = "[S]earch by [G]rep"
  },
  {
    "<leader>sd",
    function()
      require("config.telescope").diagnostics()
    end,
    desc = "[S]earch [D]iagnostics"
  },
  {
    "<leader>/",
    function()
      require("telescope.builtin").current_buffer_fuzzy_find(
        require("telescope.themes").get_dropdown({
          winblend = 10,
          previewer = false,
        })
      )
    end,
    desc = "[/] Fuzzily search in current buffer"
  },
  {
    "<leader>:",
    "<cmd>Telescope cmdline<cr>",
    desc = "[:] Cmdline"
  },
  {
    "<leader>fb",
    ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
    { noremap = true }
  }

}
