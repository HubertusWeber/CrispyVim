[{1 :epwalsh/obsidian.nvim
  :version "*"
  :lazy true
  :ft :markdown
  :dependencies [:nvim-lua/plenary.nvim]
  :config (fn []
            ((. (require :obsidian) :setup) {:dir "~/Notes"
                                             :mappings {"<cr>" {:action (fn []
                                                                          ((. (require :obsidian)
                                                                              :util
                                                                              :smart_action)))
                                                                :opts {:buffer true
                                                                       :expr true}}}
                                             :new_notes_location :current_dir
                                             :disable_frontmatter true
                                             :ui {:enable false}}))
  :keys [{1 "<leader>sn" 2 "<CMD>ObsidianQuickSwitch<CR>" :desc "Search note"}
         {1 "<leader>so"
          2 "<CMD>ObsidianSearch<CR>"
          :desc "Search in obsidian"}
         {1 "<leader>b" 2 "<CMD>ObsidianBacklinks<CR>" :desc "Backlinks"}]}]
