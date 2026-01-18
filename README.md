# Neovim Config

Minimalist Neovim configuration without LazyVim.

## Requirements

- Neovim >= 0.11
- Git
- A [Nerd Font](https://www.nerdfonts.com/) installed and configured in your terminal

## External Dependencies

```bash
# Ubuntu/Debian
sudo apt install ripgrep fd-find fzf

# Create symlink for fd (Ubuntu installs it as fdfind)
sudo ln -s $(which fdfind) /usr/local/bin/fd

# Lazygit (optional, for git integration)
sudo apt install lazygit

# Claude Code CLI (optional, for Claude integration)
npm install -g @anthropic-ai/claude-code
```

## Installation

1. **Backup your current config (if exists):**
```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

2. **Clone this repository:**
```bash
git clone https://github.com/YOUR_USER/nvim-config ~/.config/nvim
```

3. **Open Neovim:**
```bash
nvim
```

Lazy.nvim will install automatically and download all plugins.

## Included Plugins

| Plugin | Description |
|--------|-------------|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Advanced syntax highlighting |
| [vercel.nvim](https://github.com/tiesen243/vercel.nvim) | Vercel dark theme |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Status line |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Buffer tabs |
| [snacks.nvim](https://github.com/folke/snacks.nvim) | Explorer, picker, terminal, lazygit |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Shows available keymaps |
| [flash.nvim](https://github.com/folke/flash.nvim) | Fast navigation |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git indicators in the gutter |
| [ts-comments.nvim](https://github.com/folke/ts-comments.nvim) | Comment code |
| [noice.nvim](https://github.com/folke/noice.nvim) | Modern UI for messages and commands |
| [claude-code.nvim](https://github.com/greggh/claude-code.nvim) | Claude Code integration |

## Keymaps

Leader key: `<Space>`

### General

| Keymap | Description |
|--------|-------------|
| `<Tab>` | Next buffer |
| `<S-Tab>` | Previous buffer |
| `gcc` | Comment line |
| `gc` | Comment selection (visual) |
| `s` | Flash jump (fast navigation) |

### Files and Search

| Keymap | Description |
|--------|-------------|
| `<leader>e` | File Explorer |
| `<leader>ff` | Find files |
| `<leader>fg` | Search text (grep) |
| `<leader>fb` | Search buffers |

### Terminal and Git

| Keymap | Description |
|--------|-------------|
| `<leader>tt` | Toggle terminal |
| `<leader>gg` | Open Lazygit |

### Claude Code

| Keymap | Description |
|--------|-------------|
| `<leader>cc` | Toggle Claude Code |
| `<leader>ca` | Add file to Claude |
| `<leader>cs` | Send selection to Claude (visual) |

## Structure

```
~/.config/nvim/
├── init.lua          # Main configuration
├── LICENSE
└── README.md
```

## Useful Commands

```vim
:Lazy              " Open plugin manager
:Lazy sync         " Update plugins
:Lazy health       " Check plugin status
:checkhealth       " General nvim diagnostics
:TSInstall <lang>  " Install treesitter parser
```

## Nerd Fonts

To display icons correctly, install a Nerd Font:

```bash
# Download JetBrainsMono Nerd Font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip
unzip JetBrainsMono.zip -d ~/.local/share/fonts/
fc-cache -fv
```

Then configure your terminal to use `JetBrainsMono Nerd Font`.
