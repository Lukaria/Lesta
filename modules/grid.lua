-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
local M = {}

function M.InitGrid()
	w, h = window.get_size()
	x = (w-720)/2+(144/2)
	y = h/5-72

	local X = {}
	local Y = {}
	for i = 1, 5 do
		X[i] = x
		x=x+144
	end

	for i = 1, 5 do
		Y[i] = y
		y = y+144
	end

	return X, Y
end

return M