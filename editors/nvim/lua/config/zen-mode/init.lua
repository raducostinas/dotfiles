return {
  window = {
    backdrop = 0.95,
    width = 120,
    height = 1,
  },
  plugins = {
    options = {
      enabled = true,
      ruler = false,
      showcmd = false,
      laststatus = 0,
    },
    twilight = { enabled = true },
    gitsigns = { enabled = false },
    tmux = { enabled = true },
    alacritty = {
      enabled = true,
      font = "18",
    },
  },
  on_open = function()
  end,
  on_close = function()
  end,
}
