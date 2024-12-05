[{1 :hrsh7th/nvim-cmp
  :lazy true
  :event :InsertEnter
  :dependencies [:hrsh7th/cmp-nvim-lsp
                 :hrsh7th/cmp-path
                 :windwp/nvim-autopairs]
  :config (fn []
            (let [cmp (require :cmp)]
              (cmp.setup {:completion {:autocomplete false
                                       :completeopt "menu,menuone,noinsert"}
                          :mapping (cmp.mapping.preset.insert {"<CR>" (cmp.mapping.confirm {:select true})
                                                               "<Tab>" (cmp.mapping.select_next_item)
                                                               "<Bs>" (cmp.mapping.select_prev_item)
                                                               "<Up>" (cmp.mapping.scroll_docs -4)
                                                               "<Down>" (cmp.mapping.scroll_docs 4)
                                                               "<S-Tab>" (cmp.mapping.complete {})})
                          :sources [{:name :lazydev :group_index 0}
                                    {:name :nvim_lsp}
                                    {:name :path}]})
              (let [cmp_autopairs (require :nvim-autopairs.completion.cmp)]
                (cmp.event:on :confirm_done (cmp_autopairs.on_confirm_done)))))}]
