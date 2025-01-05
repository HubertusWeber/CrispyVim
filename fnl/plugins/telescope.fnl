{1 :nvim-telescope/telescope.nvim
 :lazy true
 :branch :0.1.x
 :dependencies [:nvim-lua/plenary.nvim
                :nvim-tree/nvim-web-devicons
                {1 :nvim-telescope/telescope-fzf-native.nvim
                 :build :make
                 :cond (fn []
                         (= (_G.vim.fn.executable :make) 1))}
                :nvim-telescope/telescope-ui-select.nvim
                :nvim-telescope/telescope-bibtex.nvim
                :jvgrootveld/telescope-zoxide
                :xiyaowong/telescope-emoji.nvim
                {1 :jmbuhr/telescope-zotero.nvim
                 :dependencies [:kkharji/sqlite.lua]}]
 :config (fn []
           ((. (require :telescope) :setup) {:defaults {:prompt_prefix " "
                                                        :selection_caret "❯ "
                                                        :entry_prefix " "
                                                        :sorting_strategy :ascending
                                                        :layout_strategy :horizontal
                                                        :layout_config {:horizontal {:prompt_position :top
                                                                                     :preview_width 0
                                                                                     :results_width 1}
                                                                        :width 0.3
                                                                        :height 0.6}
                                                        :border true
                                                        :borderchars ["─"
                                                                      "│"
                                                                      "─"
                                                                      "│"
                                                                      "┌"
                                                                      "┐"
                                                                      "┘"
                                                                      "└"]
                                                        :preview_title false
                                                        :prompt_title false
                                                        :results_title false
                                                        :previewer false
                                                        :path_display [:truncate]
                                                        :set_env {:COLORTERM :truecolor}
                                                        :mappings {:i {"<esc>" (. (require :telescope.actions)
                                                                                  :close)}
                                                                   :n {"<esc>" (. (require :telescope.actions)
                                                                                  :close)}}
                                                        :file_ignore_patterns [:.git/]
                                                        :winblend 0
                                                        :results_height 1
                                                        :highlight {:TelescopeBorder :FloatBorder
                                                                    :TelescopePromptBorder :FloatBorder
                                                                    :TelescopeResultsBorder :FloatBorder
                                                                    :TelescopePreviewBorder :FloatBorder
                                                                    :TelescopeNormal :NormalFloat
                                                                    :TelescopePromptNormal :NormalFloat
                                                                    :TelescopeResultsNormal :NormalFloat
                                                                    :TelescopePreviewNormal :NormalFloat}}
                                             :pickers {:find_files {:previewer false
                                                                    :prompt_title false
                                                                    :results_title false}
                                                       :live_grep {:previewer false
                                                                   :prompt_title false
                                                                   :results_title false
                                                                   :layout_config {:width 0.8
                                                                                   :height 0.8}}
                                                       :buffers {:previewer false
                                                                 :prompt_title false
                                                                 :results_title false}
                                                       :current_buffer_fuzzy_find {:previewer false
                                                                                   :prompt_title false
                                                                                   :results_title false
                                                                                   :layout_config {:width 0.8
                                                                                                   :height 0.8}}
                                                       :help_tags {:previewer false
                                                                   :prompt_title false
                                                                   :results_title false}
                                                       :oldfiles {:prompt_prefix " φ "
                                                                  :previewer false
                                                                  :prompt_title false
                                                                  :results_title false
                                                                  :path_display [:tail]}
                                                       :builtin {:previewer false
                                                                 :prompt_title false
                                                                 :results_title false}
                                                       :keymaps {:previewer false
                                                                 :prompt_title false
                                                                 :results_title false
                                                                 :layout_config {:width 0.6}}
                                                       :diagnostics {:previewer false
                                                                     :prompt_title false
                                                                     :results_title false
                                                                     :layout_config {:width 0.6}}
                                                       :telescope {:previewer false
                                                                   :prompt_title false
                                                                   :results_title false}}
                                             :extensions {:ui-select {:require :telescope.themes
                                                                      :get_dropdown {:initial_mode :insert
                                                                                     :previewer false
                                                                                     :borderchars ["─"
                                                                                                   "│"
                                                                                                   "─"
                                                                                                   "│"
                                                                                                   "┌"
                                                                                                   "┐"
                                                                                                   "┘"
                                                                                                   "└"]
                                                                                     :border true
                                                                                     :winblend 0}}
                                                          :emoji {:action (fn [emoji]
                                                                            (_G.vim.fn.setreg :*
                                                                                              emoji.value))}
                                                          :zoxide {:prompt_title false}
                                                          :fzf {:fuzzy true
                                                                :override_generic_sorter true
                                                                :override_file_sorter true
                                                                :case_mode :smart_case}}})
           ((. (require :zotero) :setup) {:zotero_db_path "~/.local/share/Zotero/zotero.sqlite"
                                          :better_bibtex_db_path "~/.local/share/Zotero/better-bibtex.sqlite"
                                          :zotero_storage_path "~/.local/share/Zotero/storage"})
           (pcall (. (require :telescope) :load_extension) :fzf)
           (pcall (. (require :telescope) :load_extension) :ui-select)
           (pcall (. (require :telescope) :load_extension) :emoji)
           (pcall (. (require :telescope) :load_extension) :zoxide)
           (pcall (. (require :telescope) :load_extension) :zotero)
           (pcall (. (require :telescope) :load_extension) :bibtex))
 :keys [{1 "<leader>sh" 2 "<CMD>Telescope help_tags<CR>" :desc "Help"}
        {1 "<leader>sk" 2 "<CMD>Telescope keymaps<CR>" :desc "Keymaps"}
        {1 "<leader>ss" 2 "<CMD>Telescope find_files<CR>" :desc "Files"}
        {1 "<leader>st" 2 "<CMD>Telescope<CR>" :desc "Telescope"}
        {1 "<leader>sr" 2 "<CMD>Telescope live_grep<CR>" :desc "Grep"}
        {1 "<leader>sb" 2 "<CMD>Telescope bibtex<CR>" :desc "Bibtex"}
        {1 "<leader>sx" 2 "<CMD>Telescope diagnostics<CR>" :desc "Diagnostics"}
        {1 "<leader><leader>"
         2 "<CMD>Telescope oldfiles<CR>"
         :desc "Recent Files"}
        {1 "<leader>sc"
         2 "<CMD>Telescope find_files cwd=~/.config/nvim<CR>"
         :desc "Config"}
        {1 "<leader>sz" 2 "<CMD>Telescope zotero<CR>" :desc "Zotero"}
        {1 "<leader>sd" 2 "<CMD>Telescope zoxide list<CR>" :desc "Directory"}
        {1 "<leader>se" 2 "<CMD>Telescope emoji<CR>" :desc "Emoji"}
        {1 "<leader>sj" 2 "<CMD>Telescope buffers<CR>" :desc "Buffer"}
        {1 "<leader>i"
         2 "<CMD>Telescope current_buffer_fuzzy_find<CR>"
         :desc "Search in file"}
        {1 "<leader>sn" 2 "<CMD>ObsidianQuickSwitch<CR>" :desc "Note"}
        {1 "<leader>sm" 2 "<CMD>ObsidianSearch<CR>" :desc "Grep notes"}
        {1 "<leader>,"
         2 "<CMD>Telescope lsp_definitions<CR>"
         :desc "Go to definition"}
        {1 "<leader>b" 2 "<CMD>ObsidianBacklinks<CR>" :desc "Backlinks"}]}
