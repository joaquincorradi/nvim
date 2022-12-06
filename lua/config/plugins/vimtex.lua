local setup, vimtex = pcall(require, "vimtex")
if not setup then
	return
end

vimtex.setup()
