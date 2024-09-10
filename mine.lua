local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local Version = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local PlayerTab = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local NoclipButton = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Speed50Button = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local FlyButton = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local InfJump = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local PlayerTab_2 = Instance.new("TextLabel")
local UICorner_9 = Instance.new("UICorner")
local EspButton = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local TracesButton = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local RTXButton = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local FPSBoostButton = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local FOV120 = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local XRayButton = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
	Title = "Universal-Hub Mobile";
	Text = "Script loaded sucsess!";
	Icon = "rbxassetid://25398721";
	Duration = 5;
})

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.449406147, 0, 0.0812752396, 0)
Main.Size = UDim2.new(0, 240, 0, 306)
Main.Active = true
Main.Draggable = true

UICorner.CornerRadius = UDim.new(0.100000001, 0)
UICorner.Parent = Main

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 240, 0, 34)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "AngelDeath_Official"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16.000

UICorner_2.CornerRadius = UDim.new(1, 0)
UICorner_2.Parent = Title

Version.Name = "Version"
Version.Parent = Main
Version.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Version.BorderColor3 = Color3.fromRGB(0, 0, 0)
Version.BorderSizePixel = 0
Version.Position = UDim2.new(0.0425454453, 0, 0.922674656, 0)
Version.Size = UDim2.new(0, 219, 0, 23)
Version.Font = Enum.Font.SourceSansBold
Version.Text = ""
Version.TextColor3 = Color3.fromRGB(43, 43, 43)
Version.TextSize = 13.000

UICorner_3.CornerRadius = UDim.new(2, 1)
UICorner_3.Parent = Version

PlayerTab.Name = "PlayerTab"
PlayerTab.Parent = Main
PlayerTab.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
PlayerTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerTab.BorderSizePixel = 0
PlayerTab.Position = UDim2.new(0.351229221, 0, 0.116062962, 0)
PlayerTab.Size = UDim2.new(0, 69, 0, 30)
PlayerTab.Font = Enum.Font.SourceSansBold
PlayerTab.Text = "Player"
PlayerTab.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerTab.TextSize = 25.000
PlayerTab.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(1, 0)
UICorner_4.Parent = PlayerTab

NoclipButton.Name = "NoclipButton"
NoclipButton.Parent = Main
NoclipButton.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
NoclipButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
NoclipButton.BorderSizePixel = 0
NoclipButton.Position = UDim2.new(0.0541665405, 0, 0.215970188, 0)
NoclipButton.Size = UDim2.new(0, 99, 0, 33)
NoclipButton.Font = Enum.Font.SourceSans
NoclipButton.Text = "Noclip"
NoclipButton.TextColor3 = Color3.fromRGB(255, 255, 255)
NoclipButton.TextSize = 14.000

NoclipButton.MouseButton1Down:Connect(function()
	local Noclip = nil
	local Clip = nil

	function Noclip()
		Clip = false
		local function Nocl()
			if Clip == false and game.Players.LocalPlayer.Character ~= nil then
				for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
						v.CanCollide = false
					end
				end
			end
			wait(0.21) -- basic optimization
		end
		Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
	end

	function Clip()
		if Noclip then Noclip:Disconnect() end
		Clip = true
	end

	Noclip() -- to toggle noclip() and clip()
end)

UICorner_5.CornerRadius = UDim.new(0.300000012, 0)
UICorner_5.Parent = NoclipButton

Speed50Button.Name = "Speed50Button"
Speed50Button.Parent = Main
Speed50Button.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Speed50Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Speed50Button.BorderSizePixel = 0
Speed50Button.Position = UDim2.new(0.537499845, 0, 0.215970188, 0)
Speed50Button.Size = UDim2.new(0, 99, 0, 33)
Speed50Button.Font = Enum.Font.SourceSans
Speed50Button.Text = "Speed (50)"
Speed50Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed50Button.TextSize = 14.000

Speed50Button.MouseButton1Down:Connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
end)

UICorner_6.CornerRadius = UDim.new(0.300000012, 0)
UICorner_6.Parent = Speed50Button

FlyButton.Name = "FlyButton"
FlyButton.Parent = Main
FlyButton.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
FlyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlyButton.BorderSizePixel = 0
FlyButton.Position = UDim2.new(0.537499845, 0, 0.341078609, 0)
FlyButton.Size = UDim2.new(0, 99, 0, 33)
FlyButton.Font = Enum.Font.SourceSans
FlyButton.Text = "Enable Fly (PC, E)"
FlyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FlyButton.TextSize = 14.500

