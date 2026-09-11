-- explorer
vim.keymap.set("n", "<leader>e", function()
  MiniFiles.open()
end, { desc = "Open explorer" })

-- buffer
vim.keymap.set("n", "<leader>bd", function()
  MiniBufremove.delete()
end, { desc = "Close flie tab" })

vim.keymap.set("n", "H", "<cmd>bprevious<cr>", {
  desc = "Move previous file tab",
})

vim.keymap.set("n", "L", "<cmd>bnext<cr>", {
  desc = "Move next file tab",
})

-- git
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", {
  desc = "Open Lazygit",
})
