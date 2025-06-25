{1 :HiPhish/rainbow-delimiters.nvim
 :lazy false
 :config (fn []
           (local rainbow-delimiters (require :rainbow-delimiters))
           (set _G.vim.g.rainbow_delimiters
                {:strategy {"" rainbow-delimiters.strategy.global}
                 :query {"" "rainbow-delimiters"}
                 :highlight [:RainbowDelimiterCyan
                             :RainbowDelimiterGreen
                             :RainbowDelimiterWhite
                             :RainbowDelimiterBlue]}))}
