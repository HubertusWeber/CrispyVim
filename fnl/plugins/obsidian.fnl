{1 :epwalsh/obsidian.nvim
 :version "*"
 :lazy true
 :ft :markdown
 :cmd [:ObsidianQuickSwitch :ObsidianSearch]
 :dependencies [:nvim-lua/plenary.nvim :hrsh7th/nvim-cmp]
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
                                            :ui {:enable false}}))}
