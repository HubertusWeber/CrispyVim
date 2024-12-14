--- ==========================================
-- This Lua file bootstraps the Neovim config,
-- preparing the runtime and ensuring ahead-of-
-- time compiled Fennel code (via hotpot) and
-- essential plugins like lazy.nvim are ready.
-- ==========================================-
--
-- ------------------------------------------
-- Set variables that have to be set first
-- ------------------------------------------
-- --
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

--
-- ------------------------------------------
-- Lazy.nvim bootstrapping and hotpot setup
-- ------------------------------------------
--
local function ensure_installed(plugin, branch)
	local _, repo = string.match(plugin, "(.+)/(.+)")
	local repo_path = vim.fn.stdpath("data") .. "/lazy/" .. repo
	if not (vim.uv or vim.loop).fs_stat(repo_path) then
		vim.notify("Installing " .. plugin .. " " .. branch)
		local repo_url = "https://github.com/" .. plugin .. ".git"
		local out = vim.fn.system({
			"git",
			"clone",
			"--filter=blob:none",
			"--branch=" .. branch,
			repo_url,
			repo_path,
		})
		if vim.v.shell_error ~= 0 then
			vim.api.nvim_echo({
				{ "Failed to clone " .. plugin .. ":\n", "ErrorMsg" },
				{ out, "WarningMsg" },
				{ "\nPress any key to exit..." },
			}, true, {})
			vim.fn.getchar()
			os.exit(1)
		end
	end
	return repo_path
end
local lazy_path = ensure_installed("folke/lazy.nvim", "stable")
local hotpot_path = ensure_installed("rktjmp/hotpot.nvim", "v0.14.6")
vim.opt.runtimepath:prepend({ hotpot_path, lazy_path })
vim.loader.enable()

--
-- ------------------------------------------
-- Load the actual conf written in Fennel
-- ------------------------------------------
--
require("options")
require("keymaps")
require("lazy-plugins")
