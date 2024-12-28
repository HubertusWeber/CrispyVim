{1 :shaunsingh/nord.nvim
 :enabled false
 :lazy false
 :priority 1000
 :config (fn []
           (_G.vim.cmd.colorscheme :nord)
           (let [nord (require :nord.colors)]
             (_G.vim.api.nvim_set_hl 0 "HighlightUndo"
                                     {:bg nord.nord8_gui :fg nord.nord4_gui})
             (_G.vim.api.nvim_set_hl 0 "HighlightRedo"
                                     {:bg nord.nord8_gui :fg nord.nord4_gui})
             (_G.vim.api.nvim_set_hl 0 "NeotestPassed" {:fg nord.nord14_gui})
             (_G.vim.api.nvim_set_hl 0 "NeotestFailed" {:fg nord.nord11_gui})
             (_G.vim.api.nvim_set_hl 0 "NeotestRunning" {:fg nord.nord13_gui})
             (_G.vim.api.nvim_set_hl 0 "NeotestSkipped" {:fg nord.nord9_gui})
             (_G.vim.api.nvim_set_hl 0 "NeotestTest" {:fg nord.nord4_gui})
             (_G.vim.api.nvim_set_hl 0 "NeotestNamespace" {:fg nord.nord7_gui})
             (_G.vim.api.nvim_set_hl 0 "NeotestFile" {:fg nord.nord7_gui})
             (_G.vim.api.nvim_set_hl 0 "NeotestDir" {:fg nord.nord8_gui})
             (_G.vim.api.nvim_set_hl 0 "NeotestIndent" {:fg nord.nord3_gui})
             (_G.vim.api.nvim_set_hl 0 "NeotestExpandMarker"
                                     {:fg nord.nord4_gui})
             (_G.vim.api.nvim_set_hl 0 "NeotestAdapterName"
                                     {:fg nord.nord15_gui :bold true})
             (_G.vim.api.nvim_set_hl 0 "NeotestWinSelect"
                                     {:fg nord.nord7_gui :bold true})
             (_G.vim.api.nvim_set_hl 0 "NeotestMarked"
                                     {:fg nord.nord13_gui :bold true})
             (_G.vim.api.nvim_set_hl 0 "NeotestTarget" {:fg nord.nord10_gui})
             (let [colors {:cyan nord.nord8_gui
                           :green nord.nord14_gui
                           :white nord.nord4_gui
                           :blue nord.nord9_gui}]
               (each [name color (pairs colors)]
                 (_G.vim.api.nvim_set_hl 0
                                         (.. :RainbowDelimiter
                                             (string.upper (string.sub name 1 1))
                                             (string.sub name 2))
                                         {:fg color}))
               (_G.vim.api.nvim_set_hl 0 :MatchParen
                                       {:fg nord.nord0_gui
                                        :bg nord.nord15_gui
                                        :bold true}))))}
