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
-- Create autocmd for buttery smooth shutdown
-- ------------------------------------------
--
vim.api.nvim_create_autocmd("VimLeavePre", {
	callback = function()
		-- Force close all LSP clients (using current API)
		for _, client in pairs(vim.lsp.get_clients()) do
			vim.lsp.stop_client(client.id, true)
		end

		-- Force close all terminal buffers
		for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
			if vim.bo[bufnr].buftype == "terminal" then
				vim.api.nvim_buf_delete(bufnr, { force = true })
			end
		end

		-- Clean up Neovim's job control
		local jobs = vim.fn.joblist()
		for _, job in ipairs(jobs) do
			vim.fn.jobstop(job)
		end

		-- Cancel any active timers
		if vim.timers then
			for _, timer in pairs(vim.timers) do
				if timer:is_active() then
					timer:stop()
				end
			end
		end

		-- Close all floating windows
		for _, win in ipairs(vim.api.nvim_list_wins()) do
			if vim.api.nvim_win_get_config(win).relative ~= "" then
				vim.api.nvim_win_close(win, true)
			end
		end

		-- Clear quickfix and location lists
		vim.cmd("cclose")
		vim.cmd("lclose")

		-- Stop all treesitter parsers
		if vim.treesitter then
			for _, buf in ipairs(vim.api.nvim_list_bufs()) do
				if vim.treesitter.highlighter.active[buf] then
					vim.treesitter.stop(buf)
				end
			end
		end

		-- Force garbage collection
		collectgarbage("collect")
	end,
	group = vim.api.nvim_create_augroup("CleanupOnExit", { clear = true }),
})

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
