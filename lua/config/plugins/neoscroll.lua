local setup, neoscroll = pcall(require, "neoscroll")
if not setup then
	return
end

neoscroll.setup()
