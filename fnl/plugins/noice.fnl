[{1 :folke/noice.nvim
  :event :VeryLazy
  :opts {:cmdline {:format {:cmdline {:title ""}
                            :search_down {:icon "Σ" :title ""}
                            :search_up {:icon "Γ" :title ""}}}
         :views {:cmdline_popup {:border {:style "single" :text {:top ""}}}}
         :lsp {:override {:vim.lsp.util.convert_input_to_markdown_lines true
                          :vim.lsp.util.stylize_markdown true
                          :cmp.entry.get_documentation true}}}
  :dependencies [:MunifTanjim/nui.nvim :rcarriga/nvim-notify]}]
