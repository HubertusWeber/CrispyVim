{1 :epwalsh/obsidian.nvim
 :lazy true
 :ft :markdown
 :cmd [:ObsidianQuickSwitch :ObsidianSearch]
 :dependencies [:nvim-lua/plenary.nvim :hrsh7th/nvim-cmp]
 :config (fn []
           ((. (require :obsidian) :setup) {:dir "~/Notes"
                                            :new_notes_location :current_dir
                                            :disable_frontmatter true
                                            :ui {:enable false}}))}
