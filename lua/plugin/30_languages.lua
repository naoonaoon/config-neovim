-- install language server and more packages
vim.pack.add({
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

-- if you wanna support more languages,
-- add parser here
-- NOTE: TSInstall <tab>
local parsers = {
  "lua",
  "elixir",
}

-- add filetype here
-- NOTE: set filetype?
local file_types = {
  "lua",
  "elixir",
}

-- add language server here
-- NOTE: Mason
local language_servers = {
  "lua_ls",
  "expert",
}

-- lsp manager
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = language_servers,
})

-- treesitter
local treesitter = require("nvim-treesitter")

treesitter.install(parsers)

vim.api.nvim_create_autocmd("FileType", {
  pattern = file_types,
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
