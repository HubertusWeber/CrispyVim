[{1 :nvim-telescope/telescope.nvim
  :lazy true
  :branch :0.1.x
  :dependencies [:nvim-lua/plenary.nvim
                 {1 :nvim-telescope/telescope-fzf-native.nvim
                  :build :make
                  :cond (fn []
                          (= (_G.vim.fn.executable :make) 1))}
                 :nvim-telescope/telescope-ui-select.nvim
                 :jonarrien/telescope-cmdline.nvim]
  :config (fn []
            ((. (require :telescope) :setup) {})
            (pcall (. (require :telescope) :load_extension) :fzf)
            (pcall (. (require :telescope) :load_extension) :ui-select)
            (pcall (. (require :telescope) :load_extension) :cmdline))
  :keys [{1 "<leader>sh" 2 "<CMD>Telescope help_tags<CR>" :desc "Search help"}
         {1 "<leader>sk" 2 "<CMD>Telescope keymaps<CR>" :desc "Search keymaps"}
         {1 "<leader>sf"
          2 "<CMD>Telescope find_files<CR>"
          :desc "Search files"}
         {1 "<leader>st" 2 "<CMD>Telescope<CR>" :desc "Search telescope"}
         {1 "<leader>sw"
          2 "<CMD>Telescope grep_string<CR>"
          :desc "Search current word"}
         {1 "<leader>sr"
          2 "<CMD>Telescope live_grep<CR>"
          :desc "Search ripgrep"}
         {1 "<leader>sd"
          2 "<CMD>Telescope diagnostics<CR>"
          :desc "Search diagnostics"}
         {1 "<leader>ss" 2 "<CMD>Telescope oldfiles<CR>" :desc "Search recent"}
         {1 "<leader>sc"
          2 "<CMD>Telescope find_files cwd=~/.config/nvim<CR>"
          :desc "Search config file"}
         {1 "<leader>sb" 2 "<CMD>Telescope buffers<CR>" :desc "Search buffer"}
         {1 "<leader>f"
          2 "<CMD>Telescope current_buffer_fuzzy_find<CR>"
          :desc "Fuzzy search"}
         {1 "<leader><leader>" 2 "<CMD>Telescope cmdline<CR>" :desc "Cmdline"}]}]
