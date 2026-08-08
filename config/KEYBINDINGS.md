# Keybindings in `config/`

This file lists keybindings currently defined in this repo's `config/` directory.

## i3 (`config/i3/config`)

`$mod = Mod4` (Super/Windows key)

### App and system actions

| Keys | Action |
| --- | --- |
| `$mod+Return` | Open terminal (`i3-sensible-terminal`) |
| `$mod+q` | Kill focused window |
| `$mod+d` | Open `rofi` in `combi` mode |
| `$mod+space` | Open `rofi` in `drun` mode |
| `$mod+Tab` | Open `rofi` window switcher |
| `Print` | Launch `flameshot gui` |
| `$mod+Shift+x` | Lock screen (`i3lock-fancy`) |
| `$mod+Shift+c` | Reload i3 config |
| `$mod+Shift+r` | Restart i3 |
| `$mod+Shift+e` | Exit i3 (with nagbar confirmation) |

### Focus movement

| Keys | Action |
| --- | --- |
| `$mod+h/j/k/l` | Focus left/down/up/right |
| `$mod+Left/Down/Up/Right` | Focus left/down/up/right |
| `$mod+a` | Focus parent container |

### Move windows

| Keys | Action |
| --- | --- |
| `$mod+Shift+h/j/k/l` | Move window left/down/up/right |
| `$mod+Shift+Left/Down/Up/Right` | Move window left/down/up/right |

### Layout and floating

| Keys | Action |
| --- | --- |
| `$mod+minus` | Split vertically |
| `$mod+equal` | Split horizontally |
| `$mod+f` | Toggle fullscreen |
| `$mod+s` | Stacking layout |
| `$mod+w` | Tabbed layout |
| `$mod+e` | Toggle split layout |
| `$mod+Shift+d` | Default layout |
| `$mod+Shift+space` | Toggle floating |
| `$mod+Shift+f` | Enable floating + resize + center |

### Workspaces

| Keys | Action |
| --- | --- |
| `$mod+1..0` | Switch to workspace `1..10` |
| `$mod+Shift+1..0` | Move focused container to workspace `1..10` |
| `Control+1..0` | Move focused container to workspace `1..10` and follow |

### Resize mode

| Keys | Action |
| --- | --- |
| `$mod+r` | Enter resize mode |
| `h/j/k/l` (in resize mode) | Grow/shrink width/height |
| `Left/Down/Up/Right` (in resize mode) | Grow/shrink width/height |
| `Return`, `Escape`, `$mod+r` (in resize mode) | Exit resize mode |

### Hardware keys

| Keys | Action |
| --- | --- |
| `XF86AudioRaiseVolume` | Volume up script |
| `XF86AudioLowerVolume` | Volume down script |
| `XF86AudioMute` | Volume mute toggle |
| `XF86AudioMicMute` | Microphone mute toggle |
| `XF86MonBrightnessUp` | Brightness +5% |
| `XF86MonBrightnessDown` | Brightness -5% |

## Neovim (`config/nvim/`)

`<leader> = Space`

### Core mappings (`lua/vim-options.lua`)

| Keys | Mode | Action |
| --- | --- | --- |
| `<C-h/j/k/l>` | normal | Move across splits (`wincmd`) |
| `<leader>=` | normal | Vertical split |
| `<leader>-` | normal | Horizontal split |
| `<leader>h/l` | normal | Resize vertical split -/+ |
| `<leader>j/k` | normal | Resize horizontal split -/+ |
| `d` | normal, visual | Delete without yanking (`"_d`) |
| `p`, `P` | visual | Paste over selection without yanking old text |
| `p`, `P` | normal | `gp`, `gP` |
| `<leader>n` | normal | Clear search highlights |
| `<leader>pv` | normal | Open netrw explorer (`:Ex`) |
| `J`, `K` | visual | Move selected block down/up |
| `J` | normal | Join lines and keep cursor context |
| `<C-d>`, `<C-u>` | normal | Scroll and recenter |
| `n`, `N` | normal | Search next/prev and recenter |
| `<leader>q` | normal | Quit all without saving |
| `<leader>o`, `<leader>O` | normal, visual | Insert line below/above and return |
| `<leader>p`, `<leader>y` | normal, visual | Paste/yank to system clipboard |
| `<leader>d` | normal, visual | Duplicate line/selection (`yyp`) |
| `{`, `}` | normal, visual-select | Swap `{` and `}` behavior |
| `<leader>rl` | normal | Restart LSP |
| `<leader>s` | normal | Search-and-replace word under cursor |

