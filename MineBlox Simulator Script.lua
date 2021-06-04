local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Squex01/MineBloxSimulator/main/MineBlox%20Simulator.lua')))()
local w = library:CreateWindow("Miners World")
local b = w:CreateFolder("AutoFarm")
local g = w:CreateFolder("AutoBuy")
local f = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits")

b:Toggle("AutoMine",function(bool)
    shared.toggle = bool
    AutoMine = bool
end)

b:Toggle("AutoSell",function(bool)
    shared.toggle = bool
    AutoSell = bool
end)

b:Toggle("AutoOpenChests",function(bool)
    shared.toggle = bool
    AutoOpenChests = bool
end)

g:Toggle("Backpack",function(bool)
    shared.toggle = bool
    AutoBuyBackpack = bool
end)

g:Toggle("Space",function(bool)
    shared.toggle = bool
    AutoBuySpace = bool
end)

f:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)

u:Button("Relax",function()
    setclipboard("Relax")
end)
 
u:Button("Discrod Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

while wait() do
    if AutoOpenChests == true then
        local stuff = {}
        local workspace = game.Workspace:GetDescendants()
        for i = 1, #workspace do 
            local v = workspace[i]
            if v.Name == "Silver_Chest" or 
            v.Name == "Golden_Chest" or 
            v.Name == "Diamond_Chest" then
                table.insert(stuff,v)
            end
        end
        for i = 1, #stuff do 
            if AutoOpenChests == true then
                local v11 = stuff[i]
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v11.MeshPart.CFrame.Position + Vector3.new(0,0,100))
                wait(.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v11.MeshPart.CFrame.Position + Vector3.new(0,0,0))
                wait(.1)
                if v11 then
                    if v11.Parent then
                        if v11.Parent.Parent then
                            if v11.Parent.Parent:FindFirstChild("Root") then
                                fireproximityprompt(v11.Parent.Parent.Root.Attachment.ProximityPrompt,0)
                                fireproximityprompt(v11.Parent.Parent.Root.Attachment.ProximityPrompt,1)
                                wait(.1)
                            end
                        end
                    end
                end
            end
        end
    end
        
    if AutoBuyBackpack == true then
        for i,v in pairs(game:GetService("Workspace").Backpacks:GetChildren()) do
            for i,v1 in pairs(v:GetChildren()) do
                if v1:FindFirstChild("ProximityPrompt") then
                    if workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Humanoid") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.CFrame.Position + Vector3.new(0,0,100))
                        wait(.1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.CFrame.Position + Vector3.new(0,0,0))
                        wait(.1)
                        fireproximityprompt(v1.ProximityPrompt,0)
                        fireproximityprompt(v1.ProximityPrompt,1)
                        wait(.1)
                    end
                end
            end
        end
    end
    
    if AutoBuyBackpack == true then
        for i,v in pairs(game:GetService("Workspace").Backpacks:GetChildren()) do
            for i,v1 in pairs(v:GetChildren()) do
                if v1:FindFirstChild("ProximityPrompt") then
                    if workspace[game.Players.LocalPlayer.Name]:FindFirstChild("Humanoid") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.CFrame.Position + Vector3.new(0,0,100))
                        wait(.1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v1.CFrame.Position + Vector3.new(0,0,0))
                        wait(.1)
                        fireproximityprompt(v1.ProximityPrompt,0)
                        fireproximityprompt(v1.ProximityPrompt,1)
                        wait(.1)
                    end
                end
            end
        end
    end
    
    if AutoMine == true then
        for i,v in pairs(game:GetService("Workspace").PlayerWorlds:GetChildren()) do
            for i,v1 in pairs(v:GetChildren()) do
                game:GetService("ReplicatedStorage").Remotes.MineOre:FireServer(i)
            end
        end
    end
    
    if AutoSell == true then
        game:GetService("ReplicatedStorage").Remotes.SellLoot:FireServer()
    end
    
    if AutoBuySpace == true then
        local player = game.Players.LocalPlayer
        local stuff = {}
        local workspace = game:GetService("Workspace"):GetDescendants()
        for i = 1, #workspace do 
            if AutoBuySpace == true then
                local v = workspace[i]
                if v.ClassName == "TouchTransmitter" then
                    table.insert(stuff,v)
                end
            end
        end
        for i = 1, #stuff do 
            if AutoBuySpace == true then
                local v = stuff[i]
                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    if v.Parent then
                        if v.Parent.ClassName == "Part" or v.Parent.ClassName == "MeshPart" or v.Parent.ClassName == "UnionOperation" then
                            v.Parent.CanCollide = false
                            v.Parent.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,100)
                            wait()
                            if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                if v.Parent then
                                    if v.Parent.ClassName == "Part" or v.Parent.ClassName == "MeshPart" or v.Parent.ClassName == "UnionOperation" then
                                        v.Parent.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,0)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end