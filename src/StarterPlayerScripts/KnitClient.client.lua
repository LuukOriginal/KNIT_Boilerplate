--//Services//--
local RPS = game:GetService("ReplicatedStorage")

--//Modules//--
local Modules = RPS.Modules
local Controllers = Modules.Controllers

--//Knit Setup//--
local Knit = require(RPS.Packages.Knit)

Knit.AddControllers(Controllers)

Knit:Start()
	:andThen(function()
		print("Game Client Started")
	end)
	:catch(warn)
