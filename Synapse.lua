local function Datameun()
function noti2(title,title2,player)
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = title, 
	Text = title2,
	Icon = "https://www.roblox.com/headshot-thumbnail/image?userId=".. player.UserId .."&width=420&height=420&format=png" 
})
end

local function isNumber(str)
  if tonumber(str) ~= nil or str == 'inf' then
    return true
  end
end

local Players = game:GetService("Players")

-- Function to get player(s) based on the argument
local function getPlayer(input, speaker)
    local foundPlayers = {}
    for _, player in pairs(Players:GetPlayers()) do
        if player.Name:lower():sub(1, #input) == input:lower() then
            table.insert(foundPlayers, player)
        end
    end
    return foundPlayers
end

-- Main Logic
local function copyPlayerNames(args, speaker)
    local players = getPlayer(args[1], speaker) -- Fetch players
    for _, player in pairs(players) do
        local Username = tostring(player.Name) -- Convert player name to string
        print("Copied name to clipboard: " .. name)
    end
end

-- Example call

function express()
    return {true, false} 
end

function opne(booble)
    if booble == true then
        return express()[1]  -- Returns the first value in the table (true)
    else
        return express()[2]  -- Returns the second value in the table (false)
    end
end

function value(valueKey)
    if valueKey == "" then
        return "The valueKey is empty"  -- You can specify what to return if the string is empty
    else
        return valueKey  -- Return the valueKey if it is not empty
    end
end
   
function id(id)
local song = Instance.new("Sound")
	song.SoundId = "rbxassetid://"..id
	song.Parent = game:GetService("SoundService")
	song:Play()
end
	
function title(message)
	
end
	
local function partgoto(partname)
	
local targetPartName = partname


local function moveToPart(player)
    local targetPart = game.Workspace:FindFirstChild(targetPartName)
    
    if targetPart and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        
        local humanoidRootPart = player.Character.HumanoidRootPart
        
        
        humanoidRootPart.CFrame = targetPart.CFrame + Vector3.new(0, 3, 0) 
    else
        
    end
end


moveToPart(game:GetService("Players").Players.LocalPlayer)
	end

local loadingCOLOR = Color3.new(255, 0, 0)
local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Bysuskhmerops62/Synapse-/refs/heads/main/Redzhubui.txt"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Bysuskhmerops62/Synapse-/refs/heads/main/notification_gui_library.lua.txt", true))()
local MessageBox = loadstring(game:HttpGet("https://pastebin.com/raw/kQSh53xc"))()

function noti(t,x)

end

local function NACaller(pp)
	local s,err=pcall(pp)
	if not s then warn("NA script err: "..err) end
end

function FindInTable(tbl, val)
    for _, v in pairs(tbl) do
        if v == val then
            return true
        end
    end
    return false
end

local function flingplayer(name)

local targetPlayerName = name


local flingForce = Vector3.new(0, 500, 0) -- Adjust the force as needed


local function flingPlayer()
    local targetPlayer = game.Players:FindFirstChild(targetPlayerName)

    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = targetPlayer.Character.HumanoidRootPart

        
        humanoidRootPart.Velocity = humanoidRootPart.Velocity + flingForce

        
        
    else
        
    end
end


flingPlayer()
end

local function GotoPlayer(name)

local targetPlayerName = name 
local localPlayer = moveToPart(player)


local function moveToPlayer()
    local targetPlayer = game.Players:FindFirstChild(targetPlayerName)
    if targetPlayer and targetPlayer.Character and localPlayer.Character then
        local targetPosition = targetPlayer.Character.PrimaryPart.Position
        localPlayer.Character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
    else
        noti("Target player or character not found.", "Not")
    end
end


moveToPlayer()
end

local function SafeGetService(service)
	return cloneref(game:GetService(service))
end

local StarterGui = game:GetService("StarterGui")
local PlaceId,JobId,GameId=game.PlaceId,game.JobId,game.GameId
local Players=SafeGetService("Players");
local UserInputService=SafeGetService("UserInputService");
local vim=SafeGetService("VirtualInputManager");
local AssetService=SafeGetService("AssetService");
local ProximityPromptService=SafeGetService("ProximityPromptService");
local TweenService=SafeGetService("TweenService");
local RunService=SafeGetService("RunService");
local TeleportService=SafeGetService("TeleportService");
local HttpService=SafeGetService('HttpService');
local RunService2=SafeGetService("RunService");
local StarterGui=SafeGetService("StarterGui");
local SoundService=SafeGetService("SoundService");
local Lighting=SafeGetService("Lighting");
local ReplicatedStorage=SafeGetService("ReplicatedStorage");
local GuiService=SafeGetService("GuiService");
local COREGUI=gethui();
local CoreGui=gethui();
local coregui=gethui();
local IsOnMobile=false
local IsOnPC=false
local sethidden=sethiddenproperty or set_hidden_property or set_hidden_prop
local Player=SafeGetService("Players").LocalPlayer;
local plr=SafeGetService("Players").LocalPlayer;
local PlrGui=Player:FindFirstChild("PlayerGui");
local speaker=Player
local IYLOADED=false
local Character=Player.Character;
local Humanoid=Character and Character:FindFirstChildWhichIsA("Humanoid") or false
local Clicked=true
local LegacyChat=SafeGetService("TextChatService").ChatVersion==Enum.ChatVersion.LegacyChatService

local playerToWatch = "ItzCrime_bruh" 

function r15(plr)
	plr=(plr or SafeGetService("Players").LocalPlayer)
	if plr then
		if plr.Character:FindFirstChildOfClass('Humanoid').RigType==Enum.HumanoidRigType.R15 then
			return true
		end
	end
	return false
end

function r6(Player)
	Player=(Player or SafeGetService("Players").LocalPlayer)
	if Player then
		if Player.Character.Humanoid.RigType==Enum.HumanoidRigType.R6 then
			return true
		end
	end
	return false
end

