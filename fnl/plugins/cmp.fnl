{1 :hrsh7th/nvim-cmp
 :lazy true
 :event :InsertEnter
 :dependencies [:hrsh7th/cmp-nvim-lsp :hrsh7th/cmp-path]
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
                         :sources [{:name :nvim_lsp} {:name :path}]})))}