### Plugin mappings

#### `lua/plugins/lsp-config.lua`

| Keys | Mode | Action |
| --- | --- | --- |
| `K` | normal | LSP hover |
| `<leader>gd` | normal | Go to definition |
| `<leader>gr` | normal | List references |
| `<leader>ca` | normal | Code actions |

#### `lua/plugins/snacks.lua`

| Keys | Mode | Action |
| --- | --- | --- |
| `<leader>e` | normal | Diagnostics picker |
| `<leader>lg` | normal | Open Lazygit |
| `<leader>le` | normal | Open line diagnostics float |

#### `lua/plugins/harpoon.lua`

| Keys | Mode | Action |
| --- | --- | --- |
| `<leader>A` | normal | Add file to Harpoon list |
| `<leader>a` | normal | Toggle Harpoon quick menu |
| `<leader>1..5` | normal | Jump to Harpoon item 1..5 |

#### `lua/plugins/telescope.lua`

| Keys | Mode | Action |
| --- | --- | --- |
| `<leader><leader>` | normal | Recent files (`oldfiles`) |
| `<leader>ff` | normal | Find files |
| `<leader>fg` | normal | Live grep |
| `<leader>fh` | normal | Help tags |
| `<leader>fr` | normal | Resume picker |
| `<leader>fc` | normal | Live grep in current file dir |
| `<leader>fd` | normal | Git files |

#### `lua/plugins/neo-tree.lua`

| Keys | Mode | Action |
| --- | --- | --- |
| `<C-n>` | normal | Open Neo-tree float at current file |

#### `lua/plugins/none-ls.lua`

| Keys | Mode | Action |
| --- | --- | --- |
| `<leader>gf` | normal | Format via LSP |

#### `lua/plugins/nvim-tmux-navigation.lua`

| Keys | Mode | Action |
| --- | --- | --- |
| `<C-h/j/k/l>` | normal | Navigate tmux panes |

#### `lua/plugins/opencode.lua`

| Keys | Mode | Action |
| --- | --- | --- |
| `<C-a>` | normal, visual | `opencode.ask("@this: ")` |
| `<C-x>` | normal, visual | `opencode.select()` |
| `ga` | normal, visual | `opencode.prompt("@this")` |
| `<C-.>` | normal, terminal | Toggle opencode |
| `<S-C-u>` | normal | opencode half-page up |
| `<S-C-d>` | normal | opencode half-page down |
| `+` | normal | Increment (`<C-a>`) |
| `-` | normal | Decrement (`<C-x>`) |

#### `lua/plugins/treesitter.lua` (textobjects)

| Keys | Context | Action |
| --- | --- | --- |
| `af`, `if` | operator-pending/visual textobject select | Around/inside function |
| `ac`, `ic` | operator-pending/visual textobject select | Around/inside class |
| `aa`, `ia` | operator-pending/visual textobject select | Around/inside parameter |
| `]f`, `[f` | normal textobject move | Next/previous function start |
| `]c`, `[c` | normal textobject move | Next/previous class start |

## Fish (`config/fish/config.fish`)

| Setting | Effect |
| --- | --- |
| `fish_vi_key_bindings` | Enables vi-style keybindings in interactive fish sessions |

## Other config directories

- `config/wezterm/wezterm.lua`: no explicit keybindings defined.
- `config/kitty/kitty.conf`: no direct kitty keybindings defined.
- `config/yazi/yazi.toml`: no keybindings defined.
- `config/rofi/`, `config/polybar/`, `config/picom/`: no keyboard shortcuts defined in these files.
