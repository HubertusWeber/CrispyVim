{1 "nvim-neotest/neotest"
 :dependencies ["rouge8/neotest-rust"
                "nvim-neotest/nvim-nio"
                "nvim-lua/plenary.nvim"
                "antoinemadec/FixCursorHold.nvim"
                "nvim-treesitter/nvim-treesitter"]
 :ft [:rust]
 :config (fn []
           (let [neotest (require :neotest)]
             (neotest.setup {:adapters [(require "neotest-rust")]})))}
