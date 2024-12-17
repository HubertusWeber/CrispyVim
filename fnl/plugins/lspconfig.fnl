{1 :neovim/nvim-lspconfig
 :lazy true
 :ft [:lua :tex :clojure :fennel]
 :dependencies [{1 :j-hui/fidget.nvim :lazy true :opts {}}
                {1 :nvimdev/lspsaga.nvim
                 :lazy true
                 :opts {:lightbulb {:enable false}
                        :symbol_in_winbar {:enable false}}}
                :hrsh7th/cmp-nvim-lsp]
 :config (fn []
           (_G.vim.api.nvim_create_autocmd :LspAttach
                                           {:group (_G.vim.api.nvim_create_augroup :kickstart-lsp-attach
                                                                                   {:clear true})
                                            :callback (fn [event]
                                                        (local map
                                                               (fn [keys
                                                                    func
                                                                    desc
                                                                    ?mode]
                                                                 (let [mode (or ?mode
                                                                                :n)]
                                                                   (_G.vim.keymap.set mode
                                                                                      keys
                                                                                      func
                                                                                      {:buffer event.buf
                                                                                       :desc desc}))))
                                                        (map "gd"
                                                             (. (require :telescope.builtin)
                                                                :lsp_definitions)
                                                             "Goto definition")
                                                        (map "gr"
                                                             (. (require :telescope.builtin)
                                                                :lsp_references)
                                                             "Goto references")
                                                        (map "gI"
                                                             (. (require :telescope.builtin)
                                                                :lsp_implementations)
                                                             "Goto implementation")
                                                        (map "gt"
                                                             (. (require :telescope.builtin)
                                                                :lsp_type_definitions)
                                                             "Goto type definition")
                                                        (map "<leader>sy"
                                                             (. (require :telescope.builtin)
                                                                :lsp_document_symbols)
                                                             "Search symbol")
                                                        (map "<leader>sY"
                                                             (. (require :telescope.builtin)
                                                                :lsp_dynamic_workspace_symbols)
                                                             "Search workplace symbol")
                                                        (map "<leader>R"
                                                             _G.vim.lsp.buf.rename
                                                             "Rename")
                                                        (map "<leader>a"
                                                             _G.vim.lsp.buf.code_action
                                                             "Code action"
                                                             [:n :x])
                                                        (map "gD"
                                                             _G.vim.lsp.buf.declaration
                                                             "Goto declaration")
                                                        (let [client (_G.vim.lsp.get_client_by_id event.data.client_id)]
                                                          (when (and client
                                                                     (client.supports_method _G.vim.lsp.protocol.Methods.textDocument_documentHighlight))
                                                            (let [highlight-augroup (_G.vim.api.nvim_create_augroup :kickstart-lsp-highlight
                                                                                                                    {:clear false})]
                                                              (_G.vim.api.nvim_create_autocmd [:CursorHold
                                                                                               :CursorHoldI]
                                                                                              {:buffer event.buf
                                                                                               :group highlight-augroup
                                                                                               :callback _G.vim.lsp.buf.document_highlight})
                                                              (_G.vim.api.nvim_create_autocmd [:CursorMoved
                                                                                               :CursorMovedI]
                                                                                              {:buffer event.buf
                                                                                               :group highlight-augroup
                                                                                               :callback _G.vim.lsp.buf.clear_references})
                                                              (_G.vim.api.nvim_create_autocmd :LspDetach
                                                                                              {:group (_G.vim.api.nvim_create_augroup :kickstart-lsp-detach
                                                                                                                                      {:clear true})
                                                                                               :callback (fn [event2]
                                                                                                           (_G.vim.lsp.buf.clear_references)
                                                                                                           (_G.vim.api.nvim_clear_autocmds {:group :kickstart-lsp-highlight
                                                                                                                                            :buffer event2.buf}))})))
                                                          (when (and client
                                                                     (client.supports_method _G.vim.lsp.protocol.Methods.textDocument_inlayHint))
                                                            (map "<leader>j"
                                                                 (fn []
                                                                   (_G.vim.lsp.inlay_hint.enable (not (_G.vim.lsp.inlay_hint.is_enabled {:bufnr event.buf}))))
                                                                 "Toggle inlay hints"))))})
           (let [signs {:Error "" :Warn "" :Hint "" :Info ""}]
             (each [type icon (pairs signs)]
               (let [hl (.. :DiagnosticSign type)]
                 (_G.vim.fn.sign_define hl {:text icon :texthl hl :numhl hl}))))
           (var capa (_G.vim.lsp.protocol.make_client_capabilities))
           (set capa
                (_G.vim.tbl_deep_extend :force capa
                                        ((. (require :cmp_nvim_lsp)
                                            :default_capabilities))))
           (set capa.textDocument.foldingRange
                {:dynamicRegistration false :lineFoldingOnly true})
           (let [lspconfig (require :lspconfig)]
             (lspconfig.lua_ls.setup {:capabilities capa})
             (lspconfig.clojure_lsp.setup {:capabilities capa
                                           :single_file_support true})
             (lspconfig.fennel_ls.setup {:capabilities capa
                                         :single_file_support true})
             (lspconfig.texlab.setup {:capabilities capa
                                      :settings {:texlab {:binary {:path "/opt/homebrew/bin/texlab"}
                                                          :build {:args [:-pdf
                                                                         :-interaction=nonstopmode
                                                                         :-output-directory=/Users/hubertusweber/Output
                                                                         :-synctex=0
                                                                         :%f]
                                                                  :onSave true}}}}))
           (_G.vim.keymap.set :n "<leader>L"
                              (fn []
                                (let [active-clients (_G.vim.lsp.get_active_clients {:name :ltex})]
                                  (if (> (length active-clients) 0)
                                      (each [_ client (ipairs active-clients)]
                                        (client:stop)
                                        (_G.vim.notify "LTeX language server stopped"
                                                       _G.vim.log.levels.INFO))
                                      (let [ltex (require :lspconfig)]
                                        (ltex.ltex.setup {:capabilities capa
                                                          :settings {:ltex {:enabled true
                                                                            :additionalRules {:enablePickyRules true
                                                                                              :motherTongue :de-DE}
                                                                            :languageToolHttpServerUri (os.getenv "LANGUAGETOOL_HTTP_SERVER_URI")
                                                                            :languageToolOrg {:username (os.getenv "LANGUAGETOOL_ORG_USERNAME")
                                                                                              :apiKey (os.getenv "LANGUAGETOOL_ORG_APIKEY")}
                                                                            :ltex-ls {:logLevel :severe}
                                                                            :checkFrequency :save}}})
                                        (ltex.ltex.launch)
                                        (_G.vim.notify "LTeX language server started"
                                                       _G.vim.log.levels.INFO)))))
                              {:desc "Toggle LTeX" :silent true}))}