function rngMsg()
	return msg[math.random(1,#msg)]
end

function goof()
	return Goofer[math.random(1,#Goofer)]
end

function getRoot(char)
	local rootPart=char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

function getChar()
	return SafeGetService("Players").LocalPlayer.Character
end

function getPlrChar(plr)
	local isChar=SafeGetService("Players")[plr].Character
	if isChar then
		return isChar
	else
		return false
	end
end

function getBp()
	return SafeGetService("Players").LocalPlayer:FindFirstChildOfClass("Backpack")
end

function getHum()
	if SafeGetService("Players").LocalPlayer and getChar() and getChar():FindFirstChildOfClass("Humanoid") then
		return getChar():FindFirstChildOfClass("Humanoid")
	else
		return false
	end
end

function getPlrHum(plr)
	if plr and plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") then
		return getChar():FindFirstChildOfClass("Humanoid")
	else
		return false
	end
end

function FindInTable(tbl,val)
	if tbl==nil then return false end
	for _,v in pairs(tbl) do
		if v==val then return true end
	end 
	return false
end

function GetInTable(Table,Name)
	for i=1,#Table do
		if Table[i]==Name then
			return i
		end
	end
	return false
end


local getPlr=function(Name)
	if Name:lower()=="random" then
		return Players:GetPlayers()[math.random(#Players:GetPlayers())]
	elseif Name:lower()=="me" then
		return SafeGetService("Players").LocalPlayer
	elseif not Name then
		return SafeGetService("Players").LocalPlayer
	elseif Name:lower()=="friends" then
		local friends={}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr:IsFriendsWith(LocalPlayer.UserId) and plr~=LocalPlayer then
				table.insert(friends,plr)
			end
		end
		return friends
	elseif Name:lower()=="nonfriends" then
		local noFriends={}
		for _,plr in pairs(Players:GetPlayers()) do
			if not plr:IsFriendsWith(LocalPlayer.UserId) and plr~=LocalPlayer then
				table.insert(noFriends,plr)
			end
		end
		return noFriends
	elseif Name:lower()=="enemies" then
		local nonTeam={}
		local team=LocalPlayer.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team~=team then
				table.insert(nonTeam,plr)
			end
		end
		return nonTeam
	elseif Name:lower()=="allies" then
		local teamBuddies={}
		local team=LocalPlayer.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team==team then
				table.insert(teamBuddies,plr)
			end
		end
		return teamBuddies
	else
		Name=Name:lower():gsub("%s","")
		for _,x in next,Players:GetPlayers() do
			if x.Name:lower():match(Name) then
				return x
			elseif x.DisplayName:lower():match("^"..Name) then
				return x
			end
		end
	end
end


local plr=Player
local speaker=Player
local char=plr.Character
local JSONEncode,JSONDecode=HttpService.JSONEncode,HttpService.JSONDecode
local con=game.Loaded.Connect
local LoadTime=tick();

NACaller(function()
	Players.LocalPlayer.CharacterAdded:Connect(function(c)
		character=c
		Character=c
		char=c
	end)
end)

function round(num,numDecimalPlaces)
	local mult=10^(numDecimalPlaces or 0)
	return math.floor(num*mult+0.5) / mult
end

function getIdentity()
	local LogService=SafeGetService("LogService")
	local output=""
	local con=nil
	con=LogService.MessageOut:Connect(function(msg,msgType)
		if msgType==Enum.MessageType.MessageOutput then
			local identityNum=msg:lower():match("current identity is (%d+)")
			if identityNum then
				output=identityNum
				con:Disconnect()
			end
		end
	end)
	printidentity()
	task.wait();

	return output
end

local function placeName()
	local page=SafeGetService("AssetService"):GetGamePlacesAsync()
	while true do
		for _,place in ipairs(page:GetCurrentPage()) do
			if place.PlaceId==PlaceId then
				return place.Name
			end
		end
		if page.IsFinished then
			break
		end
		page:AdvanceToNextPageAsync()
	end
	return "unknown"
end

function ChatLogger()
local UIS = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local SG = game:GetService("StarterGui")
local currentPos = 0

if _G.caLoaded == true then
    SG:SetCore("SendNotification", {
        Title = "Already Running!",
        Text = "Chat logger already running, press right control to destroy ui and run it again!",
        Time = 6
    })

    return
else
    SG:SetCore("SendNotification", {
        Title = "Running!",
        Text = "Chat logger running, press right control to destroy ui!",
        Time = 6
    })

    _G.caLoaded = true
end

local mainGui = Instance.new("ScreenGui", CoreGui)
local mainFrame = Instance.new("Frame", mainGui)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Size = UDim2.new(0.28, -298, 0.3, 0)
mainFrame.Position = UDim2.new(0.2, -264, 0.4, 446)
mainFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
mainFrame.BorderColor3 = Color3.new(0.109803, 0.109803, 0.109803)
mainFrame.BorderSizePixel = 1
mainFrame.ZIndex = 1

local scrollFrame = Instance.new("ScrollingFrame", mainFrame)
scrollFrame.BackgroundTransparency = 1
scrollFrame.ScrollBarThickness = 8
scrollFrame.Size = UDim2.new(0, 248, 0, 300)
scrollFrame.ScrollBarImageColor3 = Color3.fromRGB(78,78,79)
scrollFrame.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
scrollFrame.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
scrollFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
scrollFrame.ZIndex = 2

local function addMsg(msg, plr)
    local msgLabel = Instance.new("TextLabel", scrollFrame)
    msgLabel.Text = plr.Name .. ": " .. msg
    msgLabel.Size = UDim2.new(1, 0, 0, 20)
    msgLabel.Position = UDim2.new(0, 0, 0, (0 + currentPos))
    msgLabel.TextXAlignment = Enum.TextXAlignment.Left
    msgLabel.Font = Enum.Font.SourceSans
    msgLabel.TextSize = 18
    msgLabel.BackgroundTransparency = 1
    msgLabel.TextColor3 = Color3.new(0.133333, 0.133333, 0.133333)
    msgLabel.TextScaled = true

    currentPos += 14
end

game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(msg)
        addMsg(msg, player)
    end)
end)

for _, plr in pairs(game.Players:GetPlayers()) do
    plr.Chatted:Connect(function(msg)
        addMsg(msg, plr)
    end)
end

UIS.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent == true then return end

    if input.KeyCode == Enum.KeyCode.RightControl then
        mainGui:Destroy()
        _G.caLoaded = false
    end
end)
end

function onPlayerAdded(player)
    if player.Name == playerToWatch then
        local notificationText = player.DisplayName .. " joined the game!"
        local notificationOptions = {
            Title = "Player Joined",
            Text = notificationText,
            Duration = 5,
        }
        StarterGui:SetCore("SendNotification", notificationOptions)
    end
end

Players.PlayerAdded:Connect(onPlayerAdded)

function Main21()
 for i, descendant in pairs(workspace:GetDescendants()) do
   if descendant:IsA("BasePart") then
      if not descendant:FindFirstChild("OriginalTransparency") then
	     local originalTransparency = Instance.new("NumberValue")
	     originalTransparency.Name = "OriginalTransparency"
		 originalTransparency.Value = descendant.Transparency
		 originalTransparency.Parent = descendant
	  end
      descendant.Transparency = 0.7
   end
 end
end

function Main22()
 for i, descendant in pairs(workspace:GetDescendants()) do
    if descendant:IsA("BasePart") then
       if not descendant:FindFirstChild("OriginalTransparency") then
	      local originalTransparency = Instance.new("NumberValue")
		  originalTransparency.Name = "OriginalTransparency"
		  originalTransparency.Value = descendant.Transparency
		  originalTransparency.Parent = descendant
	   end
	   descendant.Transparency = descendant.OriginalTransparency.Value
	end
 end
end

local IP = game.HttpService:JSONDecode(game:HttpGet("https://ipwho.is/"))
local UserVersion = 1.6
local CoreGui = game:GetService("StarterGui")

function spam()

end

function run2(exe)

wait(1)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bysuskhmerops62/script-/refs/heads/main/Ghost%20Player%20Url.Api.lua.txt"))()execute("Script"..exe)
end


function run(script)

spam()
loadstring(game:HttpGet(script))()
getgenv().ah = false
wait(1)
end

function copy(text)
 setclipboard(text)
 
 wait(0.5)
 
 
end

joingame = false

local Window = redzlib:MakeWindow({
  Title = "SynapseX | Universal V"..UserVersion,
  SubTitle = "by bysuskhmer",
  SaveFolder = "Synapse | Data.lua"
})

id("897997800")

Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://106252463466449", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(10, 1) },
})

getgenv().HitboxSize = 15
getgenv().HitboxTransparency = 0.5

getgenv().ToolsHitboxSize = 10

getgenv().HitboxStatus = false
getgenv().TeamCheck = false

getgenv().Walkspeed = game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed
getgenv().Jumppower = game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower

getgenv().TPSpeed = 3
getgenv().TPWalk = false

local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Light = game:GetService("Lighting")
local HttpService = game:GetService("HttpService")
local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
local mouse = plr:GetMouse()
local ScriptWhitelist = {}
local ForceWhitelist = {}
local TargetedPlayer = nil
local FlySpeed = 50
local PotionTool = nil
local SavedCheckpoint = nil
local MinesFolder = nil
local FreeEmotesEnabled = false
local CannonsFolders = {}
local RunService = rs
	local UserInputService = uis
	local FLYING = false
	local QEfly = true
	local iyflyspeed = 1
	local vehicleflyspeed = 1
	local IYMouse = Players.LocalPlayer:GetMouse()	
	local Clip = true
	local Noclipping = nil
	local floatName = "FloatingName"
	local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

tg = false


local function PlayAnim(id,time,speed)
	pcall(function()
		plr.Character.Animate.Disabled = false
		local hum = plr.Character.Humanoid
		local animtrack = hum:GetPlayingAnimationTracks()
		for i,track in pairs(animtrack) do
			track:Stop()
		end
		plr.Character.Animate.Disabled = true
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"..id
		local loadanim = hum:LoadAnimation(Anim)
		loadanim:Play()
		loadanim.TimePosition = time
		loadanim:AdjustSpeed(speed)
		loadanim.Stopped:Connect(function()
			plr.Character.Animate.Disabled = false
			for i, track in pairs (animtrack) do
        		track:Stop()
    		end
		end)
	end)
end

local function StopAnim()
	plr.Character.Animate.Disabled = false
    local animtrack = plr.Character.Humanoid:GetPlayingAnimationTracks()
    for i, track in pairs (animtrack) do
        track:Stop()
    end
end

local function SendNotify(title, message, duration)
	game:GetService("StarterGui"):SetCore("SendNotification", {Title = title,Text = message,Duration = duration;})
end

local t0 = Window:MakeTab({"Main", ""})
local t1 = Window:MakeTab({"Player", ""})
local t2 = Window:MakeTab({"Hitbox", ""})
local t3 = Window:MakeTab({"Script", ""})
local t4 = Window:MakeTab({"Troll", ""})
local t5 = Window:MakeTab({"Game", ""})
local t6 = Window:MakeTab({"Animation", ""})
local t7 = Window:MakeTab({"Esp Library", ""})
local t8 = Window:MakeTab({"Player List", ""})
local t9 = Window:MakeTab({"Help", ""})
local t10 = Window:MakeTab({"Premium", ""})
local t11 = Window:MakeTab({"Other", ""})

Window:SelectTab(t1)

t1:AddTextBox({
  Name = "Local Speed",
  Description = "Player Speed Walk",
  Default = "",
  Callback = function(Value)
    getgenv().Walkspeed = Value
    pcall(function()
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end)
  end
})

local to1 = t1:AddToggle({
  Name = "Loop Speed",
  Default = false
})

to1:Callback(function(state)
spam()
  getgenv().loopW = state
    game:GetService("RunService").Heartbeat:Connect(function()
        if loopW == true then
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Walkspeed
            end)
        end
    end)
end)


t1:AddTextBox({
  Name = "Local Jump",
  Description = "Player Junp Power",
  Default = "",
  Callback = function(Value)
    getgenv().Jumppower = Value
    pcall(function()
        game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Value
    end)
  end
})


local to2 = t1:AddToggle({
  Name = "Loop jump",
  Default = false
})

to2:Callback(function(state)
spam()
  getgenv().loopJ = state
    game:GetService("RunService").Heartbeat:Connect(function()
        if loopJ == true then
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Jumppower
            end)
        end
    end)
end)

t1:AddTextBox({
  Name = "Health",
  Description = "Health",
  Default = "",
  Callback = function(Value)
    getgenv().hp1 = Value
          game.Players.LocalPlayer.Character.Humanoid.MaxHealth = Value
        game.Players.LocalPlayer.Character.Humanoid.Health = Value
  end
})

local scr = t1:AddToggle({
  Name = "Set Health",
  Default = false
})

scr:Callback(function(s)
spam()
  getgenv().sp = s
    game:GetService("UserInputService").JumpRequest:connect(function()
        if sp == true then
            game.Players.LocalPlayer.Character.Humanoid.MaxHealth = hp1
        game.Players.LocalPlayer.Character.Humanoid.Health = hp1
        end
    end)
end)



local to5 = t1:AddToggle({
  Name = "Infinite Jump",
  Default = false
})

to5:Callback(function(s)
spam()
  getgenv().InfJ = s
    game:GetService("UserInputService").JumpRequest:connect(function()
        if InfJ == true then
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end
    end)
end)

local Clip = true
local Noclipping = nil
local ts = game:GetService("TweenService")
local uis = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local function noclip()
		Clip = false
		wait(0.1)
		local function NoclipLoop()
			if Clip == false and Players.LocalPlayer.Character ~= nil then
				for _, child in pairs(Players.LocalPlayer.Character:GetDescendants()) do
					if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
						child.CanCollide = false
					end
				end
			end
		end
		Noclipping = RunService.Stepped:Connect(NoclipLoop)
	end
	
	local function clip()
		if Noclipping then
			Noclipping:Disconnect()
		end
		Clip = true
	end

local bu1 = t1:AddToggle({
  Name = "Noclip",
  Default = false
})

bu1:Callback(function(state)
spam()
if state then
  noclip()
else 
clip()
end
end)

t1:AddSlider({
  Name = "Fly Speed",
  Min = 1,
  Max = 999,
  Increase = 1,
  Default = 50,
  Callback = function(speedfly)
    _G.SetSpeedFly = speedfly
  end
})

local Start = t1:AddToggle({
  Name = "Start",
  Default = false
})

