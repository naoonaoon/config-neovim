-- Explorer
vim.keymap.set('n', '<leader>e', function()
  MiniFiles.open()
end, { desc = 'File Explorer' })

vim.keymap.set('n', '<leader>f', function()
  MiniPick.builtin.files()
end, { desc = 'File Reference' })

vim.keymap.set('n', '<leader>bd', function()
  MiniBufremove.delete()
end, { desc = 'Close Down Buffer' }) 

-- Terminal
vim.keymap.set('n', '<leader>t', '<cmd>ToggleTerm<cr>', {
  desc = 'Open Terminal'
})

-- Git
vim.keymap.set('n', '<leader>gg', '<cmd>Lazygit<cr>', {
  desc = 'Open Lazygit'
})
