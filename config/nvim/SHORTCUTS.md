# Neovim Shortcuts

Leader key: **`,`** (comma)

---

## File Navigation

| Key | Description |
|-----|-------------|
| `,ff` | Find files |
| `,fg` | Live grep (search file contents) |
| `,fo` | Recent files (MRU) |
| `,fb` / `,r` | Open buffers |
| `,fh` | Help tags |
| `,fs` | Git files |
| `,t` | Find files (git-aware) |
| `,.` | Jump to last buffer |
| `,k` | Toggle file drawer (Neotree) |
| `,bd` | Delete buffer |
| `,cR` | Rename file |

---

## Window Management

| Key | Description |
|-----|-------------|
| `Ctrl+h` | Move to left window |
| `Ctrl+j` | Move to window below |
| `Ctrl+k` | Move to window above |
| `Ctrl+l` | Move to right window |
| `,z` | Toggle Zen Mode |
| `,Z` | Toggle Zoom |

---

## Git

| Key | Description |
|-----|-------------|
| `,hs` | Stage hunk |
| `,hr` | Reset hunk |
| `,hS` | Stage buffer |
| `,hR` | Reset buffer |
| `,hu` | Undo stage hunk |
| `,hp` | Preview hunk |
| `,hb` | Blame line |
| `,hd` | Diff this |
| `,hD` | Diff this file |
| `,tb` | Toggle current line blame |
| `,td` | Toggle deleted |
| `,gr` | Read file from git |
| `,gb` | Git blame |
| `,gc` | Git commits (Telescope) |
| `,gs` | Git status (Telescope) |
| `,gg` | Lazygit |
| `,gf` | Lazygit current file history |
| `,gl` | Lazygit log |
| `,gB` | Git browse (GitHub) |

---

## Search & Replace

| Key | Description |
|-----|-------------|
| `,sr` | Search and replace (Spectre) |
| `,sw` | Search word under cursor (Spectre) |
| `,sp` | Search in current file (Spectre) |
| `,ss` | Search and replace (Spectre) |

---

## LSP / Code

| Key | Description |
|-----|-------------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `go` / `gy` | Go to type definition |
| `gr` | Rename |
| `gR` | Show references |
| `K` | Show hover |
| `ga` | Code actions |
| `S` | Signature help |
| `gO` | Organize imports |
| `,aa` | Show diagnostics |
| `,aq` | Send diagnostics to loclist |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |

---

## Toggles

| Key | Description |
|-----|-------------|
| `,us` | Toggle spelling |
| `,uw` | Toggle wrap |
| `,uL` | Toggle relative line numbers |
| `,ul` | Toggle line numbers |
| `,ud` | Toggle diagnostics |
| `,uc` | Toggle conceal |
| `,ub` | Toggle dark/light background |
| `,uh` | Toggle inlay hints |
| `,ug` | Toggle indent guides |
| `,uD` | Toggle dim |
| `,uT` | Toggle treesitter |
| `,i` | Toggle cursor line |
| `,l` | Toggle invisible characters |
| `Space` | Toggle search highlights |

---

## Editing

| Key | Description |
|-----|-------------|
| `,`, | Save file |
| `Ctrl+s` / `Cmd+s` | Save file |
| `jk` (insert mode) | Exit insert mode |
| `Up/Down` (normal) | Move line up/down |
| `J/K` (visual) | Move selection up/down |
| `<` / `>` (visual) | Indent left/right (reselected) |
| `\)t` | Set tabs mode (4-space tabs) |
| `\s` | Set spaces mode (4-space) |

---

## Avante (AI assistant)

| Key | Description |
|-----|-------------|
| `,aa` | Ask Avante |
| `,at` | Toggle sidebar |
| `,ar` | Refresh sidebar |
| `,af` | Switch sidebar focus |
| `,an` | New ask |
| `,ae` | Edit selected blocks |
| `,aS` | Stop current AI request |
| `,a?` | Select model (built-in picker) |
| `,am` | Select provider/model (custom) |
| `,ac` | Add current buffer to selected files |
| `,aB` | Add all buffer files to selected files |
| `,ah` | Select chat history |
| `,ad` | Toggle debug mode |
| `,as` | Toggle suggestion display |
| `,aR` | Toggle repomap |

---

## Misc

| Key | Description |
|-----|-------------|
| `,/` | Toggle scratch buffer |
| `,S` | Select scratch buffer |
| `,n` | Notification history |
| `,un` | Dismiss all notifications |
| `Control+/` | Toggle terminal |
| `gTT` | Open buffer in new tab |
| `[,q` / `]q` | Quickfix prev/next |
| `]]` | Next reference |
| `[[` | Previous reference |
| `,y` (visual) | Copy with normalized indentation |