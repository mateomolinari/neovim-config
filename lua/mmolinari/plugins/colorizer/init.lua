local user_config = require('mmolinari.core.user')
local u = require('mmolinari.utils')

return {
  'norcalli/nvim-colorizer.lua',
  cmd = { 'ColorizerToggle' },
  config = function()
    require('colorizer').setup(u.merge({}, user_config.plugins.colorizer or {}))
  end,
  enabled = not vim.tbl_contains(user_config.disable_builtin_plugins, 'colorizer'),
}
