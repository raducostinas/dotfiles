local null_ls = require('null-ls')

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettierd,
  },
})

local prettier = require('prettier')

prettier.setup {
  bin = 'prettierd',
  filetypes = {
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
    'css',
    'scss',
    'json',
    'graphql',
    'markdown',
    'yaml',
    'html',
    'vue',
    'svelte',
  },
  cli_options = {
    arrow_parens = 'always',
    bracket_spacing = true,
    bracket_same_line = false,
    embedded_language_formatting = 'auto',
    end_of_line = 'lf',
    html_whitespace_sensitivity = 'css',
    insert_final_newline = true,
    jsx_single_quote = false,
    print_width = 80,
    prose_wrap = 'preserve',
    quote_props = 'as-needed',
    semi = true,
    single_attribute_per_line = false,
    single_quote = false,
    tab_width = 2,
    trailing_comma = 'es5',
    use_tabs = false,
    vue_indent_script_and_style = false,
  },
}
