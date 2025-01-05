{1 :chrisgrieser/nvim-chainsaw
 :lazy true
 :opts {}
 :keys [{1 "<leader>iv"
         2 (fn []
             ((. (require :chainsaw) :variableLog)))
         :desc "Variable"}
        {1 "<leader>io"
         2 (fn []
             ((. (require :chainsaw) :objectLog)))
         :desc "Object"}
        {1 "<leader>iy"
         2 (fn []
             ((. (require :chainsaw) :typeLog)))
         :desc "Type"}
        {1 "<leader>ia"
         2 (fn []
             ((. (require :chainsaw) :assertLog)))
         :desc "Assert"}
        {1 "<leader>ie"
         2 (fn []
             ((. (require :chainsaw) :emojiLog)))
         :desc "Emoji"}
        {1 "<leader>im"
         2 (fn []
             ((. (require :chainsaw) :messageLog)))
         :desc "Message"}
        {1 "<leader>it"
         2 (fn []
             ((. (require :chainsaw) :timeLog)))
         :desc "Time"}
        {1 "<leader>id"
         2 (fn []
             ((. (require :chainsaw) :debugLog)))
         :desc "Debug"}
        {1 "<leader>is"
         2 (fn []
             ((. (require :chainsaw) :stacktraceLog)))
         :desc "Stacktrace"}
        {1 "<leader>ic"
         2 (fn []
             ((. (require :chainsaw) :clearLog)))
         :desc "Clear"}
        {1 "<leader>ir"
         2 (fn []
             ((. (require :chainsaw) :removeLogs)))
         :desc "Remove"}]}
