### コンセプト

**シンプルさ**
- プラグインは`mini.nvim`をベースに最小限のものを利用する
- できるだけ設定を抽象化しない

### 前提条件

- neovim 0.12
- lazygit
- ripgrep
- tree sitter cli

```bash
brew install neovim lazygit ripgrep tree-sitter-cli
```

### 導入方法

- 設定ファイルを`~/.config/nvim`に配置します

```bash
git clone https://github.com/naoonaoon/config-neovim.git ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

- neovimを起動する

```bash
nvim
```

### 構成とヒント

```
nvim
├── init.lua
├── lua
│   ├── config
│   │   ├── keymaps.lua     # <leader>で起動する操作設定
│   │   └── options.lua     # neovimの設定
│   └── plugin
│       ├── colorscheme.lua # テーマ設定
│       ├── format.lua      # フォーマッターの設定
│       ├── lsp.lua         # LSPの設定
│       ├── mini.lua        # 汎用的な`mini.nvim`の設定
│       └── terminal.lua    # neovimでのフローティングターミナルの設定
├── nvim-pack-lock.json
└── README.md
```
