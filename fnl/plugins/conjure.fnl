{1 :Olical/conjure
 :lazy true
 :init (fn []
         (set _G.vim.g.conjure#client_on_load false)
         (set _G.vim.g.conjure#filetype#fennel "conjure.client.fennel.aniseed")
         (set _G.vim.g.conjure#client#fennel#aniseed#deprecation_warning false)
         (set _G.vim.g.conjure#extract#tree_sitter#enabled true)
         (set _G.vim.g.conjure#mapping#enable_defaults false)
         (set _G.vim.g.conjure#mapping#prefix "<leader>e")
         (set _G.vim.g.conjure#mapping#log_splits "k")
         (set _G.vim.g.conjure#mapping#log_vsplits "h")
         (set _G.vim.g.conjure#mapping#log_buf "g")
         (set _G.vim.g.conjure#mapping#log_toggle "t")
         (set _G.vim.g.conjure#mapping#log_reset_soft "s")
         (set _G.vim.g.conjure#mapping#log_reset_hard "a")
         (set _G.vim.g.conjure#mapping#log_jump_to_latest "l")
         (set _G.vim.g.conjure#mapping#log_close_visible "q")
         (set _G.vim.g.conjure#mapping#eval_current_form "e")
         (set _G.vim.g.conjure#mapping#eval_comment_current_form "E")
         (set _G.vim.g.conjure#mapping#eval_root_form "r")
         (set _G.vim.g.conjure#mapping#eval_comment_root_form "R")
         (set _G.vim.g.conjure#mapping#eval_word "w")
         (set _G.vim.g.conjure#mapping#eval_previous "p")
         (set _G.vim.g.conjure#mapping#eval_comment_word "W")
         (set _G.vim.g.conjure#mapping#eval_replace_form "!")
         (set _G.vim.g.conjure#mapping#eval_marked_form "m")
         (set _G.vim.g.conjure#mapping#eval_file "f")
         (set _G.vim.g.conjure#mapping#apping#eval_buf "b"))
 :config (fn []
           (let [mini-clue (require :mini.clue)
                 config (. mini-clue :config)]
             (table.insert config.clues
                           {:mode "n" :keys "<leader>e" :desc "Conjure"})))
 :keys [{1 "<leader>E"
         2 "<CMD>ConjureConnect<CR>"
         :desc "Conjure connect"
         :ft [:fennel :clojure]}
        {1 "<leader>E"
         2 "<CMD>lua require('conjure.client.rust.evcxr').start()<CR>"
         :desc "Conjure start"
         :ft [:rust]}]}
