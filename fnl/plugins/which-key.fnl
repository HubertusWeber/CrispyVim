[{1 :folke/which-key.nvim
  :lazy true
  :event :VeryLazy
  :opts {:triggers [{1 "<leader>" :mode [:n :v]}]
         :preset :helix
         :presets {:operators false
                   :motions false
                   :text_objects false
                   :windows false
                   :nav false
                   :z false
                   :g false}
         :plugins {:marks false :registers false :spelling {:enabled false}}
         :icons {:mappings false}
         :spec [{1 "<leader>s" :group "Search"}
                {1 "<leader>x" :group "Trouble"}
                {1 "," :group "Surround"}
                {1 "<leader>g" :group "Git" :mode [:n :x]}]}}]
