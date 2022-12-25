-- i leave the scripts open source
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

game.StarterGui:SetCore("SendNotification", {Title = "hi", Text = "Im quandale dingle", Duration = 8,})

local Window = Rayfield:CreateWindow({
	Name = "BobloxHecker's doors gui",
	LoadingTitle = "Welcom XD",
	LoadingSubtitle = "by BobloxHecker",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil,
		FileName = "DoorsGui"
	},
        Discord = {
        	Enabled = false,
        	Invite = "fjhk",
        	RememberJoins = true
        },
	KeySystem = false,
	KeySettings = {
		Title = "Sirius Hub",
		Subtitle = "Key System",
		Note = "",
		FileName = "SiriusKey",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = "Hello"
	}
})

local Tab = Window:CreateTab("Custom Items", 4483362458)

local Button = Tab:CreateButton({
	Name = "Get Road Sign",
	Callback = function()
        game:GetObjects("rbxassetid://368743404")[1].Parent = game.Players.LocalPlayer.Backpack
	end,
})

local Button = Tab:CreateButton({
	Name = "Get Torch",
	Callback = function()
        game:GetObjects("rbxassetid://3499523244")[1].Parent = game.Players.LocalPlayer.Backpack
	end,
})

local Button = Tab:CreateButton({
	Name = "Get Pistol",
	Callback = function()
        game:GetObjects("rbxassetid://8640678553")[1].Parent = game.Players.LocalPlayer.Backpack
	end,
})

local Button = Tab:CreateButton({
	Name = "Get Candle",
	Callback = function()
        game:GetObjects("rbxassetid://2301545900")[1].Parent = game.Players.LocalPlayer.Backpack
	end,
})

local Button = Tab:CreateButton({
	Name = "Get Sword",
	Callback = function()
        game:GetObjects("rbxassetid://47433")[1].Parent = game.Players.LocalPlayer.Backpack
	end,
})

local Button = Tab:CreateButton({
	Name = "Get Bloxy Cola",
	Callback = function()
        game:GetObjects("rbxassetid://66071183")[1].Parent = game.Players.LocalPlayer.Backpack
	end,
})

local Button = Tab:CreateButton({
	Name = "Get Milk",
	Callback = function()
        game:GetObjects("rbxassetid://8466449126")[1].Parent = game.Players.LocalPlayer.Backpack
	end,
})

local Label = Tab:CreateLabel("Thats all lol")

local Tab = Window:CreateTab("Character", 4483362458)

local Slider = Tab:CreateSlider({
	Name = "WalkSpeed",
	Range = {0, 1000},
	Increment = 1,
	Suffix = "WalkSpeed",
	CurrentValue = 16,
	Flag = "Slider1",
	Callback = function(ws)
		game.Players.LocalPlayer.Character.WalkSpeed = ws
	end,
})

local Slider = Tab:CreateSlider({
	Name = "JumpPower",
	Range = {0, 250},
	Increment = 1,
	Suffix = "JumpPower",
	CurrentValue = 0,
	Flag = "Slider2",
	Callback = function(jp)
		game.Players.LocalPlayer.Character.JumpPower = jp
	end,
})

local Button = Tab:CreateButton({
	Name = "Reset",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end,
})

local Button = Tab:CreateButton({
	Name = "Heal",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.Health = 100
	end,
})

local Button = Tab:CreateButton({
	Name = "Sit",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.Sit = true
	end,
})

local Tab = Window:CreateTab("Entities", 4483362458)

local Button = Tab:CreateButton({
	Name = "Screech",
	Callback = function()
		require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
        workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
	end,
})

local Button = Tab:CreateButton({
	Name = "Halt",
	Callback = function()
		require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
        workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
	end,
})

local Button = Tab:CreateButton({
	Name = "Glich",
	Callback = function()
        require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
        workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])
	end,
})

local Tab = Window:CreateTab("Tools", 4483362458) -- Title, Image

local Input = Tab:CreateInput({
	Name = "Message",
	PlaceholderText = "Message",
	RemoveTextAfterFocusLost = false,
	Callback = function(txt)
		firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, txt)
	end,
})

local Tab = Window:CreateTab("Doors items", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
	Name = "Get Crucifix(NOT WORKS)",
	Callback = function()
		game:GetObjects("rbxassetid://11712848097")[1].Parent = game.Players.LocalPlayer.Backpack
	end,
})

local Button = Tab:CreateButton({
	Name = "Get Skeleton Key(NOT WORKS)",
	Callback = function()
		game:GetObjects("rbxassetid://11538858761")[1].Parent = game.Players.LocalPlayer.Backpack
	end,
})


local Tab = Window:CreateTab("Settings", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
	Name = "Destroy GUI",
	Callback = function()
		Rayfield:Destroy()
	end,
})
