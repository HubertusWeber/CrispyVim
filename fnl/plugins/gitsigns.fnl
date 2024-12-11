{1 :lewis6991/gitsigns.nvim
 :lazy true
 :event [:BufRead :BufNewFile]
 :opts {:signs {:add {:text "+"}
                :change {:text "~"}
                :delete {:text "_"}
                :topdelete {:text "‾"}
                :changedelete {:text "~"}}
        :on_attach (fn [bufnr]
                     (local gitsigns (require :gitsigns))
                     (local map
                            (fn [mode l r opts]
                              (let [opts (or opts {})]
                                (set opts.buffer bufnr)
                                (_G.vim.keymap.set mode l r opts))))
                     (map :n "]c"
                          (fn []
                            (if _G.vim.wo.diff
                                (_G.vim.cmd "normal! ]c")
                                (gitsigns:nav_hunk :next)))
                          {:desc "Jump to next git change"})
                     (map :n "[c"
                          (fn []
                            (if _G.vim.wo.diff
                                (_G.vim.cmd "normal! [c")
                                (gitsigns:nav_hunk :prev)))
                          {:desc "Jump to previous git change"})
                     (map :v "<leader>gs"
                          (fn []
                            (gitsigns:stage_hunk [(_G.vim.fn.line ".")
                                                  (_G.vim.fn.line "v")]))
                          {:desc "stage git hunk"})
                     (map :v "<leader>gr"
                          (fn []
                            (gitsigns:reset_hunk [(_G.vim.fn.line ".")
                                                  (_G.vim.fn.line "v")]))
                          {:desc "reset git hunk"})
                     (map :n "<leader>gs" gitsigns.stage_hunk
                          {:desc "Git stage hunk"})
                     (map :n "<leader>gr" gitsigns.reset_hunk
                          {:desc "Git reset hunk"})
                     (map :n "<leader>gS" gitsigns.stage_buffer
                          {:desc "Git stage buffer"})
                     (map :n "<leader>gu" gitsigns.undo_stage_hunk
                          {:desc "Git undo stage hunk"})
                     (map :n "<leader>gR" gitsigns.reset_buffer
                          {:desc "Git reset buffer"})
                     (map :n "<leader>gp" gitsigns.preview_hunk
                          {:desc "Git preview hunk"})
                     (map :n "<leader>gb" gitsigns.blame_line
                          {:desc "Git blame line"})
                     (map :n "<leader>gd" gitsigns.diffthis
                          {:desc "Git diff against index"})
                     (map :n "<leader>gD"
                          (fn []
                            (gitsigns:diffthis "@"))
                          {:desc "Git diff against last commit"})
                     (map :n "<leader>gB" gitsigns.toggle_current_line_blame
                          {:desc "Toggle git blame line"})
                     (map :n "<leader>gt" gitsigns.toggle_deleted
                          {:desc "Toggle git show deleted"}))}}
