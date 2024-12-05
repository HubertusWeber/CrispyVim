{1 :windwp/nvim-autopairs
 :lazy true
 :event :InsertEnter
 :config (fn []
           ((. (require :nvim-autopairs) :setup) {}))}
