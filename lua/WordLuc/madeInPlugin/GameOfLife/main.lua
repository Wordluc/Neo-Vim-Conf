local win = require("WordLuc.utils.window")

local parentSize = {
	x = vim.api.nvim_win_get_width(0),
	y = vim.api.nvim_win_get_height(0)
}
local childSize = {
	x = math.floor(parentSize.x * (1 - 0.30)),
	y = math.floor(parentSize.y * (1 - 0.30))
}
local childPosition = {
	y = vim.api.nvim_win_get_height(0) - childSize.y / 2 - parentSize.y / 2,
	x = vim.api.nvim_win_get_width(0) - childSize.x / 2 - parentSize.x / 2
}
local buf = win.open_buffer(childPosition, childSize)
win.fill_buffer(buf, "o")
win.write_pixel(buf, 1, 2)
