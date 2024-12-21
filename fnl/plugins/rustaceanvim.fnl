{1 "mrcjkb/rustaceanvim"
 :lazy true
 :ft [:rust]
 :config (fn []
           (set _G.vim.g.rustaceanvim
                {:dap {:adapter false
                       :configuration false
                       :autoload_configurations false}
                 :tools {:test_executor "neotest"
                         :hover_actions {:replace_builtin_hover true}
                         :code_actions {:ui_select_fallback false}}
                 :server {:auto_attach true
                          :load_vscode_settings true
                          :settings {"rust-analyzer" {:diagnostics {:disabled ["inactive-code"]}}}}}))
 :keys [{1 "<leader>ra"
         2 "<CMD>RustLsp codeAction<CR>"
         :desc "Code action"
         :ft :rust}
        {1 "<leader>rh"
         2 "<CMD>RustLsp hover actions<CR>"
         :desc "Hover actions"
         :ft :rust}
        {1 "<leader>rH"
         2 "<CMD>RustLsp hover range<CR>"
         :mode :v
         :desc "Hover range"
         :ft :rust}
        {1 "<leader>rr"
         2 "<CMD>RustLsp runnables<CR>"
         :desc "Runnables"
         :ft :rust}
        {1 "<leader>rR"
         2 "<CMD>RustLsp run<CR>"
         :desc "Run at cursor"
         :ft :rust}
        {1 "<leader>rm"
         2 "<CMD>RustLsp expandMacro<CR>"
         :desc "Expand macro"
         :ft :rust}
        {1 "<leader>rT"
         2 (fn []
             (let [neotest (require :neotest)]
               (neotest.run.run {:suite true})))
         :desc "Test entire project"
         :ft :rust}
        {1 "<leader>rt"
         2 (fn []
             (let [neotest (require :neotest)]
               (neotest.run.run)))
         :desc "Test"
         :ft :rust}
        {1 "<leader>rn"
         2 (fn []
             (let [neotest (require :neotest)]
               (neotest.output.open {:enter true})))
         :desc "Test output"
         :ft :rust}
        {1 "<leader>rN"
         2 (fn []
             (let [neotest (require :neotest)]
               (neotest.summary.toggle)))
         :desc "Test summary"
         :ft :rust}
        {1 "<leader>re"
         2 "<CMD>RustLsp explainError<CR>"
         :desc "Explain error"
         :ft :rust}
        {1 "<leader>rE"
         2 "<CMD>RustLsp renderDiagnostic<CR>"
         :desc "Render diagnostic"
         :ft :rust}
        {1 "<leader>rl"
         2 "<CMD>RustLsp relatedDiagnostics<CR>"
         :desc "Related diagnostics"
         :ft :rust}
        {1 "<leader>rc"
         2 "<CMD>RustLsp openCargo<CR>"
         :desc "Open Cargo.toml"
         :ft :rust}
        {1 "<leader>ro"
         2 "<CMD>RustLsp openDocs<CR>"
         :desc "Open docs"
         :ft :rust}
        {1 "<leader>rp"
         2 "<CMD>RustLsp parentModule<CR>"
         :desc "Parent module"
         :ft :rust}
        {1 "<leader>rs"
         2 "<CMD>RustLsp workspaceSymbol<CR>"
         :desc "Workspace symbol"
         :ft :rust}
        {1 "<leader>rS"
         2 "<CMD>RustLsp workspaceSymbol onlyTypes<CR>"
         :desc "Workspace symbol (types)"
         :ft :rust}
        {1 "<leader>rw"
         2 "<CMD>RustLsp workspaceSymbol allSymbols<CR>"
         :desc "Workspace symbol (all)"
         :ft :rust}
        {1 "<leader>rj"
         2 "<CMD>RustLsp joinLines<CR>"
         :desc "Join lines"
         :ft :rust}
        {1 "<leader>r/"
         2 (fn []
             (_G.vim.ui.input {:prompt "SSR Query: "}
                              (fn [input]
                                (when (and input (not= input ""))
                                  (_G.vim.cmd.RustLsp [:ssr input])))))
         :desc "Structural search replace"
         :ft :rust}
        {1 "<leader>r/"
         2 (fn []
             (_G.vim.ui.input {:prompt "SSR Query: "}
                              (fn [input]
                                (when (and input (not= input ""))
                                  (_G.vim.cmd.RustLsp [:ssr input])))))
         :mode :x
         :desc "Structural search replace (visual)"
         :ft :rust}
        {1 "<leader>rg"
         2 "<CMD>RustLsp crateGraph<CR>"
         :desc "Crate graph"
         :ft :rust}
        {1 "<leader>ry"
         2 "<CMD>RustLsp syntaxTree<CR>"
         :desc "Syntax tree"
         :ft :rust}
        {1 "<leader>rf"
         2 "<CMD>RustLsp flyCheck<CR>"
         :desc "FlyCheck run"
         :ft :rust}
        {1 "<leader>ru"
         2 "<CMD>RustLsp rebuildProcMacros<CR>"
         :desc "Rebuild proc macros"
         :ft :rust}
        {1 "<leader>rv"
         2 "<CMD>RustLsp view mir<CR>"
         :desc "View MIR"
         :ft :rust}
        {1 "<leader>rV"
         2 "<CMD>RustLsp view hir<CR>"
         :desc "View HIR"
         :ft :rust}
        {1 "<leader>rU"
         2 (fn []
             (let [opts [:hir
                         :mir
                         :normal
                         :expanded
                         :flowgraph
                         :everybody_loops
                         :thir-tree]]
               (_G.vim.ui.select opts {:prompt "Unpretty (choose option)?"}
                                 (fn [choice]
                                   (when choice
                                     (_G.vim.cmd.Rustc [:unpretty choice]))))))
         :desc "Rustc unpretty"
         :ft :rust}
        {1 "<leader>r["
         2 "<CMD>RustLsp moveItem up<CR>"
         :desc "Move item up"
         :ft :rust}
        {1 "<leader>r]"
         2 "<CMD>RustLsp moveItem down<CR>"
         :desc "Move item down"
         :ft :rust}]}
