# padawan.nvim

> A minimal, opinionated Neovim configuration built around `mini.nvim`.

<div align="center">
<pre>
  _ __   __ _  __| | __ ___      ____ _ _ __
 | '_ \ / _` |/ _` |/ _` \ \ /\ / / _` | '_ \
 | |_) | (_| | (_| | (_| |\ V  V / (_| | | | |
 | .__/ \__,_|\__,_|\__,_| \_/\_/ \__,_|_| |_|
 |_|
</pre>
</div>

Simple by design. Easy to understand. Focused on the editor. For beginners, too.

## Features

- A lightweight UI with file explorer, status line, and tab line
- LSP, Tree-sitter, completion, and format-on-save
- Fuzzy file and content search
- Git integration with Lazygit
- Zen Mode and Markdown rendering

## Requirements

- Neovim 0.12
- [lazygit](https://github.com/jesseduffield/lazygit)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [Tree-sitter CLI](https://tree-sitter.github.io/tree-sitter/)

```bash
brew install neovim lazygit ripgrep tree-sitter-cli
```

## Installation

Clone the repository into your Neovim configuration directory:

```bash
git clone https://github.com/naoonaoon/padawan.nvim.git ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

Then launch Neovim:

```bash
nvim
```

## Keymaps

The leader key is set to `<Space>`.

### Normal Mode

| Key | Action |
| --- | --- |
| `<leader>e` | Open the explorer |
| `<leader>sf` | Fuzzy-find files |
| `<leader>sg` | Search file contents |
| `<leader>bd` | Close the buffer |
| `H` | Move to the previous buffer |
| `L` | Move to the next buffer |
| `<leader>zz` | Start Zen Mode |
| `s` | Jump to a word |
| `<leader>d` | Show diagnostic details |
| `<leader>gg` | Open Lazygit |

## Structure

```text
nvim
├── init.lua
├── lua
│   ├── config
│   │   ├── keymaps.lua      # Keymap configuration
│   │   └── options.lua      # Neovim options
│   └── plugin
│       ├── interface.lua    # UI configuration
│       ├── lsp.lua          # LSP, Tree-sitter, and formatter configuration
│       └── util.lua         # Utility plugin configuration
├── nvim-pack-lock.json
├── stylua.toml
└── README.md
```
