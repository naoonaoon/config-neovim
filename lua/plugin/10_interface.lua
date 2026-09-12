vim.pack.add({
  { src = "https://github.com/rmehri01/onenord.nvim" },
  { src = "https://github.com/stevearc/oil.nvim" },
})

-- theme
vim.cmd([[colorscheme onenord]])

-- icons
require("mini.icons").setup()

-- explorer
require("mini.files").setup()
require("oil").setup({
  keymaps = {
    ["q"] = "actions.close",
  },
})

-- file tab
require("mini.tabline").setup()
require("mini.bufremove").setup()

-- status line
require("mini.statusline").setup()

-- readability
vim.schedule(function()
  require("mini.cursorword").setup()
  require("mini.indentscope").setup()
  require("mini.trailspace").setup()
end)
