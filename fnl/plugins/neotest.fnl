{1 "nvim-neotest/neotest"
 :lazy true
 :dependencies ["rouge8/neotest-rust"
                "nvim-neotest/nvim-nio"
                "nvim-lua/plenary.nvim"
                "antoinemadec/FixCursorHold.nvim"
                "nvim-treesitter/nvim-treesitter"]
 :ft [:rust]
 :config (fn []
           (let [neotest (require :neotest)]
             (neotest.setup {:adapters [(require "neotest-rust")]})
             (_G.vim.api.nvim_create_autocmd "FileType"
                                             {:pattern ["neotest-output"
                                                        "neotest-summary"]
                                              :callback (fn []
                                                          (_G.vim.keymap.set :n
                                                                             "q"
                                                                             #(_G.vim.cmd "quit")
                                                                             {:buffer true
                                                                              :silent true}))})))}
