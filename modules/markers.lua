-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.

local M = {}
local up = 0
local right = 0
local left = 0
local down = 0

local RIGHT = hash("right")
local LEFT = hash("left")
local UP = hash("up")
local DOWN = hash("down")

function M.enter(group)
	if group == RIGHT then right = right + 1
	elseif group == UP then up = up + 1
	elseif group == LEFT then left =left + 1
	elseif group == DOWN then down = down + 1
	end
end

function M.exit(group)
	if group == RIGHT then right = right - 1
	elseif group == UP then up = up - 1
	elseif group == LEFT then left = left - 1
	elseif group == DOWN then down = down - 1
	end
end

function M.getRight()
	return right
end

function M.getLeft()
	return left
end

function M.getUp()
	return up
end

function M.getDown()
	return down
end

return M

