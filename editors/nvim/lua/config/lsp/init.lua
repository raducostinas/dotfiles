local M = {}

function M.servers()
  return {
    'angularls',
    'ansiblels',
    'eslint',
    'gradle_ls',
    'java_language_server',
    'jdtls',
    'lua_ls',
    'rust_analyzer',
    'tsserver',
    'gopls'
  }
end

function M.set_icons()
  return {
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I'
  }
end

return M
