require('editorconfig').properties.charset = function(bufnr, val)
  vim.b[bufnr].charset = val
end
require('editorconfig').properties.indent_style = function(bufnr, val)
  vim.b[bufnr].indent_style = val
end
-- require('editorconfig').properties.indent_style = 'space'
-- require('editorconfig').properties.indent_size = 2
-- require('editorconfig').properties.insert_final_newline = true
-- require('editorconfig').properties.trim_trailing_whitespace = true
-- require('editorconfig').properties.max_line_length = 80
