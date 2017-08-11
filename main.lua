function splitByLines(str)
	local lines = {}
	for s in str:gmatch("[^\r\n]+") do
		table.insert(lines, s)
	end
	return lines
end

local story = "test"
local file = io.open(story..".txt","r")
local rawStory = file:read("*all")
file:close()

local tokens = splitByLines(rawStory)

print(rawStory)

local running = true
local prompt = 1

while running do
	local tempspot = 1
	while tonumber(tokens[tempspot]) ~= prompt do
		if(tonumber(tokens[tempspot]) ~= prompt) then
			repeat
				tempspot = tempspot+1
			until tokens[tempspot] == "end"
		else
			break
		end
	end
	repeat
		print(tokens[tempspot])
		tempspot = tempspot+1
	until tokens[tempspot] == "end"
	input = io.read("*line")
end
