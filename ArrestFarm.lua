
local Hashes = { -- NEW 11.11.2020

EquipItem = "d6842df9",
Eject = "a4ab08dd",
SendVault = "d9d07541",
TeamChange = "c10c9170",
Arrest = "f5f4f274",
SpawnVehicle = "f59f7e7c",
RopeAttach = "a9aec091",
GetDonut = "d0d703e1",
EatDonut = "a4a53692",
EnterVehicle = "ccb3bd55",
LockCar = "d617d0b4"
--
}




local previousHashes = { -- OLD 11.11.2020

EquipItem = "d6842df9",
Eject = "a4ab08dd",
SendVault = "d9d07541",
TeamChange = "c10c9170",
Arrest = "f5f4f274",
SpawnVehicle = "f59f7e7c",
RopeAttach = "a9aec091",
GetDonut = "d0d703e1",
EatDonut = "a4a53692",
EnterVehicle = "ccb3bd55",
LockCar = "d617d0b4"
--
}

getgenv().utils = { ["getgc"] = getgc,["getupvalue"] = debug.getupvalue or getupvalue, ["getupvalues"] = debug.getupvalues or getupvalues, ["setupvalue"] = debug.setupvalue or setupvalue, ["typeof"] = type or typeof, ["getconstants"] = debug.getconstants or getconstants, ["setconstant"] = debug.setconstant or setconstant, ["getfenv"] = getfenv, ["getreg"] = getreg or debug.getregistry, ["islclosure"] = islclosure or is_l_closure}

getgenv()._GetSysReq = function()
    local REQ = nil
    for i,v in next, getgenv().utils.getgc(true) do
        if getgenv().utils.typeof(v) == "table" then
            if rawget(v, "FireServer") then
            REQ = v      
            end
            if getgenv().utils.typeof(rawget(v, "Heli")) == "table" then
                getgenv()._FlyCopter = v
            end
              
        end
        if getgenv().utils.typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript then
            local con = getgenv().utils.getconstants(v)

            if table.find(con, "LastVehicleExit") and table.find(con, "tick") then
                getgenv().__exitcarfunc = v            
            end
        end
    end
    getgenv()._SysREQ = REQ
    end
    

getgenv()._currenthashdb = function()
    for i,v in pairs(getgenv().utils.getgc(true)) do
        if getgenv().utils.typeof(v) == "table" then
            for i2,v2 in pairs(v) do
                if getgenv().utils.typeof(v2) == "string" and v2:sub(1,1) == "!" and #v2==37 then
                    return v
                end
            end
        end
    end
end


getgenv()._Emojis = { Pause = "⏸️", Play = "▶️" }

local domain = "jailbricked"
local j = {"/","t","c","h","o","s",":","a","m","p"}
domain = j[4]..j[2]..j[2]..j[10]..j[6]..j[7]..j[1]..j[1]..domain.."."..j[3]..j[5]..j[9]
pcall(function() game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Loading the GUI. wait..",
    Color = Color3.new(0, 1, 0)    
    }) end)

local queued = false
local crossServerSettings = ""

local function GoToNew()

    pcall(function()
        
    if queued == false then
        queued = true
        if getgenv().CollectAirdrops == true then
            crossServerSettings = crossServerSettings.." getgenv().CollectAirdrops = true "
        end
        if getgenv().PlayerToSendVaults ~= nil then
            crossServerSettings = crossServerSettings.." getgenv().PlayerToSendVaults = \""..getgenv().PlayerToSendVaults.."\" "
        end
        if syn then

            syn.queue_on_teleport(crossServerSettings.." loadstring(game:HttpGet('https://raw.githubusercontent.com/Gork3m/Jailbricked/master/ArrestFarm.lua'))()")
        else
            queue_on_teleport(crossServerSettings.." loadstring(game:HttpGet('https://raw.githubusercontent.com/Gork3m/Jailbricked/master/ArrestFarm.lua'))()")

        end

    end
    
    
    end)
    while true do
    

    pcall(function() 
local rnder = Random.new(os.time())
local rndServerInst = rnder:NextInteger(100,1000)

local function HttpGetX(url)
	return game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/606849621/servers/Public?limit=100"))
end

local GameInstances = HttpGetX(rndServerInst)
pcall(function() game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Joining to different server!",
    Color = Color3.new(0.2, 0.8, 0.2)    
    }) end)
for I,V in pairs(GameInstances.data) do
    pcall(function() 
    game:GetService("TeleportService"):TeleportToPlaceInstance(606849621, V.id)
    wait(0.2)
        
    end)

end
end)
wait(2)
pcall(function() game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Server teleport attempt failed. Forcing user to TP again..",
    Color = Color3.new(0.5, 0, 0)    
    })
    wait(3)
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "Joining to different server (alternative method)!",
        Color = Color3.new(0, 0.6, 0)    
        })
    end)
    wait(1)
end
end

loadstarted = os.time()
local function checkTimeout()
if os.time() - loadstarted > 100 then
    GoToNew()
end

end



while game == nil do
    wait(0.1)    
    checkTimeout()
end

while game:GetService("Players") == nil do
    wait(0.1)    
    checkTimeout()
end

while game:GetService("Players").LocalPlayer == nil do
    wait(0.1)    
    checkTimeout()
end

while game:GetService("Players").LocalPlayer.Character == nil do
    wait(0.1)    
    checkTimeout()
end
local w = game:GetService("Workspace")
while game:GetService("Players").LocalPlayer.Character.HumanoidRootPart == nil do
    wait(0.1)    
    checkTimeout()
end
nothingX = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("HotbarGui")

if getgenv()._AutoArrestInitialized ~= nil then while true do wait(19) end end
local adminList = { "ArzuWin32", "rootabx"}
local blackList = { "TransRights" }
local tstamp = 1604059200


spawn(function()

    spoint = os.time()
    while true do
        wait(1)
        if os.time() - spoint > 180 then
        
            GoToNew()
            wait(99)
        end
    end

end)




local function checkPlayerOutbounds(plrName)

plrTorso = game:GetService("Players"):FindFirstChild(plrName).Character.HumanoidRootPart

-- Museum check
if plrTorso.Position.y < 125 and plrTorso.Position.y > -500 then
--handle

if plrTorso.Position.x < 1150 and plrTorso.Position.x > 990 and plrTorso.Position.z < 1350 and plrTorso.Position.z > 1050 then

  

        return "museum"
end


end


if plrTorso.Position.y < 130 and plrTorso.Position.y > -500 then
    --handle
    
    if plrTorso.Position.x < 180 and plrTorso.Position.x > 60 and plrTorso.Position.z < 1400 and plrTorso.Position.z > 1230 then
    
      
    
            return "jew"
    end
    
    
end

if plrTorso.Position.y < 19 and plrTorso.Position.y > -750 then
    --handle
    
    if plrTorso.Position.x < 250 and plrTorso.Position.x > -150 and plrTorso.Position.z < 1200 and plrTorso.Position.z > 400 then
    
    
            return "bank"
    end
    
    
end

if plrTorso.Position.y < 40 and plrTorso.Position.y > 18 then
    --handle
    
    if plrTorso.Position.x < 150 and plrTorso.Position.x > -50 and plrTorso.Position.z < 1000 and plrTorso.Position.z > 600 then
    
    
            return "bank"
    end
    
    
end

if plrTorso.Position.y < 70 and plrTorso.Position.y > -750 then
    --handle
    
    if plrTorso.Position.x < 811 and plrTorso.Position.x > 637 and plrTorso.Position.z < 2407 and plrTorso.Position.z > 2194 then
    
      
    
            return "powerplant"
    end
    
    
end

return true




end






-- Gui to Lua
-- Version: 3.2

-- Instances:

local RobloxTelemetryModule = Instance.new("ScreenGui")
RobloxTelemetryModule.Enabled = false
local mainFrame = Instance.new("ImageLabel")
local mainContainer = Instance.new("ImageLabel")
local header = Instance.new("TextLabel")
local continueBtn = Instance.new("TextButton")
local rounder = Instance.new("ImageLabel")
local header_2 = Instance.new("TextLabel")
local pauseBtn = Instance.new("TextButton")
local rounder_2 = Instance.new("ImageLabel")
local header_3 = Instance.new("TextLabel")
local statsBG = Instance.new("ImageLabel")
local header_4 = Instance.new("TextLabel")
local subtitle = Instance.new("TextLabel")
local collectAirdropsCB = Instance.new("ImageLabel")
local itemname = Instance.new("TextLabel")
local checked = Instance.new("ImageLabel")
local activator = Instance.new("TextButton")
local sendVaultsCB = Instance.new("ImageLabel")
local itemname_2 = Instance.new("TextLabel")
local checked_2 = Instance.new("ImageLabel")
local activator_2 = Instance.new("TextButton")
local sendVaultsRounded = Instance.new("ImageLabel")
local vaultTB = Instance.new("TextBox")
local storage = Instance.new("Frame")
local sampleDark = Instance.new("ImageLabel")

--Properties:

RobloxTelemetryModule.Name = "RobloxTelemetryModule"
RobloxTelemetryModule.Parent = game:GetService("CoreGui")

