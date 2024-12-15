{1 :kevinhwang91/nvim-ufo
 :lazy true
 :event [:BufRead :BufNewFile]
 :dependencies [:kevinhwang91/promise-async :luukvbaal/statuscol.nvim]
 :config (fn []
           (set _G.vim.o.foldlevel 99)
           (set _G.vim.o.foldlevelstart 99)
           (set _G.vim.o.foldenable true)
           ((. (require :ufo) :setup) {:provider_selector (fn []
                                                            [:treesitter
                                                             :indent])}))
 :keys [{1 "<leader>y"
         2 (fn []
             ((. (require :ufo) :openAllFolds)))
         :desc "Open all folds"}
        {1 "<leader>u"
         2 (fn []
             ((. (require :ufo) :closeAllFolds)))
         :desc "Close all folds"}
        {1 "<leader>t" 2 "za" :desc "Toggle fold"}]}
