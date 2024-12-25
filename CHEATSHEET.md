# 🌟 CrispyVim Cheatsheet

> ⚠️ **Important Note**: This keymap is specifically designed for the Colemak-DH keyboard layout. Attempting to use these keybindings with QWERTY will lead to quite an interesting adventure (and not the good kind)! 

## 🦩 Navigation & Movement

- `m` Left
- `n` Down (visually)
- `e` Up (visually)
- `i` Right

**Word & Line Navigation:**

- `l` Back one word
- `L` Back one WORD
- `y` Forward one word
- `Y` Forward one WORD
- `u` End of word
- `U` End of WORD

**Scrolling & Positioning:**

- `N` Scroll down half-page and center
- `E` Scroll up half-page and center
- `gg` Go to top of file
- `G` Go to bottom of file

**Find & Char Motions:**

- `f` Find character forward
- `F` Find character backward
- `p` Move until next character
- `P` Move until previous character
- `b` Repeat last character motion forward
- `B` Repeat last character motion backward


## 🌵 Insert & Edit Operations

- `s` Insert at cursor
- `S` Insert at line start
- `t` Append at cursor
- `T` Append at line end

**Change & Substitute:**

- `w` Change
- `W` Change line

**Editing & Workflow:**

- `.` Repeat last command
- `r` Replace a single character
- `R` Enter Replace mode
- `J` Join current line with the next

**Macros:**

- `q` Start/stop recording a macro (e.g. `qa` to record in `a`)
- `Q` Replay a recorded macro (e.g. `Qa` to run macro in `a`)


## 🥨 Yank, Paste & Delete

- `c` Yank
- `C` Yank line
- `d` Delete
- `D` Delete line
- `v` Paste
- `V` Paste before cursor
- (Visual) `v` Replace selection without yank
- `gv` Paste from yank register
- `gV` Paste before last yank position
- `x` Delete char without yank


## 🎪 Undo & Redo

- `z` Undo
- `Z` Redo


## 🦋 Visual Modes

- `a` Enter Visual mode
- `A` Enter Linewise Visual mode
- `<C-a>` Enter Block-Visual mode


## 🎭 Searching & Special Movements

- `/` Forward search
- `?` Backward search
- `k` Next search match
- `K` Previous search match


## 🌺 Buffer Management

- `<leader>d` Close current buffer
- `<leader>D` Force close current buffer
- `<leader>n` Next buffer
- `<leader>N` Previous buffer


## 🎨 Window Management

- `<leader>k` Horizontal split
- `<leader>h` Vertical split
- `<leader>q` Close window
- `<leader>Q` Close other windows
- `<leader>w` Switch window
- `<leader>v` Rotate windows
- `M` Move focus to left window
- `I` Move focus to right window
- `<C-n>` Focus down window
- `<C-e>` Focus up window
- `<S-Left>` Resize narrower
- `<S-Right>` Resize wider
- `<S-Up>` Resize shorter
- `<S-Down>` Resize taller


## 🪄 UFO

- `<leader>y` Open all folds
- `<leader>u` Close all folds
- `<leader>t` Toggle fold


## 🎃 Gitsigns

- `[c` Previous hunk
- `]c` Next hunk

**Prefix:** `<leader>g`

- `g` Open GitUI

- `s` Stage hunk
- `r` Reset hunk
- `S` Stage buffer
- `u` Undo stage hunk
- `R` Reset buffer
- `p` Preview hunk
- `b` Blame line
- `d` Diff against index
- `D` Diff against last commit
- `B` Toggle current line blame
- `t` Toggle deleted lines


## 🌈 mini.files

- `<leader>f` Open file explorer

Inside explorer:

- `q` Close
- `i` Go in
- `<CR>` Go in (plus)
- `m` Go out
- `M` Go out (plus)
- `'` Mark goto
- `"` Mark set
- `<BS>` Reset
- `@` Reveal CWD
- `?` Help
- `g` Synchronize
- `<` Trim left
- `>` Trim right


## 🎠 mini.surround

