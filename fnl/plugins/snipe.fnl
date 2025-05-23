[{1 :leath-dub/snipe.nvim
  :lazy true
  :keys [{1 ","
          2 (fn []
              ((. (require :snipe) :open_buffer_menu)))}]
  :opts {:ui {:open_win_override {:title "" :border :single}
              :text_align :file-first}
         :hints {:dictionary "tsraddhogluypfw"}
         :navigate {:next_page "N"
                    :prev_page "E"
                    :close_buffer "d"
                    :open_vsplit "h"
                    :open_split "k"}
         :sort :last}}
 {1 :kungfusheep/snipe-lsp.nvim
  :lazy true
  :dependencies :leath-dub/snipe.nvim
  :opts {}
  :keys [{1 "<" 2 "<CMD>SnipeLspSymbols<CR>"}]}]
