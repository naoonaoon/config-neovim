vim.pack.add({
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

local languages = {
  "lua",
  "elixir",
}

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

treesitter.install(languages)

vim.api.nvim_create_autocmd("FileType", {
  pattern = languages,
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
