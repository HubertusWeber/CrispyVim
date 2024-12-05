[{1 :Olical/conjure
  :lazy true
  :ft [:fennel :clojure :rust]
  :init (fn []
          (set _G.vim.g.conjure#filetype#fennel "conjure.client.fennel.stdio")
          (set _G.vim.g.conjure#extract#tree_sitter#enabled true)
          (set _G.vim.g.conjure#mapping#enable_defaults false)
          (_G.vim.api.nvim_set_keymap :n "<leader>e" ":%ConjureEval<CR>"
                                      {:desc "Conjure eval"})
          (_G.vim.api.nvim_set_keymap :x "<leader>e" ":ConjureEval<CR>"
                                      {:desc "Conjure eval"}))}]
