vim.pack.add({
  { src = "https://github.com/folke/flash.nvim" },
  { src = "https://github.com/folke/todo-comments.nvim" },
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
})

-- search files
require("telescope").setup()

-- search and jump to word
require("flash").setup()

-- todo highlight
require("todo-comments").setup()
