local builtin = require("telescope.builtin")
local action_state = require("telescope.actions.state")
local actions = require("telescope.actions")

local M = {}

function M.diagnostics()
  builtin.diagnostics()
end

function M.opened_files()
  builtin.oldfiles()
end

function M.project_files()
  local opts = { show_untracked = true }
  local ok = pcall(builtin.git_files, opts)
  if not ok then
    builtin.find_files(opts)
  end
end

function M.buffers()
  builtin.buffers {
    attach_mappings = function(prompt_bufnr, map)
      local delete_buf = function()
        local current_picker = action_state.get_current_picker(prompt_bufnr)
        current_picker:delete_selection(function(selection)
          vim.api.nvim_buf_delete(selection.bufnr, { force = true })
        end)
      end

      map("i", "<c-d>", delete_buf)
      return true
    end
  }
end

function M.dotfiles()
  local opts = {
    prompt_title = "< Dotfiles >",
    cwd = "$HOME/.dotfiles",
    show_untracked = true,
  }
  builtin.git_files(opts)
end

function M.help_tags()
  builtin.help_tags()
end

function M.branches()
  builtin.git_branches {
    attach_mappings = function(_, map)
      map("i", "<c-j>", actions.git_create_branch)
      map("n", "<c-j>", actions.git_create_branch)
      return true
    end,
  }
end

function M.nvim_config()
  builtin.find_files {
    prompt_title = "< Neovim >",
    cwd = "$HOME/.dotfiles/editors/nvim/",
  }
end

function M.nvim_plugins()
  builtin.find_files {
    prompt_title = "< Plugins >",
    cwd = "$HOME/.dotfiles/editors/nvim/lua/plugins",
  }
end

function M.search_config()
  builtin.git_files {
    prompt_title = "< Dotfiles >",
    cwd = "$HOME/.dotfiles",
    show_untracked = true,
  }
end

function M.grep_string()
  vim.ui.input({ prompt = "Grep for > " }, function(input)
    if input == nil then
      return
    end
    builtin.grep_string({ search = input })
  end)
end

function M.grep_word()
  builtin.grep_string({ search = vim.fn.expand "<cword>" })
end

function M.find_symbol()
  vim.ui.input({ prompt = "Symbol for > " }, function(input)
    if input == nil then
      return
    end
    builtin.lsp_workspace_symbols({ query = input })
  end)
end

return M
