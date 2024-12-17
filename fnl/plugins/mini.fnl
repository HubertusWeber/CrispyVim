{1 :echasnovski/mini.nvim
 :lazy false
 :init (fn []
         ((. (require :mini.ai) :setup) {:mappings {:around "a"
                                                    :inside "r"
                                                    :around_next "an"
                                                    :inside_next "rn"
                                                    :around_las "al"
                                                    :inside_last "rl"}})
         ((. (require :mini.clue) :setup) {:triggers [{:mode :n
                                                       :keys "<leader>"}
                                                      {:mode :x
                                                       :keys "<leader>"}]
                                           :clues [{:mode :n
                                                    :keys "<leader>g"
                                                    :desc "Git"}
                                                   {:mode :n
                                                    :keys "<leader>s"
                                                    :desc "Search"}
                                                   {:mode :n
                                                    :keys "<leader>x"
                                                    :desc "Trouble"}]
                                           :window {:delay 0}})
         ((. (require :mini.comment) :setup) {:mappings {:comment_line "<leader>c"
                                                         :comment_visual "<leader>c"
                                                         :textobject "C"}})
         ((. (require :mini.files) :setup) {:mappings {:close "q"
                                                       :go_in "i"
                                                       :go_in_plus "<CR>"
                                                       :go_out "m"
                                                       :go_out_plus "M"
                                                       :mark_goto "'"
                                                       :mark_set "\""
                                                       :reset "<bs>"
                                                       :reveal_cwd "@"
                                                       :show_help "?"
                                                       :synchronize "g"
                                                       :trim_left "<"
                                                       :trim_right ">"}})
         (_G.vim.keymap.set :n "<leader>f"
                            (fn []
                              ((. (require :mini.files) :open)))
                            {:desc "File explorer"})
         ((. (require :mini.icons) :setup) {})
         ((. (require :mini.splitjoin) :setup) {:mappings {:toggle "<leader>z"}})
         ((. (require :mini.surround) :setup) {:mappings {:add "ja"
                                                          :delete "jd"
                                                          :find "jf"
                                                          :find_left "jF"
                                                          :highlight "jh"
                                                          :replace "jr"
                                                          :update_n_lines "jn"
                                                          :suffix_last "l"
                                                          :suffix_next "n"}}))}
