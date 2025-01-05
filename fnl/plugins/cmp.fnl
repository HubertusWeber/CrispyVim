{1 :hrsh7th/nvim-cmp
 :lazy true
 :event :InsertEnter
 :dependencies [:hrsh7th/cmp-nvim-lsp
                :hrsh7th/cmp-path
                :L3MON4D3/LuaSnip
                :saadparwaiz1/cmp_luasnip
                :rafamadriz/friendly-snippets]
 :config (fn []
           (let [cmp (require :cmp)
                 luasnip (require :luasnip)
                 vscode-loader (require :luasnip.loaders.from_vscode)]
             (vscode-loader:lazy_load)
             (cmp.setup {:completion {:autocomplete false
                                      :completeopt "menu,menuone,noinsert"}
                         :snippet {:expand (fn [args]
                                             (luasnip.lsp_expand args.body))}
                         :mapping (cmp.mapping.preset.insert {"<CR>" (cmp.mapping.confirm {:select true})
                                                              "<Tab>" (cmp.mapping.select_next_item)
                                                              "<Bs>" (cmp.mapping.select_prev_item)
                                                              "<Up>" (cmp.mapping.scroll_docs -4)
                                                              "<Down>" (cmp.mapping.scroll_docs 4)
                                                              "<S-Tab>" (cmp.mapping.complete {})})
                         :sources [{:name :luasnip}
                                   {:name :nvim_lsp}
                                   {:name :path}]})))}
