{1 "zbirenbaum/copilot.lua"
 :cmd "Copilot"
 :event :InsertEnter
 :config (fn []
           ((. (require :copilot) :setup) {:auto_trigger true
                                           :filetypes {:rust true :* false}}))
 :keys [{1 "<C-o>" 2 "<CMD>Copilot suggestion accept<CR>" :mode [:i]}
        {1 "<C-y>" 2 "<CMD>Copilot suggestion next<CR>" :mode [:i]}
        {1 "<C-g>" 2 "<CMD>Copilot suggestion prev<CR>" :mode [:i]}
        {1 "<C-f>" 2 "<CMD>Copilot suggestion dismiss<CR>" :mode [:i]}
        {1 "<leader>o"
         2 "<CMD>Copilot suggestion toggle_auto_trigger<CR>"
         :desc "Copilot"}]}
