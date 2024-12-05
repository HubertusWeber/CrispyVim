[{1 :stevearc/conform.nvim
  :lazy true
  :event :BufWritePre
  :cmd :ConformInfo
  :keys [{1 "<leader>o"
          2 (fn []
              ((. (require :conform) :format) {:async true
                                             :lsp_format :fallback}))
          :desc "Format buffer"}]
  :opts {:notify_on_error false
         :format_on_save (fn []
                          {:timeout_ms 250
                           :lsp_format :fallback})
         :formatters_by_ft {:lua [:stylua]
                           :python [:black]
                           :fennel [:fnlfmt]
                           ;; :javascript [:prettierd :prettier :stop_after_first true]
                           }}}]
