{1 :neanias/everforest-nvim
 :enabled true
 :lazy false
 :priority 1000
 :config (fn []
           ((. (require :everforest) :setup) {})
           (_G.vim.cmd.colorscheme :everforest))}
