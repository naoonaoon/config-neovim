vim.pack.add({
    { src = "https://github.com/stevearc/conform.nvim" },
})

-- if you wanna support formatting for more languages,
-- add them here
local formatters = {
    lua = { "stylua" },
    elixir = { "mix" },
}

vim.schedule(function()
    -- pairethness
    require("mini.pairs").setup()

    -- completion
    require("mini.completion").setup()

    -- format
    require("conform").setup({
        formatters_by_ft = formatters,
        format_on_save = {
            timeout_ms = 1000,
            lsp_format = "fallback",
        },
    })

    -- readability
    require("mini.cursorword").setup()
    require("mini.indentscope").setup()
    require("mini.trailspace").setup()
end)
