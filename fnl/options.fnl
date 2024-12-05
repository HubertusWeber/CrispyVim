(local vim _G.vim)

;; Disable welcome message
(set vim.opt.shortmess :I)

;; Make line numbers default
(set vim.opt.number true)

;; Don't show the mode, since it's already in the status line
(set vim.opt.showmode false)

;; Disable showing pressed keys in the lower right corner
(set vim.opt.showcmd false)

;; Sync clipboard between OS and Neovim.
;;  Schedule the setting after `UiEnter` because it can increase startup-time.
(vim.schedule (fn []
                (set vim.opt.clipboard :unnamedplus)))

;; Enable break indent
(set vim.opt.breakindent true)

;; Save undo history
(set vim.opt.undofile true)

;; Case-insensitive searching UNLESS \C or one or more capital letters in the search terms
(set vim.opt.ignorecase true)
(set vim.opt.smartcase true)

;; Keep signcolumn on by default
(set vim.opt.signcolumn :yes)

;; Decrease update time
(set vim.opt.updatetime 250)

;; Configure how new splits should be opened
(set vim.opt.splitright true)
(set vim.opt.splitbelow true)

;; Preview substitutions live, as you type!
(set vim.opt.inccommand :split)

;; Show which line your cursor is on
(set vim.opt.cursorline true)

;; Use block cursor in all modes
(set vim.opt.guicursor :a:block)

;; Minimal number of screen lines to keep above and below the cursor.
(set vim.opt.scrolloff 10)

;; Set tapstop to four like a normal f*cking person
(set vim.opt.tabstop 4)

;; Set one global statusline
(set vim.opt.laststatus 3)

;; Set lazy path
(: (. vim.opt :rtp) :prepend (.. (vim.fn.stdpath :data) "/lazy/lazy.nvim"))

;; Disable mouse inputs
(set vim.opt.mouse "")

;; Allows cursor to move one char past line end
(set vim.opt.virtualedit "onemore")
