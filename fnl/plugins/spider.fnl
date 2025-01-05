{1 :chrisgrieser/nvim-spider
 :lazy true
 :event :VeryLazy
 :config (fn []
           (_G.vim.keymap.set [:n :o :x] "l"
                              "<CMD>lua require('spider').motion('b')<CR>")
           (_G.vim.keymap.set [:n :o :x] "u"
                              "<CMD>lua require('spider').motion('e')<CR>")
           (_G.vim.keymap.set [:n :o :x] "y"
                              "<CMD>lua require('spider').motion('w')<CR>"))}
