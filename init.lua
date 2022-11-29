-- Plugin setup:
require("config.plugins-setup")

-- General configs:
require("config.core.options")
require("config.core.keymaps")
require("config.core.colorscheme")

-- Plugins:
require("config.plugins.comment")
require("config.plugins.nvim-tree")
require("config.plugins.lualine")
require("config.plugins.telescope")
require("config.plugins.nvim-cmp")
require("config.plugins.lsp.mason")
require("config.plugins.lsp.lspsaga")
require("config.plugins.lsp.lspconfig")
require("config.plugins.lsp.null-ls")
require("config.plugins.autopairs")
require("config.plugins.treesitter")
require("config.plugins.gitsigns")