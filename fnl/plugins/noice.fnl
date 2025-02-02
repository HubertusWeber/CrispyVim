{1 :folke/noice.nvim
 :lazy true
 :event :VeryLazy
 :opts {:cmdline {:format {:cmdline {:icon "" :title ""}
                           :search_down {:icon "Σ" :title ""}
                           :search_up {:icon "Γ" :title ""}}}
        :views {:cmdline_popup {:border {:style "single" :text {:top ""}}}}
        :lsp {:progress {:enabled true}
              :override {:vim.lsp.util.convert_input_to_markdown_lines true
                         :vim.lsp.util.stylize_markdown true
                         :cmp.entry.get_documentation true}}}
 :dependencies [:MunifTanjim/nui.nvim]
 :keys [{1 ";" 2 "<CMD>Noice all<CR>" :desc "Noice"}]}