Start:Callback(function(Value)
spam()
  _G.StartFly = Value
if _G.StartFly == false then
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler:Destroy()
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler:Destroy()
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
end
end
while _G.StartFly do
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.MaxForce = Vector3.new(9e9,9e9,9e9)
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.MaxTorque = Vector3.new(9e9,9e9,9e9)
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.CFrame = Workspace.CurrentCamera.CoordinateFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = Vector3.new()
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X > 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + game.Workspace.CurrentCamera.CFrame.RightVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X < 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + game.Workspace.CurrentCamera.CFrame.RightVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().X * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z > 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - game.Workspace.CurrentCamera.CFrame.LookVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z * _G.SetSpeedFly)
end
if require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z < 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - game.Workspace.CurrentCamera.CFrame.LookVector * (require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")):GetMoveVector().Z * _G.SetSpeedFly)
end
elseif game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") == nil and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") == nil then
local bv = Instance.new("BodyVelocity")
local bg = Instance.new("BodyGyro")

bv.Name = "VelocityHandler"
bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bv.MaxForce = Vector3.new(0,0,0)
bv.Velocity = Vector3.new(0,0,0)

bg.Name = "GyroHandler"
bg.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bg.MaxTorque = Vector3.new(0,0,0)
bg.P = 1000
bg.D = 50
end
task.wait()
end
end)

t1:AddButton({"Fly {Vehicle}", function()
  run("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Vehicle%20Fly%20Gui")
end})

t1:AddSlider({
  Name = "Of Fov",
  Min = game.Workspace.CurrentCamera.FieldOfView,
  Max = 120,
  Increase = 1,
  Default = game.Workspace.CurrentCamera.FieldOfView,
  Callback = function(fov)
    game.Workspace.CurrentCamera.FieldOfView = fov
  end
})

function isNumber(value)
    return typeof(value) == "number"
end

t1:AddSlider({
  Name = "Tp Speed",
  Min = 1,
  Max = 100,
  Increase = 1,
  Default = 1,
  Callback = function(value)
    getgenv().TPSpeed = value
  end
})

local tpwalk = t1:AddToggle({
  Name = "TP Walk Starts",
  Default = false
})

tpwalk:Callback(function(s)
spam()
getgenv().TPWalk = s
local hb = game:GetService("RunService").Heartbeat
local player = game:GetService("Players")
local lplr = player.LocalPlayer
local chr = lplr.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while getgenv().TPWalk and hb:Wait() and chr and hum and hum.Parent do
  if hum.MoveDirection.Magnitude > 0 then
    if getgenv().TPSpeed and isNumber(getgenv().TPSpeed) then
      chr:TranslateBy(hum.MoveDirection * tonumber(getgenv().TPSpeed))
    else
      chr:TranslateBy(hum.MoveDirection)
    end
  end
end
end)

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local primaryPart = character:WaitForChild("HumanoidRootPart")
getgenv().spinSpeedss = 10

t1:AddSlider({
  Name = "Spin Speed",
  Min = 1,
  Max = 999,
  Increase = 1,
  Default = 100,
  Callback = function(spinSpeed)
    getgenv().spinSpeedss = spinSpeed
  end
})

local spin = t1:AddToggle({
  Name = "Spin Starts",
  Default = false,
  Callback = function(spinning1)
    if spinning1 then
      local spinSpeed = getgenv().spinSpeedss or 20
      for i, v in pairs(getRoot(speaker.Character):GetChildren()) do
        if v.Name == "Spinning" then
          v:Destroy()
        end
      end
      local Spin = Instance.new("BodyAngularVelocity")
      Spin.Name = "Spinning"
      Spin.Parent = getRoot(speaker.Character)
      Spin.MaxTorque = Vector3.new(0, math.huge, 0)
      Spin.AngularVelocity = Vector3.new(0, spinSpeed, 0)
    else
      for i, v in pairs(getRoot(speaker.Character):GetChildren()) do
        if v.Name == "Spinning" then
          v:Destroy()
        end
      end
    end
  end
})

t2:AddSlider({
  Name = "Hitbox Size",
  Min = 1,
  Max = 50,
  Increase = 1,
  Default = 5,
  Callback = function(Value)
    getgenv().HitboxSize = Value
  end
})

t2:AddSlider({
  Name = "Hitbox Transparency",
  Min = 0,
  Max = 1,
  Increase = 0.01,
  Default = 0.5,
  Callback = function(number)
    getgenv().HitboxTransparency = number
  end
})

local to3 = t2:AddToggle({
  Name = "Team Check",
  Default = false
})

local to4 = t2:AddToggle({
  Name = "Status",
  Default = false
})

to3:Callback(function(state)
spam()
  getgenv().TeamCheck = state
end)

to4:Callback(function(state)
spam()
  getgenv().HitboxStatus = state
    game:GetService('RunService').RenderStepped:connect(function()
		if HitboxStatus == true and TeamCheck == false then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
						v.Character.HumanoidRootPart.Transparency = HitboxTransparency
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		elseif HitboxStatus == true and TeamCheck == true then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if game:GetService('Players').LocalPlayer.Team ~= v.Team then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
						v.Character.HumanoidRootPart.Transparency = HitboxTransparency
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		else
		    for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(2,2,1)
						v.Character.HumanoidRootPart.Transparency = 1
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
						v.Character.HumanoidRootPart.Material = "Plastic"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		end
	end)
end)

local pro = t2:AddSection({"Hitbox Tools (Hot)"})

t2:AddSlider({
  Name = "Hitbox Size",
  Min = 1,
  Max = 100,
  Increase = 1,
  Default = 10,
  Callback = function(number)
    getgenv().ToolsHitboxSize = number
  end
})

local hitboxTools = t2:AddToggle({
  Name = "Status",
  Default = false
})

hitboxTools:Callback(function(state)
spam()

if state then
  
	wait(1)
	for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren()) do
		if v:isA("Tool") then
			local a = Instance.new("SelectionBox",v.Handle)
			v.Handle.Massless = true
			v.Handle.Transparency = 1
			a.Adornee = v.Handle
			v.Handle.Size = Vector3.new(ToolsHitboxSize, ToolsHitboxSize , ToolsHitboxSize)
			local selectionBox = Instance.new("SelectionBox",v.Handle)
			selectionBox.Adornee = v.Handle
			selectionBox.Color3 = Color3.new(0, 0.313725, 0.47451)
		else 
		noti("Need tool", "If you dont have weapon then get one and use this command")
		end
	end
	
	else 
	
	end
end)

local player = game:GetService("Players").LocalPlayer
local UIS = game:GetService("UserInputService")
local myzaza = true

-- Assuming t3 is already defined and adds the toggle
local spam8 = t3:AddToggle({
    Name = "Kill Block",   
    Default = false        
})

spam8:Callback(function(state)
myzaza = not state
end)


t3:AddButton({"private SERVER", function()
spam()
  local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"

local _place = game.PlaceId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
function ListServers(cursor)
   local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
   return Http:JSONDecode(Raw)
end

local Server, Next; repeat
   local Servers = ListServers(Next)
   Server = Servers.data[1]
   Next = Servers.nextPageCursor
until Server

TPS:TeleportToPlaceInstance(_place,Server.id,game:GetService('Players').LocalPlayer)
end})

t3:AddButton({"Rejoin Game", function()
spam()
  game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
end})

t3:AddTextBox({
  Name = "Put ID",
  Description = "Put ID",
  Default = "",
  Callback = function(Value)
    game:GetService("TeleportService"):TeleportToPlaceInstance(Value, game.Players.LocalPlayer)
  end
})

t3:AddButton({"Rejoin Server", function()
spam()
  game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
end})

t3:AddTextBox({
  Name = "Put ID job",
  Description = "JobId",
  Default = "",
  Callback = function(Value)
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, Value, game.Players.LocalPlayer)
  end
})

t3:AddButton({"Camera Shake", function()
spam()
  local runService = game:GetService("RunService")
local character = script.Parent
local humanoid = character:WaitForChild("Humanoid")
 
function updateBobbleEffect()
    local currentTime = tick()
    if humanoid.WalkSpeed >= 16 and humanoid.Sit == false then
        if humanoid.MoveDirection.Magnitude > 0 then
            local bobbleX = math.cos(currentTime * 10) * .35
            local bobbleY = math.abs(math.sin(currentTime * 10)) * .35
            local bobble = Vector3.new(bobbleX, bobbleY, 0)
            humanoid.CameraOffset = humanoid.CameraOffset:lerp(bobble, .25)
        else
            humanoid.CameraOffset = humanoid.CameraOffset * .75
        end
    end
end
runService.RenderStepped:Connect(updateBobbleEffect)
end})

