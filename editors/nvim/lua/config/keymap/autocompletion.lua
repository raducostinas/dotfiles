local M = {}

function M.keymaps(cmp)
  local cmp_select = {behavior = cmp.SelectBehavior.Select}

  return {
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-c>'] = cmp.mapping.complete(),
  }
end

return M
