{1 :folke/trouble.nvim
 :opts {}
 :cmd "Trouble"
 :keys [{1 "<leader>xx"
         2 "<CMD>Trouble diagnostics toggle<CR>"
         :desc "Diagnostics"}
        {1 "<leader>xn"
         2 "<CMD>Trouble diagnostics toggle filter.buf=0<CR>"
         :desc "Buffer Diagnostics"}
        {1 "<leader>xm"
         2 "<CMD>Trouble symbols toggle focus=false<CR>"
         :desc "Symbols"}
        {1 "<leader>xe"
         2 "<CMD>Trouble lsp toggle focus=false win.position=right<CR>"
         :desc "LSP Diagnostics"}
        {1 "<leader>xl"
         2 "<CMD>Trouble loclist toggle<CR>"
         :desc "Location List"}
        {1 "<leader>xi"
         2 "<CMD>Trouble qflist toggle<CR>"
         :desc "Quickfix List "}]}