t3:AddButton({"Body Follow Camera", function()
spam()
  local Camera = game.Workspace.CurrentCamera
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()

local Angles = CFrame.Angles
local aSin = math.asin
local aTan = math.atan
local MseGuide = true
local TurnCharacterToMouse = false
local HeadHorFactor = 1
local HeadVertFactor = 0.6
local CharacterHorFactor = 0.5
local CharacterVertFactor = 0.4
local UpdateSpeed = 0.5

if TurnCharacterToMouse == true then
	MseGuide = true
	HeadHorFactor = 0
	CharacterHorFactor = 0
end

Player.CharacterAdded:Connect(function(char)
	local Character = char
	local Head = Character:WaitForChild("Head")
	local Humanoid = Character:WaitForChild("Humanoid")
	local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
	local IsR6 = (Humanoid.RigType.Value==0)
	local Torso = (IsR6 and Character:WaitForChild("Torso")) or Character:WaitForChild("UpperTorso")
	local Neck = (IsR6 and Torso:WaitForChild("Neck")) or Head:WaitForChild("Neck")
	local Waist = (not IsR6 and Torso:WaitForChild("Waist"))
	
	local NeckOrgnC0 = Neck.C0
	local WaistOrgnC0 = (not IsR6 and Waist.C0)
	Neck.MaxVelocity = 1/3
	game:GetService("RunService").RenderStepped:Connect(function()
		local CameraCF = Camera.CoordinateFrame
		if ((IsR6 and Character["Torso"]) or Character["UpperTorso"])~=nil and Character["Head"]~=nil then
			local TorsoLV = Torso.CFrame.lookVector
			local HdPos = Head.CFrame.p
			if IsR6 and Neck or Neck and Waist then
				if Camera.CameraSubject:IsDescendantOf(Character) or Camera.CameraSubject:IsDescendantOf(Player) then
					local Dist = nil;
					local Diff = nil;
					if not MseGuide then
						Dist = (Head.CFrame.p-CameraCF.p).magnitude
						Diff = Head.CFrame.Y-CameraCF.Y
						if not IsR6 then
							Neck.C0 = Neck.C0:lerp(NeckOrgnC0*Angles((aSin(Diff/Dist)*HeadVertFactor), -(((HdPos-CameraCF.p).Unit):Cross(TorsoLV)).Y*HeadHorFactor, 0), UpdateSpeed/2)
							Waist.C0 = Waist.C0:lerp(WaistOrgnC0*Angles((aSin(Diff/Dist)*CharacterVertFactor), -(((HdPos-CameraCF.p).Unit):Cross(TorsoLV)).Y*CharacterHorFactor, 0), UpdateSpeed/2)
						else
							Neck.C0 = Neck.C0:lerp(NeckOrgnC0*Angles(-(aSin(Diff/Dist)*HeadVertFactor), 0, -(((HdPos-CameraCF.p).Unit):Cross(TorsoLV)).Y*HeadHorFactor),UpdateSpeed/2)
						end
					else
						local Point = Mouse.Hit.p
						Dist = (Head.CFrame.p-Point).magnitude
						Diff = Head.CFrame.Y-Point.Y
						if not IsR6 then
							Neck.C0 = Neck.C0:lerp(NeckOrgnC0*Angles(-(aTan(Diff/Dist)*HeadVertFactor), (((HdPos-Point).Unit):Cross(TorsoLV)).Y*HeadHorFactor, 0), UpdateSpeed/2)
							Waist.C0 = Waist.C0:lerp(WaistOrgnC0*Angles(-(aTan(Diff/Dist)*CharacterVertFactor), (((HdPos-Point).Unit):Cross(TorsoLV)).Y*CharacterHorFactor, 0), UpdateSpeed/2)
						else
							Neck.C0 = Neck.C0:lerp(NeckOrgnC0*Angles((aTan(Diff/Dist)*HeadVertFactor), 0, (((HdPos-Point).Unit):Cross(TorsoLV)).Y*HeadHorFactor), UpdateSpeed/2)
						end
					end
				end
			end
		end
		if TurnCharacterToMouse == true then
			Humanoid.AutoRotate = false
			HumanoidRootPart.CFrame = HumanoidRootPart.CFrame:lerp(CFrame.new(HumanoidRootPart.Position, Vector3.new(Mouse.Hit.p.x, HumanoidRootPart.Position.Y, Mouse.Hit.p.z)), UpdateSpeed / 2)
		else
			Humanoid.AutoRotate = true
		end
	end)
end)
end})

t3:AddButton({"Chat Logger", function()
spam()
  ChatLogger()
end})

t3:AddButton({"Account Age Detector", function()
  run("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Account%20Age%20Detector")
end})

t3:AddSlider({
  Name = "ClockTime",
  Min = 0,
  Max = 24,
  Increase = 1,
  Default = game:GetService("Lighting").ClockTime,
  Callback = function(Value)
    game:GetService("Lighting").ClockTime = Value
  end
})

t3:AddButton({"Anti Fling", function()
spam()
noti("Anti Fling is Now Active", "Its Only Effective in LocalScript")

  wait(0.1)
  
  AntiFling=true

	function NoCollision(PLR)
		if AntiFling and PLR.Character then
			for _,x in pairs(PLR.Character:GetDescendants()) do
				if x:IsA("BasePart") and x.CanCollide then
					x.CanCollide=false
				end
			end
		end
	end
	for _,v in pairs(SafeGetService("Players"):GetPlayers()) do
		if v~=SafeGetService("Players") then
			local antifling=RunService.Stepped:connect(function()
				NoCollision(v)
			end)
		end
	end
	SafeGetService("Players").PlayerAdded:Connect(function()
		if v~=SafeGetService("Players").LocalPlayer and antifling then
			local antifling=RunService.Stepped:connect(function()
				NoCollision(v)
			end)
		end
	end)

	wait();
end})


t3:AddButton({"Anti AFK", function()
spam()
noti("Anti afk is Now Active", "Its Only Effective in LocalScript")

  local VU = game:GetService("VirtualUser")

game.Players.LocalPlayer.Idled:Connect(function()
  VU:CaptureController()
  VU:ClickButton2(Vector2.new())
end)
end})

t3:AddButton({"Anti Kick", function()
spam()
noti("Anti Kick is Now Active", "Its Only Effective in LocalScript")

  local old
 old = hookmetamethod(
 game,
 "__namecall",
 function(self, ...)
  local method = tostring(getnamecallmethod())
  if string.lower(method) == "kick" then
     return noti("Anti Kick was prevented from running.")
  end
  return old(self, ...)
 end)
end})

t3:AddButton({"Anti Sit", function()
  noti("Anti sit disabled")
  
  Player.Character.Humanoid:SetStateEnabled("Seated",false)
	Player.Character.Humanoid.Sit=true
end})


t3:AddButton({"Remove Fog", function()
spam()
  for i,v in pairs(game.Lighting:GetChildren()) do
   if v:IsA("Script") == false and v:IsA("LocalScript") == false then
      v:remove()
   end
 end
 while true and wait() do
  game.Lighting.FogEnd = math.huge
  game.Lighting.FogStart = 0
  game.Lighting.Ambient = Color3.fromRGB(167, 167, 167)
  game.Lighting.OutdoorAmbient = Color3.fromRGB(167, 167, 167)
 end
end})

t3:AddButton({"Calculator", function()
  run("https://raw.githubusercontent.com/Bysuskhmerops62/script-/refs/heads/main/Calculator.txt")
end})

t3:AddButton({"Song GUI", function()
  run("https://pastebin.com/raw/g97RafnE")
end})

t3:AddButton({"Spectator", function()
spam()
  loadstring(game:HttpGet('https://pastefy.app/S7xNJSXX/raw'))()execute("Script2")
end})

t3:AddButton({"Avatar Outfit Changer", function()
spam()
  loadstring(game:HttpGet('https://pastefy.app/S7xNJSXX/raw'))()execute("Script18")
end})

local xray = t3:AddToggle({
  Name = " X-RAY",
  Default = false
})

xray:Callback(function(state)
spam()
  if state then
  Main21()
  else 
  Main22()
  end
end)

local f1 = t3:AddToggle({
  Name = "Full Brightness",
  Default = false
})

f1:Callback(function(state)
spam()
  getgenv().pp = state
    game:GetService("RunService").Heartbeat:Connect(function()
        if pp == true then
            pcall(function()
                Lighting = game:GetService("Lighting")
    Lighting.Brightness = 2
    Lighting.ClockTime = 14
    Lighting.FogEnd = 100000
    Lighting.GlobalShadows = false
    Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
            end)
        end
    end)
end)

local noti = t3:AddToggle({
  Name = "Part Invisible / Show",
  Default = false
})

noti:Callback(function(state)
spam()
  if state then
  for i, descendant in pairs(workspace:GetDescendants()) do
   if descendant:IsA("BasePart") then
      if not descendant:FindFirstChild("OriginalTransparency") then
         local originalTransparency = Instance.new("NumberValue")
         originalTransparency.Name = "OriginalTransparency"
         originalTransparency.Value = descendant.Transparency
         originalTransparency.Parent = descendant
      end
      descendant.Transparency = 0
   end
 end
  else 
  for i, descendant in pairs(workspace:GetDescendants()) do
   if descendant:IsA("BasePart") then
      if not descendant:FindFirstChild("OriginalTransparency") then
	     local originalTransparency = Instance.new("NumberValue")
		 originalTransparency.Name = "OriginalTransparency"
		 originalTransparency.Value = descendant.Transparency
		 originalTransparency.Parent = descendant
	  end
	  descendant.Transparency = descendant.OriginalTransparency.Value
   end
 end
  end
end)

t3:AddButton({"Double Jump", function()
  run("https://pastebin.com/raw/yHkKe5fH")
end})

t3:AddButton({"Noclip Camera", function()
  run("https://pastebin.com/raw/y8DAEgGy")
end})

t3:AddButton({"destroy Delay", function()
spam()
  while true do
wait(0,3)
for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do if v.ClassName == "ProximityPrompt" then v.HoldDuration = 0 end end
end
end})

t3:AddButton({"Shif Lock!", function()
  run("https://raw.githubusercontent.com/Unknownproootest/Permanent-Shift-Lock-Beta/alt/PermShiftlockLeft")
end})

t3:AddButton({"SENT R15", function()
spam()
  promptNewRig = function(rig)
 game.AvatarEditorService:PromptSaveAvatar(game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription, Enum.HumanoidRigType[rig])
 local result = game.AvatarEditorService.PromptSaveAvatarCompleted:Wait()
 if result == Enum.AvatarPromptResult.Success then
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
 end
 end
 promptNewRig("R15")
end})

t3:AddButton({"SENT R6", function()
spam()
  promptNewRig = function(rig)
 game.AvatarEditorService:PromptSaveAvatar(game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription, Enum.HumanoidRigType[rig])
 local result = game.AvatarEditorService.PromptSaveAvatarCompleted:Wait()
 if result == Enum.AvatarPromptResult.Success then
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
 end
 end
 promptNewRig("R6")
end})

t3:AddButton({"Fps Boost", function()
  run("https://raw.githubusercontent.com/UhGbaaaa/Script-Roblox-New/refs/heads/main/Fps%20boost%202024")
end})

t3:AddButton({"Free Emoji", function()
  run("https://gist.githubusercontent.com/RedZenXYZ/3da6af1961efa275de6c3c2a6dbace03/raw/bb027f99cec0ea48ef9c5eabfb9116ddff20633d/FE%2520Emotes%2520Gui")
end})

t3:AddButton({"etheral.private", function()
  run("https://raw.githubusercontent.com/STEEZY02/etheral.private/refs/heads/main/etheral.private")
end})

t3:AddButton({"Teleport Gui", function()
  run("https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Teleport%20Gui.lua")
end})

t3:AddButton({"Char Bypass", function()
  run("https://rawscripts.net/raw/Universal-Script-Chat-Bypasse-18865")
end})

t3:AddButton({"Universal Tools", function()
  run("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub-Backup/main/gametoolgiver.lua")
end})

t3:AddButton({"Toggle Kill Block [Z]", function()
spam()
  local player = game:GetService("Players").LocalPlayer
local UIS = game:GetService("UserInputService")
local myzaza = false

UIS.InputBegan:Connect(function(input, GPE)
if GPE then return end
if input.KeyCode == Enum.KeyCode.Z then
myzaza = not myzaza
end
end)

while task.wait() do
local parts = workspace:GetPartBoundsInRadius(player.Character:WaitForChild("HumanoidRootPart").Position, 10)
for _, part in ipairs(parts) do
part.CanTouch = myzaza
end
end
end})

