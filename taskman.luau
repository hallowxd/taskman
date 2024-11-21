-- taskman
-- a task manager written in luau (with lune)

-- Copyright (C) 2024 hallowxd. All rights reserved. Licensed under
-- Source First License 1.1

-- dependencies
local process = require("@lune/process")
local stdio = require("@lune/stdio")
local net = require("@lune/net")
local task = require("@lune/task")
local fs = require("@lune/fs")

process.spawn(shell = true)
print("Running taskman on" .. process.os .. " with " .. process.arch .. ".")

-- Spawning a child process
local result = process.spawn("taskman", {
	"shell = true",
	""
})

--commands
local text: string = stdio.prompt("text", "new command line started")

-- starting tasks
local input = stdio.readToEnd(if result = "start task" then
    local text: string = stdio.prompt("multiselect", "Please select the task(s) you would like to run.")
    
stdio.defaultOrOptions( ..  ..))


-- for making requests to other computers
local networkAccess: boolean = stdio.prompt("confirm", "Do you want to allow taskman to connect to the internet? This is needed for remote task management. [y/n]")
local input = stdio.readToEnd(if result = "y" then 
    net.serve(10.0.0.0, function(request)
	return {
		status = 200,
		body = "Echo:\n" .. request.body,
	}
end))


-- task/process running and closing
task.spawn(function()
	print("Running instantly")
	task.wait(1)
	print("One second passed inside the task")
end)