FlyButton.MouseButton1Down:Connect(function()
	repeat wait() 
	until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
	local mouse = game.Players.LocalPlayer:GetMouse() 
	repeat wait() until mouse
	local plr = game.Players.LocalPlayer 
	local torso = plr.Character.Head 
	local flying = false
	local deb = true 
	local ctrl = {f = 0, b = 0, l = 0, r = 0} 
	local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
	local maxspeed = 50 
	local speed = 0 

	function Fly() 
		local bg = Instance.new("BodyGyro", torso) 
		bg.P = 9e4 
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
		bg.cframe = torso.CFrame 
		local bv = Instance.new("BodyVelocity", torso) 
		bv.velocity = Vector3.new(0,0.1,0) 
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
		repeat wait() 
			plr.Character.Humanoid.PlatformStand = true 
			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
				speed = speed+.5+(speed/maxspeed) 
				if speed > maxspeed then 
					speed = maxspeed 
				end 
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
				speed = speed-1 
				if speed < 0 then 
					speed = 0 
				end 
			end 
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
			else 
				bv.velocity = Vector3.new(0,0.1,0) 
			end 
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*300*speed/maxspeed),0,0) 
		until not flying 
		ctrl = {f = 0, b = 0, l = 0, r = 0} 
		lastctrl = {f = 0, b = 0, l = 0, r = 0} 
		speed = 0 
		bg:Destroy() 
		bv:Destroy() 
		plr.Character.Humanoid.PlatformStand = false 
	end 
	mouse.KeyDown:connect(function(key) 
		if key:lower() == "e" then 
			if flying then flying = false 
			else 
				flying = true 
				Fly() 
			end 
		elseif key:lower() == "w" then 
			ctrl.f = 1 
		elseif key:lower() == "s" then 
			ctrl.b = -1 
		elseif key:lower() == "a" then 
			ctrl.l = -1 
		elseif key:lower() == "d" then 
			ctrl.r = 1 
		end 
	end) 
	mouse.KeyUp:connect(function(key) 
		if key:lower() == "w" then 
			ctrl.f = 0 
		elseif key:lower() == "s" then 
			ctrl.b = 0 
		elseif key:lower() == "a" then 
			ctrl.l = 0 
		elseif key:lower() == "d" then 
			ctrl.r = 0 
		end 
	end)
	Fly()
end)

UICorner_7.CornerRadius = UDim.new(0.300000012, 0)
UICorner_7.Parent = FlyButton

InfJump.Name = "InfJump"
InfJump.Parent = Main
InfJump.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
InfJump.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfJump.BorderSizePixel = 0
InfJump.Position = UDim2.new(0.0541665405, 0, 0.341078609, 0)
InfJump.Size = UDim2.new(0, 99, 0, 33)
InfJump.Font = Enum.Font.SourceSans
InfJump.Text = "Inf Jump"
InfJump.TextColor3 = Color3.fromRGB(255, 255, 255)
InfJump.TextSize = 14.000

InfJump.MouseButton1Down:Connect(function()
	game:GetService("UserInputService").JumpRequest:connect(function()
		if InfJump then
			game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
		end
	end)
end)

UICorner_8.CornerRadius = UDim.new(0.300000012, 0)
UICorner_8.Parent = InfJump

PlayerTab_2.Name = "PlayerTab"
PlayerTab_2.Parent = Main
PlayerTab_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
PlayerTab_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerTab_2.BorderSizePixel = 0
PlayerTab_2.Position = UDim2.new(0.355395883, 0, 0.461584955, 0)
PlayerTab_2.Size = UDim2.new(0, 69, 0, 30)
PlayerTab_2.Font = Enum.Font.SourceSansBold
PlayerTab_2.Text = "Visuals"
PlayerTab_2.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerTab_2.TextSize = 25.000
PlayerTab_2.TextWrapped = true

UICorner_9.CornerRadius = UDim.new(1, 0)
UICorner_9.Parent = PlayerTab_2

EspButton.Name = "EspButton"
EspButton.Parent = Main
EspButton.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
EspButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
EspButton.BorderSizePixel = 0
EspButton.Position = UDim2.new(0.0499998741, 0, 0.562424421, 0)
EspButton.Size = UDim2.new(0, 99, 0, 33)
EspButton.Font = Enum.Font.SourceSans
EspButton.Text = "Esp"
EspButton.TextColor3 = Color3.fromRGB(255, 255, 255)
EspButton.TextSize = 14.000