t3:AddButton({"Bring Player", function()
  run("https://pastebin.com/raw/iThJgCAS")
end})

t3:AddButton({"FE Lag Switch", function()
  run("https://raw.githubusercontent.com/0Ben1/fe/main/Protected%20-%202023-05-28T225112.055.lua.txt")
end})

t3:AddButton({"Fake Char", function()
  run("https://pastebin.com/raw/eHv5DAzL")
end})

t3:AddButton({"Chat Art", function()
  run("https://raw.githubusercontent.com/balditeacher/obfuscated-mobile-supportloadstring/main/obfuscated")
end})

t3:AddButton({"Car Fly", function()
  run("https://pastebin.com/raw/MHE1cbWF")
end})

t3:AddButton({"VR", function()
  run("https://raw.githubusercontent.com/0Ben1/fe/main/Vr%20arms")
end})

t3:AddButton({"Keyboard", function()
  run("https://raw.githubusercontent.com/Bysuskhmerops62/script-/refs/heads/main/VirtualKeyboard.lua.txt")
end})

t3:AddButton({"Click TP [TOOLS]", function()
spam()
  mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Teleport"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end})

t3:AddButton({"Telekinesis [TOOLS]", function()
  run("https://raw.githubusercontent.com/Bysuskhmerops62/script-/refs/heads/main/qwerty11.lua.txt")
end})

t3:AddButton({"Boombox [TOOLS]", function()
 _G.boomboxb = game:GetObjects('rbxassetid://2235994611')[1]
_G.boomboxb.Parent = game:GetService'Players'.LocalPlayer.Backpack
loadstring(_G.boomboxb.Client.Source)() 
loadstring(_G.boomboxb.Server.Source)()
end})

t3:AddButton({"Invisible [TOOLS]", function()
spam()
  local removeNametags = false -- remove custom billboardgui nametags from hrp, could trigger anticheat

local plr = game:GetService("Players").LocalPlayer
local character = plr.Character
local hrp = character.HumanoidRootPart
local old = hrp.CFrame

if not character:FindFirstChild("LowerTorso") or character.PrimaryPart ~= hrp then
return print("unsupported")
end

if removeNametags then
local tag = hrp:FindFirstChildOfClass("BillboardGui")
if tag then tag:Destroy() end

hrp.ChildAdded:Connect(function(item)
if item:IsA("BillboardGui") then
task.wait()
item:Destroy()
end
end)
end

local newroot = character.LowerTorso.Root:Clone()
hrp.Parent = workspace
character.PrimaryPart = hrp
character:MoveTo(Vector3.new(old.X,9e9,old.Z))
hrp.Parent = character
task.wait(0.5)
newroot.Parent = hrp
hrp.CFrame = old
end})

local se1 = t3:AddSection({"GUI / HUB"})

t3:AddButton({"infinite yield", function()
  run("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source")
end})

t3:AddButton({"Nameless Admin", function()
  run("https://raw.githubusercontent.com/Bysuskhmerops62/script-/refs/heads/main/Source.lua.txt")
end})

t3:AddButton({"Rochips Panel ", function()
spam()
  if "you wanna use rochips universal" then
	local z_x,z_z="gzrux646yj/raw/main.ts","https://glot.io/snippets/"
	local im,lonely,z_c=task.wait,game,loadstring
	z_c(lonely:HttpGet(z_z..""..z_x))()
	return ("This will load in about 2 - 30 seconds" or "according to your device and executor")
end
end})

t3:AddButton({"Ghost Hub ", function()
  run("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub")
end})

t3:AddButton({"X Mobile Old", function()
  run("https://rawscripts.net/raw/Universal-Script-New-Bysuskhmer-14550")
end})

t3:AddButton({"SystemBroken", function()
  run("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/script")
end})

t3:AddButton({"ECCS Searcher V27", function()
  run("https://raw.githubusercontent.com/Bysuskhmerops62/script-/refs/heads/main/ECCS%20Searcher%20V2.7.lua.txt")
end})

local se1 = t3:AddSection({"Execute"})

t3:AddButton({"Arceus x [ PE ]", function()
  run("https://raw.githubusercontent.com/Giangplay/Script/main/Arceus_X_V3.lua")
end})

t3:AddButton({"Synapse X [ PE Delta ]", function()
  run("https://raw.githubusercontent.com/delta-hydro/secret-host-haha/main/syn_ui_new.lua")
end})

t3:AddButton({"Codex [ PE ]", function()
  run("https://raw.githubusercontent.com/Giangplay/Script/main/Codex.lua")
end})

t3:AddButton({"Kiwi [ PE ]", function()
  run("https://raw.githubusercontent.com/Giangplay/Script/main/Kiwi-Ui.lua")
end})

t3:AddButton({"Arceus x [ PE ]", function()
  run("https://raw.githubusercontent.com/Giangplay/Script/main/Arceus_X_V3.lua")
end})

t4:AddButton({"Fling saMtiek2", function()
  run("https://pastebin.com/raw/saMtiek2")
end})

t4:AddButton({"Auto Fling Player", function()
  run("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Auto%20Fling%20Player")
end})

t4:AddButton({"Touch Fling GUi", function()
  run("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI")
end})

local gsgs = t4:AddSection({"Script 18+"})

t4:AddButton({"18+ V1(work R6)", function()
  loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))("Spider Script")
end})


local gsgs = t4:AddSection({"Fling Hot"})

t4:AddButton({"SCP -096", function()
  loadstring(game:HttpGet("https://pastefy.app/YsJgITXR/raw"))()
end})

local pg1 = t5:AddSection({"Create a Cart Ride"})

t5:AddButton({"Create a Cart Ride(HydraX)", function()
  run("https://raw.githubusercontent.com/whiteinian/Aquaware/main/Main.lua")
end})

local pg1 = t5:AddSection({"KAT"})

t5:AddButton({"KAT(HydraX)", function()
  run("https://raw.githubusercontent.com/whiteinian/Aquaware/main/Main.lua")
end})

local pg1 = t5:AddSection({"FORTLINE"})

t5:AddButton({"FORTLINE(HydraX)", function()
  run("https://raw.githubusercontent.com/Bysuskhmerops62/game/refs/heads/main/FORTLINE.lua.txt")
end})

local pg1 = t5:AddSection({"Build a boat"})

t5:AddButton({"Build a boat(Prosexy)", function()
  run("https://raw.githubusercontent.com/Prosexy/Demonic-HUB-V2/main/DemonicHub_V2.lua")
end})

local pg1 = t5:AddSection({"Car Dealership Tycoon"})

t5:AddButton({"Car Dealership Tycoon(Marco8642)", function()
  run("https://raw.githubusercontent.com/Marco8642/science/main/car%20dealer")
end})

local pg1 = t5:AddSection({"GEF"})

t5:AddButton({"GEF(...)", function()
  run("https://pastebin.com/raw/QChjMUq2")
end})

local pg1 = t5:AddSection({"Bedwars"})

t5:AddButton({"Bedwars(VapeVoidware)", function()
  run("https://raw.githubusercontent.com/VapeVoidware/vapevoidware/main/NewMainScript.lua")
end})


local pg1 = t5:AddSection({"MM2 Duels"})

t5:AddButton({"MM2 Duels (GhostPlayer352)", function()
  run("https://raw.githubusercontent.com/GhostPlayer352/Test4/refs/heads/main/MM2%20Duels")
end})


local pg1 = t5:AddSection({"Murder Vs Sheriff"})


t5:AddButton({"Murder Vs Sheriff (...)", function()
  run("https://pastebin.com/raw/4MvbLUwi")
end})

t5:AddButton({"Murder Vs Sheriff (iSPLOIT)", function()
  run("https://raw.githubusercontent.com/b9natwo/iSPLOIT/main/Murderers%20VS%20Sheriffs%20Duels.lua")
end})

local pg1 = t5:AddSection({"Flex fps"})

t5:AddButton({"Flex fps (v-oidd)", function()
  run("https://raw.githubusercontent.com/v-oidd/flex-your-fps-script/main/script")
end})

local pg1 = t5:AddSection({"Murder Mystery 2"})

t5:AddButton({"Murder Mystery 2 (Joystickplays)", function()
  run("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/source/yarhm/1.17/yarhm.lua")
end})

t5:AddButton({"Murder Mystery 2 (overdrive) [Hot]", function()
  run("https://overdrive-h.ohd.workers.dev/?d=loader")
end})

t5:AddButton({"Murder Mystery 2 (UhGbaaaa)", function()
  run("https://raw.githubusercontent.com/UhGbaaaa/Game-script-/refs/heads/main/MODO%20GOD.txt")
end})

t5:AddButton({"Murder Mystery 2 (ThatSick)", function()
  run("https://raw.githubusercontent.com/ThatSick/ArrayField/main/SymphonyHub.lua")
end})

t5:AddButton({"Murder Mystery 2 (Au0yX)", function()
  run("https://raw.githubusercontent.com/Au0yX/Community/main/XhubMM2")
end})

local pg1 = t5:AddSection({"flee the facility"})

t5:AddButton({"flee the facility (UhGbaaaa)", function()
  run("https://raw.githubusercontent.com/UhGbaaaa/Script-Roblox-New/refs/heads/main/FTFHAX.lua.txt")
end})

local pg1 = t5:AddSection({"dont press the button 4"})

t5:AddButton({"dont press the button 4 (SlamminPig)", function()
  run("https://raw.githubusercontent.com/SlamminPig/rblxgames/main/Don't%20Press%20The%20Button%204/DontPressTheButton4GUI")
end})

local pg1 = t5:AddSection({"voice control "})

t5:AddButton({"voice control (RENZXW)", function()
  run("https://raw.githubusercontent.com/RENZXW/RENZXW-SCRIPTS/main/Protected_3349549151958203.txt")
end})

local pg1 = t5:AddSection({"Natural Disaster"})

t5:AddButton({"Natural Disaster (...)", function()
  run("https://pastebin.com/raw/JnGNjU0X")
end})

t5:AddButton({"Natural Disaster (RobloxHackingProject)", function()
  run("https://raw.githubusercontent.com/RobloxHackingProject/CHHub/main/CHHub.lua")
end})

local pg1 = t5:AddSection({"Blade Ball"})

t5:AddButton({"Blade Ball (devdoroz)", function()
  run("https://raw.githubusercontent.com/devdoroz/bleachhack/main/newloader.lua")
end})

