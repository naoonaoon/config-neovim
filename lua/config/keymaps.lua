-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Explorer
vim.keymap.set("n", "<leader>e", function()
    require("fyler").open()
end, { desc = "Open Explorer" })

-- Buffer
vim.keymap.set("n", "<leader>bd", function()
    require("mini.bufremove").delete()
end, { desc = "Close Buffer" })

vim.keymap.set("n", "H", "<cmd>bprevious<cr>", {
    desc = "Previous Buffer",
})

vim.keymap.set("n", "L", "<cmd>bnext<cr>", {
    desc = "Next Buffer",
})

-- Jump
vim.keymap.set({ "n", "x", "o" }, "s", function()
    require("flash").jump()
end, { desc = "Jump To Word" })

-- Search
vim.keymap.set("n", "<leader>sf", function()
    require("telescope.builtin").find_files()
end, { desc = "Search Files By Name" })

vim.keymap.set("n", "<leader>sg", function()
    require("telescope.builtin").live_grep()
end, { desc = "Search File By Content" })

-- information
vim.keymap.set("n", "<leader>d", function()
    vim.diagnostic.open_float()
end, { desc = "Show Diagnostic Details" })

-- git
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", {
    desc = "Open Lazygit",
})
