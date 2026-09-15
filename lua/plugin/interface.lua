-- Install
vim.pack.add({
    { src = "https://github.com/rmehri01/onenord.nvim" },
    { src = "https://github.com/FylerOrg/Fyler.nvim" },
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
})

-- Theme
vim.cmd([[colorscheme onenord]])

-- Icon
require("mini.icons").setup()
MiniIcons.mock_nvim_web_devicons()

vim.schedule(function()
    -- Explorer
    require("fyler").setup({
        kind = "floating",
        integrations = { icon = "mini_icons" },
    })

    -- Tab Line
    require("mini.tabline").setup()
    require("mini.bufremove").setup()

    -- Status Line
    require("lualine").setup({
        sections = {
            lualine_a = { "mode" },
            lualine_b = { "branch" },
            lualine_c = { "filename" },
            lualine_x = {},
            lualine_y = { "filetype" },
            lualine_z = { "%l:%L" },
        },
    })
end)
