{1 :shaunsingh/nord.nvim
 :lazy false
 :priority 1000
 :config (fn []
           (_G.vim.cmd.colorscheme :nord)
           (let [nord (require :nord.colors)]
             (_G.vim.api.nvim_set_hl 0 "HighlightUndo"
                                     {:bg nord.nord8_gui :fg nord.nord4_gui})
             (_G.vim.api.nvim_set_hl 0 "HighlightRedo"
                                     {:bg nord.nord8_gui :fg nord.nord4_gui})))}