EspButton.MouseButton1Down:Connect(function()
	local Settings = {
		Box_Color = Color3.fromRGB(255, 0, 0),
		Tracer_Color = Color3.fromRGB(255, 0, 0),
		Tracer_Thickness = 1,
		Box_Thickness = 1,
		Tracer_Origin = "Bottom", -- Middle or Bottom if FollowMouse is on this won't matter...
		Tracer_FollowMouse = false,
		Tracers = true
	}
	local Team_Check = {
		TeamCheck = false, -- if TeamColor is on this won't matter...
		Green = Color3.fromRGB(0, 255, 0),
		Red = Color3.fromRGB(255, 0, 0)
	}
	local TeamColor = true

	--// SEPARATION
	local player = game:GetService("Players").LocalPlayer
	local camera = game:GetService("Workspace").CurrentCamera
	local mouse = player:GetMouse()

	local function NewQuad(thickness, color)
		local quad = Drawing.new("Quad")
		quad.Visible = false
		quad.PointA = Vector2.new(0,0)
		quad.PointB = Vector2.new(0,0)
		quad.PointC = Vector2.new(0,0)
		quad.PointD = Vector2.new(0,0)
		quad.Color = color
		quad.Filled = false
		quad.Thickness = thickness
		quad.Transparency = 1
		return quad
	end

	local function NewLine(thickness, color)
		local line = Drawing.new("Line")
		line.Visible = false
		line.From = Vector2.new(0, 0)
		line.To = Vector2.new(0, 0)
		line.Color = color 
		line.Thickness = thickness
		line.Transparency = 1
		return line
	end

	local function Visibility(state, lib)
		for u, x in pairs(lib) do
			x.Visible = state
		end
	end

	local function ToColor3(col) --Function to convert, just cuz c;
		local r = col.r --Red value
		local g = col.g --Green value
		local b = col.b --Blue value
		return Color3.new(r,g,b); --Color3 datatype, made of the RGB inputs
	end

	local black = Color3.fromRGB(0, 0 ,0)
	local function ESP(plr)
		local library = {
			--//Tracer and Black Tracer(black border)
			blacktracer = NewLine(Settings.Tracer_Thickness*2, black),
			tracer = NewLine(Settings.Tracer_Thickness, Settings.Tracer_Color),
			--//Box and Black Box(black border)
			black = NewQuad(Settings.Box_Thickness*2, black),
			box = NewQuad(Settings.Box_Thickness, Settings.Box_Color),
			--//Bar and Green Health Bar (part that moves up/down)
			healthbar = NewLine(3, black),
			greenhealth = NewLine(1.5, black)
		}

		local function Colorize(color)
			for u, x in pairs(library) do
				if x ~= library.healthbar and x ~= library.greenhealth and x ~= library.blacktracer and x ~= library.black then
					x.Color = color
				end
			end
		end

		local function Updater()
			local connection
			connection = game:GetService("RunService").RenderStepped:Connect(function()
				if plr.Character ~= nil and plr.Character:FindFirstChild("Humanoid") ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and plr.Character.Humanoid.Health > 0 and plr.Character:FindFirstChild("Head") ~= nil then
					local HumPos, OnScreen = camera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
					if OnScreen then
						local head = camera:WorldToViewportPoint(plr.Character.Head.Position)
						local DistanceY = math.clamp((Vector2.new(head.X, head.Y) - Vector2.new(HumPos.X, HumPos.Y)).magnitude, 2, math.huge)

						local function Size(item)
							item.PointA = Vector2.new(HumPos.X + DistanceY, HumPos.Y - DistanceY*2)
							item.PointB = Vector2.new(HumPos.X - DistanceY, HumPos.Y - DistanceY*2)
							item.PointC = Vector2.new(HumPos.X - DistanceY, HumPos.Y + DistanceY*2)
							item.PointD = Vector2.new(HumPos.X + DistanceY, HumPos.Y + DistanceY*2)
						end
						Size(library.box)
						Size(library.black)

						--// Health Bar
						local d = (Vector2.new(HumPos.X - DistanceY, HumPos.Y - DistanceY*2) - Vector2.new(HumPos.X - DistanceY, HumPos.Y + DistanceY*2)).magnitude 
						local healthoffset = plr.Character.Humanoid.Health/plr.Character.Humanoid.MaxHealth * d

						library.greenhealth.From = Vector2.new(HumPos.X - DistanceY - 4, HumPos.Y + DistanceY*2)
						library.greenhealth.To = Vector2.new(HumPos.X - DistanceY - 4, HumPos.Y + DistanceY*2 - healthoffset)

						library.healthbar.From = Vector2.new(HumPos.X - DistanceY - 4, HumPos.Y + DistanceY*2)
						library.healthbar.To = Vector2.new(HumPos.X - DistanceY - 4, HumPos.Y - DistanceY*2)

						local green = Color3.fromRGB(0, 255, 0)
						local red = Color3.fromRGB(255, 0, 0)

						library.greenhealth.Color = red:lerp(green, plr.Character.Humanoid.Health/plr.Character.Humanoid.MaxHealth);

						if Team_Check.TeamCheck then
							if plr.TeamColor == player.TeamColor then
								Colorize(Team_Check.Green)
							else 
								Colorize(Team_Check.Red)
							end
						else 
							library.tracer.Color = Settings.Tracer_Color
							library.box.Color = Settings.Box_Color
						end
						if TeamColor == true then
							Colorize(plr.TeamColor.Color)
						end
						Visibility(true, library)
					else 
						Visibility(false, library)
					end
				else 
					Visibility(false, library)
					if game.Players:FindFirstChild(plr.Name) == nil then
						connection:Disconnect()
					end
				end
			end)
		end
		coroutine.wrap(Updater)()
	end

	for i, v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Name ~= player.Name then
			coroutine.wrap(ESP)(v)
		end
	end

	game.Players.PlayerAdded:Connect(function(newplr)
		if newplr.Name ~= player.Name then
			coroutine.wrap(ESP)(newplr)
		end
	end)
end)

UICorner_10.CornerRadius = UDim.new(0.300000012, 0)
UICorner_10.Parent = EspButton

TracesButton.Name = "TracesButton"
TracesButton.Parent = Main
TracesButton.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
TracesButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TracesButton.BorderSizePixel = 0
TracesButton.Position = UDim2.new(0.533333182, 0, 0.562424421, 0)
TracesButton.Size = UDim2.new(0, 99, 0, 33)
TracesButton.Font = Enum.Font.SourceSans
TracesButton.Text = "Traces"
TracesButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TracesButton.TextSize = 14.000

