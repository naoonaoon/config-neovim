-- install utility packages
vim.pack.add({
    { src = "https://github.com/folke/flash.nvim" },
    { src = "https://github.com/nvim-telescope/telescope.nvim" },
    { src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
    { src = "https://github.com/folke/lazydev.nvim" },
})

-- search files
require("telescope").setup({})

-- search and jump to word
require("flash").setup()

-- render markdown
require("render-markdown").setup({
    heading = {
        icons = {},
        sign = false,
    },
})

require("lazydev").setup()
