{1 :luukvbaal/statuscol.nvim
 :lazy true
 :opts {:relculright false
        :segments [{:text ["%s"] :click "v:lua.ScSa"}
                   {:text [(fn [args]
                             (let [line-count (_G.vim.api.nvim_buf_line_count args.buf)
                                   max-width (string.len (tostring line-count))]
                               (if (not= (_G.vim.fn.foldclosed args.lnum) -1)
                                   (string.format (.. "%" (tostring max-width)
                                                      "s")
                                                  " ")
                                   (string.format (.. "%" (tostring max-width)
                                                      "d")
                                                  args.lnum))))]}]}}
