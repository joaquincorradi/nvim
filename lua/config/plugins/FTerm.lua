local setup, FTerm = pcall(require, "FTerm")
if not setup then
	return
end

FTerm.setup({
	border = "single", --single|double
	dimensions = {
		height = 0.9,
		width = 0.9,
	},
	ft = "FTerm",
	auto_close = true,
	blend = 10,

	vim.keymap.set("n", "<leader>.", '<CMD>lua require("FTerm").toggle()<CR>'),
	vim.keymap.set("t", "<leader>/", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>'),
})
