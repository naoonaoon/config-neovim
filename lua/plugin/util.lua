vim.pack.add({
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/kdheepak/lazygit.nvim" },
    { src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
    { src = "https://github.com/nvim-telescope/telescope.nvim" },
    { src = "https://github.com/folke/flash.nvim" },
})

-- Render Markdown
require("render-markdown").setup({
    heading = {
        icons = {},
        sign = false,
    },
})

-- Picker
require("telescope").setup({})

-- Search And Jump
require("flash").setup()