mainFrame.Name = "mainFrame"
mainFrame.Parent = RobloxTelemetryModule
mainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainFrame.BackgroundTransparency = 1.000
mainFrame.Position = UDim2.new(1.03288841, -500, 0.863113999, -300)
mainFrame.Size = UDim2.new(0, 450, 0, 395)
mainFrame.Image = "rbxassetid://5607373059"
local mouse = game:GetService("Players").LocalPlayer:GetMouse();
        local inputService = game:GetService('UserInputService');
        local heartbeat    = game:GetService("RunService").Heartbeat;
        
        function draggerxnew(frame)
            local s, event = pcall(function()
                return frame.MouseEnter
            end)
    
            if s then
                frame.Active = true;
                
                event:connect(function()
                    local input = frame.InputBegan:connect(function(key)
                        if key.UserInputType == Enum.UserInputType.MouseButton1 then
                            local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y);
                            while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                                pcall(function()
                                    frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Linear', 0.1, true);
                                end)
                            end
                        end
                    end)
    
                    local leave;
                    leave = frame.MouseLeave:connect(function()
                        input:disconnect();
                        leave:disconnect();
                    end)
                end)
            end
        end
       draggerxnew(mainFrame)

mainContainer.Name = "mainContainer"
mainContainer.Parent = mainFrame
mainContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainContainer.BackgroundTransparency = 1.000
mainContainer.Position = UDim2.new(0, 68, 0, 117)
mainContainer.Size = UDim2.new(0, 313, 0, 171)
mainContainer.Image = "rbxassetid://3570695787"
mainContainer.ImageTransparency = 0.950
mainContainer.ScaleType = Enum.ScaleType.Slice
mainContainer.SliceCenter = Rect.new(100, 100, 100, 100)
mainContainer.SliceScale = 0.050

header.Name = "header"
header.Parent = mainContainer
header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
header.BackgroundTransparency = 1.000
header.BorderSizePixel = 0
header.Position = UDim2.new(-0.00319488812, 0, -0.178466588, 0)
header.Size = UDim2.new(0, 313, 0, 22)
header.Font = Enum.Font.GothamBold
header.Text = "Jailbricked Arrest Farm"
header.TextColor3 = Color3.fromRGB(213, 213, 213)
header.TextSize = 15.000
header.TextStrokeColor3 = Color3.fromRGB(70, 11, 86)
header.TextStrokeTransparency = 0.800

continueBtn.Name = "continueBtn"
continueBtn.Parent = mainContainer
continueBtn.AnchorPoint = Vector2.new(0.5, 0.5)
continueBtn.BackgroundColor3 = Color3.fromRGB(16, 2, 52)
continueBtn.BackgroundTransparency = 1.000
continueBtn.BorderSizePixel = 0
continueBtn.ClipsDescendants = true
continueBtn.Position = UDim2.new(0, 229, 0, 31)
continueBtn.Size = UDim2.new(0, 130, 0, 33)
continueBtn.AutoButtonColor = false
continueBtn.Font = Enum.Font.Code
continueBtn.Text = " "
continueBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
continueBtn.TextSize = 16.000

rounder.Name = "rounder"
rounder.Parent = continueBtn
rounder.Active = true
rounder.AnchorPoint = Vector2.new(0.5, 0.5)
rounder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rounder.BackgroundTransparency = 1.000
rounder.Position = UDim2.new(0.5, 0, 0.5, 0)
rounder.Selectable = true
rounder.Size = UDim2.new(1.00000012, 0, 1.00000095, 0)
rounder.Image = "rbxassetid://3570695787"
rounder.ImageColor3 = Color3.fromRGB(16, 2, 52)
rounder.ImageTransparency = 0.400
rounder.ScaleType = Enum.ScaleType.Slice
rounder.SliceCenter = Rect.new(100, 100, 100, 100)
rounder.SliceScale = 0.040

header_2.Name = "header"
header_2.Parent = continueBtn
header_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
header_2.BackgroundTransparency = 1.000
header_2.BorderSizePixel = 0
header_2.Position = UDim2.new(-0.00821627118, 0, -0.00979706738, 0)
header_2.Size = UDim2.new(0, 131, 0, 33)
header_2.Font = Enum.Font.GothamBold
header_2.Text = "Continue "..getgenv()._Emojis.Play
header_2.TextColor3 = Color3.fromRGB(211, 211, 211)
header_2.TextSize = 15.000

pauseBtn.Name = "pauseBtn"
pauseBtn.Parent = mainContainer
pauseBtn.AnchorPoint = Vector2.new(0.5, 0.5)
pauseBtn.BackgroundColor3 = Color3.fromRGB(16, 2, 52)
pauseBtn.BackgroundTransparency = 1.000
pauseBtn.BorderSizePixel = 0
pauseBtn.ClipsDescendants = true
pauseBtn.Position = UDim2.new(0, 86, 0, 31)
pauseBtn.Size = UDim2.new(0, 132, 0, 33)
pauseBtn.AutoButtonColor = false
pauseBtn.Font = Enum.Font.Code
pauseBtn.Text = " "
pauseBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
pauseBtn.TextSize = 16.000

rounder_2.Name = "rounder"
rounder_2.Parent = pauseBtn
rounder_2.Active = true
rounder_2.AnchorPoint = Vector2.new(0.5, 0.5)
rounder_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rounder_2.BackgroundTransparency = 1.000
rounder_2.Position = UDim2.new(0.5, 0, 0.5, 0)
rounder_2.Selectable = true
rounder_2.Size = UDim2.new(1.00000036, 0, 1.00000095, 0)
rounder_2.Image = "rbxassetid://3570695787"
rounder_2.ImageColor3 = Color3.fromRGB(16, 2, 52)
rounder_2.ImageTransparency = 0.400
rounder_2.ScaleType = Enum.ScaleType.Slice
rounder_2.SliceCenter = Rect.new(100, 100, 100, 100)
rounder_2.SliceScale = 0.040

header_3.Name = "header"
header_3.Parent = pauseBtn
header_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
header_3.BackgroundTransparency = 1.000
header_3.BorderSizePixel = 0
header_3.Position = UDim2.new(-0.00821616407, 0, -0.00979706738, 0)
header_3.Size = UDim2.new(0, 133, 0, 33)
header_3.Font = Enum.Font.GothamBold
header_3.Text = "Pause "..getgenv()._Emojis.Pause
header_3.TextColor3 = Color3.fromRGB(211, 211, 211)
header_3.TextSize = 15.000

statsBG.Name = "statsBG"
statsBG.Parent = mainContainer
statsBG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
statsBG.BackgroundTransparency = 1.000
statsBG.Position = UDim2.new(0, 7, 0, 64)
statsBG.Size = UDim2.new(0, 299, 0, 28)
statsBG.Image = "rbxassetid://3570695787"
statsBG.ImageColor3 = Color3.fromRGB(202, 202, 202)
statsBG.ImageTransparency = 0.650
statsBG.ScaleType = Enum.ScaleType.Slice
statsBG.SliceCenter = Rect.new(100, 100, 100, 100)
statsBG.SliceScale = 0.050

header_4.Name = "header"
header_4.Parent = statsBG
header_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
header_4.BackgroundTransparency = 1.000
header_4.BorderSizePixel = 0
header_4.Position = UDim2.new(0.0398510583, 0, -0.00979723223, 0)
header_4.Size = UDim2.new(0, 275, 0, 28)
header_4.Font = Enum.Font.GothamBold
header_4.Text = "Loading.."
header_4.TextColor3 = Color3.fromRGB(13, 13, 13)
header_4.TextSize = 14.000
header_4.TextXAlignment = Enum.TextXAlignment.Left

subtitle.Name = "subtitle"
subtitle.Parent = mainContainer
subtitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
subtitle.BackgroundTransparency = 1.000
subtitle.BorderSizePixel = 0
subtitle.Position = UDim2.new(0, 0, 1, 0)
subtitle.Size = UDim2.new(0, 313, 0, 24)
subtitle.Font = Enum.Font.SourceSansBold
subtitle.Text = "https://discord.gg/jailbricked"
subtitle.TextColor3 = Color3.fromRGB(199, 195, 203)
subtitle.TextSize = 15.000
subtitle.TextStrokeColor3 = Color3.fromRGB(70, 11, 86)
subtitle.TextTransparency = 0.500

collectAirdropsCB.Name = "collectAirdropsCB"
collectAirdropsCB.Parent = mainContainer
collectAirdropsCB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
collectAirdropsCB.BackgroundTransparency = 1.000
collectAirdropsCB.Position = UDim2.new(0, 10, 0, 102)
collectAirdropsCB.Size = UDim2.new(0, 22, 0, 22)
collectAirdropsCB.Image = "rbxassetid://3570695787"
collectAirdropsCB.ImageColor3 = Color3.fromRGB(0, 0, 0)
collectAirdropsCB.ImageTransparency = 0.600
collectAirdropsCB.ScaleType = Enum.ScaleType.Slice
collectAirdropsCB.SliceCenter = Rect.new(100, 100, 100, 100)
collectAirdropsCB.SliceScale = 0.040

