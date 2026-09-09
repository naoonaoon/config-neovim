vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

local treesitter = require("nvim-treesitter")

treesitter.setup({
	install_dir = vim.fn.stdpath("data") .. "/site",
})

treesitter.install({ "lua", "elixir" })

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "lua", "elixir" },
	callback = function()
		pcall(vim.treesitter.start)
	end,
})
