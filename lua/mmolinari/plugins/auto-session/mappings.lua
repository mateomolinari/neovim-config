local map = require('mmolinari.utils').map

-- session
map('n', '<leader>sl', '<cmd>silent RestoreSession<cr>', { desc = 'Restore session' })
map('n', '<leader>ss', '<cmd>SaveSession<cr>', { desc = 'Save session' })
map(
  'n',
  '<leader>si',
  '<cmd>lua require("mmolinari.utils.logger"):log("Session name: " .. require("auto-session-library").current_session_name())<cr>',
  { desc = 'Print session' }
)
