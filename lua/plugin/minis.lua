vim.pack.add({
  { src = 'https://github.com/nvim-mini/mini.nvim' },
})

-- Explorer
require('mini.files').setup()
require('mini.pick').setup()

-- Buffer
require('mini.tabline').setup()
require('mini.bufremove').setup()

-- Editor
require('mini.pairs').setup()

-- User Interface
require('mini.icons').setup()
require('mini.statusline').setup()