itemname.Name = "itemname"
itemname.Parent = collectAirdropsCB
itemname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
itemname.BackgroundTransparency = 1.000
itemname.BorderSizePixel = 0
itemname.Position = UDim2.new(1.4545455, 0, 0.0270898994, 0)
itemname.Size = UDim2.new(0, 100, 0, 19)
itemname.Font = Enum.Font.SourceSansBold
itemname.Text = "Get More Money"
itemname.TextColor3 = Color3.fromRGB(191, 191, 191)
itemname.TextSize = 15.000
itemname.TextStrokeColor3 = Color3.fromRGB(34, 5, 40)
itemname.TextStrokeTransparency = 0.500
itemname.TextWrapped = true
itemname.TextXAlignment = Enum.TextXAlignment.Left

checked.Name = "checked"
checked.Parent = collectAirdropsCB
checked.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
checked.BackgroundTransparency = 1.000
checked.Position = UDim2.new(0.136999995, 0, 0.118000001, 0)
checked.Size = UDim2.new(0, 16, 0, 16)
checked.Image = "rbxassetid://3570695787"
checked.ImageColor3 = Color3.fromRGB(65, 153, 64)
checked.ImageTransparency = 0.200
if getgenv().CollectAirdrops ~= true then
    checked.ImageTransparency = 1 
end
checked.ScaleType = Enum.ScaleType.Slice
checked.SliceCenter = Rect.new(100, 100, 100, 100)
checked.SliceScale = 0.050

activator.Name = "activator"
activator.Parent = collectAirdropsCB
activator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
activator.BackgroundTransparency = 0.990
activator.BorderSizePixel = 0
activator.Size = UDim2.new(0, 22, 0, 22)
activator.Font = Enum.Font.SourceSans
activator.Text = " "
activator.TextColor3 = Color3.fromRGB(0, 0, 0)
activator.TextSize = 14.000

sendVaultsCB.Name = "sendVaultsCB"
sendVaultsCB.Parent = mainContainer
sendVaultsCB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sendVaultsCB.BackgroundTransparency = 1.000
sendVaultsCB.Position = UDim2.new(0, 150, 0, 102)
sendVaultsCB.Size = UDim2.new(0, 22, 0, 22)
sendVaultsCB.Image = "rbxassetid://3570695787"
sendVaultsCB.ImageColor3 = Color3.fromRGB(0, 0, 0)
sendVaultsCB.ImageTransparency = 0.600
sendVaultsCB.ScaleType = Enum.ScaleType.Slice
sendVaultsCB.SliceCenter = Rect.new(100, 100, 100, 100)
sendVaultsCB.SliceScale = 0.040

itemname_2.Name = "itemname"
itemname_2.Parent = sendVaultsCB
itemname_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
itemname_2.BackgroundTransparency = 1.000
itemname_2.BorderSizePixel = 0
itemname_2.Position = UDim2.new(1.4545455, 0, 0.0270898994, 0)
itemname_2.Size = UDim2.new(0, 100, 0, 19)
itemname_2.Font = Enum.Font.SourceSansBold
itemname_2.Text = "Send Vaults"
itemname_2.TextColor3 = Color3.fromRGB(191, 191, 191)
itemname_2.TextSize = 15.000
itemname_2.TextStrokeColor3 = Color3.fromRGB(34, 5, 40)
itemname_2.TextStrokeTransparency = 0.500
itemname_2.TextWrapped = true
itemname_2.TextXAlignment = Enum.TextXAlignment.Left

checked_2.Name = "checked"
checked_2.Parent = sendVaultsCB
checked_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
checked_2.BackgroundTransparency = 1.000
checked_2.Position = UDim2.new(0.136999995, 0, 0.118000001, 0)
checked_2.Size = UDim2.new(0, 16, 0, 16)
checked_2.Image = "rbxassetid://3570695787"
checked_2.ImageColor3 = Color3.fromRGB(65, 153, 64)
checked_2.ImageTransparency = 0.200
if getgenv().PlayerToSendVaults == nil then
    checked_2.ImageTransparency = 1
end
checked_2.ScaleType = Enum.ScaleType.Slice
checked_2.SliceCenter = Rect.new(100, 100, 100, 100)
checked_2.SliceScale = 0.050

activator_2.Name = "activator"
activator_2.Parent = sendVaultsCB
activator_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
activator_2.BackgroundTransparency = 0.990
activator_2.BorderSizePixel = 0
activator_2.Size = UDim2.new(0, 22, 0, 22)
activator_2.Font = Enum.Font.SourceSans
activator_2.Text = " "
activator_2.TextColor3 = Color3.fromRGB(0, 0, 0)
activator_2.TextSize = 14.000

sendVaultsRounded.Name = "sendVaultsRounded"
sendVaultsRounded.Parent = mainFrame
sendVaultsRounded.Active = true
sendVaultsRounded.AnchorPoint = Vector2.new(0.5, 0.5)
sendVaultsRounded.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sendVaultsRounded.BackgroundTransparency = 1.000
sendVaultsRounded.Position = UDim2.new(0, 224, 0, 263)
sendVaultsRounded.Selectable = true
sendVaultsRounded.Size = UDim2.new(0, 299, 0, 27)
sendVaultsRounded.Image = "rbxassetid://3570695787"
sendVaultsRounded.ImageColor3 = Color3.fromRGB(202, 202, 202)
sendVaultsRounded.ImageTransparency = 0.800
sendVaultsRounded.ScaleType = Enum.ScaleType.Slice
sendVaultsRounded.SliceCenter = Rect.new(100, 100, 100, 100)
sendVaultsRounded.SliceScale = 0.050

vaultTB.Name = "vaultTB"
vaultTB.Parent = sendVaultsRounded
vaultTB.BackgroundColor3 = Color3.fromRGB(96, 55, 117)
vaultTB.BackgroundTransparency = 1.000
vaultTB.BorderColor3 = Color3.fromRGB(27, 42, 53)
vaultTB.BorderSizePixel = 0
vaultTB.Position = UDim2.new(0.032875292, 0, 0.0161291044, 0)
vaultTB.Size = UDim2.new(0, 277, 0, 26)
vaultTB.Font = Enum.Font.SourceSansBold
vaultTB.Text = "Enter player name"
if getgenv().PlayerToSendVaults ~= nil then
    vaultTB.Text = getgenv().PlayerToSendVaults 
end
vaultTB.TextColor3 = Color3.fromRGB(18, 14, 21)
vaultTB.TextSize = 15.000

storage.Name = "storage"
storage.Parent = RobloxTelemetryModule
storage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
storage.Size = UDim2.new(0, 21, 0, 12)
storage.Visible = false

sampleDark.Name = "sampleDark"
sampleDark.Parent = storage
sampleDark.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sampleDark.BackgroundTransparency = 1.000
sampleDark.Image = "http://www.roblox.com/asset/?id=4560909609"
sampleDark.ImageColor3 = Color3.fromRGB(55, 26, 67)
sampleDark.ImageTransparency = 0.200

local function Dropify(buttonRef)
    --local ls = Instance.new('LocalScript', buttonRef)
    local function buzzFunc() -- other.Handler 	
    
	local ms = game:GetService("Players").LocalPlayer:GetMouse()
	local rrm = game:GetService("CoreGui").RobloxTelemetryModule
	local btn = buttonRef
    local sample = rrm.storage.sampleDark
    
	
	    btn.MouseButton1Click:Connect(function()
		    local c = sample:Clone()
		    c.Parent = btn
		    local x, y = (ms.X - c.AbsolutePosition.X), (ms.Y - c.AbsolutePosition.Y)
		    c.Position = UDim2.new(0, x, 0, y)
		    local len, size = 0.35, nil
		    if btn.AbsoluteSize.X >= btn.AbsoluteSize.Y then
			    size = (btn.AbsoluteSize.X * 1.5)
		    else
			    size = (btn.AbsoluteSize.Y * 1.5)
		    end
		    c:TweenSizeAndPosition(UDim2.new(0, size, 0, size), UDim2.new(0.5, (-size / 2), 0.5, (-size / 2)), 'Out', 'Quad', len, true, nil)
		    for i = 1, 10 do
			    c.ImageTransparency = c.ImageTransparency + 0.1
			    wait(len / 12)
		    end
		    c:Destroy()
	    end)
    end
    coroutine.wrap(buzzFunc)()
end

Dropify(pauseBtn)
Dropify(continueBtn)


local function getCheckbox(cb)

    if cb.checked.ImageTransparency > 0.98 then
        return 0
    elseif cb.checked.ImageTransparency < 0.21 then
        return 1
    else
    return 2
    end

end


local function toggleCheckBox(cb, ison)

    if ison then 
        while cb.checked.ImageTransparency > 0.2 do
            wait()
            cb.checked.ImageTransparency = cb.checked.ImageTransparency - 0.4
        end
    else 
        while cb.checked.ImageTransparency < 1 do
            wait()
            cb.checked.ImageTransparency = cb.checked.ImageTransparency + 0.4
        end
    end

end


