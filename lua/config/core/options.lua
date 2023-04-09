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

-- Indentation plugin
vim.opt.list = true
vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")

-- Latex
g.vimtex_view_method = "zathura"
g.vimtex_compiler_method = "latexrun"
g.vimtex_quickfix_enabled = 0
g.vimtex_indent_enabled = 1
g.tex_flavor = "latex"

opt.fileencoding = "utf8"
opt.iskeyword:append("-")
vim.notify = require("notify")