- `ja` Add surrounding
- `jd` Delete surrounding
- `jf` Find surrounding
- `jF` Find surrounding backward
- `jh` Highlight surrounding
- `jr` Replace surrounding
- `jn` Update surrounding n-lines


## 🎪 LSP

- `gd` Goto definition
- `gr` Goto references
- `gI` Goto implementations
- `gt` Goto type definitions
- `<leader>sy` Document symbols
- `<leader>sY` Workspace symbols
- `<leader>R` Rename symbol
- `<leader>a` Code action (works in visual mode too)
- `gD` Goto declaration
- `<leader>j` Toggle LSP inlay hints
- `<leader>L` Start LSP client (usually already done automatically)


## 🌸 Telescope

- `<leader><leader>` Recent files
- `<leader>i` Search in file
- `<leader>,` Go to definition
- `<leader>b` Obsidian Backlinks

**Prefix:** `<leader>s`

- `h` Search help tags
- `k` Search keymaps
- `s` Search files
- `t` Telescope UI
- `w` Search current word
- `r` Live grep
- `b` Search bibtex
- `x` Search diagnostics
- `c` Search config files
- `z` Search Zotero
- `d` Search directories
- `e` Search emoji
- `j` Search buffers
- `n` Obsidian QuickSwitch
- `m` Obsidian Search notes
- `i` In-file fuzzy find


## 🎡 Search-Replace

- `<leader>/` Search/replace in single buffer selection
- `<leader>?` Open search/replace UI

(Works in normal and visual mode.)


## 🍡 Trouble

**Prefix:** `<leader>x`

- `x` Toggle all diagnostics
- `n` Toggle buffer diagnostics
- `m` Toggle symbols
- `e` Toggle LSP diagnostics
- `l` Toggle location list
- `i` Toggle quickfix list


## 🎢 Conjure

- `<leader>E` Conjure connect/start

**Prefix:** `<leader>e`

- `k` Log splits
- `h` Log vsplits
- `g` Log buffer
- `t` Toggle log
- `s` Log reset soft
- `a` Log reset hard
- `l` Jump to latest
- `q` Close visible log
- `e` Eval current form
- `E` Eval comment current form
- `r` Eval root form
- `R` Eval comment root form
- `w` Eval word
- `p` Eval previous
- `W` Eval comment word
- `!` Eval replace form
- `m` Eval marked form
- `f` Eval file
- `b` Eval buffer


## 🦀 Rustaceanvim

**Prefix:** `<leader>r`

- `a` Code action
- `h` Hover actions
- `H` Hover range (visual)
- `r` Runnables
- `R` Run at cursor
- `m` Expand macro
- `T` Test entire project
- `t` Test current
- `n` Test output
- `N` Test summary
- `e` Explain error
- `E` Render diagnostic
- `l` Related diagnostics
- `c` Open Cargo.toml
- `o` Open docs
- `p` Parent module
- `s` Workspace symbol
- `S` Workspace symbol (types)
- `w` Workspace symbol (all)
- `J` Join lines
- `/` Structural search replace
- `g` Crate graph
- `y` Syntax tree
- `f` FlyCheck run
- `u` Rebuild proc macros
- `v` View MIR
- `V` View HIR
- `U` Rustc unpretty
- `[` Move item up
- `]` Move item down


## 🌴 Miscellaneous

- PaperPlane: `<leader>p` Open PDF
- Snipe: `,` Open snipe menu
- Noice: `;` Noice UI
- Conform: `<leader>o` Format buffer
- mini.comment: `<leader>c` Comment line
- mini.splitjoin: `<leader>z` Toggle split/join lines
- LTeX: `<leader>L` Toggle grammar/spell checker
- Nabla: `<leader>.` Toggle nabla popup
- Notes: `<leader>m` Open `~/Notes/!Home.md`
- Lazy: `<leader>l` Open Lazy plugin manager

- `<Esc>` (Normal) Clear search highlight
- `<Esc>` (Insert) Exit insert & move right

---

> *Remember: Every time you use the arrow keys in Vim, somewhere a kitten dies.* 🐱
