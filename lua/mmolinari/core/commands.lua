local augroup_name = 'MMolinariNvim'
local group = vim.api.nvim_create_augroup(augroup_name, { clear = true })

vim.api.nvim_create_autocmd('VimResized', {
  command = 'tabdo wincmd =',
  group = group,
})

