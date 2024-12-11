{1 :nvim-treesitter/nvim-treesitter
 :lazy false
 :build :TSUpdate
 :init (fn []
         (tset (require :nvim-treesitter.install) :compilers
               [:clang :zig :cc :gcc]))
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
        :indent {:enable true :disable [:ruby :vim]}}}
