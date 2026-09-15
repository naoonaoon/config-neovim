-- Install
vim.pack.add({
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
    { src = "https://github.com/stevearc/conform.nvim" },
    { src = "https://github.com/nvim-mini/mini.nvim" },
})

-- NOTE: Check LSP By `:Mason`
local language_servers = {
    "lua_ls",
    "expert",
}

-- NOTE: Check Parser By `:TSInstall <Tab>`
local parsers = {
    "lua",
    "elixir",
}

-- NOTE: Check File Type By `:set filetype?`
local file_types = {
    "lua",
    "elixir",
}

-- NOTE: Check Formatter By `:ConformInfo`
local formatters = {
    lua = { "stylua" },
    elixir = { "mix" },
}

-- LSP Manager
require("mason").setup()

-- Enable LSP
vim.lsp.enable(language_servers)

-- Tree-Sitter
require("nvim-treesitter").install(parsers)
vim.api.nvim_create_autocmd("FileType", {
    pattern = file_types,
    callback = function()
        vim.treesitter.start()
    end,
})

-- Formatter
require("conform").setup({
    formatters_by_ft = formatters,
    format_on_save = {
        timeout_ms = 1000,
        lsp_format = "fallback",
    },
})

-- Completion
require("mini.completion").setup()
