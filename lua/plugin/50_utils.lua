vim.pack.add({
  { src = "https://github.com/folke/flash.nvim" },
  { src = "https://github.com/folke/todo-comments.nvim" },
})

-- search and jump
require("flash").setup()

-- todo highlight
require("todo-comments").setup()
