((. (require :lazy) :setup) [{:import :plugins}]
                            {:performance {:rtp {:disabled_plugins [:gzip
                                                                    :matchit
                                                                    :netrwPlugin
                                                                    :tarPlugin
                                                                    :tohtml
                                                                    :tutor
                                                                    :zipPlugin]}}
                             :change_detection {:enabled false}})
