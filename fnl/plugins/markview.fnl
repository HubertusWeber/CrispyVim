[{1 :OXY2DEV/markview.nvim
  :lazy true
  :ft :markdown
  :dependencies [:nvim-treesitter/nvim-treesitter :nvim-tree/nvim-web-devicons]
  :config (fn []
            ((. (require :markview) :setup) {:modes [:n :no :i :c]
                                             :hybrid_modes [:n :no :i]
                                             :headings {:enable false}}))}]