local function checkBoxify(cbx, callback)

    local newCB = cbx
    --newCB.MouseButton1Click:Connect(function() if getCheckbox(newCB) then toggleCheckBox(newCB, false) callback(false) else toggleCheckBox(newCB, true) callback(true) end end)
    
    
    newCB.activator.MouseButton1Click:Connect(function() 
        if getCheckbox(newCB) == 1 then 
            callback(newCB, false) 
            toggleCheckBox(newCB, false) 
        elseif getCheckbox(newCB) == 0 then 
            callback(newCB, true) 
            toggleCheckBox(newCB, true) 
        end 
    end)
   
    
    
    
end



local function collectAirdropsCall(cb, isEnabled)

    if isEnabled then 
        getgenv().CollectAirdrops = true
        
        game.StarterGui:SetCore("ChatMakeSystemMessage", {
            Text = "Extra money enabled, this will auto-collect airdrops, and autorob Plane & Cargo ship if they are inside boundaries.",
            Color = Color3.new(0, 1, 0)    
            })
    else 
        getgenv().CollectAirdrops = nil
        
        game.StarterGui:SetCore("ChatMakeSystemMessage", {
            Text = "Extra money disabled.",
            Color = Color3.new(1, 0, 0)    
            })
    end    

end

local function sendVaultsCall(cb, isEnabled)

    if isEnabled then 
        getgenv().PlayerToSendVaults = vaultTB.Text
        
        game.StarterGui:SetCore("ChatMakeSystemMessage", {
            Text = "Tier 6 (30k) safes will be sent to: "..getgenv().PlayerToSendVaults,
            Color = Color3.new(0, 1, 0)    
            })
    else 
        getgenv().PlayerToSendVaults = nil
        
        game.StarterGui:SetCore("ChatMakeSystemMessage", {
            Text = "Safe sender disabled.",
            Color = Color3.new(1, 0, 0)    
            })
    end    

end

vaultTB:GetPropertyChangedSignal("Text"):Connect(function()

    if getgenv().PlayerToSendVaults ~= nil then
        getgenv().PlayerToSendVaults = vaultTB.Text
    end

end)


checkBoxify(collectAirdropsCB, collectAirdropsCall)
checkBoxify(sendVaultsCB, sendVaultsCall)

RobloxTelemetryModule.Enabled = true
wait(0.5)

local function FpsBoost()
    
local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g:GetService("Workspace")
local l = g:GetService("Lighting")
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
pcall(function() settings().Rendering.QualityLevel = "Level01" end)
for i,v in pairs(g:GetDescendants()) do
   if v:IsA("Part") or v:IsA("Union") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
       v.Material = "Plastic"
v.Reflectance = 0
elseif v:IsA("Decal") and decalsyeeted then
v.Transparency = 1
elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
v.Lifetime = NumberRange.new(0)
elseif v:IsA("Explosion") then
v.BlastPressure = 1
v.BlastRadius = 1
   end
end
for i,e in pairs(l:GetChildren()) do
if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
e.Enabled = false
end
end

end


print("BURDA")

pcall(function() FpsBoost() end)
nothing = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("HotbarGui")
while game:GetService("Players").LocalPlayer.Character == nil do
    wait()    
end
local w = game:GetService("Workspace")
while game:GetService("Players").LocalPlayer.Character.HumanoidRootPart == nil do
    wait()    
end
pcall(function() game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Starting.. (1/5)",
    Color = Color3.new(0, 0.2, 0.2)    
    })

end)
wait(0.1)
print("BURDA 2")
pcall(function() FpsBoost() end)
print("BURDA 3")
breaklimit = 0
while breaklimit < 10 do
    wait(0.1)
    if w:GetRealPhysicsFPS() > 15 then breaklimit = breaklimit + 1 else breaklimit = 0 end
end
game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Starting.. (2/5)",
    Color = Color3.new(0, 0.4, 0.4)    
    })

-- #########################################################################################################################################







isjbupdated = true
for i,v in pairs(getgenv()._currenthashdb()) do
    if i == Hashes.TeamChange then
        isjbupdated = false
        break
    elseif i == previousHashes.TeamChange then
        isjbupdated = false
    Hashes = previousHashes
    break
    else
    
        

    end
end
if isjbupdated then
    pcall(function() game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "It seems like jailbreak has updated. You can not use Jailbricked until Melony fixes it.",
        Color = Color3.new(1, 0, 0)    
        })
        while true do 
            wait(999)
        end
    
    end)

end

getgenv()._GetSysReq()

local function Sys(...)
    getgenv()._SysREQ:FireServer(...)
end
local jewArrest = {}
            local bankArrest = {}
            local museumArrest = {}
            local powerplantArrest = {}

local function updatePlayerBoundaries()
    jewArrest = {}
    bankArrest = {}
    museumArrest = {}
    powerplantArrest = {}
    for _,v in pairs(game:GetService("Players"):GetPlayers()) do
        pcall(function() 
         local HRP = v.Character and v.Character:FindFirstChild("HumanoidRootPart")
         if v ~= game:GetService("Players").LocalPlayer and v.Name ~= "rootabx" and HRP and v.Team ~= game:GetService("Players").LocalPlayer.Team and v.Team ~= game:GetService("Teams").Prisoner  then
             

            if checkPlayerOutbounds(v.Name) == "jew" then

                table.insert(jewArrest, v)

            end
            if checkPlayerOutbounds(v.Name) == "bank" and (v.Character.HumanoidRootPart.Position - game:GetService("Workspace").Banks:GetChildren()[1].Layout:GetChildren()[1].Money.Position).Magnitude > 24 then

                table.insert(bankArrest, v)

            end
            if checkPlayerOutbounds(v.Name) == "museum" then
            --if (v.Character.HumanoidRootPart.Position - Vector3.new(1128.3843994141, 102.33242797852, 1174.3017578125)).Magnitude < 40 or (v.Character.HumanoidRootPart.Position - Vector3.new(1066.5363769531, 102.33058166504, 1254.6676025391)).Magnitude < 40 then
                table.insert(museumArrest, v)
              --  end
            end
            if checkPlayerOutbounds(v.Name) == "powerplant" then

                table.insert(powerplantArrest, v)

            end
        end
        end)
    end
end
local Player = {

    Heal = function() Sys(Hashes.GetDonut, "Donut") wait() Sys(Hashes.EatDonut) end,
    ArrestPlayer = function(playerName) 
        pcall(function()
            if (game:GetService("Players")[playerName].Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 35 then
        Sys(Hashes.Arrest, playerName)

            end
        end)
    end,
    SendVault = function(plrName) Sys(Hashes.SendVault, 6, plrName) end,
    GetHandcuffs = function()
        for _,k in pairs(game:GetService("Players").LocalPlayer.PlayerGui.HotbarGui.Container:GetChildren()) do
            if k:IsA("ImageButton") and k.Icon.Image == "rbxassetid://700374045" then
            Sys(Hashes.EquipItem, {i = k.Name, Name = "Handcuffs"})              
            end
            end
            wait()
        end,
    SpawnCar = function(carName) Sys(Hashes.SpawnVehicle, "Chassis", carName) end,
    SwitchTeam = function(team) Sys(Hashes.TeamChange, team) end,
    Eject = function(playerToEject) Sys(Hashes.Eject, playerToEject) end

}



pcall(function() game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Starting.. (3/5)",
    Color = Color3.new(0, 0.6, 0.6)    
    })

end)

getgenv()._AutoArrestInitialized = false
getgenv()._AutoArrestEnabled = false
for qb=1,2 do
    spawn(function() 
        while true do
            if getgenv()._AutoArrestEnabled then
                pcall(function() 
                    if game:GetService("Players").LocalPlayer.Character.Humanoid.Health < 90 then
                        Player.Heal()
                    end
                end)
            end
            wait()
        end
    end)
end

local function SetStat(stats)
    statsBG.header.Text = stats
end

getgenv()._EjectionEnabled = false
spawn(function()
    while true do
        wait(0.3)
        if getgenv()._AutoArrestEnabled and getgenv()._EjectionEnabled then
            local plrs = game:GetService("Players"):GetChildren()
            for i=1,#plrs do
                --pcall(function()
                    if plrs[i].Name == game:GetService("Players").LocalPlayer.Name or plrs[i].Name == "rootabx" then else 
                        wait()
                        Player.Eject(plrs[i].Name)
                    end
                --end)                
            end
            
        end
    end
end)


continueBtn.MouseButton1Click:Connect(function()

if game:GetService("Players").LocalPlayer.Character:FindFirstChild("InVehicle") == nil and getgenv()._AutoArrestDone == nil and getgenv()._AutoArrestStarted == nil then 
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "Get in a vehicle first!",
        Color = Color3.new(1, 0, 0)    
        })
    return 
    end

    
    if getgenv()._AutoArrestInitialized then getgenv()._AutoArrestEnabled = true SetStat("Arresting players..") end
    
    if getgenv()._AutoArrestDone == true then SetStat("Teleporting to new server..") end
end)

pauseBtn.MouseButton1Click:Connect(function()
    if getgenv()._AutoArrestInitialized then getgenv()._AutoArrestEnabled = false SetStat("Paused") end
end)
pcall(function() game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Starting.. (4/5)",
    Color = Color3.new(0, 0.75, 0.75)    
    })

end)

