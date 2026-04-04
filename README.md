# Neovim Config (LazyVim)

Personal Neovim config on LazyVim for Neovim 0.12+. Leader key is **Space**.

Press **Space** and wait to see all available commands via which-key.

## Quick Reference

### Navigation

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gr` | Go to references (find all usages) |
| `gI` | Go to implementation |
| `gO` | Document symbols (outline) |
| `K` | Hover documentation |
| `<C-o>` | Jump back |
| `<C-i>` | Jump forward |
| `H` | Previous buffer tab |
| `L` | Next buffer tab |
| `s` | Flash jump (type 2 chars to leap anywhere) |
| `S` | Flash treesitter (select by syntax node) |
| `[[` / `]]` | Previous / next reference |
| `[d` / `]d` | Previous / next diagnostic |

### Find Files & Search

| Key | Action |
|-----|--------|
| `<leader><space>` | Find files (project root) |
| `<leader>ff` | Find files (project root) |
| `<leader>fF` | Find files (cwd) |
| `<leader>fr` | Recent files |
| `<leader>fg` | Find git files |
| `<leader>fc` | Find config file |
| `<leader>fp` | Projects |
| `<leader>/` | Grep (project root) |
| `<leader>sg` | Grep (project root) |
| `<leader>sG` | Grep (cwd) |
| `<leader>sw` | Grep word under cursor |
| `<leader>sb` | Search buffer lines |
| `<leader>sr` | Search and replace (grug-far) |

### Buffers & Tabs

| Key | Action |
|-----|--------|
| `<leader>,` | Switch buffer (picker) |
| `<leader>bd` | Close buffer |
| `<leader>bD` | Close buffer and window |
| `<leader>bo` | Close other buffers |
| `<leader>bp` | Toggle pin |
| `<leader>bP` | Delete non-pinned buffers |
| `<leader>bl` | Delete buffers to the left |
| `<leader>br` | Delete buffers to the right |
| `<leader>bj` | Pick buffer |

### Windows & Panels

| Key | Action |
|-----|--------|
| `<C-h/j/k/l>` | Move between windows |
| `<C-w>s` | Split horizontal |
| `<C-w>v` | Split vertical |
| `<C-w>q` | Close window |
| `<C-w><space>` | Window hydra mode (resize/move) |
| `<leader>e` | File explorer (root) |
| `<leader>E` | File explorer (cwd) |

### Code / LSP

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gr` | References |
| `gI` | Implementation |
| `grn` | Rename symbol |
| `gra` | Code action |
| `grx` | Run codelens |
| `<leader>cd` | Line diagnostics |
| `<leader>cf` | Format file |
| `<leader>cF` | Format injected langs |
| `<leader>cm` | Mason (manage LSP servers) |
| `<leader>cs` | Symbols (Trouble) |
| `<leader>cS` | References/definitions (Trouble) |

### Diagnostics & Todos

| Key | Action |
|-----|--------|
| `<leader>xx` | Diagnostics (Trouble) |
| `<leader>xX` | Buffer diagnostics (Trouble) |
| `<leader>xT` | Todo/Fix/Fixme (Trouble) |
| `<leader>st` | Search todos |
| `[d` / `]d` | Previous / next diagnostic |
| `[t` / `]t` | Previous / next todo comment |

### Git

| Key | Action |
|-----|--------|
| `<leader>gg` | Lazygit (root) |
| `<leader>gG` | Lazygit (cwd) |
| `<leader>gs` | Git status |
| `<leader>gd` | Git diff (hunks) |
| `<leader>gD` | Git diff (origin) |
| `<leader>gl` | Git log |
| `<leader>gb` | Git blame line |
| `<leader>gf` | Git file history |
| `<leader>gB` | Git browse (open in browser) |

### Terminal

| Key | Action |
|-----|--------|
| `<C-/>` | Toggle terminal |
| `<C-_>` | Toggle terminal (alt) |

### Session & Quit

| Key | Action |
|-----|--------|
| `<leader>qs` | Restore session |
| `<leader>ql` | Restore last session |
| `<leader>qS` | Select session |
| `<leader>qq` | Quit all |

### UI Toggles

| Key | Action |
|-----|--------|
| `<leader>uC` | Colorscheme picker |
| `<leader>un` | Dismiss notifications |
| `<leader>?` | Buffer keymaps (which-key) |

## Customizing Keymaps

Edit `~/.config/nvim/lua/config/keymaps.lua`:

```lua
local map = vim.keymap.set

-- Example: map <leader>w to save
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })

-- Example: remap something in visual mode
map("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move line down" })
```

To override a LazyVim default, just remap the same key. To disable one:

```lua
vim.keymap.del("n", "<leader>xx")
```

## Customizing Options

Edit `~/.config/nvim/lua/config/options.lua`:

```lua
vim.opt.relativenumber = false  -- absolute line numbers
vim.opt.tabstop = 4             -- tab width
vim.opt.shiftwidth = 4          -- indent width
vim.opt.wrap = true             -- line wrap
```

## Adding Plugins

Create a file in `~/.config/nvim/lua/plugins/`, e.g. `my-plugin.lua`:

```lua
return {
  {
    "author/plugin-name",
    opts = { ... },
  },
}
```

Then run `:Lazy sync`.
