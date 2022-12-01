-- local setup, nvimtree = pcall(require, "nvim-tree")
-- if not setup then
-- 	return
-- end

-- recommended settings from nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require("nvim-tree").setup({
	open_on_setup = true,
	create_in_closed_folder = true,
	sort_by = "name",
	git = {
		enable = true,
		ignore = false,
		show_on_dirs = true,
		show_on_open_dirs = true,
		timeout = 400,
	},
	view = {
		adaptive_size = true,
		hide_root_folder = false,
	},
	renderer = {
		highlight_opened_files = "name",
		indent_markers = {
			enable = true,
		},
		icons = {
			glyphs = {
				git = {
					unstaged = "﯂",
					staged = "",
					unmerged = "",
					renamed = "➜",
					untracked = "",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
	filters = {
		dotfiles = false,
	},
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
})
