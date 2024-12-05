[{1 :folke/flash.nvim
  :lazy true
  :opts {:labels "neitsrhdoacvkluypfwqwzx"
         :modes {:search {:enabled false} :char {:enabled false}}}
  :keys [{1 "h"
          :mode [:n :x :o]
          2 (fn []
              ((. (require :flash) :jump)))
          :desc "Flash"}
         {1 "H"
          :mode [:n :x :o]
          2 (fn []
              ((. (require :flash) :treesitter)))
          :desc "Flash Treesitter"}
         {1 "t" :mode [:n :x] 2 false}
         {1 "f" :mode [:n :x :o] 2 false}
         {1 "t"
          :mode :o
          2 (fn []
              ((. (require :flash) :remote)))
          :desc "Remote Flash"}
         {1 "R"
          :mode [:o :x]
          2 (fn []
              ((. (require :flash) :treesitter_search)))
          :desc "Treesitter Search"}]}]