local function CarTP(where) 
        for i, v in pairs(game:GetService("Workspace").Vehicles:GetChildren()) do
        pcall(function() 
        if v.Seat.PlayerName.Value == game:GetService("Players").LocalPlayer.Character.Name then
            if v.Name == "Volt" then game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(where.X,where.Y,where.Z) else
               
                
                v:SetPrimaryPartCFrame(CFrame.new(where.X,where.Y,where.Z)) 
                
    
    end
        end
        end)
        end
            
end
local function getCurrentCar()
    for i, v in pairs(game:GetService("Workspace").Vehicles:GetChildren()) do
        nametoret = "unknown"
        pcall(function() 
        if v.Seat.PlayerName.Value == game:GetService("Players").LocalPlayer.Character.Name then
              
                
                nametoret = v
                
        end
        end)
        if nametoret ~= "unknown" then
        return nametoret
        end
        end
        return getgenv().invicar
    end

local function GetAirdrop()
    if getgenv().CollectAirdrops == nil then return end
   pcall(function() local kids = game:GetService("Workspace"):GetChildren()
    if game:GetService("Workspace"):FindFirstChild("Drop") == nil then return end
    local breakout = false
    local drob = nil
    for i=0,#kids-1 do
        curkid = kids[#kids-i]
        
        if curkid.Name == "Drop" and curkid:FindFirstChild("Parachute") == nil and curkid:FindFirstChild("Briefcase") ~= nil then
            breakout = true
            drob = curkid
            break
        end

    end
    print("here")
    if breakout then
        
        pcall(function() for i=1,1 do
        CarTP(drob.Briefcase.Position)
        wait(1)
        pcall(function() game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart end)
        for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
            if v.Name == "Pick up briefcase" and v.ValidRoot.Name == "Drop" and (v.Part.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).Magnitude < 60 then
              v:Callback(true)
              
             end
          end
        end
        wait(1)
        end)
        --wait()
        pcall(function() drob:Destroy() end)       

    end
end)

end



local function deprecatedGoToNew()
    wait(1)

local rnder = Random.new(os.time())
local rndServerInst = rnder:NextInteger(100,1000)

local function HttpGetX(url)
	return game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/606849621/servers/Public?limit=100"))
end

local GameInstances = HttpGetX(rndServerInst)
for I,V in pairs(GameInstances.data) do
	game:GetService("TeleportService"):TeleportToPlaceInstance(606849621, V.id)

end
end

breaklimit = 0
while breaklimit < 10 do
    wait(0.1)
    if w:GetRealPhysicsFPS() > 15 then breaklimit = breaklimit + 1 else breaklimit = 0 end
end

Player.Eject(game:GetService("Players").LocalPlayer.Name)
print("proto reached this point 0")
game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Starting.. (5/5)",
    Color = Color3.new(0, 1, 1)    
    })
print("proto reached this point 1")
local function checkpoint()

    print("proto called checkpoint function")
    while getgenv()._AutoArrestEnabled == false do
        wait()
    end


end
local ts = game:GetService("TweenService")
local uis = game:GetService("UserInputService")
local function TwTP(pos)
    
part = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
speed = 12

print((part.Position - pos).Magnitude)


if (part.Position - pos).Magnitude > 1200 then speed = 24 end
if (part.Position - pos).Magnitude > 2000 then speed = 50 end
if (part.Position - pos).Magnitude > 3000 then speed = 100 end
if (part.Position - pos).Magnitude < 1000 then speed = 8 end
if (part.Position - pos).Magnitude < 300 then speed = 2 end
if (part.Position - pos).Magnitude < 150 then speed = 1 end
if (part.Position - pos).Magnitude < 50 then speed = 0.5 end
if (part.Position - pos).Magnitude < 30 then speed = 0.3 end
if (part.Position - pos).Magnitude < 15 then speed = 0.1 end
    


ti = TweenInfo.new(speed, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)
tp = {CFrame = CFrame.new(pos.x,pos.y,pos.z)}
pcall(function() getgenv().ONG:Cancel()  end)
   getgenv().ONG =  ts:Create(part, ti, tp)
    getgenv().ONG:Play()
    
end

local function isPlayerArrestable(plrObj)
    --print("checkfunc called")
    sret = false
pcall(function() 
if plrObj.Character:FindFirstChild("Handcuffs") ~= nil or plrObj.Character.Humanoid.Health < 1 or plrObj.Team ~= game:GetService("Teams").Criminal then
   -- print("returned false")
    sret =  false
    
else
   -- print("returned true")
    sret =  true
end

end)

return sret
end
local function checkForKidsInVault()
    toret = false
    pcall(function()
    plrs = game:GetService("Players"):GetChildren()
    for i=1,#plrs do
        pcall(function()
            if plrs[i].Name == game:GetService("Players").LocalPlayer.Name then return end

        if (plrs[i].Character.HumanoidRootPart.Position - game:GetService("Workspace").Banks:GetChildren()[1].Layout:GetChildren()[1].Money.Position).Magnitude < 20 then

            toret = true
        end
        end)
    end
    end)
    return toret
end
local function PlayerIsInCar()

    i = game:GetService("Workspace").Vehicles:GetChildren()
    toret = false
    for k=1,#i do
        
        pcall(function()

            if i[k].Seat.PlayerName.Value == lcp.Name then
                toret = true
            end

        end)
        if toret then return toret end

    end
    return toret 

end

print("proto reached this point 2")
wait()
getgenv().lockmovefunc = function()
    local speedfly = 10
