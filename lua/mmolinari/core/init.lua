local mmolinari_modules = {
  'mmolinari.core.editor',
  'mmolinari.core.pluginsInit',
  'mmolinari.core.commands',
  'mmolinari.lsp',
  'mmolinari.config.editor',
  -- load mappings only after editor configs are loaded
  'mmolinari.core.mappings',
}

-- set up lazy.nvim to install plugins
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    '--single-branch',
    'https://github.com/folke/lazy.nvim.git',
    lazypath,
  })
end
vim.opt.runtimepath:prepend(lazypath)

-- set up cosmicnvim
for _, mod in ipairs(mmolinari_modules) do
  local ok, err = pcall(require, mod)
  -- cosmic.config files may or may not be present
  if not ok and not mod:find('mmolinari.config') then
    error(('Error loading %s...\n\n%s'):format(mod, err))
  end
end
