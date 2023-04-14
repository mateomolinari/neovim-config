local user_config = require('mmolinari.core.user')
return {
  { -- color scheme
    'folke/tokyonight.nvim',
    lazy = false,
    config = function()
      local config = require('mmolinari.plugins.tokyonight.config')
      require('tokyonight').setup(config)
      vim.cmd('color tokyonight')
    end,
    enabled = not vim.tbl_contains(user_config.disable_builtin_plugins, 'tokyonight'),
  },
}
