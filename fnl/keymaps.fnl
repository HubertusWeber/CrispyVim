(local map _G.vim.keymap.set)

;; Basic movement
(map [:n :x :o] "m" "h" {:silent true})
(map [:n :x :o] "n" "gj" {:silent true})
(map [:n :x :o] "e" "gk" {:silent true})
(map [:n :x :o] "i" "l" {:silent true})

;; Word movement
(map [:n :x :o] "l" "b" {:silent true})
(map [:n :x :o] "L" "B" {:silent true})
(map [:n :x :o] "u" "e" {:silent true})
(map [:n :x :o] "U" "E" {:silent true})
(map [:n :x :o] "y" "w" {:silent true})
(map [:n :x :o] "Y" "W" {:silent true})

;; Insert mode
(map :n "s" "i" {:silent true})
(map :n "S" "I" {:silent true})
(map :n "t" "a" {:silent true})
(map :n "T" "A" {:silent true})

;; Change operations
(map [:n :x] "w" "c" {:silent true})
(map [:n :x] "W" "C" {:silent true})
(map :o "w" "c" {:silent true})

;; Yank and paste
(map [:n :x] "c" "y" {:silent true})
(map [:n :x] "v" "p" {:silent true})
(map :v "v" "\"_dP" {:silent true})
(map :n "D" "dd" {:silent true})
(map :x "D" "d" {:silent true})
(map :n "C" "yy" {:silent true})
(map :x "C" "y" {:silent true})
(map [:n :x] "V" "P" {:silent true})
(map [:n :x] "gv" "gp" {:silent true})
(map [:n :x] "gV" "gP" {:silent true})
(map :o "c" "y" {:silent true})

;; Delete
(map :n "x" "\"_x" {:silent true})
(map :v "x" "\"_x" {:silent true})

;; Undo/Redo
(map :n "z" "u" {:silent true})
(map :x "z" "<CMD>undo<CR>" {:silent true})
(map :n "gz" "U" {:silent true})
(map :x "gz" "<CMD>undo<CR>" {:silent true})
(map :n "Z" "<C-R>" {:silent true})
(map :x "Z" "<CMD>redo<CR>" {:silent true})

;; Visual mode
(map [:n :x] "a" "v" {:silent true})
(map [:n :x] "A" "V" {:silent true})
(map [:n :x] "<C-a>" "<C-v>" {:silent true})

;; Till character and repeats
(map [:n :x :o] "p" "t" {:silent true})
(map [:n :x :o] "P" "T" {:silent true})
(map [:n :x :o] "b" ";" {:silent true})
(map [:n :x :o] "B" "," {:silent true})

;; Search and special movements
(map [:n :x :o] "k" "n" {:silent true})
(map [:n :x :o] "K" "N" {:silent true})
(map :o "r" "i" {:silent true})

;; Miscellaneous
(map [:n :x] "gX" "X" {:silent true})
(map [:n :x] "gK" "K" {:silent true})
(map [:n :x] "gL" "L" {:silent true})
(map [:n :x] "N" "<C-d>zz" {:silent true})
(map [:n :x] "E" "<C-u>zz" {:silent true})
(map :n "<leader>d" "<CMD>bdelete<CR>" {:silent true :desc "Delete buffer"})
(map :n "<leader>D" "<CMD>bdelete!<CR>" {:silent true :desc "Delete buffer!"})
(map :n "<leader>n" "<CMD>bnext<CR>" {:silent true :desc "Next buffer"})
(map :n "<leader>N" "<CMD>bprevious<CR>" {:silent true :desc "Previous buffer"})
(map :n "<leader>m" "<CMD>e ~/Notes/!Home.md<CR>" {:silent true :desc "Notes"})
(map :n "<leader>l" "<CMD>Lazy<CR>" {:silent true :desc "Lazy"})

;; Clear highlights on search when pressing <Esc> in normal mode
(map :n "<Esc>" "<CMD>nohlsearch<CR>" {:silent true})

;; Keep the cursor in the same place when exiting insert mode
(map :i "<Esc>" "<Esc>l" {:silent true})

;; Window commands
(map [:n :x] "<leader>k" "<CMD>new<CR>" {:silent true :desc "Split —"})
(map [:n :x] "<leader>h" "<CMD>vnew<CR>" {:silent true :desc "Split |"})
(map [:n :x] "<leader>q" "<CMD>close<CR>" {:silent true :desc "Close window"})
(map [:n :x] "<leader>Q" "<CMD>only<CR>" {:silent true :desc "Close others"})
(map [:n :x] "<leader>w" "<C-w>w" {:silent true :desc "Switch window"})
(map [:n :x] "<leader>v" "<C-w>r" {:silent true :desc "Rotate windows"})
(map [:n :x] "M" "<C-w>h" {:silent true})
(map [:n :x] "I" "<C-w>l" {:silent true})
(map [:n :x] "<C-n>" "<C-w>j" {:silent true})
(map [:n :x] "<C-e>" "<C-w>k" {:silent true})
(map [:n :x] "<S-Left>" "<C-w><" {:silent true})
(map [:n :x] "<S-Down>" "<C-w>+" {:silent true})
(map [:n :x] "<S-Up>" "<C-w>-" {:silent true})
(map [:n :x] "<S-Right>" "<C-w>>" {:silent true})

;; Load nvim-lspconfig (this keybind is overwritten once the plugin is loaded)
(map [:n :x] "<leader>L"
     (fn []
       ((. (require :lazy) :load) {:plugins [:nvim-lspconfig]})
       (_G.vim.notify "LSP loaded" _G.vim.log.levels.INFO))
     {:silent true :desc "Load LSP"})

;; Highlight when yanking text
(_G.vim.api.nvim_create_autocmd :TextYankPost
                                {:desc "Highlight when yanking text"
                                 :group (_G.vim.api.nvim_create_augroup "kickstart-highlight-yank"
                                                                        {:clear true})
                                 :callback (fn [] (_G.vim.highlight.on_yank))})

;; Unmappings
(map [:n :x] "j" "<Nop>" {:silent true})
