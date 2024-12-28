{1 :HiPhish/rainbow-delimiters.nvim
 :lazy true
 :ft [:fennel :clojure :lua :tex :json]
 :config (fn []
           (local rainbow-delimiters (require :rainbow-delimiters))
           (set _G.vim.g.rainbow_delimiters
                {:strategy {"" rainbow-delimiters.strategy.global}
                 :query {"" "rainbow-delimiters"}
                 ; Uncomment when using nord colors.
                 ; :highlight [:RainbowDelimiterCyan
                 ;             :RainbowDelimiterGreen
                 ;             :RainbowDelimiterWhite
                 ;             :RainbowDelimiterBlue]
                 }))}
