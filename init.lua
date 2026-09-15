vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.nvim" },
})
require("plugin.40_gitsupport")
require("plugin.50_utils")

require("plugin.interface")
require("plugin.lsp")

require("config.options")
require("config.keymaps")
