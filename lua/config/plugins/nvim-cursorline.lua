local setup, nvimcursorline = pcall(require, "nvim-cursorline")
if not setup then
	return
end

nvimcursorline.setup({
	cursorline = {
		enable = true,
		timeout = 1000,
		number = false,
	},
	cursorword = {
		enable = false,
		min_length = 3,
		hl = { underline = true },
	},
})
