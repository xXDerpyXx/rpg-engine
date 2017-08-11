function splitByLines(str)
	local lines = {}
	for s in str:gmatch("[^\r\n]+") do
		table.insert(lines, s)
	end
	return lines
end

function trim(s)
  return s:match'^()%s*$' and '' or s:match'^%s*(.*%S)'
end

print("file name:")
input = io.read("*line")
if string.sub(input,-4) ~= ".txt" then
	input = input..".txt"
end
local story = input
local file = io.open(story,"r")
local rawStory = file:read("*all")
file:close()

local tokens = splitByLines(rawStory)

--print(rawStory)

local running = true
local prompt = 1

while running do
	local tempspot = 1
	while tokens[tempspot] ~= "prompt "..prompt do
		if tokens[tempspot] == "prompt "..prompt then
			break
		end
		tempspot = tempspot+1
	end
	
	local options = {}
	local outcomes = {}
	
		print("\n\n\n\n\n\n\n\n\n\n\n")
		tempspot = tempspot+1
		print(tokens[tempspot])
		tempspot = tempspot+1
		
		local optionCount = 0
	repeat
		table.insert(options,tokens[tempspot])
		optionCount = optionCount+1
		print(optionCount..":"..tokens[tempspot])
		tempspot = tempspot+1
		table.insert(outcomes,tokens[tempspot])
		--print(optionCount..":"..tokens[tempspot])
		tempspot = tempspot+1
	until tokens[tempspot] == "end"
	input = ""
	while options[tonumber(input)]==nil do
		input = io.read("*line")
	end
	prompt = outcomes[tonumber(input)]
	if prompt == "endstory" then
		running = false
		break
	end
end
