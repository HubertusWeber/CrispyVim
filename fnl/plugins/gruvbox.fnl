{1 :ellisonleao/gruvbox.nvim
 :enabled true
 :lazy false
 :priority 1000
 :config (fn []
           (_G.vim.cmd.colorscheme :gruvbox)
           (let [gruvbox (. (require :gruvbox) :palette)]
             (_G.vim.api.nvim_set_hl 0 "WhichKeyNormal" {:bg gruvbox.dark0})
             (_G.vim.api.nvim_set_hl 0 "CursorLine" {:bg gruvbox.dark0})
             (_G.vim.api.nvim_set_hl 0 "FloatBorder"
                                     {:bg gruvbox.dark0 :fg gruvbox.light0})
             (_G.vim.api.nvim_set_hl 0 "HighlightUndo"
                                     {:bg gruvbox.bright_orange
                                      :fg gruvbox.dark0})
             (_G.vim.api.nvim_set_hl 0 "HighlightRedo"
                                     {:bg gruvbox.bright_orange
                                      :fg gruvbox.dark0})
             (_G.vim.api.nvim_set_hl 0 "NeotestPassed"
                                     {:fg gruvbox.bright_green})
             (_G.vim.api.nvim_set_hl 0 "NeotestFailed" {:fg gruvbox.bright_red})
             (_G.vim.api.nvim_set_hl 0 "NeotestRunning"
                                     {:fg gruvbox.bright_yellow})
             (_G.vim.api.nvim_set_hl 0 "NeotestSkipped"
                                     {:fg gruvbox.neutral_blue})
             (_G.vim.api.nvim_set_hl 0 "NeotestTest" {:fg gruvbox.light1})
             (_G.vim.api.nvim_set_hl 0 "NeotestNamespace"
                                     {:fg gruvbox.bright_aqua})
             (_G.vim.api.nvim_set_hl 0 "NeotestFile" {:fg gruvbox.bright_aqua})
             (_G.vim.api.nvim_set_hl 0 "NeotestDir" {:fg gruvbox.neutral_aqua})
             (_G.vim.api.nvim_set_hl 0 "NeotestIndent" {:fg gruvbox.dark3})
             (_G.vim.api.nvim_set_hl 0 "NeotestExpandMarker"
                                     {:fg gruvbox.light1})
             (_G.vim.api.nvim_set_hl 0 "NeotestAdapterName"
                                     {:fg gruvbox.bright_purple :bold true})
             (_G.vim.api.nvim_set_hl 0 "NeotestWinSelect"
                                     {:fg gruvbox.bright_aqua :bold true})
             (_G.vim.api.nvim_set_hl 0 "NeotestMarked"
                                     {:fg gruvbox.bright_yellow :bold true})
             (_G.vim.api.nvim_set_hl 0 "NeotestTarget"
                                     {:fg gruvbox.bright_blue})
             (let [colors {:aqua gruvbox.bright_aqua
                           :blue gruvbox.bright_blue
                           :green gruvbox.bright_green
                           :orange gruvbox.bright_orange
                           :purple gruvbox.bright_purple
                           :red gruvbox.bright_red
                           :yellow gruvbox.bright_yellow
                           :white gruvbox.light1}]
               (each [name color (pairs colors)]
                 (_G.vim.api.nvim_set_hl 0
                                         (.. :RainbowDelimiter
                                             (string.upper (string.sub name 1 1))
                                             (string.sub name 2))
                                         {:fg color}))
               (_G.vim.api.nvim_set_hl 0 :MatchParen
                                       {:fg gruvbox.dark0
                                        :bg gruvbox.bright_purple
                                        :bold true}))))}
