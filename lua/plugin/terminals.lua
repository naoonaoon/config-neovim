vim.pack.add({
  { src = 'https://github.com/akinsho/toggleterm.nvim' },
})

require('toggleterm').setup({
  close_on_exit = true,
  float_opts = {
    border = 'rounded',
  },
})

local Terminal = require('toggleterm.terminal').Terminal

-- Lazygit
local lazygit = Terminal:new({
  cmd = 'lazygit',
  direction = 'float',
  hidden = true,
  dir = 'git_dir',
})

vim.api.nvim_create_user_command('Lazygit', function()
  lazygit:toggle()
end, { desc = 'Open Lazygit' })
