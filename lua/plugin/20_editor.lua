vim.pack.add({
  { src = "https://github.com/stevearc/conform.nvim" },
})

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
end)