TracesButton.MouseButton1Down:Connect(function()
	local TargetPartName = "HumanoidRootPart"
	local GenericHumanoidTargetPartName = TargetPartName	
	local LineColor = Color3.new(255, 255, 255)
	local TeammateLineColor = Color3.new(0, 0.25, 1)
	local GenericHumanoidLineColor = Color3.new(1, 0, 0)
	local LineWidth = 0.1
	local DrawTeammates = true
	local FindHumanoids = true
	local GetLineOrigin = function(Camera)
		return Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y*.9)
	end




	local Camera = workspace.CurrentCamera
	local LineOrigin = nil
	Camera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
		LineOrigin = GetLineOrigin(Camera)
	end)
	LineOrigin = GetLineOrigin(Camera)


	local Gui = Instance.new("ScreenGui")
	Gui.Name = "SnaplineGui"
	Gui.Parent = game.Players.LocalPlayer.PlayerGui
	local Lines = {}


	function Setline(Line, Width, Color, Origin, Destination)
		local Position = (Origin + Destination) / 2
		Line.Position = UDim2.new(0, Position.X, 0, Position.Y)
		local Length = (Origin - Destination).Magnitude
		Line.BackgroundColor3 = Color
		Line.BorderColor3 = Color
		Line.Size = UDim2.new(0, Length, 0, Width)
		Line.Rotation = math.deg(math.atan2(Destination.Y - Origin.Y, Destination.X - Origin.X))
	end


	game:GetService("RunService").RenderStepped:Connect(function()
		local Targets = {}
		for i, Player in pairs(game.Players:GetPlayers()) do
			if Player == game.Players.LocalPlayer then continue end
			local IsTeammate = game.Players.LocalPlayer.Team ~= nil and Player.Team == game.Players.LocalPlayer.Team
			if not DrawTeammates and IsTeammate then continue end
			local Character = Player.Character
			if not Character then continue end
			local TargetPart = Character:FindFirstChild(TargetPartName)
			if not TargetPart then continue end
			local ScreenPoint, OnScreen = Camera:WorldToScreenPoint(TargetPart.Position)
			if OnScreen then
				table.insert(Targets, {Vector2.new(ScreenPoint.X, ScreenPoint.Y), IsTeammate and TeammateLineColor or LineColor})
			end
		end
		if FindHumanoids then
			for _, Obj in pairs(workspace:GetDescendants()) do
				if Obj.ClassName ~= "Humanoid" then continue end
				if game.Players:FindFirstChild(Obj.Parent.Name) then continue end
				local TargetPart = Obj.Parent:FindFirstChild(TargetPartName)
				if not TargetPart then continue end
				local ScreenPoint, OnScreen = Camera:WorldToScreenPoint(TargetPart.Position)
				if OnScreen then
					table.insert(Targets, {Vector2.new(ScreenPoint.X, ScreenPoint.Y), GenericHumanoidLineColor})
				end
			end
		end
		if #Targets > #Lines then
			local NewLine = Instance.new("Frame")
			NewLine.Name = "Snapline"
			NewLine.AnchorPoint = Vector2.new(.5, .5)
			NewLine.Parent = Gui
			table.insert(Lines, NewLine)
		end
		for i, Line in pairs(Lines) do
			local TargetData = Targets[i]
			if not TargetData then
				Line:Destroy()
				table.remove(Lines, i)
				continue
			end
			Setline(Line, LineWidth, TargetData[2], LineOrigin, TargetData[1])
		end
	end)
end)

UICorner_11.CornerRadius = UDim.new(0.300000012, 0)
UICorner_11.Parent = TracesButton

RTXButton.Name = "RTXButton"
RTXButton.Parent = Main
RTXButton.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
RTXButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
RTXButton.BorderSizePixel = 0
RTXButton.Position = UDim2.new(0.533333182, 0, 0.687532842, 0)
RTXButton.Size = UDim2.new(0, 99, 0, 33)
RTXButton.Font = Enum.Font.SourceSans
RTXButton.Text = "RTX Graphics (GUI)"
RTXButton.TextColor3 = Color3.fromRGB(255, 255, 255)
RTXButton.TextSize = 14.000

