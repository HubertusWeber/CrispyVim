{1 :folke/which-key.nvim
 :lazy true
 :event :VeryLazy
 :opts {:delay 0
        :triggers [{1 "<leader>" :mode :nxso}]
        :plugins {:marks false
                  :registers false
                  :spelling {:enabled false}
                  :presets {:operators false
                            :motions false
                            :text_objects false
                            :windows false
                            :nav false
                            :z false
                            :g false}}
        :icons {:mappings false :group ""}
        :spec [{1 "<leader>x" :group "Trouble"}
               {1 "<leader>g" :group "Git"}
               {1 "<leader>s" :group "Search"}
               {1 "<leader>e" :group "Conjure"}
               {1 "<leader>r" :group "Rust"}
               {1 "<leader>z" :desc "Split or join"}]
        :show_keys false
        :show_help false}}
