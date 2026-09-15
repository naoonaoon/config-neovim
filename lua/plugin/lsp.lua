-- Install
vim.pack.add({
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
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

-- LSP Manager
require("mason").setup()

-- Enable LSP
vim.lsp.enable(language_servers)

-- TreeSitter
require("nvim-treesitter").install(parsers)
vim.api.nvim_create_autocmd("FileType", {
    pattern = file_types,
    callback = function()
        vim.treesitter.start()
    end,
})