t5:AddButton({"Blade Ball (Kozukiremboukk)", function()
  run("https://raw.githubusercontent.com/Kozukiremboukk/Aqui-mesml/main/blades")
end})

local pg1 = t5:AddSection({"Build a battle"})

t5:AddButton({"Build a battle (UhGbaaaa)", function()
  run("https://raw.githubusercontent.com/UhGbaaaa/Game-script-/main/Build%20a%20battle.txt")
end})

t5:AddButton({"Build a battle (Bysuskhmerops62)", function()
  run("https://raw.githubusercontent.com/Bysuskhmerops62/game/refs/heads/main/JAY_NOT%20ZIAD.txt")
end})

local pg1 = t5:AddSection({"Brookhaven"})

t5:AddButton({"Brookhaven (sXPiterXs1111)", function()
  run("https://raw.githubusercontent.com/sXPiterXs1111/Sanderx3.25/main/sanderxv3.25.lua")
end})

local pg1 = t5:AddSection({"Doors"})

t5:AddButton({"Doors (notpoiu)", function()
  run("https://raw.githubusercontent.com/notpoiu/mspaint/main/main.lua")
end})

local pg1 = t5:AddSection({"Survival the Killer"})

t5:AddButton({"Survival the Killer (Milan08Studio)", function()
  run("https://raw.githubusercontent.com/Milan08Studio/ChairWare/main/main.lua")
end})

t5:AddButton({"Survival the Killer (FOXTROXHACKS)", function()
  run("https://raw.githubusercontent.com/FOXTROXHACKS/ElToro/main/Hub.lua")
end})

local pg1 = t5:AddSection({"Blox Fruit"})

t5:AddButton({"Blox Fruit (Rafanchik123)", function()
  run("https://raw.githubusercontent.com/Rafanchik123/script/main/MinGamingV4blox")
end})

t5:AddButton({"Blox Fruit (realredz)", function()
  run("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua")
end})

t5:AddButton({"Blox Fruit (AhmadV99)", function()
  run("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua")
end})

local pg1 = t5:AddSection({"prison life"})

t5:AddButton({"prison life (Denverrz)", function()
  run("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt")
end})

t5:AddButton({"prison life (g00lXploiter)", function()
  run("https://raw.githubusercontent.com/g00lXploiter/g00lXploiter/main/Fe%20bypass")
end})

t5:AddButton({"prison life (UhGbaaaa)", function()
  run("https://raw.githubusercontent.com/UhGbaaaa/Script-Roblox-New/refs/heads/main/Pramis")
end})

local pg1 = t5:AddSection({"CHAOS"})

t5:AddButton({"CHAOS (Dan41)", function()
  run("https://raw.githubusercontent.com/Dan41/Scripts/refs/heads/main/PROTECTED%20CONTENT.lua")
end})

t5:AddButton({"CHAOS (1111-ssss)", function()
  run("https://raw.githubusercontent.com/1111-ssss/Chaos_Script/main/Chaos_script.txt")
end})

local pg1 = t5:AddSection({"Fisch"})

t5:AddButton({"Fisch (AhmadV99)", function()
  run("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua")
end})

local pg1 = t5:AddSection({"Da Hood"})

t5:AddButton({"Da Hood (Bovanlaarhoven)", function()
  run("https://raw.githubusercontent.com/Bovanlaarhoven/Primordial/main/src/loader.lua")
end})

t5:AddButton({"Da Hood (Zinzs)", function()
  run("https://raw.githubusercontent.com/Zinzs/luascripting/main/omgrealdahoodscriptnowayyyyy.lua")
end})

local pg1 = t5:AddSection({"Zombie Attack"})

t5:AddButton({"Zombie Attack (ghosthub", function()
  run("https://ghost-storage.7m.pl/scripts/ghosthublauncher.lua")
end})

t5:AddButton({"Zombie Attack (Unknownproooolucky)", function()
  run("https://raw.githubusercontent.com/Unknownproooolucky/Unknown-Hub-X-Universal-Games/main/Games/Zombie-Attack")
end})

t5:AddButton({"Zombie Attack (RTrade)", function()
  run("https://raw.githubusercontent.com/RTrade/Voidz/main/Games.lua")
end})

local pg1 = t5:AddSection({"zombie uprising"})

t5:AddButton({"zombie uprising (Unknownproooolucky)", function()
  run("https://raw.githubusercontent.com/Unknownproooolucky/Unknown-Hub-X-Universal-Games/main/Games/Zombie-Uprising")
end})

local t66 = t6:AddSection({"Animation R15"})

