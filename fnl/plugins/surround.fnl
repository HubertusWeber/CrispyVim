[{1 :kylechui/nvim-surround
  :lazy true
  :event [:BufRead :BufNewFile]
  :config (fn []
            ((. (require :nvim-surround) :setup) {:keymaps {:insert "<C-g>s"
                                                            :insert_line "<C-g>S"
                                                            :normal "cs"
                                                            :normal_cur "css"
                                                            :normal_line "cS"
                                                            :normal_cur_line "cSS"
                                                            :visual "s"
                                                            :visual_line "S"
                                                            :delete "ds"
                                                            :change "ws"
                                                            :change_line "wS"}}))}]
