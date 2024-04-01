--//Services//--
local RPS = game:GetService("ReplicatedStorage")
local ServerStorage = game:GetService("ServerStorage")

--//Modules//--
local Modules = ServerStorage.Modules
local Services = Modules.Services

--//Knit Setup//--
local Knit = require(RPS.Packages.Knit)

Knit.AddServices(Services)

Knit:Start()
	:andThen(function()
		print("Game Server started")
	end)
	:catch(warn)
