vim.pack.add({
  { src = "https://github.com/akinsho/toggleterm.nvim" },
})

require("toggleterm").setup({
  -- for general case
  direction = "horizontal",
  size = function(term)
    if term.direction == "horizontal" then
      return math.floor(vim.o.lines / 3)
    end
    return 20
  end,

  close_on_exit = true,

  -- for lazygit
  float_opts = {
    border = "rounded",
  },
})

local Terminal = require("toggleterm.terminal").Terminal

-- Lazygit
local lazygit = Terminal:new({
  cmd = "lazygit",
  direction = "float",
  hidden = true,
  dir = "git_dir",
})

vim.api.nvim_create_user_command("Lazygit", function()
  lazygit:toggle()
end, { desc = "Open Lazygit" })