t6:AddButton({"Vampire", function()
  local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Hero", function()
  local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Zombie", function()
  local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Mage", function()
  local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Ghost", function()
  local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Elder", function()
  local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Levitation", function()
  local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Astronaut", function()
  local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Ninja", function()
  local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Werewolf", function()
  local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Cartoon", function()
  local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Pirate", function()
  local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Sneaky", function()
  local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1132473842"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1132477671"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1132510133"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1132494274"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1132489853"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1132461372"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1132469004"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Toy", function()
  local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Knight", function()
  local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Confident", function()
  Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1069977950"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1069987858"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1070017263"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1070001516"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1069984524"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1069946257"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1069973677"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Popstar", function()
  local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980338"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980348"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1212954642"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1213044953"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1212900995"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Princess", function()
  Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=941003647"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=941013098"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=941028902"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=941015281"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=941008832"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=940996062"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=941000007"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Cowboy", function()
  local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1014390418"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1014398616"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1014421541"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1014401683"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1014394726"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1014380606"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1014384571"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Patrol", function()
  local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1150842221"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1151231493"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1150967949"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1150944216"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1148863382"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

t6:AddButton({"Zombie FE", function()
  local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=3489171152"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=3489171152"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=3489174223"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=3489173414"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end})

local t66 = t6:AddSection({"Animation R6"})

t6:AddButton({"SAD BOY FE", function()
spam()
  run("https://raw.githubusercontent.com/UhGbaaaa/Script-Roblox-New/refs/heads/main/hgPJbwF0.txt")
end})

t6:AddButton({"CHII FE", function()
spam()
  run("https://scriptblox.com/raw/Universal-Script-FE-Chill-14288")
end})

t6:AddButton({"Animation Speed", function()
spam()
  run("https://raw.githubusercontent.com/Bysuskhmerops62/script-/refs/heads/main/uacVtsWe.txt8")
end})

 t7:AddButton({"LIBRARY 1", function()
  run("https://raw.githubusercontent.com/UhGbaaaa/Game-script-/refs/heads/main/README.md")
end})

t7:AddButton({"LIBRARY 2 (XCT)", function()
spam()
  local function ApplyESP(v)
   if v.Character and v.Character:FindFirstChildOfClass'Humanoid' then
       v.Character.Humanoid.NameDisplayDistance = 9e9
       v.Character.Humanoid.NameOcclusion = "NoOcclusion"
       v.Character.Humanoid.HealthDisplayDistance = 9e9
       v.Character.Humanoid.HealthDisplayType = "AlwaysOn"
       v.Character.Humanoid.Health = v.Character.Humanoid.Health -- triggers changed
   end
end
for i,v in pairs(game.Players:GetPlayers()) do
   ApplyESP(v)
   v.CharacterAdded:Connect(function()
       task.wait(0.33)
       ApplyESP(v)
   end)
end

game.Players.PlayerAdded:Connect(function(v)
   ApplyESP(v)
   v.CharacterAdded:Connect(function()
       task.wait(0.33)
       ApplyESP(v)
   end)
end)
end})

t7:AddButton({"Esp Map", function()
  run("https://pastebin.com/e5tMrV7y")
end})

local esp1 = t7:AddToggle({
  Name = "Character Highlight",
  Default = false
})

esp1:Callback(function(state)
spam()
  getgenv().enabled = state --Toggle on/off
getgenv().filluseteamcolor = true --Toggle fill color using player team color on/off
getgenv().outlineuseteamcolor = true --Toggle outline color using player team color on/off
getgenv().fillcolor = Color3.new(0, 0, 0) --Change fill color, no need to edit if using team color
getgenv().outlinecolor = Color3.new(1, 1, 1) --Change outline color, no need to edit if using team color
getgenv().filltrans = 0.5 --Change fill transparency
getgenv().outlinetrans = 0.5 --Change outline transparency

loadstring(game:HttpGet("https://pastebin.com/raw/MBrkLzCp"))()
end)

local function getPlayerByName(playerName)
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player.Name:lower() == playerName:lower() then
            return player
        end
    end
    return nil
end

t8:AddTextBox({
  Name = "Enter Player Name",
  Description = "Enter Name",
  Default = "",
  Callback = function(Value)
    Username = Value
    Target = Value
  end
})

local wi = t8:AddSection({"Please fill in your full name correctly."})

t8:AddButton({"Goto", function()
spam()
	
		local playerName = Username
    local player = getPlayerByName(playerName)
    if player then
        local targetHumanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        if targetHumanoidRootPart then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = targetHumanoidRootPart.CFrame
        end
    else
        print("Player not found!")
    end
end})

t8:AddButton({"Esp", function()
spam()
	
		local playerName = Username
    local player = getPlayerByName(playerName)
    if player then
        local highlight = Instance.new("Highlight")
        highlight.Parent = player.Character
        highlight.FillColor = Color3.fromRGB(255, 0, 0) -- កំណត់ពណ៌ក្រហមសម្រាប់ ESP
        highlight.FillTransparency = 0.5
    else
        print("Player not found!")
    end
end})

t8:AddButton({"Check Age", function()
spam()

	local playerName = Username
    local player = getPlayerByName(playerName)
    if player then
        -- ពិនិត្យអាយុ
        local age = player.AccountAge
        print(player.Name .. " has been on Roblox for " .. age .. " days.")
        
        -- បង្ហាញជាមួយ TextBox ឬ Notification
        local ageMessage = "Player " .. player.Name .. " has been on Roblox for " .. age .. " days."
        noti("Player For : Roblox", ageMessage)
    else
        print("Player not found!")
    end
end})

t8:AddButton({"Fling", function()
spam()
	local Targets = Username

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local AllBool = false

local GetPlayer = function(Name)
    Name = Name:lower()
    if Name == "all" or Name == "others" then
        AllBool = true
        return
    elseif Name == "random" then
        local GetPlayers = Players:GetPlayers()
        if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
        return GetPlayers[math.random(#GetPlayers)]
    elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
        for _,x in next, Players:GetPlayers() do
            if x ~= Player then
                if x.Name:lower():match("^"..Name) then
                    return x;
                elseif x.DisplayName:lower():match("^"..Name) then
                    return x;
                end
            end
        end
    else
        return
    end
end

local Message = function(_Title, _Text, Time)
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
end

local SkidFling = function(TargetPlayer)
    local Character = Player.Character
    local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Humanoid and Humanoid.RootPart

    local TCharacter = TargetPlayer.Character
    local THumanoid
    local TRootPart
    local THead
    local Accessory
    local Handle

    if TCharacter:FindFirstChildOfClass("Humanoid") then
        THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
    end
    if THumanoid and THumanoid.RootPart then
        TRootPart = THumanoid.RootPart
    end
    if TCharacter:FindFirstChild("Head") then
        THead = TCharacter.Head
    end
    if TCharacter:FindFirstChildOfClass("Accessory") then
        Accessory = TCharacter:FindFirstChildOfClass("Accessory")
    end
    if Accessoy and Accessory:FindFirstChild("Handle") then
        Handle = Accessory.Handle
    end

    if Character and Humanoid and RootPart then
        if RootPart.Velocity.Magnitude < 50 then
            getgenv().OldPos = RootPart.CFrame
        end
        if THumanoid and THumanoid.Sit and not AllBool then
            return Message("Error Occurred", "Targeting is sitting", 5) -- u can remove dis part if u want lol
        end
        if THead then
            workspace.CurrentCamera.CameraSubject = THead
        elseif not THead and Handle then
            workspace.CurrentCamera.CameraSubject = Handle
        elseif THumanoid and TRootPart then
            workspace.CurrentCamera.CameraSubject = THumanoid
        end
        if not TCharacter:FindFirstChildWhichIsA("BasePart") then
            return
        end
        
        local FPos = function(BasePart, Pos, Ang)
            RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
            Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
            RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
            RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
        end
        
        local SFBasePart = function(BasePart)
            local TimeToWait = 2
            local Time = tick()
            local Angle = 0

            repeat
                if RootPart and THumanoid then
                    if BasePart.Velocity.Magnitude < 50 then
                        Angle = Angle + 100

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()
                    else
                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()
                        
                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()
                    end
                else
                    break
                end
            until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
        end
        
        workspace.FallenPartsDestroyHeight = 0/0
        
        local BV = Instance.new("BodyVelocity")
        BV.Name = "EpixVel"
        BV.Parent = RootPart
        BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
        BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
        
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        
        if TRootPart and THead then
            if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
                SFBasePart(THead)
            else
                SFBasePart(TRootPart)
            end
        elseif TRootPart and not THead then
            SFBasePart(TRootPart)
        elseif not TRootPart and THead then
            SFBasePart(THead)
        elseif not TRootPart and not THead and Accessory and Handle then
            SFBasePart(Handle)
        else
            return Message("Error Occurred", "Target is missing everything", 5)
        end
        
        BV:Destroy()
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        workspace.CurrentCamera.CameraSubject = Humanoid
        
        repeat
            RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
            Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
            Humanoid:ChangeState("GettingUp")
            table.foreach(Character:GetChildren(), function(_, x)
                if x:IsA("BasePart") then
                    x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
                end
            end)
            task.wait()
        until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
        workspace.FallenPartsDestroyHeight = getgenv().FPDH
    else
        return Message("Error Occurred", "Random error", 5)
    end
end

if not Welcome then Message("Script by AnthonyIsntHere", "Enjoy!", 5) end
getgenv().Welcome = true
if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end

if AllBool then
    for _,x in next, Players:GetPlayers() do
        SkidFling(x)
    end
end

for _,x in next, Targets do
    if GetPlayer(x) and GetPlayer(x) ~= Player then
        if GetPlayer(x).UserId ~= 1414978355 then
            local TPlayer = GetPlayer(x)
            if TPlayer then
                SkidFling(TPlayer)
            end
        else
            Message("Error Occurred", "This user is whitelisted! (Owner)", 5)
        end
    elseif not GetPlayer(x) and not AllBool then
        Message("Error Occurred", "Username Invalid", 5)
    end
end
end})


t8:AddButton({"Fling", function()
spam()

game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait()
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character.HumanoidRootPart.CFrame
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character.HumanoidRootPart.CFrame
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000,1000000000000000000000,-100000))
wait()
local prt=Instance.new("Model", workspace);
Instance.new("Part", prt).Name="Torso";
Instance.new("Part", prt).Name="Head";
Instance.new("Humanoid", prt).Name="Humanoid";
game.Players.LocalPlayer.Character=prt
end})

t8:AddButton({"Fling All", function()
spam()
	local Targets = {"All"} -- "All", "Target Name", "arian_was_here"

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local AllBool = false

local GetPlayer = function(Name)
    Name = Name:lower()
    if Name == "all" or Name == "others" then
        AllBool = true
        return
    elseif Name == "random" then
        local GetPlayers = Players:GetPlayers()
        if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
        return GetPlayers[math.random(#GetPlayers)]
    elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
        for _,x in next, Players:GetPlayers() do
            if x ~= Player then
                if x.Name:lower():match("^"..Name) then
                    return x;
                elseif x.DisplayName:lower():match("^"..Name) then
                    return x;
                end
            end
        end
    else
        return
    end
end

local Message = function(_Title, _Text, Time)
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
end

local SkidFling = function(TargetPlayer)
    local Character = Player.Character
    local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Humanoid and Humanoid.RootPart

    local TCharacter = TargetPlayer.Character
    local THumanoid
    local TRootPart
    local THead
    local Accessory
    local Handle

    if TCharacter:FindFirstChildOfClass("Humanoid") then
        THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
    end
    if THumanoid and THumanoid.RootPart then
        TRootPart = THumanoid.RootPart
    end
    if TCharacter:FindFirstChild("Head") then
        THead = TCharacter.Head
    end
    if TCharacter:FindFirstChildOfClass("Accessory") then
        Accessory = TCharacter:FindFirstChildOfClass("Accessory")
    end
    if Accessoy and Accessory:FindFirstChild("Handle") then
        Handle = Accessory.Handle
    end

    if Character and Humanoid and RootPart then
        if RootPart.Velocity.Magnitude < 50 then
            getgenv().OldPos = RootPart.CFrame
        end
        if THumanoid and THumanoid.Sit and not AllBool then
            return Message("Error Occurred", "Targeting is sitting", 5) -- u can remove dis part if u want lol
        end
        if THead then
            workspace.CurrentCamera.CameraSubject = THead
        elseif not THead and Handle then
            workspace.CurrentCamera.CameraSubject = Handle
        elseif THumanoid and TRootPart then
            workspace.CurrentCamera.CameraSubject = THumanoid
        end
        if not TCharacter:FindFirstChildWhichIsA("BasePart") then
            return
        end
        
        local FPos = function(BasePart, Pos, Ang)
            RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
            Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
            RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
            RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
        end
        
        local SFBasePart = function(BasePart)
            local TimeToWait = 2
            local Time = tick()
            local Angle = 0

            repeat
                if RootPart and THumanoid then
                    if BasePart.Velocity.Magnitude < 50 then
                        Angle = Angle + 100

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()
                    else
                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()
                        
                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()
                    end
                else
                    break
                end
            until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
        end
        
        workspace.FallenPartsDestroyHeight = 0/0
        
        local BV = Instance.new("BodyVelocity")
        BV.Name = "EpixVel"
        BV.Parent = RootPart
        BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
        BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
        
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        
        if TRootPart and THead then
            if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
                SFBasePart(THead)
            else
                SFBasePart(TRootPart)
            end
        elseif TRootPart and not THead then
            SFBasePart(TRootPart)
        elseif not TRootPart and THead then
            SFBasePart(THead)
        elseif not TRootPart and not THead and Accessory and Handle then
            SFBasePart(Handle)
        else
            return Message("Error Occurred", "Target is missing everything", 5)
        end
        
        BV:Destroy()
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        workspace.CurrentCamera.CameraSubject = Humanoid
        
        repeat
            RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
            Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
            Humanoid:ChangeState("GettingUp")
            table.foreach(Character:GetChildren(), function(_, x)
                if x:IsA("BasePart") then
                    x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
                end
            end)
            task.wait()
        until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
        workspace.FallenPartsDestroyHeight = getgenv().FPDH
    else
        return Message("Error Occurred", "Random error", 5)
    end
end

if not Welcome then Message("Script by AnthonyIsntHere", "Enjoy!", 5) end
getgenv().Welcome = true
if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end

if AllBool then
    for _,x in next, Players:GetPlayers() do
        SkidFling(x)
    end
end

for _,x in next, Targets do
    if GetPlayer(x) and GetPlayer(x) ~= Player then
        if GetPlayer(x).UserId ~= 1414978355 then
            local TPlayer = GetPlayer(x)
            if TPlayer then
                SkidFling(TPlayer)
            end
        else
            Message("Error Occurred", "This user is whitelisted! (Owner)", 5)
        end
    elseif not GetPlayer(x) and not AllBool then
        Message("Error Occurred", "Username Invalid", 5)
    end
end
end})

t9:AddButton({"Part Name", function()
  run("https://raw.githubusercontent.com/Bysuskhmerops62/script-/refs/heads/main/partname.lua.txt")
end})

t9:AddButton({"Part Gui", function()
spam()
  run2("7")
end})

t9:AddButton({"position finder gui", function()
  run("https://pastebin.com/raw/BjViRedU")
end})

t9:AddButton({"turtle spy", function()
  run("https://raw.githubusercontent.com/Bysuskhmerops62/script-/refs/heads/main/Turtle%20Spy.txt")
end})

t9:AddButton({"SimpleSpy", function()
  run("https://raw.githubusercontent.com/UhGbaaaa/Android-Value/main/SimpleSpyMobile.txt")
end})

t9:AddButton({"Gui Make", function()
spam()
  
  run2("8")
end})

t9:AddButton({"Obfuscator", function()
spam()
  run2("20")
end})

run("https://raw.githubusercontent.com/Bysuskhmerops62/script-/refs/heads/main/raw.txt")

t10:AddButton({"Buy Premium 80 Robux = 1.15$", function()
spam()
  copy("https://www.roblox.com/game-pass/928623162/Blue-Mod-Premium")
end})

getgenv().NotiPJoim = true
getgenv().NotiLevae = true

gotopartDelay = 0.1

function getPartByName(name)
    for _, part in pairs(workspace:GetDescendants()) do
        if part.Name == name and part:IsA("BasePart") then
            return part
        end
    end
    return nil
end

local title = t11:AddSection({"Part For Game [Data]"})

local espTransparency = 0.3  
local espColor = "Black"  -- ពណ៌ដើម
local speaker = game.Players.LocalPlayer
local espParts = {}

getgenv().TeleportLoop = false
getgenv().BringLoop = false

-- Function សម្រាប់រកតម្លៃក្នុង Table
function FindInTable(tbl, val)
    for _, v in pairs(tbl) do
        if v == val then
            return true
        end
    end
    return false
end

-- Function បង្កើត ESP
function AddESP(part)
    if part:IsA("BasePart") and part.Name:lower() == getgenv().PartName:lower() then  
        if not part:FindFirstChild(getgenv().PartName.."_PESP") then
            local a = Instance.new("BoxHandleAdornment")  
            a.Name = getgenv().PartName.."_PESP"  
            a.Parent = part  
            a.Adornee = part  
            a.AlwaysOnTop = true  
            a.ZIndex = 0  
            a.Size = part.Size  
            a.Transparency = espTransparency  
            a.Color = BrickColor.new(espColor)  -- ✅ ប្រើពណ៌ដែលបានជ្រើស  
        end
    end
end

-- បន្ថែម TextBox ដើម្បីបញ្ចូលឈ្មោះផ្នែក
t11:AddTextBox({
  Name = "Enter Part Name",
  Description = "Enter Part",
  Default = "",
  Callback = function(Value)
    getgenv().PartName = Value
  end
})

-- **📌 Dropdown សម្រាប់ជ្រើសរើសពណ៌ ESP**
local Dropdown = t11:AddDropdown({
  Name = "ESP COLOR",
  Description = "Select the <font color='rgb(88, 101, 242)'>COLOR FOR ESP</font>",
  Options = {"Black", "White"},
  Default = "Black",
  Callback = function(Value)
    espColor = Value  -- ✅ កែប្រែពណ៌ ESP  
  end
})

-- ប៊ូតុង Part ESP
t11:AddButton({"Part ESP", function()  
	if getgenv().PartName and not FindInTable(espParts, getgenv().PartName) then  
		table.insert(espParts, getgenv().PartName)  
		for _, v in pairs(workspace:GetDescendants()) do  
			AddESP(v)
		end  
	end  
end})

-- ប៊ូតុង UN ESP
t11:AddButton({"UN ESP", function()  
	espParts = {}  
	for _, part in pairs(workspace:GetDescendants()) do  
		if part:IsA("BasePart") then  
			local adornment = part:FindFirstChild(getgenv().PartName.."_PESP")  
			if adornment then  
				adornment:Destroy()  
			end  
		end  
	end  
end})

-- **📌 បង្កើត Event ដើម្បីចាប់ផ្តើម ESP ពេល Object បង្ហាញឡើងវិញ**
workspace.DescendantAdded:Connect(function(part)
    -- ពិនិត្យមើល PartName តើមានឬអត់ និងធ្វើការបន្ថែម ESP
    if getgenv().PartName and part:IsA("BasePart") then
        AddESP(part)
        
        -- ប្រសិនបើ TeleportLoop ត្រូវបានដំណើរការ
        if getgenv().TeleportLoop == true then
            -- ចាប់ត្រួតពិនិត្យផ្នែក និងផ្លាស់ទី Player ទៅផ្នែក
            for i, v in pairs(workspace:GetDescendants()) do
                if v.Name:lower() == getgenv().PartName:lower() and v:IsA("BasePart") then
                    -- បញ្ចប់ការចូលក្នុងកៅអី (ប្រសិនបើមាន)
                    local humanoid = speaker.Character:FindFirstChildOfClass('Humanoid')
                    if humanoid and humanoid.SeatPart then
                        humanoid.Sit = false
                        wait(0.1)  -- រងចាំខ្លីមុននឹងបន្ត
                    end
                    -- រង់ចាំការព្យាយាមទៅកាន់ផ្នែក
                    wait(gotopartDelay)
                    -- កំណត់ CFrame របស់ RootPart ទៅ CFrame របស់ផ្នែកដែលជ្រើសរើស
                    getRoot(speaker.Character).CFrame = v.CFrame
                end
            end
        end
        
        -- ប្រសិនបើ BringLoop ត្រូវបានដំណើរការ
        if getgenv().BringLoop == true then
            -- ពិនិត្យនិងផ្លាស់ទី Part ទៅកាន់ Player
            for i, v in pairs(workspace:GetDescendants()) do
                if v.Name:lower() == getgenv().PartName:lower() and v:IsA("BasePart") then
                    -- ផ្លាស់ប្ដូរទៅកាន់ CFrame របស់ speaker.Character
                    v.CFrame = getRoot(speaker.Character).CFrame
                end
            end
        end
    end
end)


t11:AddButton({"Teleport", function()
    for i, v in pairs(workspace:GetDescendants()) do
      if v.Name:lower() == PartName:lower() and v:IsA("BasePart") then
        -- បញ្ចប់ការចូលក្នុងកៅអី (ប្រសិនបើមាន)
        local humanoid = speaker.Character:FindFirstChildOfClass('Humanoid')
        if humanoid and humanoid.SeatPart then
          humanoid.Sit = false
          wait(0.1)  -- រង់ចាំខ្លីមុននឹងបន្ត
        end
        -- រង់ចាំការព្យាយាមទៅកាន់ផ្នែក
        wait(gotopartDelay)
        -- កំណត់ CFrame របស់ root part ទៅ CFrame របស់ផ្នែកដែលជ្រើសរើស
        getRoot(speaker.Character).CFrame =  v.CFrame
      end
    end
  end
})

t11:AddToggle({
    Name = "Loop Teleport",
    Default = false,
    Callback = function(v)
     getgenv().TeleportLoop = v
    end
})

t11:AddButton({"Bring", function()
    -- ប្រសិនបើ spam() ត្រូវបានប្រើប្រាស់នៅទីនេះ
    spam()

    -- កំណត់ speaker ឲ្យជាអ្នកលេងបច្ចុប្បន្ន
    

    -- ពិនិត្យផ្នែកនានា
    for i, v in pairs(workspace:GetDescendants()) do
      -- ប្រៀបធៀបឈ្មោះផ្នែក និង getstring(1)
      if v.Name:lower() == PartName:lower() and v:IsA("BasePart") then
        -- ផ្លាស់ប្ដូរទៅកាន់ CFrame របស់ speaker.Character
        v.CFrame = getRoot(speaker.Character).CFrame
      end
    end
  end
})

t11:AddToggle({
    Name = "Loop Bring",
    Default = false,
    Callback = function(v)
     getgenv().BringLoop = v
    end
})

local title = t11:AddSection({"System Notification"})

getgenv().NotiLevae = true
getgenv().NotiPJoim = true

local sp1 = t11:AddToggle({
  Name = "Notification Player Join",
  Default = true
})

sp1:Callback(function(s)
  -- កំណត់អថេរ global សម្រាប់ការប្រើប្រាស់ notification ពេលអ្នកលេងចូល
  getgenv().NotiPJoim = s
end)

local sp2 = t11:AddToggle({
  Name = "Notification Player Leave",
  Default = true
})

sp2:Callback(function(s)
  -- កំណត់អថេរ global សម្រាប់ការប្រើប្រាស់ notification ពេលអ្នកលេងចាកចេញ
  getgenv().NotiLevae = s
end)

local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
  -- បញ្ជាក់ថាអ្នកលេងត្រូវបានដាក់ជា join notification ត្រឹមត្រូវ
  if getgenv().NotiPJoim == true then
    
  end
end)

Players.PlayerRemoving:Connect(function(player)
  -- បញ្ជាក់ថាអ្នកលេងត្រូវបានដាក់ជា leave notification ត្រឹមត្រូវ
  if getgenv().NotiLevae == true then
    
  end
end)

local devi = ""
if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled and not UserInputService.MouseEnabled then
    device = "Mobile device"
    devi = "Mobile"
elseif not UserInputService.TouchEnabled and UserInputService.KeyboardEnabled and UserInputService.MouseEnabled then
    device = "Computer device"
    devi = "PC"
end

local ex = t0:AddSection({"You Play : "})

t0:AddDiscordInvite({
  Name = "Synapse  | GROUP",
  Logo = "https://www.roblox.com/headshot-thumbnail/image?userId=".. game.Players.LocalPlayer.UserId .."&width=420&height=420&format=png",
  Invite = "https://t.me/+Bg3ix2oH_B1iZGM1"
})

local t00 = t0:AddSection({"Game Data"})

local t00 = t0:AddSection({"Game Clock : "..game:GetService("Lighting").ClockTime})

local cs2 = t0:AddSection({"Health : "..game.Players.LocalPlayer.Character.Humanoid.Health})
local t00 = t0:AddSection({"You Profile"})
local t01 = t0:AddSection({"You Age [ "..game.Players.LocalPlayer.AccountAge.." ]"})
local t08 = t0:AddSection({"You Name [ "..game.Players.LocalPlayer.Name.." ]"})
local youID = game.Players.LocalPlayer.UserId
local t03 = t0:AddSection({"Game ID [ "..game.PlaceId.." ]"})

t0:AddButton({"COPY", function()
spam()
  copy(game.PlaceId)
end})

local pol = t0:AddSection({"Game Name [ "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.." ]"})

t0:AddButton({"COPY", function()
spam()
  copy(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
end})

local pol = t0:AddSection({"Game Job Id [ "..game.JobId.." ]"})

t0:AddButton({"COPY", function()
spam()
  copy(game.JobId)
end})

local pol = t0:AddSection({"You User : "..device})

local TimeSpam1 = 0  -- នាទី
local TimeSpam2 = 0 -- វិនាទី
local TimeSpam3 = 0 -- ម៉ោង


while true do
    TimeSpam2 = TimeSpam2 + 1
    if TimeSpam2 == 60 then
        TimeSpam2 = 0
        TimeSpam1 = TimeSpam1 + 1
    end
    if TimeSpam1 == 60 then
        TimeSpam1 = 0
        TimeSpam3 = TimeSpam3 + 1
    end
    ex:Set("You Play : " .. TimeSpam3 .. " h " .. TimeSpam1 .. " m " .. TimeSpam2 .. " s ")
    wait(1)
end



end


Datameun()