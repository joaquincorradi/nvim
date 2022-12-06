local opt = vim.opt
local g = vim.g

-- Line numbers:
opt.relativenumber = true
opt.number = true

-- Tab and indentetion:
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Line wrapping:
opt.wrap = false

-- Search settings
opt.ignorecase = true
opt.smartcase = true

-- Appearance:
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace:
opt.backspace = "indent,eol,start"

-- Clipboard:
opt.clipboard:append("unnamedplus")

-- Split windows
opt.splitright = true
opt.splitbelow = true

-- Italic comments
-- vim.api.nvim_set_hl("Comment", { italic = true })

-- Latex
g.vimtex_view_method = "zathura"
g.vimtex_compiler_method = "latexrun"
g.vimtex_quickfix_mode=0

opt.fileencoding = "utf8"
opt.iskeyword:append("-")
vim.notify = require("notify")
