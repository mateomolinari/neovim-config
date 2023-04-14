local user_config = require('mmolinari.core.user')
local u = require('mmolinari.utils')


return {
  'github/copilot.vim',
  cmd = { 'Copilot' },
  config = function()
    require('copilot').setup(u.merge({}, user_config.plugins.copilot or {}))
  end,
  enabled = not vim.tbl_contains(user_config.disable_builtin_plugins, 'copilot'),
}
