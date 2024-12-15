(local map _G.vim.keymap.set)
(local opts {:noremap true :silent true})

;; Basic movement
(map [:n :x :o] :m :h opts)
(map [:n :x :o] :n :gj opts)
(map [:n :x :o] :e :gk opts)
(map [:n :x :o] :i :l opts)

;; Word movement
(map [:n :x :o] :l :b opts)
(map [:n :x :o] :L :B opts)
(map [:n :x :o] :u :e opts)
(map [:n :x :o] :U :E opts)
(map [:n :x :o] :y :w opts)
(map [:n :x :o] :Y :W opts)

;; Insert mode
(map :n :s :i opts)
(map :n :S :I opts)
(map :n :t :a opts)
(map :n :T :A opts)

;; Change operations
(map [:n :x] :w :c opts)
(map [:n :x] :W :C opts)
(map :o :w :c opts)
(map :x :t :s opts)
(map :x :T :S opts)

;; Yank and paste
(map [:n :x] :c :y opts)
(map [:n :x] :v :p opts)
(map :v :v "\"_dP" opts)
(map :n :D :dd opts)
(map :x :D :d opts)
(map :n :C :yy opts)
(map :x :C :y opts)
(map [:n :x] :V :P opts)
(map [:n :x] :gv :gp opts)
(map [:n :x] :gV :gP opts)
(map :o :c :y opts)

;; Delete
(map :n :x "\"_x")
(map :v :x "\"_x")

;; Undo/Redo
(map :n :z :u opts)
(map :x :z "<CMD>undo<CR>" opts)
(map :n :gz :U opts)
(map :x :gz ":<CMD>undo<CR>" opts)
(map :n :Z "<C-R>" opts)
(map :x :Z "<CMD>redo<CR>" opts)

;; Visual mode
(map [:n :x] :a :v opts)
(map [:n :x] :A :V opts)
(map [:n :x] "<C-a>" "<C-v>" opts)

;; Till character and repeats
(map [:n :x :o] :p :t opts)
(map [:n :x :o] :P :T opts)
(map [:n :x :o] :b ";" opts)
(map [:n :x :o] :B "," opts)

;; Search and special movements
(map [:n :x :o] :k :n opts)
(map [:n :x :o] :K :N opts)
(map :o :r :i opts)

;; Miscellaneous
(map [:n :x] :gX :X opts)
(map [:n :x] :gK :K opts)
(map [:n :x] :gL :L opts)
(map [:n :x] :N "<C-d>zz" opts)
(map [:n :x] :E "<C-u>zz" opts)
(map :n "<leader>d" "<CMD>bdelete<CR>" {:desc "Delete buffer"})
(map :n "<leader>D" "<CMD>bdelete!<CR>" {:desc "Delete buffer!"})
(map :n "<leader>n" "<CMD>bnext<CR>" {:desc "Next buffer"})
(map :n "<leader>N" "<CMD>bprevious<CR>" {:desc "Previous buffer"})
(map :n "<leader>m" "<CMD>e ~/Notes/!Home.md<CR>" {:desc "Notes"})
(map :n "<leader>l" "<CMD>Lazy<CR>" {:desc "Lazy"})

;; Clear highlights on search when pressing <Esc> in normal mode
(map :n "<Esc>" "<CMD>nohlsearch<CR>" opts)

;; Keep the cursor in the same place when exiting insert mode
(map :i "<Esc>" "<Esc>l" opts)

;; Window commands
(map [:n :x] "<leader>k" "<CMD>new<CR>" {:desc "Split —"})
(map [:n :x] "<leader>h" "<CMD>vnew<CR>" {:desc "Split |"})
(map [:n :x] "<leader>q" "<C-w>q" {:desc "Close window"})
(map [:n :x] "<leader>Q" "<C-w>o" {:desc "Close others"})
(map [:n :x] "<leader>w" "<C-w>w" {:desc "Switch window"})
(map [:n :x] "<leader>v" "<C-w>r" {:desc "Rotate windows"})
(map [:n :x] :M "<C-w>h" opts)
(map [:n :x] :I "<C-w>l" opts)
(map [:n :x] "<C-n>" "<C-w>j" opts)
(map [:n :x] "<C-e>" "<C-w>k" opts)
(map [:n :x] "<S-Left>" "<C-w><" opts)
(map [:n :x] "<S-Down>" "<C-w>+" opts)
(map [:n :x] "<S-Up>" "<C-w>-" opts)
(map [:n :x] "<S-Right>" "<C-w>>" opts)

;; Load nvim-lspconfig (this keybind is overwritten once the plugin is loaded)
(map [:n :x] "<leader>L"
     (fn []
       ((. (require :lazy) :load) {:plugins [:nvim-lspconfig]})
       (_G.vim.notify "LSP loaded" _G.vim.log.levels.INFO))
     {:desc "Load LSP"})

;; Highlight when yanking text
(_G.vim.api.nvim_create_autocmd :TextYankPost
                                {:desc "Highlight when yanking text"
                                 :group (_G.vim.api.nvim_create_augroup "kickstart-highlight-yank"
                                                                        {:clear true})
                                 :callback (fn [] (_G.vim.highlight.on_yank))})
