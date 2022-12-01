vim.opt.termguicolors = true

local setup, bufferline = pcall(require, "bufferline")
if not setup then
	return
end

bufferline.setup({
	options = {
		offsets = {
			filetype = "NvimTree",
			text = "File Explorer",
			text_align = "center",
			separator = true,
		},
	},
})
