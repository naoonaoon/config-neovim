-- install user interface packages
vim.pack.add({
    { src = "https://github.com/rmehri01/onenord.nvim" },
})

-- theme
vim.cmd([[colorscheme onenord]])

-- icons
require("mini.icons").setup()

-- explorer
require("mini.files").setup()

-- file tab
require("mini.tabline").setup()
require("mini.bufremove").setup()

-- status line
require("mini.statusline").setup()
