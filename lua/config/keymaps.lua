-- explorer
vim.keymap.set("n", "<leader>ee", function()
  MiniFiles.open()
end, { desc = "Open explorer by mini.files" })

vim.keymap.set("n", "<leader>eo", "<cmd>Oil<cr>", {
  desc = "Open explorer by oil",
})

-- file tab
vim.keymap.set("n", "<leader>bd", function()
  MiniBufremove.delete()
end, { desc = "Close flie tab" })

vim.keymap.set("n", "H", "<cmd>bprevious<cr>", {
  desc = "Move previous file tab",
})

vim.keymap.set("n", "L", "<cmd>bnext<cr>", {
  desc = "Move next file tab",
})

-- file
vim.keymap.set({ "n", "x", "o" }, "s", function()
  require("flash").jump()
end, { desc = "Jump to some words" })

vim.keymap.set("n", "<leader>sf", function()
  require("telescope.builtin").find_files()
end, { desc = "Serch some files by file name" })

vim.keymap.set("n", "<leader>sg", function()
  require("telescope.builtin").live_grep()
end, { desc = "Serch some files by text" })

-- git
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", {
  desc = "Open lazygit",
})
