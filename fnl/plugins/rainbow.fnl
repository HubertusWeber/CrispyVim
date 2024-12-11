{1 :HiPhish/rainbow-delimiters.nvim
 :lazy true
 :ft [:fennel :clojure :lua :tex :json]
 :config (fn []
           (local rainbow-delimiters (require :rainbow-delimiters))
           (local nord (require :nord.colors))
           (set _G.vim.g.rainbow_delimiters
                {:strategy {"" rainbow-delimiters.strategy.global}
                 :query {"" "rainbow-delimiters"}
                 :highlight [:RainbowDelimiterCyan
                             :RainbowDelimiterGreen
                             :RainbowDelimiterWhite
                             :RainbowDelimiterBlue]})
           (let [colors {:cyan nord.nord8_gui
                         :green nord.nord14_gui
                         :white nord.nord4_gui
                         :blue nord.nord9_gui}]
             (each [name color (pairs colors)]
               (_G.vim.api.nvim_set_hl 0
                                       (.. :RainbowDelimiter
                                           (string.upper (string.sub name 1 1))
                                           (string.sub name 2))
                                       {:fg color}))
             (_G.vim.api.nvim_set_hl 0 :MatchParen
                                     {:fg nord.nord0_gui
                                      :bg nord.nord15_gui
                                      :bold true})))}
