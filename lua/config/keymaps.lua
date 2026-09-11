-- Explorer
vim.keymap.set("n", "<leader>e", function()
  MiniFiles.open()
end, { desc = "Explorer" })

vim.keymap.set("n", "<leader>sf", function()
  MiniPick.builtin.files()
end, { desc = "Search File" })

-- Buffer
vim.keymap.set("n", "<leader>bd", function()
  MiniBufremove.delete()
end, { desc = "Close Down Buffer" })

vim.keymap.set("n", "H", "<cmd>bprevious<cr>", {
  desc = "Previous Buffer",
})

vim.keymap.set("n", "L", "<cmd>bnext<cr>", {
  desc = "Next Buffer",
})

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {
  desc = "Rename Valiable or Function",
})

-- Terminal
vim.keymap.set("n", "<leader>ft", "<cmd>ToggleTerm<cr>", {
  desc = "Open Terminal",
})

-- Git
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", {
  desc = "Open Lazygit",
})
