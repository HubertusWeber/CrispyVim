{1 :roobert/search-replace.nvim
 :lazy true
 :opts {}
 :keys [{1 "<leader>/"
         :mode [:n]
         2 "<CMD>SearchReplaceSingleBufferSelections<CR>"
         :desc "SnR forward"}
        {1 "<leader>/"
         :mode [:v]
         2 "<CMD>SearchReplaceSingleBufferVisualSelection<CR>"
         :desc "SnR forward"}
        {1 "<leader>?"
         :mode [:n]
         2 "<CMD>SearchReplaceSingleBufferOpen<CR>"
         :desc "SnR backward"}
        {1 "<leader>?"
         :mode [:v]
         2 "<CMD>SearchReplaceWithinVisualSelection<CR>"
         :desc "SnR backward"}]}