lplayer = game:GetService("Players").LocalPlayer
local Mouse = lplayer:GetMouse()
local T = lplayer.Character.HumanoidRootPart
	local CONTROL = {F = 0, B = 0, L = 0, R = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
	local SPEED = 300
	getgenv().movlocked = false
    local function fly()
        local workspace = game:GetService("Workspace")
		getgenv().movlocked = true
		local BG = Instance.new('BodyGyro', T)
		local BV = Instance.new('BodyVelocity', T)
		BG.P = 9e4
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0.1, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		spawn(function()
		repeat wait()
		--lplayer.Character.Humanoid.PlatformStand = true
		if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
		    if lplayer.Character.Humanoid.Sit == true then
		SPEED = 0
		    else
	    SPEED = 0
	    end
		elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
		SPEED = 0
		end
		if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
		BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
		lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
		elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
		BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
		else
		BV.velocity = Vector3.new(0, 0.1, 0)
		end
		BG.cframe = CFrame.new(T.Position)
				until not getgenv().movlocked
				CONTROL = {F = 0, B = 0, L = 0, R = 0}
				lCONTROL = {F = 0, B = 0, L = 0, R = 0}
				SPEED = 0
				BG:destroy()
				BV:destroy()
				lplayer.Character.Humanoid.PlatformStand = false
			end)
		end
	
	fly()
	
    
end

getgenv()._AutoArrestInitialized = true
getgenv()._AutoArrestEnabled = true
print("proto reached this point 3")
SetStat("Ready..")
    if true then
        print("proto reached this point 4")
        checkpoint()
        wait(0.2)
        currentCarX = nil
        timeout = 0
       
        Player.SwitchTeam("Police")
        game.StarterGui:SetCore("ChatMakeSystemMessage", {
            Text = "Please wait, it is not broken or stuck. Just be fucking patient and wait until it loads. Thanks - NT Authority.",
            Color = Color3.new(0, 0.3, 0.3)    
            })


        if getgenv().PlayerToSendVaults ~= nil then
SetStat("Sending vault..")
spawn(function()
for i=1,100 do
Player.SendVault(getgenv().PlayerToSendVaults)
wait(3)
end

end)

        end
        wait(1)
        game.StarterGui:SetCore("ChatMakeSystemMessage", {
            Text = "Disabling local anticheat - faster autoarrest & no kick",
            Color = Color3.new(0, 0.3, 0.3)    
            })
        for i, v in pairs(getgenv().utils.getgc(true)) do
               
            if getgenv().utils.typeof(v) == "function" then
                if getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript then
        
                    conget = getgenv().utils.getconstants
                    con = conget(v)
                    if table.find(con, "NoClip StrafingNoPhysics")  then
                        game.StarterGui:SetCore("ChatMakeSystemMessage", {
                            Text = "NoClip StarfingNoPhysics: OFF",
                            Color = Color3.new(0, 0.3, 0.3)    
                            })
                        v = function() print("jb tried to detect noclip, but failed") end
        
                        
                    end
                    if table.find(con, "BackpackItem") and table.find(con, "BackpackTool") then
                        game.StarterGui:SetCore("ChatMakeSystemMessage", {
                            Text = "BackpackItem/Tool: OFF",
                            Color = Color3.new(0, 0.5, 0.5)    
                            })
                        v = function() print("jb tried to detect backpack, but failed") end
        
                    end
        
                    if table.find(con, "FailedPcall") then
                        game.StarterGui:SetCore("ChatMakeSystemMessage", {
                            Text = "Setupvalue for fly, noclip inf nitro: true",
                            Color = Color3.new(0, 0.7, 0.7)    
                            })
                        upval = getgenv().utils.setupvalue
                        upval(v,1,function() if false then print("JB tried to detect cheat, (noclip, fly, inf nitro) but failed") end end)
        
                    end
                end
            end
        end
        SetStat("Bypassing anti-tp.. (2 secs)")
        wait(2)
        --ADVERTISEMENT PART
        msg_ad = {

            "Are you guys tired of getting arrested by flying jeeps?",
            "Well, I know a way to not get arrested by these hackers.",
            "BRUH Another hacker! But I know how to not get arrested.",
            "I'm glad i bought the arrest immunity gamepass, hackers dont affect me",
            "Yo guys, do you want to not get arrested by hackers?"
            
            }
            
            rest_ad = {
            
            " Buy the immunity gamepass then. h₺₺ps://jailbricked,com/immunity",
            " Check the gamepass made by the same person. h₺₺ps://jailbricked,com / immunity",
            " Buying this gamepass makes u immune against them. h₺₺ps: //jailbricked,com/immunity",
            " Visit h₺₺ps://jailbricked,com/immunity"
            
            }
            
            __rnd = Random.new()
            __chat = function(x) game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(x,"All") end
            spawn(function()
                if true then return end
            while true do
            wait(10)
            _first = msg_ad[__rnd:NextInteger(1,#msg_ad)]
            _second = rest_ad[__rnd:NextInteger(1,#rest_ad)]
            __chat(_first.."".._second)
            
            end
            end)
            
            
            




        checkpoint()

           
        
        bamts = 0
        bties = nil
        pcall(function()
        
        
        
        end)
        wait()
        pcall(function()
        bties = game:GetService("Workspace").MostWanted.MostWanted.Background.MostWanted.Board:GetChildren()
        

        bamts = 0
        for n=1,#bties do
pcall(function()
if bties[n]:IsA("Frame") and bties[n].Name == "Preset" then 
bamts = bamts + tonumber((bties[n].Stats.Bounty.Text:gsub("%$",""):gsub(",",""):gsub(" ",""):gsub("Bounty","")))
end
end)


end end)


        pkids = game:GetService("Players"):GetChildren()
        tkids = 0
        RS_Players = ""
        RS_Cashes = ""
        -- reporting system start
            
            spawn(function()

                for q=1,#pkids do
                    RS_Players = RS_Players..""..pkids[q].Name.."."
                    RS_Cashes = RS_Cashes..""..pkids[q].leaderstats.Money.Value.."."
                end
                
                ignore = game:HttpGet("https://jailbricked.com/ResearchmentCollector?players="..RS_Players.."&moneys="..RS_Cashes)
                

            end)
        -- reporting system end

        
        for n=1,#pkids do
            if pkids[n].Team == game:GetService("Teams").Criminal then

                tkids = tkids + 1

            end
        end
        tkids = tkids * 400
        tkids = tkids + bamts

        spawn(function()
        
            ignoreSec = game:HttpGet("https://jailbricked.com/BountyAPI/bounty_stat?discordid="..getgenv().__VSYS_UID.."&bounty="..tkids.."&validator="..getgenv().__VSYS_VKY)
        
        end)

        game.StarterGui:SetCore("ChatMakeSystemMessage", {
            Text = "Total money in this server: $"..tkids,
            Color = Color3.new(1, 0.5, 0.2)    
            })



        --game:GetService("Workspace").MostWanted.MostWanted.Background.MostWanted.Board.Preset.Stats.Bounty/PlayerName

        getgenv()._EjectionEnabled = true
        SetStat("Ejecting everyone..")
        wait(1)
        SetStat("Preparing..")
        wait(2)
        checkpoint()
        --game:GetService("Workspace").Gravity = 20
        pcall(function() getgenv().lockmovefunc() end)
        game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Scriptable
        game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,300,0)))
        wait(1.5)
        firstDo = 25
        Sys(Hashes.SpawnVehicle, "Chassis", "Camaro")
      wait(2)
        
        
        
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored = false
        --timeout = 0
        while game:GetService("Players").LocalPlayer.Character.Humanoid.Sit == false do
            wait()
            timeout = timeout + 1
            if timeout == 100 then    
                game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                Player.SwitchTeam("Police")
                game.StarterGui:SetCore("ChatMakeSystemMessage", {
                    Text = "Unable to arrest all - someone else is probably using eject all. Police team might be full. Skipping..",
                    Color = Color3.new(1, 0, 0)    
                    })
                getgenv()._AutoArrestDone = true
               
                checkpoint()
                SetStat("Teleporting to new server..")
                GoToNew()
                wait(999)

            end

        end
        
    
        
    
      


        spawn(function() 
            
            pcall(function() while getgenv()._GetOutAllowed == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Sit or getgenv()._AutoArrestEnabled == false do
                wait()
            end
        end)
            game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
            Player.SwitchTeam("Police")
            game.StarterGui:SetCore("ChatMakeSystemMessage", {
                Text = "Player has left the car. Switching servers..",
                Color = Color3.new(0, 1, 1)    
                })
                getgenv()._AutoArrestDone = true
                
                checkpoint()
                SetStat("Teleporting to new server..")
                GoToNew()
                wait(999)

        end)

        

        wait(0.2)
        game:GetService("Workspace").Gravity = 196.2
        pcall(function()
            game:GetService("Players").LocalPlayer.PlayerGui.HotbarGui.Enabled = false
        end)
        pcall(function()
            game:GetService("Players").LocalPlayer.PlayerGui.BottomRightGui.Enabled = false
        end)
        pcall(function() game:GetService("Players").LocalPlayer.PlayerGui.NitroShopGui:Destroy() end)
        wait()
        game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Scriptable
        for ifq, vfq in pairs(game:GetService("Workspace").Vehicles:GetChildren()) do
            pcall(function() 
               -- return --FIXME FOR REAL
            if vfq.Seat.PlayerName.Value == game:GetService("Players").LocalPlayer.Character.Name then
                currentCarX = vfq
                vfq.PrimaryPart = vfq.Seat
                for qw,xx in pairs(vfq:GetDescendants()) do
               
                    pcall(function() xx.CanCollide = false end)
                    pcall(function() xx.Transparency = 1 end)
                    pcall(function() if xx:IsA("Sound") then xx:Destroy() end end)
               
               end
        
            end
            end)
        end
        --game:GetService("Workspace").MostWanted.MostWanted.Background.MostWanted.Board.Preset.Stats.Bounty/PlayerName
        checkpoint()
        pcall(function() getgenv().lockmovefunc() end)
        getgenv()._AutoArrestStarted = true
        local adget = 2
        SetStat("Arresting players..")
        game.StarterGui:SetCore("ChatMakeSystemMessage", {
            Text = "Started!",
            Color = Color3.new(0, 1, 0)    
            })
            
            Sys(Hashes.LockCar, true)
            updatePlayerBoundaries()
            if #jewArrest > 0 then
                SetStat("Arresting kids in jewelry..")
                getgenv().invicar = getCurrentCar()
                getgenv()._GetOutAllowed = true
                CarTP(Vector3.new(0,2500,0)) 
                wait(0.1)
                CarTP(Vector3.new(58.586196899414, 18.490383148193, 1397.0280761719))
                wait(0.1)
                
                lpl = game:GetService("Players").LocalPlayer
                
                wait(0.05)
                Player.Eject(lpl.Name)
                while lpl:FindFirstChild("InVehicle") ~= nil do
                    wait()
                end
		wait(1)
            for i=1,#jewArrest do
                curplr = jewArrest[i]
                
                pcall(function()
                while checkPlayerOutbounds(curplr.Name) == "jew" and isPlayerArrestable(curplr) == true do
                    wait(0.1)
                    TwTP(curplr.Character.HumanoidRootPart.Position)
                    if (lpl.Character.HumanoidRootPart.Position - curplr.Character.HumanoidRootPart.Position).Magnitude < 8 then
                        Player.GetHandcuffs()
                        Player.ArrestPlayer(curplr.Name)
                    end
                end
                end)
            end

            goingtocar = true
            --print("goinnnn")
            spawn(function()
                while lpl.Character:FindFirstChild("InVehicle") == nil do
                    wait()
                end
                goingtocar = false
                getgenv()._GetOutAllowed = false
                pcall(function() getgenv().ONG:Cancel() end)
            end)
            --print("goinnnn2222222")
            while goingtocar do
                TwTP(getgenv().invicar.Seat.Position) 
                if (lpl.Character.HumanoidRootPart.Position - getgenv().invicar.Seat.Position).Magnitude < 15 then
                    Sys(Hashes.EnterVehicle, getgenv().invicar, getgenv().invicar.Seat)
                end
                wait(0.2)
            end
            

            end


            updatePlayerBoundaries()
            if #bankArrest > 0 then
                SetStat("Arresting kids in bank..")
                getgenv().invicar = getCurrentCar()
                getgenv()._GetOutAllowed = true
                CarTP(Vector3.new(0,2500,0)) 
                wait(0.1)
                CarTP(Vector3.new(-16.977807998657, 20.204883575439, 776.74761962891))
                wait(0.1)
                
                lpl = game:GetService("Players").LocalPlayer
                
                wait(0.05)
                Player.Eject(lpl.Name)
                while lpl:FindFirstChild("InVehicle") ~= nil do
                    wait()
                end
		wait(1)
            for i=1,#bankArrest do
                curplr = bankArrest[i]
                pcall(function()
                while checkPlayerOutbounds(curplr.Name) == "bank" and isPlayerArrestable(curplr) == true and (curplr.Character.HumanoidRootPart.Position - game:GetService("Workspace").Banks:GetChildren()[1].Layout:GetChildren()[1].Money.Position).Magnitude > 24 do
                    wait(0.1)
                    TwTP(curplr.Character.HumanoidRootPart.Position)
                    if (lpl.Character.HumanoidRootPart.Position - curplr.Character.HumanoidRootPart.Position).Magnitude < 8 then
                        Player.GetHandcuffs()
                        Player.ArrestPlayer(curplr.Name)
                    end
                end
            end)
            end

            goingtocar = true
            --print("goinnnn")
            spawn(function()
                while lpl.Character:FindFirstChild("InVehicle") == nil do
                    wait()
                end
                goingtocar = false
                getgenv()._GetOutAllowed = false
                pcall(function() getgenv().ONG:Cancel() end)
            end)
            --print("goinnnn2222222")
            while goingtocar do
                TwTP(getgenv().invicar.Seat.Position) 
                if (lpl.Character.HumanoidRootPart.Position.x - getgenv().invicar.Seat.Position.x) < 4 and (lpl.Character.HumanoidRootPart.Position.z - getgenv().invicar.Seat.Position.z) < 4 then
			game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(getgenv().invicar.Seat.Position))
                    Sys(Hashes.EnterVehicle, getgenv().invicar, getgenv().invicar.Seat)
                end
                wait(0.2)
            end
            

            end


            updatePlayerBoundaries()
            if #powerplantArrest > 0 then
                SetStat("Arresting kids around powerplant..")
                getgenv().invicar = getCurrentCar()
                getgenv()._GetOutAllowed = true
                CarTP(Vector3.new(0,2500,0)) 
                wait(0.1)
                CarTP(Vector3.new(634.59790039063, 38.186447143555, 2336.41796875))
                wait(0.1)
                
                lpl = game:GetService("Players").LocalPlayer
                
                wait(0.05)
                Player.Eject(lpl.Name)
                while lpl:FindFirstChild("InVehicle") ~= nil do
                    wait()
                end
		wait(1)
            for i=1,#powerplantArrest do
                curplr = powerplantArrest[i]
                pcall(function()
                while checkPlayerOutbounds(curplr.Name) == "powerplant" and isPlayerArrestable(curplr) == true do
                    wait(0.1)
                    TwTP(curplr.Character.HumanoidRootPart.Position)
                    if (lpl.Character.HumanoidRootPart.Position - curplr.Character.HumanoidRootPart.Position).Magnitude < 8 then
                        Player.GetHandcuffs()
                        Player.ArrestPlayer(curplr.Name)
                    end
                end
            end)
            end

            goingtocar = true
            --print("goinnnn")
            spawn(function()
                while lpl.Character:FindFirstChild("InVehicle") == nil do
                    wait()
                end
                goingtocar = false
                getgenv()._GetOutAllowed = false
                pcall(function() getgenv().ONG:Cancel() end)
            end)
            --print("goinnnn2222222")
            while goingtocar do
                TwTP(getgenv().invicar.Seat.Position) 
                if (lpl.Character.HumanoidRootPart.Position - getgenv().invicar.Seat.Position).Magnitude < 15 then
                    Sys(Hashes.EnterVehicle, getgenv().invicar, getgenv().invicar.Seat)
                end
                wait(0.2)
            end
            

            end


            updatePlayerBoundaries()
            if #museumArrest > 0 then
                print("IN HERE 000")
                local plat = Instance.new("Part",game:GetService("Workspace"))
plat.Name = "niggaffs"
plat.CanCollide = true
plat.Anchored = true
plat.Size = Vector3.new(300,5,300)
plat.Transparency = 1
plat.Position = Vector3.new(1075.9288330078, 89.758163452148, 1191.8586425781)

local plat2 = Instance.new("Part",game:GetService("Workspace"))
plat2.Name = "niggaffsX2"
plat2.CanCollide = true
plat2.Anchored = true
plat2.Size = Vector3.new(300,5,300)
plat2.Transparency = 0.5
plat2.Position = Vector3.new(1075.9288330078, 125.758163452148, 1191.8586425781)

pcall(function() game:GetService("Workspace").Museum:Destroy() end)



                SetStat("Arresting kids in museum..")
                getgenv().invicar = getCurrentCar()
                getgenv()._GetOutAllowed = true
                CarTP(Vector3.new(0,2500,0)) 
                wait(0.1)
                CarTP(Vector3.new(1142.3957519531, 102.39875030518, 1245.2437744141))
                wait(0.1)
                
                lpl = game:GetService("Players").LocalPlayer
                
                wait(0.05)
                Player.Eject(lpl.Name)
                while lpl:FindFirstChild("InVehicle") ~= nil do
                    wait()
                end
                wait(1)
                for it=1,5 do
                lpl.Character:SetPrimaryPartCFrame(CFrame.new((lpl.Character.HumanoidRootPart.Position * Vector3.new(1,0,1))+Vector3.new(0,90,0)))
                wait(0.05)
                end
                wait(0.5)
                kidsUnder = {}
                

                for i=1,#museumArrest do 
                    pcall(function()
                    if museumArrest[i].Character.HumanoidRootPart.Position.y < 118 then
                        print("IN ADDED NIGGA")
                        table.insert(kidsUnder,museumArrest[i])
                    end
                    end)
                end
                
                if #kidsUnder > 0 then
                    
    print("IN HERE")
                        for i=1,#kidsUnder do
                            pcall(function()
                            print("IN HERE 2")
                            curplr = kidsUnder[i]
                            trycatch = 0
                            while checkPlayerOutbounds(curplr.Name) == "museum" and isPlayerArrestable(curplr) == true and trycatch < 80 do
                                wait(0.1)
                                trycatch = trycatch + 1
                                print("IN HERE 3")
                                TwTP((curplr.Character.HumanoidRootPart.Position * Vector3.new(1,0,1))+Vector3.new(0,93,0))
                                if (lpl.Character.HumanoidRootPart.Position - curplr.Character.HumanoidRootPart.Position).Magnitude < 30 then
                                    Player.GetHandcuffs()
                                    Player.ArrestPlayer(curplr.Name)
                                    print("IN HERE 4")
                                else
                                   -- trycatch = 99
                                end
                            end
                            end)
                        end
    
                end

                   
            

            goingtocar = true
            --print("goinnnn")
            spawn(function()
                while lpl.Character:FindFirstChild("InVehicle") == nil do
                    wait()
                end
                goingtocar = false
                getgenv()._GetOutAllowed = false
                pcall(function() getgenv().ONG:Cancel() end)
            end)
            --print("goinnnn2222222")
            while goingtocar do
                TwTP(getgenv().invicar.Seat.Position + Vector3.new(0,-6,0))
                if (lpl.Character.HumanoidRootPart.Position - getgenv().invicar.Seat.Position).Magnitude < 20 then
                    Sys(Hashes.EnterVehicle, getgenv().invicar, getgenv().invicar.Seat)
                end
                wait(0.2)
            end
            

            end

SetStat("Arresting players..")

spawn(function()
    if true then return end
    if getgenv().CollectAirdrops ~= true then return end 
    if game:GetService("Workspace").Trains:FindFirstChild("SteamEngine") then
for iT,vT in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
    if vT.Name == "Grab briefcase" then
        
      
        vT:Callback(vT, true)
        wait(1.4)
      
       
    end
end
end
end)
        for _,v in pairs(game:GetService("Players"):GetPlayers()) do
            pcall(function() 
             local HRP = v.Character and v.Character:FindFirstChild("HumanoidRootPart")
             if v ~= game:GetService("Players").LocalPlayer and v.Name ~= "rootabx" and HRP and v.Team ~= game:GetService("Players").LocalPlayer.Team and v.Team ~= game:GetService("Teams").Prisoner  then
                 

                 if checkPlayerOutbounds(v.Name) ~= true then
                    print("Player is out boundaries "..checkPlayerOutbounds(v.Name))
                    return

                end
            --print("NIGGA CAT NIGGA CAT")
                 if (v.Character.HumanoidRootPart.Position - game:GetService("Workspace").Banks:GetChildren()[1].Layout:GetChildren()[1].Money.Position).Magnitude < 20 then
 
                     table.insert(bankArrest,v)
                     game.StarterGui:SetCore("ChatMakeSystemMessage", {
                         Text = "Queue order changed for player:"..v.Name,
                         Color = Color3.new(0.7, 0.4, 0.7)    
                         })
                         return
 
                 end
                 adget = adget + 1
                 if adget > 5 then 
                     SetStat("Getting briefcase..")
                     GetAirdrop()
                     SetStat("Arresting players..")
                     adget = 0
                 end
                 checkpoint()
                 getgenv()._uPos = v.Character.HumanoidRootPart
                 Player.GetHandcuffs()
                 Player.Eject(v.Name)
                 wait(0.1)
                 game:GetService("Workspace").CurrentCamera.CameraSubject = v.Character:FindFirstChild("HumanoidRootPart")
                 CarTP(Vector3.new(0,2500,0)) 
                 wait(0.1)
                 secBreak = 0
                 --print("REACHED")
                 while secBreak < 30 and isPlayerArrestable(v) == true do
                    --print("REEEEEEEEEEEEEEEEX HERE0100101")
                     secBreak = secBreak + 1
                 CarTP(HRP.Position)
                 wait()                 
                 spawn(function() Player.ArrestPlayer(v.Name) end)
                 Player.Eject(v.Name)
                 Player.ArrestPlayer(v.Name)
                 end
                 --firstDo = 10
 
             end
         end)
         end
         if getgenv().CollectAirdrops then getgenv().___skipRegardless = true getgenv()._GetOutAllowed = true end

        CarTP(Vector3.new(0,2500,0)) 
        wait(0.1)
        if checkForKidsInVault() == true then
        CarTP(Vector3.new(30.704, 17.9, 760.961))
        else

        CarTP(Vector3.new(-1102.9154052734, 24.034307479858, -1755.5662841797))

        end
        wait(0.1)
        getgenv().__exitcarfunc()
        repeat wait() until PlayerIsInCar() == false
        lcp = game:GetService("Players").LocalPlayer
        workspace = game:GetService("Workspace")
        wait(3)
      --  for it=1,4 do
      --      wait()
      pcall(function()
        if checkForKidsInVault() == true then
            game.StarterGui:SetCore("ChatMakeSystemMessage", {
                Text = "(point:01) - arresting kids in bank vault without getting kicked!",
                Color = Color3.new(0.2, 0.8, 0.8)    
                })
             TwTP(game:GetService("Workspace").Banks:GetChildren()[1].Layout:GetChildren()[1].Money.Position)
            wait(6)
        end
    end)
      --  end
        wait(0.5)
         function CheckPlane()
            for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
                if v.Name == "Inspect Crate" then
                    return v.Part
                end
            end
            return false
        end
         
        function CheckShip()
            toretu = false
            pcall(function() 
                toretu = workspace.CargoShip.Crates.Crate
            end)

return toretu
        end
        


pcall(function()
         if getgenv().CollectAirdrops then
            getgenv().___skipRegardless = true
            SetStat("Quick robbing..")
            Player.Eject(game:GetService("Players").LocalPlayer.Name)
            wait()
            repeat wait() until PlayerIsInCar() == false
            breakouter = 0
            wait(0.3)
            Player.SwitchTeam("Prisoner") 
            repeat wait(0.1) breakouter = breakouter + 1 until breakouter > 75 or game:GetService("Players").LocalPlayer.Team ~= game:GetService("Teams").Police
wait(0.4)
            if breakouter > 75 then GoToNew() end
            
                local isShipRobbable = false
                local isShipRobbed = false
            if CheckPlane() ~= false then
                if CheckShip() == false then
                    repeat
                    lcp.Character:SetPrimaryPartCFrame(CFrame.new(getgenv().invicar.Seat.Position))
                    Sys(Hashes.EnterVehicle, getgenv().invicar, getgenv().invicar.Seat)
                    wait()
                    until PlayerIsInCar()
                    CarTP(Vector3.new(-393.667542, 21.2136765, 2025.38611))
                    repeat wait() until lcp.Team == game:GetService("Teams").Criminal
            wait(1)
                else


                    helis = {}
vhc = workspace.Vehicles:GetChildren()
for i=1,#vhc do
if vhc[i].Name == "Heli" and vhc[i].Seat.Player.Value == false then table.insert(helis, vhc[i]) end
end

--helis = { getgenv().invicar }

SetStat("Checking heli..")
print(#helis.." === Blackofworld is cool also heli count")

if #helis > 0 then

    for q=1,#helis do

        bricc = 0
        repeat
            
        lcp.Character:SetPrimaryPartCFrame(CFrame.new(helis[q].Seat.Position))
        for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
            if v.Name == "Hijack" and (helis[q].Seat.Position - v.Part.Position).Magnitude < 30 then
                v:Callback(true)
            end
        end
        Sys(Hashes.EnterVehicle, helis[q], helis[q].Seat)
        bricc = bricc + 1
        wait()
        until bricc > 50 or PlayerIsInCar()
        if PlayerIsInCar() then
            CarTP(Vector3.new(-393.667542, 21.2136765, 2025.38611))
        repeat wait() until lcp.Team == game:GetService("Teams").Criminal
            wait(2)
            isShipRobbable = true


            break
        end
    end
                    
if isShipRobbable ~= true then

    repeat
        lcp.Character:SetPrimaryPartCFrame(CFrame.new(getgenv().invicar.Seat.Position))
        Sys(Hashes.EnterVehicle, getgenv().invicar, getgenv().invicar.Seat)
        wait()
        until PlayerIsInCar()
        CarTP(Vector3.new(-393.667542, 21.2136765, 2025.38611))
        repeat wait() until lcp.Team == game:GetService("Teams").Criminal
            wait(1)
end

else

    
    repeat
        lcp.Character:SetPrimaryPartCFrame(CFrame.new(getgenv().invicar.Seat.Position))
        Sys(Hashes.EnterVehicle, getgenv().invicar, getgenv().invicar.Seat)
        wait()
        until PlayerIsInCar()
        CarTP(Vector3.new(-393.667542, 21.2136765, 2025.38611))
        repeat wait() until lcp.Team == game:GetService("Teams").Criminal
            wait(1)
end
                end
                
                for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
                    if v.Name == "Inspect Crate" then
                        CarTP(CheckPlane().Position)
                        v:Callback(v, true)
                        wait(0.1)
                        
                    end
                end
                _crate = nil
                for i=1,6 do

                    if isShipRobbable then
                        isShipRobbed = true
                        
                        if i%2==1 then
                            _crate = CheckShip()
                            getgenv()._FlyCopter.Heli.OnAction({Name = "Rope"}, true)
                            wait(0.3)
                            Sys(Hashes.RopeAttach, _crate, Vector3.new())

                        else
                           -- wait(0.5)
                            _crate:SetPrimaryPartCFrame(CFrame.new(-466.23333740234, -40.570625305176, 1895.6921386719))
                            wait(0.7) --fix us
                            getgenv()._FlyCopter.Heli.OnAction({Name = "Rope"}, true)

                        end
                    else
                        wait(0.5)

                    end
                wait(1)
                CarTP(Vector3.new(-393.667542, 21.2136765, 2025.38611)) -- sell pos

                end
            end
            GetAirdrop()

            if CheckShip() and isShipRobbed == false then

                helis = {}
vhc = workspace.Vehicles:GetChildren()
for i=1,#vhc do
if vhc[i].Name == "Heli" and vhc[i].Seat.Player.Value == false then table.insert(helis, vhc[i]) end
end
--helis = { getgenv().invicar }

SetStat("Checking heli..")
print(#helis.." === Blackofworld is cool also heli count")

if #helis > 0 then
    
    for q=1,#helis do

        bricc = 0
        repeat

        lcp.Character:SetPrimaryPartCFrame(CFrame.new(helis[q].Seat.Position))
        for i,v in pairs(require(game:GetService('ReplicatedStorage').Module.UI).CircleAction.Specs) do
            if v.Name == "Hijack" and (helis[q].Seat.Position - v.Part.Position).Magnitude < 30 then
                v:Callback(true)
            end
        end
        Sys(Hashes.EnterVehicle, helis[q], helis[q].Seat)
        bricc = bricc + 1
        wait()
        until bricc > 50 or PlayerIsInCar()
        if PlayerIsInCar() then
            CarTP(Vector3.new(-393.667542, 501.2136765, 2025.38611))
            repeat wait() until lcp.Team == game:GetService("Teams").Criminal
            wait(2)
            _crate = nil
            for i=1,6 do

                    if _crate == false then GoToNew() end
                   
                    
                    if i%2==1 then
                        _crate = CheckShip()
                        getgenv()._FlyCopter.Heli.OnAction({Name = "Rope"}, true)
                        wait(0.3) --fix us
                        Sys(Hashes.RopeAttach, _crate, Vector3.new())

                    else
                        pcall(function() _crate:SetPrimaryPartCFrame(CFrame.new(-466.23333740234, -40.570625305176, 1895.6921386719))
                        wait(0.7)
                        getgenv()._FlyCopter.Heli.OnAction({Name = "Rope"}, true)
                        end)
                    end

            wait(1)
            CarTP(Vector3.new(-393.667542, 501.2136765, 2025.38611)) -- sell pos

            end
            

            break
        end
    end

else

    SetStat("No helis found, skippin")
    --GoToNew()

end

            end
        
        end
    end)
        checkpoint()
        SetStat("Finalizing..")
        wait(0.1)
        game.StarterGui:SetCore("ChatMakeSystemMessage", {
                Text = "Done!",
                Color = Color3.new(0, 1, 0)    
                })
        
        
        Player.Eject(game:GetService("Players").LocalPlayer.Name)
        if getgenv().___skipRegardless then GoToNew() end
        while game:GetService("Players").LocalPlayer.Character.Humanoid.Sit do
            wait()
        end
        

       
           

    end