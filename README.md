# .nvim 0.2.0
Vim to Neovim migration,
new neovim dotfile configuration ^^

# Linux Instalation
```bash
git clone https://github.com/lipeeeee/.nvim ~/.config/nvim --depth 1 && nvim
```

# Metrics :)
## Lines of code
```bash
    33 ./init.lua
    6 ./lua/lipe/preferences/init.lua
   46 ./lua/lipe/preferences/options.lua
   80 ./lua/lipe/preferences/keymaps.lua
    7 ./lua/lipe/preferences/colorscheme.lua
    6 ./lua/lipe/preferences/signs.lua
   12 ./lua/lipe/preferences/supress.lua
    0 ./lua/lipe/globals.lua
    4 ./lua/lipe/plugins/core/treesitter.lua
    3 ./lua/lipe/plugins/core/plenary.lua
    3 ./lua/lipe/plugins/core/devicons.lua
   69 ./lua/lipe/plugins/core/nvimtree.lua
    3 ./lua/lipe/plugins/core/rbdelimiters.lua
    4 ./lua/lipe/plugins/core/gitsigns.lua
   33 ./lua/lipe/plugins/core/autopairs.lua
   20 ./lua/lipe/plugins/core/telescope.lua
   54 ./lua/lipe/plugins/core/comment.lua
   10 ./lua/lipe/plugins/ui/bufferline.lua
   50 ./lua/lipe/plugins/ui/colorscheme.lua
   11 ./lua/lipe/plugins/lsp/cmp.lua
   20 ./lua/lipe/plugins/lsp/mason.lua
    3 ./lua/lipe/plugins/lsp/nullls.lua
   17 ./lua/lipe/plugins/lsp/luasnip.lua
    5 ./lua/lipe/plugins/lsp/lspconfig.lua
    3 ./lua/lipe/plugins/lsp/illuminate.lua
   44 ./lua/lipe/config/treesitter.lua
   11 ./lua/lipe/config/init.lua
  165 ./lua/lipe/config/cmp.lua
  175 ./lua/lipe/config/bufferline.lua
   18 ./lua/lipe/config/lsp/init.lua
   33 ./lua/lipe/config/lsp/mason.lua
   21 ./lua/lipe/config/lsp/null-ls.lua
   98 ./lua/lipe/config/lsp/handlers.lua
   27 ./lua/lipe/config/rbdelimiters.lua
   52 ./lua/lipe/config/illuminate.lua
   47 ./lua/lipe/config/gitsigns.lua
  135 ./lua/lipe/config/telescope.lua
 1328 total
```
# Tree
```bash
.
├── LICENSE
├── README.md
├── init.lua
├── lazy-lock.json
├── lua
│   └── lipe
│       ├── config
│       │   ├── bufferline.lua
│       │   ├── cmp.lua
│       │   ├── gitsigns.lua
│       │   ├── illuminate.lua
│       │   ├── init.lua
│       │   ├── lsp
│       │   │   ├── handlers.lua
│       │   │   ├── init.lua
│       │   │   ├── mason.lua
│       │   │   └── null-ls.lua
│       │   ├── rbdelimiters.lua
│       │   ├── telescope.lua
│       │   └── treesitter.lua
│       ├── globals.lua
│       ├── plugins
│       │   ├── core
│       │   │   ├── autopairs.lua
│       │   │   ├── comment.lua
│       │   │   ├── devicons.lua
│       │   │   ├── gitsigns.lua
│       │   │   ├── nvimtree.lua
│       │   │   ├── plenary.lua
│       │   │   ├── rbdelimiters.lua
│       │   │   ├── telescope.lua
│       │   │   └── treesitter.lua
│       │   ├── lsp
│       │   │   ├── cmp.lua
│       │   │   ├── illuminate.lua
│       │   │   ├── lspconfig.lua
│       │   │   ├── luasnip.lua
│       │   │   ├── mason.lua
│       │   │   └── nullls.lua
│       │   └── ui
│       │       ├── bufferline.lua
│       │       └── colorscheme.lua
│       └── preferences
│           ├── colorscheme.lua
│           ├── init.lua
│           ├── keymaps.lua
│           ├── options.lua
│           ├── signs.lua
│           └── supress.lua
└── main.c

9 directories, 41 files
```

# Dependencies
- Lazy loading moves files around so might need admin/root privileges
- npm for language server config

# MISSING PLUGINS
- whichkey
- toggleterm
- dashboard
- wilder
- Trouble.nvim
- Status bar
- Done for C.... Linters, formatters, etc for null-ls

# whichkey mapping left:
- comment.lua
- gitsigns.lua
- telescope.lua

# IN-DEPTH CONFIG DONE:
- autopairs.lua
- comment.lua
- devicons.lua
- gitsigns.lua
- nvimtree.lua
- plenary.lua
- rbdelimiters.lua
- telescope.lua
- treesitter.lua
- cmp.lua
- illuminate.lua
- lspconfig.lua
- luasnip.lua
- mason.lua
- nullls.lua
- bufferline.lua
- colorscheme.lua

