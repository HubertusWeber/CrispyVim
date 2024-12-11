{1 :Olical/conjure
 :lazy true
 :ft [:fennel :clojure :rust]
 :init (fn []
         (set _G.vim.g.conjure#filetype#fennel "conjure.client.fennel.stdio")
         (set _G.vim.g.conjure#extract#tree_sitter#enabled true)
         (set _G.vim.g.conjure#mapping#enable_defaults false)
         (set _G.vim.g.conjure#log#hud#enabled false)
         (_G.vim.api.nvim_set_keymap :n "<leader><cr>" ":%ConjureEval<CR>"
                                     {:desc "Conjure eval"})
         (_G.vim.api.nvim_set_keymap :x "<leader><cr>" ":ConjureEval<CR>"
                                     {:desc "Conjure eval"}))}
