-- Auto install packer if not installed:
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer()

-- Install update when saving:
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- Import packer safely:
local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	-----------
	-- Plugins:
	-----------

	-- Packer:
	use("wbthomason/packer.nvim")

	--Dependecies
	use("nvim-lua/plenary.nvim")
	use("nvim-tree/nvim-web-devicons")

	-- Themes:
	-- use("dracula/vim")
	use("Mofiqul/dracula.nvim")
	use("morhetz/gruvbox")
	use("bluz71/vim-nightfly-guicolors")

	-- Window management:
	use("christoomey/vim-tmux-navigator")
	use("szw/vim-maximizer")

	-- Comment:
	use("numToStr/Comment.nvim")

	-- File explorer:
	use("nvim-tree/nvim-tree.lua")

	-- Statusline:
	use("nvim-lualine/lualine.nvim")

	-- Telescope with fuzzy finder:
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

	-- Autocompletion:
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- Snippets:
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- Managing and installing LSP servers, linters and formatters:
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- LSP servers:
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("onsails/lspkind.nvim")

	-- Formatting and linting:
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	-- Treesitter:
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- Pairing:
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

	-- Git:
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

	-- Colorizer:
	use("norcalli/nvim-colorizer.lua")

	-- Cursor line
	use("yamatsum/nvim-cursorline")

	-- Smooth scroll
	use("karb94/neoscroll.nvim")

	-- Improve startup speed
	use("lewis6991/impatient.nvim")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
