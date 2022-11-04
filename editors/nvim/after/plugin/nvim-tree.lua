require("nvim-tree").setup({
  disable_netrw = true,
  hijack_netrw = true,
  sort_by = "case_sensitive",
  view = {
    number = true,
    relativenumber = true,
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})