RTXButton.MouseButton1Down:Connect(function()
	game:GetService("StarterGui"):SetCore("SendNotification", { 
		Title = "RTX GUI";
		Text = "Made by armengeimsss";
		Icon = "rbxthumb://type=Asset&id=12361535956&w=150&h=150"})
	Duration = 16;

	Duration = 16;

	local RTXGUI = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local UICorner_2 = Instance.new("UICorner")
	local Morning = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local Afternoon = Instance.new("TextButton")
	local UICorner_4 = Instance.new("UICorner")
	local Evening = Instance.new("TextButton")
	local UICorner_5 = Instance.new("UICorner")
	local Close = Instance.new("TextButton")
	local UICorner_6 = Instance.new("UICorner")
	local Credits = Instance.new("TextLabel")
	local UICorner_7 = Instance.new("UICorner")
	local Night = Instance.new("TextButton")
	local UICorner_8 = Instance.new("UICorner")
	local Stop = Instance.new("TextButton")
	local UICorner_9 = Instance.new("UICorner")
	local ts = game:GetService("TeleportService")
	local p = game:GetService("Players").LocalPlayer

	--Properties:

	RTXGUI.Name = "RTX GUI"
	--RTXGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	RTXGUI.Parent = game:GetService('CoreGui')
	RTXGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = RTXGUI
	Frame.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
	Frame.Position = UDim2.new(0.0811881199, 0, 0.144948751, 0)
	Frame.Size = UDim2.new(0, 405, 0, 262)

	UICorner.CornerRadius = UDim.new(0, 15)
	UICorner.Parent = Frame

	Title.Name = "Title"
	Title.Parent = Frame
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.Size = UDim2.new(0, 405, 0, 50)
	Title.Font = Enum.Font.FredokaOne
	Title.Text = "RTX GUI"
	Title.TextColor3 = Color3.fromRGB(0, 0, 0)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true

	UICorner_2.CornerRadius = UDim.new(0, 15)
	UICorner_2.Parent = Title

	Morning.Name = "Morning"
	Morning.Parent = Frame
	Morning.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Morning.Position = UDim2.new(0.0493827164, 0, 0.22325556, 0)
	Morning.Size = UDim2.new(0, 170, 0, 50)
	Morning.Font = Enum.Font.FredokaOne
	Morning.Text = "Morning"
	Morning.TextColor3 = Color3.fromRGB(0, 0, 0)
	Morning.TextSize = 43.000
	Morning.MouseButton1Click:Connect(function()
		local Vignette = true -- change to false if you don't want a shadow frame



		local Lighting = game:GetService("Lighting")
		local StarterGui = game:GetService("StarterGui")
		local Bloom = Instance.new("BloomEffect")
		local Blur = Instance.new("BlurEffect")
		local ColorCor = Instance.new("ColorCorrectionEffect")
		local SunRays = Instance.new("SunRaysEffect")
		local Sky = Instance.new("Sky")
		local Atm = Instance.new("Atmosphere")


		for i, v in pairs(Lighting:GetChildren()) do
			if v then
				v:Destroy()
			end
		end

		Bloom.Parent = Lighting
		Blur.Parent = Lighting
		ColorCor.Parent = Lighting
		SunRays.Parent = Lighting
		Sky.Parent = Lighting
		Atm.Parent = Lighting

		if Vignette == true then
			local Gui = Instance.new("ScreenGui")
			Gui.Parent = StarterGui
			Gui.IgnoreGuiInset = true

			local ShadowFrame = Instance.new("ImageLabel")
			ShadowFrame.Parent = Gui
			ShadowFrame.AnchorPoint = Vector2.new(0.5,1)
			ShadowFrame.Position = UDim2.new(0.5,0,1,0)
			ShadowFrame.Size = UDim2.new(1,0,1.05,0)
			ShadowFrame.BackgroundTransparency = 1
			ShadowFrame.Image = "rbxassetid://4576475446"
			ShadowFrame.ImageTransparency = 0.3
			ShadowFrame.ZIndex = 10
		end

		Bloom.Intensity = 0.3
		Bloom.Size = 10
		Bloom.Threshold = 0.8

		Blur.Size = 5

		ColorCor.Brightness = 0.1
		ColorCor.Contrast = 0.5
		ColorCor.Saturation = -0.3
		ColorCor.TintColor = Color3.fromRGB(123, 182, 232)

		SunRays.Intensity = 0.075
		SunRays.Spread = 0.727

		Sky.SkyboxBk = "rbxassetid://11832141390"
		Sky.SkyboxDn = "rbxassetid://11832143153"
		Sky.SkyboxFt = "rbxassetid://11832140714"
		Sky.SkyboxLf = "rbxassetid://11832142032"
		Sky.SkyboxRt = "rbxassetid://11832142403"
		Sky.SkyboxUp = "rbxassetid://11832185944"

		Sky.SunAngularSize = 10

		Lighting.Ambient = Color3.fromRGB(2,2,2)
		Lighting.Brightness = 2.25
		Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
		Lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
		Lighting.EnvironmentDiffuseScale = 0.2
		Lighting.EnvironmentSpecularScale = 0.2
		Lighting.GlobalShadows = true
		Lighting.OutdoorAmbient = Color3.fromRGB(0,0,0)
		Lighting.ShadowSoftness = 0.2
		Lighting.ClockTime = 7
		Lighting.GeographicLatitude = 45
		Lighting.ExposureCompensation = 0.5

		Atm.Density = 0.364
		Atm.Offset = 0.556
		Atm.Color = Color3.fromRGB(110, 153, 202)
		Atm.Decay = Color3.fromRGB(13, 105, 172)
		Atm.Glare = 0.36
		Atm.Haze = 1.72
	end)

	UICorner_3.Parent = Morning

	Afternoon.Name = "Afternoon"
	Afternoon.Parent = Frame
	Afternoon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Afternoon.Position = UDim2.new(0.530864179, 0, 0.22325556, 0)
	Afternoon.Size = UDim2.new(0, 170, 0, 50)
	Afternoon.Font = Enum.Font.FredokaOne
	Afternoon.Text = "Afternoon"
	Afternoon.TextColor3 = Color3.fromRGB(0, 0, 0)
	Afternoon.TextScaled = true
	Afternoon.TextSize = 43.000
	Afternoon.TextWrapped = true
	Afternoon.MouseButton1Click:Connect(function()
		local Vignette = true -- change to false if you don't want a shadow frame



		local Lighting = game:GetService("Lighting")
		local StarterGui = game:GetService("StarterGui")
		local Bloom = Instance.new("BloomEffect")
		local Blur = Instance.new("BlurEffect")
		local ColorCor = Instance.new("ColorCorrectionEffect")
		local SunRays = Instance.new("SunRaysEffect")
		local Sky = Instance.new("Sky")
		local Atm = Instance.new("Atmosphere")


		for i, v in pairs(Lighting:GetChildren()) do
			if v then
				v:Destroy()
			end
		end

		Bloom.Parent = Lighting
		Blur.Parent = Lighting
		ColorCor.Parent = Lighting
		SunRays.Parent = Lighting
		Sky.Parent = Lighting
		Atm.Parent = Lighting

		if Vignette == true then
			local Gui = Instance.new("ScreenGui")
			Gui.Parent = StarterGui
			Gui.IgnoreGuiInset = true

			local ShadowFrame = Instance.new("ImageLabel")
			ShadowFrame.Parent = Gui
			ShadowFrame.AnchorPoint = Vector2.new(0.5,1)
			ShadowFrame.Position = UDim2.new(0.5,0,1,0)
			ShadowFrame.Size = UDim2.new(1,0,1.05,0)
			ShadowFrame.BackgroundTransparency = 1
			ShadowFrame.Image = "rbxassetid://4576475446"
			ShadowFrame.ImageTransparency = 0.3
			ShadowFrame.ZIndex = 10
		end

		Bloom.Intensity = 0.3
		Bloom.Size = 10
		Bloom.Threshold = 0.8

		Blur.Size = 5

		ColorCor.Brightness = 0.1
		ColorCor.Contrast = 0.5
		ColorCor.Saturation = -0.3
		ColorCor.TintColor = Color3.fromRGB(242, 243, 243)

		SunRays.Enabled = true
		SunRays.Intensity = 0.075
		SunRays.Spread = 0.727



		Sky.SkyboxBk = "http://www.roblox.com/asset/?id=225469345"
		Sky.SkyboxDn = "http://www.roblox.com/asset/?id=225469349"
		Sky.SkyboxFt = "http://www.roblox.com/asset/?id=225469359"
		Sky.SkyboxLf = "http://www.roblox.com/asset/?id=225469364"
		Sky.SkyboxRt = "http://www.roblox.com/asset/?id=225469372"
		Sky.SkyboxUp = "http://www.roblox.com/asset/?id=225469380"

		Sky.SunAngularSize = 10

		Lighting.Ambient = Color3.fromRGB(33, 33, 33)
		Lighting.Brightness = 2.25
		Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
		Lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
		Lighting.EnvironmentDiffuseScale = 0.203
		Lighting.EnvironmentSpecularScale = 0.255
		Lighting.GlobalShadows = true
		Lighting.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
		Lighting.ShadowSoftness = 0.19
		Lighting.ClockTime = 10
		Lighting.GeographicLatitude = -15.12
		Lighting.ExposureCompensation = 0.85

		Atm.Density = 0.364
		Atm.Offset = 0.556
		Atm.Color = Color3.fromRGB(175, 221, 255)
		Atm.Decay = Color3.fromRGB(13, 105, 172)
		Atm.Glare = 0.36
		Atm.Haze = 1.72
	end)

	UICorner_4.Parent = Afternoon

	Evening.Name = "Evening"
	Evening.Parent = Frame
	Evening.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Evening.Position = UDim2.new(0.0493827164, 0, 0.459108353, 0)
	Evening.Size = UDim2.new(0, 170, 0, 50)
	Evening.Font = Enum.Font.FredokaOne
	Evening.Text = "Evening"
	Evening.TextColor3 = Color3.fromRGB(0, 0, 0)
	Evening.TextSize = 43.000
	Evening.MouseButton1Click:Connect(function()
		local Vignette = true -- change to false if you don't want a shadow frame



		local Lighting = game:GetService("Lighting")
		local StarterGui = game:GetService("StarterGui")
		local Bloom = Instance.new("BloomEffect")
		local Blur = Instance.new("BlurEffect")
		local ColorCor = Instance.new("ColorCorrectionEffect")
		local SunRays = Instance.new("SunRaysEffect")
		local Sky = Instance.new("Sky")
		local Atm = Instance.new("Atmosphere")


		for i, v in pairs(Lighting:GetChildren()) do
			if v then
				v:Destroy()
			end
		end

		Bloom.Parent = Lighting
		Blur.Parent = Lighting
		ColorCor.Parent = Lighting
		SunRays.Parent = Lighting
		Sky.Parent = Lighting
		Atm.Parent = Lighting

		if Vignette == true then
			local Gui = Instance.new("ScreenGui")
			Gui.Parent = StarterGui
			Gui.IgnoreGuiInset = true

			local ShadowFrame = Instance.new("ImageLabel")
			ShadowFrame.Parent = Gui
			ShadowFrame.AnchorPoint = Vector2.new(0.5,1)
			ShadowFrame.Position = UDim2.new(0.5,0,1,0)
			ShadowFrame.Size = UDim2.new(1,0,1.05,0)
			ShadowFrame.BackgroundTransparency = 1
			ShadowFrame.Image = "rbxassetid://4576475446"
			ShadowFrame.ImageTransparency = 0.3
			ShadowFrame.ZIndex = 10
		end

		Bloom.Intensity = 0.3
		Bloom.Size = 10
		Bloom.Threshold = 0.8

		Blur.Size = 5

		ColorCor.Brightness = 0.1
		ColorCor.Contrast = 0.5
		ColorCor.Saturation = -0.3
		ColorCor.TintColor = Color3.fromRGB(255, 235, 203)

		SunRays.Intensity = 0.075
		SunRays.Spread = 0.727

		Sky.SkyboxBk = "http://www.roblox.com/asset/?id=151165214"
		Sky.SkyboxDn = "http://www.roblox.com/asset/?id=151165197"
		Sky.SkyboxFt = "http://www.roblox.com/asset/?id=151165224"
		Sky.SkyboxLf = "http://www.roblox.com/asset/?id=151165191"
		Sky.SkyboxRt = "http://www.roblox.com/asset/?id=151165206"
		Sky.SkyboxUp = "http://www.roblox.com/asset/?id=151165227"
		Sky.SunAngularSize = 10

		Lighting.Ambient = Color3.fromRGB(2,2,2)
		Lighting.Brightness = 2.25
		Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
		Lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
		Lighting.EnvironmentDiffuseScale = 0.2
		Lighting.EnvironmentSpecularScale = 0.2
		Lighting.GlobalShadows = true
		Lighting.OutdoorAmbient = Color3.fromRGB(0,0,0)
		Lighting.ShadowSoftness = 0.2
		Lighting.ClockTime = 17
		Lighting.GeographicLatitude = 45
		Lighting.ExposureCompensation = 0.5

		Atm.Density = 0.364
		Atm.Offset = 0.556
		Atm.Color = Color3.fromRGB(199, 175, 166)
		Atm.Decay = Color3.fromRGB(44, 39, 33)
		Atm.Glare = 0.36
		Atm.Haze = 1.72
	end)


	UICorner_5.Parent = Evening

	Close.Name = "Close"
	Close.Parent = Frame
	Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close.Position = UDim2.new(0.841975331, 0, 0, 0)
	Close.Size = UDim2.new(0, 64, 0, 50)
	Close.Font = Enum.Font.FredokaOne
	Close.Text = "X"
	Close.TextColor3 = Color3.fromRGB(255, 0, 0)
	Close.TextScaled = true
	Close.TextSize = 43.000
	Close.TextWrapped = true
	Close.MouseButton1Click:Connect(function()
		Frame:Destroy()
	end)

	UICorner_6.Parent = Close

	Credits.Name = "Credits"
	Credits.Parent = Frame
	Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Credits.Position = UDim2.new(0, 0, 0.930760145, 0)
	Credits.Size = UDim2.new(0, 405, 0, 18)
	Credits.Font = Enum.Font.FredokaOne
	Credits.Text = "Made By armengeimsss"
	Credits.TextColor3 = Color3.fromRGB(0, 0, 0)
	Credits.TextScaled = true
	Credits.TextSize = 14.000
	Credits.TextWrapped = true

	UICorner_7.CornerRadius = UDim.new(0, 15)
	UICorner_7.Parent = Credits

	Night.Name = "Night"
	Night.Parent = Frame
	Night.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Night.Position = UDim2.new(0.530864179, 0, 0.459108353, 0)
	Night.Size = UDim2.new(0, 170, 0, 50)
	Night.Font = Enum.Font.FredokaOne
	Night.Text = "Night"
	Night.TextColor3 = Color3.fromRGB(0, 0, 0)
	Night.TextSize = 43.000
	Night.TextWrapped = true
	Night.MouseButton1Click:Connect(function()
		local Vignette = true -- change to false if you don't want a shadow frame



		local Lighting = game:GetService("Lighting")
		local StarterGui = game:GetService("StarterGui")
		local Bloom = Instance.new("BloomEffect")
		local Blur = Instance.new("BlurEffect")
		local ColorCor = Instance.new("ColorCorrectionEffect")
		local SunRays = Instance.new("SunRaysEffect")
		local Sky = Instance.new("Sky")
		local Atm = Instance.new("Atmosphere")


		for i, v in pairs(Lighting:GetChildren()) do
			if v then
				v:Destroy()
			end
		end

		Bloom.Parent = Lighting
		Blur.Parent = Lighting
		ColorCor.Parent = Lighting
		SunRays.Parent = Lighting
		Sky.Parent = Lighting
		Atm.Parent = Lighting

		if Vignette == true then
			local Gui = Instance.new("ScreenGui")
			Gui.Parent = StarterGui
			Gui.IgnoreGuiInset = true

			local ShadowFrame = Instance.new("ImageLabel")
			ShadowFrame.Parent = Gui
			ShadowFrame.AnchorPoint = Vector2.new(0.5,1)
			ShadowFrame.Position = UDim2.new(0.5,0,1,0)
			ShadowFrame.Size = UDim2.new(1,0,1.05,0)
			ShadowFrame.BackgroundTransparency = 1
			ShadowFrame.Image = "rbxassetid://4576475446"
			ShadowFrame.ImageTransparency = 0.3
			ShadowFrame.ZIndex = 10
		end

		Bloom.Intensity = 0.3
		Bloom.Size = 10
		Bloom.Threshold = 0.8

		Blur.Size = 5

		ColorCor.Brightness = 0.1
		ColorCor.Contrast = 0.5
		ColorCor.Saturation = -0.3
		ColorCor.TintColor = Color3.fromRGB(242, 243, 243)

		SunRays.Enabled = true
		SunRays.Intensity = 0.075
		SunRays.Spread = 0.727

		Sky.MoonAngularSize =12
		Sky.MoonTextureId = "rbxasset://sky/moon.jpg"
		Sky.SkyboxBk = "http://www.roblox.com/asset/?id=411315762"
		Sky.SkyboxDn = "http://www.roblox.com/asset/?id=411315762"
		Sky.SkyboxFt = "http://www.roblox.com/asset/?id=411315762"
		Sky.SkyboxLf = "http://www.roblox.com/asset/?id=411315762"
		Sky.SkyboxRt = "http://www.roblox.com/asset/?id=411315762"
		Sky.SkyboxUp = "http://www.roblox.com/asset/?id=411315762"
		Sky.StarCount = 5000
		Sky.SunAngularSize = 10

		Lighting.Ambient = Color3.fromRGB(33, 33, 33)
		Lighting.Brightness = 3.25
		Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
		Lighting.ColorShift_Top = Color3.fromRGB(255, 247, 237)
		Lighting.EnvironmentDiffuseScale = 0.203
		Lighting.EnvironmentSpecularScale = 0.255
		Lighting.GlobalShadows = true
		Lighting.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
		Lighting.ShadowSoftness = 0.19
		Lighting.ClockTime = 20
		Lighting.GeographicLatitude = -15.12
		Lighting.ExposureCompensation = 0.85

		Atm.Density = 0.264
		Atm.Offset = 0.156
		Atm.Color = Color3.fromRGB(175, 221, 255)
		Atm.Decay = Color3.fromRGB(13, 105, 172)
		Atm.Glare = 0.36
		Atm.Haze = 1.72
	end)

	UICorner_8.Parent = Night

	Stop.Name = "Stop"
	Stop.Parent = Frame
	Stop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Stop.Position = UDim2.new(0.0493827164, 0, 0.691932738, 0)
	Stop.Size = UDim2.new(0, 365, 0, 50)
	Stop.Font = Enum.Font.FredokaOne
	Stop.Text = "Stop RTX (rejoin)"
	Stop.TextColor3 = Color3.fromRGB(0, 0, 0)
	Stop.TextScaled = true
	Stop.TextSize = 43.000
	Stop.TextWrapped = true
	Stop.MouseButton1Click:Connect(function()
		ts:Teleport(game.PlaceId, p)
	end)
end)

