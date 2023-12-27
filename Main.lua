if game.PlaceId == 6811842210 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local ver = "4.5.7 - Parkour Run"

        local NotificationLoad = loadstring(game:HttpGet(('https://raw.githubusercontent.com/treeofplant/Notif/main/library.lua'),true))()

NotificationLoad:NewNotification({ 
    ["Mode"] = "info", -- Choose one (Success/Info/Error)
    ["Title"] = "Smaler Hub~", -- Title of notification
    ["Description"] = "SucessFully Loaded.", -- Description of notification
    ["Timeout"] = 5, -- How long the notification will last
    ["Audio"] = false -- Plays audio if enabled on each notification
    
})
wait(1)
local Window = OrionLib:MakeWindow({ Name = "Smaler Hub v" .. ver, HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = true, IntroText = "Smaler Hub Present" })

local Tab = Window:MakeTab({ Name = "Main", Icon = "rbxassetid://4483345998", PremiumOnly = false })

local Section = Tab:AddSection({ Name = "Main"})

OrionLib:MakeNotification({ Name = "Notification", Content = "Successfully loaded.", Image = "rbxassetid://4483345998", Time = 5 })
wait(1.5)
OrionLib:MakeNotification({ Name = "Notification", Content = "Welcome!.", Image = "rbxassetid://4483345998", Time = 5 })
local jugador = game.Players.LocalPlayer

local mensaje = "Hey! Good day or night! <font color='rgb(255, 0, 0)'> by loldog</font> Is<font color='rgb(0, 255, 0)'> Lol</font>"

game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = mensaje,
    Color = Color3.new(1, 1, 1),
    Font = Enum.Font.SourceSansBold,
    FontSize = Enum.FontSize.Size24,
})

Tab:AddButton({
    Name = "Tp to End",
    Callback = function(value)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").CurrentStages.RunEnd.EndWall.Position)
    end
})

function void()
local bloque = Instance.new("Part")
bloque.Size = Vector3.new(5, 1, 5)
bloque.Anchored = true
bloque.Name = "p"
bloque.CanCollide = true
bloque.Position = game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(0, -4, 0)
wait()
bloque.Position = game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(0, -3, 0)
bloque.Parent = game.Workspace
wait(0.1)
bloque:Destroy()
end

Tab:AddToggle({
    Name = "Anti Fall [Contain Bugs]",
    Default = false,
    Callback = function(value)
        getgenv().G = value
        if getgenv().G then
            while getgenv().G do
                wait()
                void()
            end
        else
           print("notification from Orion: Disabled [Continue All Was Good]")
        end
    end
})

function god()
game:GetService("Players").LocalPlayer.extrastats.GodModeEnabled.Value = false
end

function ungod()
game:GetService("Players").LocalPlayer.extrastats.GodModeEnabled.Value = true
end

Tab:AddButton({
    Name = "God Mode: On",
    Callback = function(value)
        ungod()
                local NotificationLoad = loadstring(game:HttpGet(('https://raw.githubusercontent.com/treeofplant/Notif/main/library.lua'),true))()

NotificationLoad:NewNotification({ 
    ["Mode"] = "info", -- Choose one (Success/Info/Error)
    ["Title"] = "Smaler Hub~", -- Title of notification
    ["Description"] = "SucessFully Player god.", -- Description of notification
    ["Timeout"] = 5, -- How long the notification will last
    ["Audio"] = false -- Plays audio if enabled on each notification
    
})  
    end
})

Tab:AddButton({
    Name = "God Mode: Off",
    Callback = function(value)
        god()
        local NotificationLoad = loadstring(game:HttpGet(('https://raw.githubusercontent.com/treeofplant/Notif/main/library.lua'),true))()

NotificationLoad:NewNotification({ 
    ["Mode"] = "info", -- Choose one (Success/Info/Error)
    ["Title"] = "Smaler Hub~", -- Title of notification
    ["Description"] = "SucessFully Player ungod.", -- Description of notification
    ["Timeout"] = 5, -- How long the notification will last
    ["Audio"] = false -- Plays audio if enabled on each notification
    
})
    end
})

