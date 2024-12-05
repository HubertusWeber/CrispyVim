[{1 :nvim-treesitter/nvim-treesitter
  :lazy true
  :event [:BufRead :BufNewFile]
  :build :TSUpdate
  :main :nvim-treesitter.configs
  :opts {:ensure_installed [:fennel
                            :lua
                            :luadoc
                            :vim
                            :vimdoc
                            :markdown
                            :markdown_inline
                            :latex
                            :clojure
                            :rust]
         :auto_install true
         :highlight {:enable true :additional_vim_regex_highlighting [:ruby]}
         :indent {:enable true :disable [:ruby :vim]}}}]
