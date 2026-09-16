# padawan.nvim

### Concept

**Simplicity**
- Use a minimal set of plugins based on `mini.nvim`
- Avoid abstracting the configuration as much as possible

### Requirements

- Neovim 0.12
- lazygit
- ripgrep
- Tree-sitter CLI

```bash
brew install neovim lazygit ripgrep tree-sitter-cli
```

### Installation

- Place the configuration files in `~/.config/nvim`

```bash
git clone https://github.com/naoonaoon/padawan.nvim.git ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

- Launch Neovim

```bash
nvim
```

### Keymaps

#### Normal Mode

|Key|Action|
|---|---|
|`<leader>`e|Open the explorer|
|`<leader>`sf|Fuzzy-find files|
|`<leader>`sg|Search file contents|
|`<leader>`bd|Close the buffer|
|H|Move to the previous buffer|
|L|Move to the next buffer|
|`<leader>`zz|Start Zen Mode|
|s|Jump to a word|
|`<leader>`d|Show diagnostic details|
|`<leader>`gg|Open Git operations|

### Structure and Tips

```
nvim
├── init.lua
├── lua
│   ├── config
│   │   ├── keymaps.lua     # Keymap configuration triggered by <leader>
│   │   └── options.lua     # Neovim configuration
│   └── plugin
│       ├── interface.lua   # UI configuration
│       ├── lsp.lua         # Language configuration
│       └── util.lua        # Utility configuration
├── nvim-pack-lock.json
├── stylua.toml
└── README.md
```