local Settings = Window:MakeTab({ Name = "Settings", Icon = "rbxassetid://4483345998", PremiumOnly = false })

local Section = Settings:AddSection({ Name = "Settings - Misc [Beta]" })

Settings:AddToggle({
    Name = "Anti Gravity Event [Work]",
    Default = false,
    Callback = function(value)
       getgenv().M = value
       
       if getgenv().M then
       while getgenv().M do
       wait()
       if game.Workspace.Gravity ~= 196.2 then
       game.Workspace.Gravity = 196.2
       end
       end
       end
    end
})
function Aura()
    --All functions maded by ChatGPT.
    local jugador = game.Players.LocalPlayer.Character
    if jugador then
        local cubo = Instance.new("Part")
        cubo.Size = Vector3.new(5, 5, 5)
        cubo.Anchored = true
        cubo.CanCollide = true
        cubo.Name "Cube"
        cubo.Transpency = 0.6
        cubo.Position = jugador.HumanoidRootPart.Position
        cubo.Touched:Connect(function(hit)
            local humanoid = hit.Parent:FindFirstChild("Humanoid")
            if humanoid then
                game.Players.LocalPlayer.extrastats.GodModeEnabled.Value = true
            end
        end)
        cubo.Parent = game.Workspace

        wait(0.2)-- Esperar un tiempo antes de recrear el cubo (ajusta este valor según tus necesidades)
        cubo:Destroy() -- Eliminar el cubo después del tiempo establecido
    end
end

function Auraun()
game.Players.LocalPlayer.extrastats.GodModeEnabled.Value = false
end

---loadstring(game:HttpGet("https://raw.githubusercontent.com/Drx1590/Smaler-Hub/main/Parkour%20Run%20/Hub.lua"))()
local SpeedDe = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
Settings:AddToggle({
    Name = "Anti Speed Event",
    Default = false,
    Callback = function(value)
       getgenv().M = value
       
       if getgenv().M then
               local NotificationLoad = loadstring(game:HttpGet(('https://raw.githubusercontent.com/treeofplant/Notif/main/library.lua'),true))()

NotificationLoad:NewNotification({ 
    ["Mode"] = "info", -- Choose one (Success/Info/Error)
    ["Title"] = "Smaler Hub~", -- Title of notification
    ["Description"] = "This only work when the speed is hight than normal.", -- Description of notification
    ["Timeout"] = 5, -- How long the notification will last
    ["Audio"] = false -- Plays audio if enabled on each notification
    
})
       while getgenv().M do
       wait()
       if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= SpeedDe then
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = SpeedDe
       end
       end
       end
    end
})

function esp()
local bloque = Instance.new("Part")
game.Players.LocalPlayer.extrastats.GodModeEnabled.Value = true
bloque.Size = Vector3.new(5, 5, 5)
bloque.Anchored = true
bloque.Name = "pepe"
bloque.CanCollide = false
bloque.Position = game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(0, -4, 0)
wait()
bloque.Position = game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(0, -3, 0)
bloque.Parent = game.Workspace
wait(0.2)
bloque:Destroy()
game.Players.LocalPlayer.extrastats.GodModeEnabled.Value = false
end


OrionLib:Init()
else
local NotificationLoad = loadstring(game:HttpGet(('https://raw.githubusercontent.com/treeofplant/Notif/main/library.lua'),true))()

NotificationLoad:NewNotification({ 
    ["Mode"] = "info", -- Choose one (Success/Info/Error)
    ["Title"] = "Smaler Hub~", -- Title of notification
    ["Description"] = "Error Loading Gui: not Supported game!", -- Description of notification
    ["Timeout"] = 5, -- How long the notification will last
    ["Audio"] = false -- Plays audio if enabled on each notification
    
})
end