UICorner_12.CornerRadius = UDim.new(0.300000012, 0)
UICorner_12.Parent = RTXButton

FPSBoostButton.Name = "FPSBoostButton"
FPSBoostButton.Parent = Main
FPSBoostButton.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
FPSBoostButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
FPSBoostButton.BorderSizePixel = 0
FPSBoostButton.Position = UDim2.new(0.0499998741, 0, 0.687532842, 0)
FPSBoostButton.Size = UDim2.new(0, 99, 0, 33)
FPSBoostButton.Font = Enum.Font.SourceSans
FPSBoostButton.Text = "FPS Boost"
FPSBoostButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FPSBoostButton.TextSize = 14.000

FPSBoostButton.MouseButton1Down:Connect(function()
	local ToDisable = {
		Textures = true,
		VisualEffects = true,
		Parts = true,
		Particles = true,
		Sky = true
	}

	local ToEnable = {
		FullBright = false
	}

	local Stuff = {}

	for _, v in next, game:GetDescendants() do
		if ToDisable.Parts then
			if v:IsA("Part") or v:IsA("Union") or v:IsA("BasePart") then
				v.Material = Enum.Material.SmoothPlastic
				table.insert(Stuff, 1, v)
			end
		end

		if ToDisable.Particles then
			if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Explosion") or v:IsA("Sparkles") or v:IsA("Fire") then
				v.Enabled = false
				table.insert(Stuff, 1, v)
			end
		end

		if ToDisable.VisualEffects then
			if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("SunRaysEffect") then
				v.Enabled = false
				table.insert(Stuff, 1, v)
			end
		end

		if ToDisable.Textures then
			if v:IsA("Decal") or v:IsA("Texture") then
				v.Texture = ""
				table.insert(Stuff, 1, v)
			end
		end

		if ToDisable.Sky then
			if v:IsA("Sky") then
				v.Parent = nil
				table.insert(Stuff, 1, v)
			end
		end
	end

	game:GetService("TestService"):Message("Effects Disabler Script : Successfully disabled "..#Stuff.." assets / effects. Settings :")

	for i, v in next, ToDisable do
		print(tostring(i)..": "..tostring(v))
	end

	if ToEnable.FullBright then
		local Lighting = game:GetService("Lighting")

		Lighting.FogColor = Color3.fromRGB(255, 255, 255)
		Lighting.FogEnd = math.huge
		Lighting.FogStart = math.huge
		Lighting.Ambient = Color3.fromRGB(255, 255, 255)
		Lighting.Brightness = 5
		Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
		Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
		Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
		Lighting.Outlines = true
	end
end)

UICorner_13.CornerRadius = UDim.new(0.300000012, 0)
UICorner_13.Parent = FPSBoostButton

FOV120.Name = "FOV120"
FOV120.Parent = Main
FOV120.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
FOV120.BorderColor3 = Color3.fromRGB(0, 0, 0)
FOV120.BorderSizePixel = 0
FOV120.Position = UDim2.new(0.0499998741, 0, 0.812641203, 0)
FOV120.Size = UDim2.new(0, 99, 0, 33)
FOV120.Font = Enum.Font.SourceSans
FOV120.Text = "FOV (120)"
FOV120.TextColor3 = Color3.fromRGB(255, 255, 255)
FOV120.TextSize = 14.000

FOV120.MouseButton1Down:Connect(function()
	local FovNumber = 120
	local Camera = workspace.CurrentCamera
	Camera.FieldOfView = FovNumber
end)

UICorner_14.CornerRadius = UDim.new(0.300000012, 0)
UICorner_14.Parent = FOV120

XRayButton.Name = "XRayButton"
XRayButton.Parent = Main
XRayButton.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
XRayButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
XRayButton.BorderSizePixel = 0
XRayButton.Position = UDim2.new(0.533333182, 0, 0.812641203, 0)
XRayButton.Size = UDim2.new(0, 99, 0, 33)
XRayButton.Font = Enum.Font.SourceSans
XRayButton.Text = "X Ray"
XRayButton.TextColor3 = Color3.fromRGB(255, 255, 255)
XRayButton.TextSize = 14.000

XRayButton.MouseButton1Down:Connect(function()
	local RunService = game:GetService('RunService')
	local LocalPlayer = game:GetService('Players').LocalPlayer
	local Camera = workspace.CurrentCamera
	local Obscuring = {}

	RunService.RenderStepped:connect(function()
		for _, v in pairs(Obscuring) do 
			v.LocalTransparencyModifier = 0
			for _, v2 in pairs(v:GetChildren()) do
				if v2:IsA('Texture') then
					v2.Transparency /= 1000
				end
			end
		end

		if not LocalPlayer.Character then return end
		Obscuring = Camera:GetPartsObscuringTarget({LocalPlayer.Character.HumanoidRootPart.CFrame.p}, LocalPlayer.Character:GetChildren())

		for _, v in pairs(Obscuring) do 
			v.LocalTransparencyModifier = 1
			for _, v2 in pairs(v:GetChildren()) do
				if v2:IsA('Texture') then
					v2.Transparency *= 1000
				end
			end
		end    
	end)
end)

UICorner_15.CornerRadius = UDim.new(0.300000012, 0)
UICorner_15.Parent = XRayButton