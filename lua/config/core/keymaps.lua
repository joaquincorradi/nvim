-- Leader:
vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-------------------
-- General keymaps:
-------------------

-- Clear search results:
keymap.set("n", "<leader>ch", ":nohl<CR>", opts)

-- Increment/decrement numbers:
keymap.set("n", "<leader>+", "<C-a>", opts) -- increment
keymap.set("n", "<leader>-", "<C-x>", opts) -- decrement

-- Window management:
keymap.set("n", "<leader>sv", "<C-w>v", opts) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", opts) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width & height
keymap.set("n", "<leader>sc", ":close<CR>", opts) -- close current split window
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- toggle split window maximization

-- Tabs
-- keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
-- keymap.set("n", "<leader>tc", ":tabclose<CR>") -- close current tab
-- keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
-- keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab
-- keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

keymap.set("n", "<leader>tc", ":bdelete<CR>", opts) -- close current tab
keymap.set("n", "<tab>", ":BufferLineCycleNext<CR>", opts) --  go to next tab
keymap.set("n", "<S-tab>", ":BufferLineCyclePrev<CR>", opts) --  go to previous tab | deleted for delay, need to try betterescape
-- keymap.set("n", "<leader>tp", ":BufferLineCyclePrev<CR>", opts) --  go to previous tab

-- Saving:
keymap.set("n", "<leader>w", ":w<CR>", opts)
keymap.set("n", "<leader>q", ":q<CR>", opts)
keymap.set("n", "<leader>wq", ":wq<CR>", opts)

-- Add semicolon and coma at the end
keymap.set("n", "<leader>;", "$a;<Esc>")
keymap.set("n", "<leader>,", "$a,<Esc>")

-- Nvim-tree:
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts) -- toggle file explorer

-- Telescope:
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts) -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", opts) -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", opts) -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts) -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts) -- list available help tags

-- Toggleterm
keymap.set("n", "<leader>.", ":ToggleTerm<CR>", opts)
keymap.set("t", "<leader>.", "<C-\\><C-n>:ToggleTerm<CR>", opts)

-- Vimtex
keymap.set("n", "<leader>x", ":w<CR>:VimtexCompile<CR>", opts)
