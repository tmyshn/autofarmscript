

local Config = {
    WindowName = "V.G Hub",
    Color = Color3.fromRGB(255, 128, 64),
    Keybind = Enum.KeyCode.RightControl
}

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Debris = game:GetService("Debris")
local StarterGui = game:GetService("StarterGui")
local Workspace = game:GetService("Workspace")







local Player = Players.LocalPlayer
local wait = task.wait



Player.Idled:connect(
    function()
        game:GetService("VirtualUser"):ClickButton2(Vector2.new())
    end
)

for i,v in pairs(getconnections(Player.Idled)) do
    v:Disable()
end 



local NewsApp = Player.PlayerGui:FindFirstChild("NewsApp")
local PlayButton = NewsApp:WaitForChild("EnclosingFrame").MainFrame.Contents.PlayButton
local Baby = Player.PlayerGui.DialogApp.Dialog.RoleChooserDialog.Baby
repeat
    wait()
    if PlayButton.Visible then
        for i,v in pairs(getconnections(PlayButton.MouseButton1Click)) do
            v:Fire()
        end 
    end 
until Baby and Baby.Visible or Player.Character:FindFirstChild("HumanoidRootPart") and Workspace.Camera.CameraSubject == Player.Character:WaitForChild("Humanoid")

if Baby.Visible then
    for i,v in pairs(getconnections(Baby.MouseButton1Click)) do
        v:Fire()
    end 
end 


wait(5)

local ucuncuasama=Player.PlayerGui:FindFirstChild("DialogApp")
local ucuncuasamaiki=ucuncuasama:WaitForChild("Dialog").GamepassDialog.Buttons.ButtonTemplate

repeat
    wait()
    print("TUMAY DAYI")
    if ucuncuasamaiki.Visible then 
        for i,v in pairs(getconnections(ucuncuasamaiki.MouseButton1Click)) do
            v:Fire()
        end
    end
until ucuncuasamaiki and ucuncuasamaiki.Visible



local dailylogin=Player.PlayerGui.DailyLoginApp.Frame.Body.Buttons.ClaimButton

wait(5)

repeat
    wait()
    if dailylogin.Visible then 
        for i,v in pairs(getconnections(dailylogin.MouseButton1Click)) do
            v:Fire()
        end
    end
until dailylogin and dailylogin.Visible

wait(5)

repeat
    wait()
    if dailylogin.Visible then 
        for i,v in pairs(getconnections(dailylogin.MouseButton1Click)) do
            v:Fire()
        end
    end
until dailylogin and dailylogin.Visible


local Table = {6152116144, 185655149}
local Set = setfpscap



 

local Name = "Adopt me" .. " " .. Player.Name .. ".json"

Des = {}
if makefolder then
    makefolder("V.G Hub")
end

local Settings

if
    not pcall(
        function()
            readfile("V.G Hub//" .. Name)
        end
    )
 then
    writefile("V.G Hub//" .. Name, HttpService:JSONEncode(Des))
end
if readfile("V.G Hub//" .. Name) then
    Settings = HttpService:JSONDecode(readfile("V.G Hub//" .. Name))
end

local function Save()
    writefile("V.G Hub//" .. Name, HttpService:JSONEncode(Settings))
end



StarterGui:SetCore(
    "SendNotification",
    {
        Title = "Warning",
        Text = "Added check for when your fully loaded in when executed please load into the game fully for script to execute"
    }
)


RunService.RenderStepped:connect(
    function()
        pcall(
            function()
                for i, v in ipairs(Workspace.Interiors:GetChildren()) do
                    if v.ClassName == "Model" and v.Name:match("MainMap") then
                        wait()
                        v.Name = "MainMap"
                    end
                end
                for i, v in pairs(Workspace.HouseInteriors.furniture:GetChildren()) do
                    v.Name = string.gsub(v.Name, Players.LocalPlayer.Name .. "/", "")
                    v.Name = string.gsub(v.Name, "%d+" .. "/", "")
                    v.Name = string.gsub(v.Name, "nil" .. "/true/", "")
                end
                if Workspace:FindFirstChild("ServerSidedMapSeats") then
                    Workspace.ServerSidedMapSeats:remove()
                end
            end
        )
    end
)

local getupvalue = getupvalue or debug.getupvalue
local getconstant = getconstant or debug.getconstant

local getconstants = getconstants or debug.getconstants
local getgc = getgc or get_gc_objects or debug.getgc
local getreg = getreg or getregistry or debug.getregistry
local get_thread_context = get_thread_context or getthreadcontext or getidentity or syn.get_thread_identity
local get_thread_identity = get_thread_context
local set_thread_context = set_thread_context or setthreadcontext or setidentity or syn.set_thread_identity
local set_thread_identity = set_thread_context

local Remotes = {}
local Inventorys = ReplicatedStorage.ClientDB.Inventory
local InventoryGiftsSubDB = require(Inventorys.InventoryGiftsSubDB)

local Stores = {
    "CoffeeShop",
    "Supermarket",
    "PizzaShop",
    "ToyShop",
    "Obbies",
    "Neighborhood",
    "CampingShop",
    "AutoShop",
    "Nursery",
    "Cave",
    "IceCream",
    "PotionShop",
    "SkyCastle",
    "Hospital",
    "HatShop",
    "PetShop",
    "School",
    "BabyShop",
    "HotSpringHouse",
    "SafetyHub",
    "DebugInterior",
    "VIP",
    "Salon",
    "SpleefMinigame",
    "SimonSaysMinigame",
    "WinterCastle"
}

local Baths = {
    "StylishShower",
    "CheapBathtub",
    "ModernShower",
    "Bathtub",
    "GingerbreadShower",
    "HotTub"
}

local FreeFoods = {
    "ham_vip",
    "water_vip",
    "chocolate_milk_vip",
    "popcorn_vip",
    "marshmallow_on_a_stick",
    "healing_apple",
    "teachers_apple",
}

local Beds = {
    "FancyPetBed",
    "ModernPetBed",
    "CircularPetBed",
    "RectangularPetBed",
    "NormalCrib",
    "BasicCrib",
    "RoyalCrib",
    "PoshCrib",
}
local Tasks = {
    "hungry",
    "sleepy",
    "thirsty",
    "bored",
    "dirty",
    "camping",
    "sick",
    "school",
    "hot_spring",
    "salon",
    "pizza_party"
}

local Egg = {
    "japan_2022_egg",
    "cracked_egg",
    "regular_pet_egg",
    "royal_egg",
    "retired_egg"
}

local gifts = {
    "smallgift",
    "biggift",
    "massivegift",
    "legend_hat_2022_simple_chest",
    "legend_hat_2022_regal_chest"
}
local Obbys = {
    "miniworld",
    "coastal_climb",
    "shipwreck_bay",
    "ancient_ruins",
    "lonelypeak",
    "pyramid",
    "tinyisles"
}
local Part = Instance.new("Part")
Part.Name = "P"
Part.Size = Vector3.new(9e9,0,9e9)
Part.Anchored = true 
Part.Transparency = 0.5 
Part.CFrame = CFrame.new(5000,5000,5000)
Part.Parent = Workspace

local Location = nil
for i, v in pairs(getgc(true)) do
    if type(v) == "function" then
        if getfenv(v).script == ReplicatedStorage.ClientModules.Core.InteriorsM.InteriorsM then
            if table.find(getconstants(v), "LocationAPI/SetLocation") then
                Location = v
                break
            end
        end
    end
end
local function SetLocation(A, B, C)
    set_thread_identity(2)
    local O = get_thread_identity()
    Location(A, B, C)
    set_thread_identity(O)
end
function Home()
    if Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA("Model") then
        return Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA("Model").Name
    else
        return false
    end
end
function PersonHome()
    if Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA("Model") then
        return Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA("Model").Name
    else
        return false
    end
end 
function Store()
    if Workspace.Interiors:FindFirstChildWhichIsA("Model") then
        if
            (Workspace.Interiors:FindFirstChildWhichIsA("Model").Name ~= "MainMap") and
                (Workspace.Interiors:FindFirstChildWhichIsA("Model").Name ~= "Neighborhood")
         then
            return Workspace.Interiors:FindFirstChildWhichIsA("Model").Name
        else
            return false
        end
    else
        return false
    end
end

function MainMap()
    if Workspace.Interiors:FindFirstChildWhichIsA("Model") then
        if Workspace.Interiors:FindFirstChildWhichIsA("Model").Name == "MainMap" then
            return Workspace.Interiors:FindFirstChildWhichIsA("Model").Name
        else
            return false
        end
    else
        return false
    end
end

function Neighborhood()
    if Workspace.Interiors:FindFirstChildWhichIsA("Model") then
        if Workspace.Interiors:FindFirstChildWhichIsA("Model").Name == "Neighborhood" then
            return Workspace.Interiors:FindFirstChildWhichIsA("Model").Name
        else
            return false
        end
    else
        return false
    end
end

function GoToStore(Name)
    if Store() == Name then
        return true
    end
    SetLocation(Name, "MainDoor", {})
    while Store() ~= Name do
        wait()
    end
    if Home() then
        return true
    end
    return false
end

function GoToHome()
    SetLocation("housing", "MainDoor", {["house_owner"] = Player})
    while not Home() do
        wait()
    end
    if Home() then
        return true
    end
    return false
end

function GoToNeighborhood()
    SetLocation("Neighborhood", "MainDoor", {})
    while not Neighborhood() do
        wait()
    end
    if Neighborhood() then
        return true
    end
    return false
end

function GoToMainMap()
    SetLocation("MainMap", "Neighborhood/MainDoor", {})
    while not MainMap() do
        wait()
    end
    if MainMap() then
        return true
    end
    return false
end

function GoToPersonsHouse(Name)
    SetLocation("housing","MainDoor",{["house_owner"] = Players[Name]})
    while not PersonHome() do
        wait()
    end 
    if PersonHome() then
        return true 
    end 
    return false
end 
function Bed(Name)
    GoToHome()
    for i, v in pairs(Workspace.HouseInteriors.furniture:GetChildren()) do
        if v:FindFirstChildWhichIsA("Model") and (table.find(Beds, v:FindFirstChildWhichIsA("Model").Name)) then
            return v.Name
        end
    end
end
function Showers(Name)
    GoToHome()
    for i, v in pairs(Workspace.HouseInteriors.furniture:GetChildren()) do
        if v:FindFirstChildWhichIsA("Model") and (table.find(Baths, v:FindFirstChildWhichIsA("Model").Name)) then
            return v.Name
        end
    end
end



local Neon = {}
local Spec = {}
Settings.Key = {}
local PetID
local Pet
local PetsShow = {}
local List = {}
for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
    local Key = tostring(v["id"]) .. " - " .. tostring(v["properties"]["age"]) .. " years old"
    PetsShow[Key] = v
    table.insert(List, Key)
    table.sort(List, key)
end

UserInputService.WindowFocusReleased:Connect(
    function()
        if Settings.Render then
            RunService:Set3dRenderingEnabled(false)
            if table.find(Table, game.PlaceId) then
                Set(30)
            else
                Set(5)
            end
        end 
    end
)
UserInputService.WindowFocused:Connect(
    function()
        if Settings.Render then
            RunService:Set3dRenderingEnabled(true)
            Set(100)
        end 
    end
)

for i, v in pairs(debug.getupvalue(require(ReplicatedStorage.Fsys).load("RouterClient").init, 4)) do
    v.Name = i
end
pcall(
    function()
        ReplicatedStorage.API:FindFirstChild("DailyLoginAPI/ClaimDailyReward"):InvokeServer()
    end
)

local FlyPets = function(A)
    pcall(
        function()
            for i, v in pairs(
                require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets
            ) do
                if A then
                    v.properties.rideable = true
                    v.properties.flyable = true
                elseif not A then
                    v.properties.rideable = false
                    v.properties.flyable = false
                end
            end
        end
    )
end


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/test"))()
local Window = Library:CreateWindow(Config, CoreGui)

local Tab1 = Window:CreateTab("Adopt Me")
local Tab2 = Window:CreateTab("UI Settings")

local Section1 = Tab1:CreateSection("")
local Section2 = Tab1:CreateSection("Second Section")
local Section3 = Tab2:CreateSection("Menu")
local Section4 = Tab2:CreateSection("Background")
--local Section5 = Tab2:CreateSection("Misc")

-------------
local Toggle1 = Section1:CreateToggle("AutoFarm Baby", Settings.BabyFarm, function(State)
Settings.BabyFarm = State
spawn(function()

if Settings.BabyFarm then
    ReplicatedStorage.API["TeamAPI/ChooseTeam"]:InvokeServer("Babies", true)
end 
if not Settings.BabyFarm then 
    ReplicatedStorage.API["TeamAPI/ChooseTeam"]:InvokeServer("Parents", true)
end 
spawn(function()
    while wait(150) and Settings.BabyFarm do  -- normali bos wait edits tag
        pcall(
            function()
                for i,v in pairs(Tasks) do
                    if Player.PlayerGui.AilmentsMonitorApp.Ailments:FindFirstChild(v) and wait(1) then
                        ReplicatedStorage.API["MonitorAPI/AddAdditive"]:FireServer(v, 100)
                    end
                end 
            end
        )
        end 
    end
)
end)
end)



local Toggle2 = Section1:CreateToggle("CPU Usage Improver", Settings.Render, function(State)
    Settings.Render = State
end)

local Toggle = Section1:CreateToggle("Crash Server", Settings.Crash, function(State)
Settings.Crash = State
RunService.RenderStepped:Connect(function()
    if Settings.Crash then
        ReplicatedStorage.API["TeamAPI/ChooseTeam"]:InvokeServer("Parents", true) print("Baby")
        ReplicatedStorage.API["TeamAPI/ChooseTeam"]:InvokeServer("Babies", true) print("Parent")
    end 
end)
end)

local Toggle = Section1:CreateToggle("Auto Claim Quests", Settings.FK, function(State)
Settings.FK = State
spawn(function()
    while wait() and Settings.FK do 
        pcall(function()
            for i, v in pairs(Player.PlayerGui.QuestApp.Board.Body.Contents.ScrollingFrame:GetChildren()) do
                if v:FindFirstChild("Body") then
                    ReplicatedStorage.API:FindFirstChild("QuestAPI/ClaimQuest"):InvokeServer(tostring(v.Body:GetAttribute("QuestId")))
                end
            end
        end)
    end 
end)
end)



local Toggle2 = Section1:CreateToggle("Auto Join Winter Minigames", Settings.Cand, function(State)
Settings.Cand = State


RunService.RenderStepped:connect(
    function()
        if Settings.Cand and not Settings.PetFarm then
            pcall(
                function()
                    Player.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(11)
                end
            )
        end
    end
)

spawn(
    function()
        while wait(1) do
            pcall(function()
                    if Settings.Cand and not Settings.PetFarm then
                        
                        local DodgeballMinigameInterior = require(ReplicatedStorage.ClientModules.Game.Minigames.DodgeballMinigameInterior)
                        local IceBridgeMinigameInterior = require(ReplicatedStorage.ClientModules.Game.Minigames.IceBridgeMinigameInterior)
                        local Conpare = string.gsub(DodgeballMinigameInterior.get_join_timer_display_string_now(), "%D", "")
                        local Conpare2 = string.gsub(IceBridgeMinigameInterior.get_join_timer_display_string_now(), "%D", "")
                        if not Workspace.Interiors:FindFirstChild("WinterCastle") and
                                wait()
                         then
                            GoToStore("WinterCastle")
                            Player.Character.HumanoidRootPart.CFrame =
                                Workspace.Interiors:FindFirstChildWhichIsA("Model").PrimaryPart.CFrame:ToWorldSpace(
                                CFrame.new(0, 0, -6)
                            )
                         end 
                         if Workspace.Interiors:FindFirstChild("WinterCastle") then
                        if not DodgeballMinigameInterior.is_game_in_progress() and Conpare < Conpare2 then
                            Player.Character.HumanoidRootPart.CFrame =
                                Workspace.Interiors.WinterCastle.DodgeballMinigame.JoinZone.Collider.CFrame
                        end 
                        if DodgeballMinigameInterior.is_game_in_progress()  then 
                            DodgeballMinigameInterior.shovel_tool_prepare_snowball()
                            DodgeballMinigameInterior.throw_snowbal()
                        end 
                        if not IceBridgeMinigameInterior.is_game_in_progress() and Conpare2 < Conpare then
                            Player.Character.HumanoidRootPart.CFrame = Workspace.Interiors.WinterCastle.IceBridgeMinigame.JoinZone.Collider.CFrame
                        end 
                        if IceBridgeMinigameInterior.is_game_in_progress() then
                            IceBridgeMinigameInterior.complete_Player_game()
                        end 
                        end 
                    end 
                end)
            end 
        end
    )
end)
--[[
local S = {
    "SimonSaysMinigame",
    "SpleefMinigame"
}
local Toggle2 = Section1:CreateToggle("Auto Candy", Settings.Candy, function(State)
Settings.Candy = State

RunService.RenderStepped:connect(
    function()
        if Settings.Candy and not Settings.PetFarm then
            pcall(
                function()
                    Player.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(11)
                end
            )
        end
    end
)
spawn(
    function()
        while wait(1) do
            pcall(function()
                    if Settings.Candy and not Settings.PetFarm then
                        local SpleefMinigame = require(ReplicatedStorage.ClientModules.Game.Minigames.SpleefMinigameInterior)
                        local SimonSaysMinigame = require(ReplicatedStorage.ClientModules.Game.Interiors.SimonSaysMinigameInterior)
                        local HideAndSeek = require(ReplicatedStorage.ClientModules.Game.Interiors.HideAndSeekInterior)
                        Player.Character.HumanoidRootPart.Anchored = true
                        local Conpare = string.gsub(SimonSaysMinigame.get_join_timer_display_string_now(), "%D", "")
                        local Conpare2 = string.gsub(SpleefMinigame.get_join_timer_display_string_now(), "%D", "")
                        local Conpare3 = string.gsub(HideAndSeek.get_join_timer_display_string_now(), "%D", "")
                        if
                            Conpare < Conpare2 and Conpare < Conpare3 and not SimonSaysMinigame.is_game_in_progress() and
                                not Workspace.Interiors:FindFirstChild("SimonSaysMinigame") and
                                wait()
                         then
                            GoToStore("SimonSaysMinigame")
                            Player.Character.HumanoidRootPart.CFrame =
                                Workspace.Interiors:FindFirstChildWhichIsA("Model").PrimaryPart.CFrame:ToWorldSpace(
                                CFrame.new(0, 0, -6)
                            )
                        elseif
                            Conpare2 < Conpare and Conpare2 < Conpare3 and not SpleefMinigame.is_game_in_progress() and
                                not Workspace.Interiors:FindFirstChild("SpleefMinigame") and
                                wait()
                         then
                            GoToStore("SpleefMinigame")
                            Player.Character.HumanoidRootPart.CFrame =
                                Workspace.Interiors:FindFirstChildWhichIsA("Model").PrimaryPart.CFrame:ToWorldSpace(
                                CFrame.new(0, 0, -6)
                            )
                        elseif
                            Conpare3 < Conpare and Conpare3 < Conpare2 and
                                not Workspace.Interiors:FindFirstChild("HideAndSeekInterior") and Settings.HideAndSeek
                         then
                            GoToStore("HideAndSeekInterior")
                            Player.Character.HumanoidRootPart.CFrame =
                                Workspace.Interiors:FindFirstChildWhichIsA("Model").PrimaryPart.CFrame:ToWorldSpace(
                                CFrame.new(0, 0, -6)
                            )
                        end

                        if
                            not SimonSaysMinigame.is_game_in_progress() and
                                Workspace.Interiors:FindFirstChild("SimonSaysMinigame") and
                                wait()
                         then
                            Player.Character.HumanoidRootPart.CFrame =
                                Workspace.Interiors.SimonSaysMinigame.Minigame.JoinZone.Collider.CFrame
                        elseif
                            not SpleefMinigame.is_game_in_progress() and
                                Workspace.Interiors:FindFirstChild("SpleefMinigame") and
                                wait()
                                
                         then
                            Player.Character.HumanoidRootPart.CFrame =
                                Workspace.Interiors.SpleefMinigame.Minigame.JoinZone.Collider.CFrame
                         elseif Workspace.Interiors:FindFirstChild("HideAndSeekInterior") then
                           Player.Character.HumanoidRootPart.CFrame = Workspace.Interiors.HideAndSeekInterior.HideAndSeekJoinZone.Collider.CFrame
                            wait()
                        end
                        if
                            Workspace.Interiors:FindFirstChild("SimonSaysMinigame") and Workspace.Interiors.SimonSaysMinigame:FindFirstChild("CenterIsland").Block and
                                SimonSaysMinigame.is_game_in_progress() and
                                wait(1)
                         then
                            Player.Character.HumanoidRootPart.CFrame =
                                Workspace.Interiors.SimonSaysMinigame.CenterIsland.Block.CFrame
                        elseif
                            Workspace.Interiors:FindFirstChild("SpleefMinigame") and
                                SpleefMinigame.is_game_in_progress() and
                                wait(1)
                         then
                            Player.Character.HumanoidRootPart.CFrame =
                                Workspace.Interiors.SpleefMinigame.Minigame.SpleefRoot.CFrame
                        elseif
                            Workspace.Interiors:FindFirstChild("HideAndSeekInterior") and not SimonSaysMinigame.is_game_in_progress() and
                                not SpleefMinigame.is_game_in_progress() and Settings.HideAndSeek
                         then
                             
                            for i, v in pairs(
                                Workspace.Interiors.HideAndSeekInterior.Map.Visual.SetDressingHidingSpots:GetChildren()
                            ) do
                                if v:IsA("Model") and v.Name == "Crate" then
                                    wait(1)
                                    Player.Character.HumanoidRootPart.CFrame =
                                        v:FindFirstChildWhichIsA("BasePart").CFrame
                                end
                            end
                        end
                    end
                    if not Settings.Candy then
                        Player.Character.HumanoidRootPart.Anchored = false
                    end
                    end)
        end
    end
)

end)
local Toggle2 = Section1:CreateToggle("Add HideAndSeek", Settings.HideAndSeek, function(State)
    Settings.HideAndSeek = State
end)


]]---





local Toggle2 = Section1:CreateToggle("Auto Neon", Settings.Neon, function(State)
Settings.Neon = State
spawn(
    function()
        while Settings.Neon do
            wait(2)
            do
                pcall(
                    function()
                        for i, v in pairs(
                            require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets
                        ) do
                            if v.properties.age == 6 then
                                table.insert(Neon, v.id)
                            end
                        end

                        local Number = 0
                        for i, v in pairs(Neon) do
                            for i, x in pairs(
                                require(ReplicatedStorage.ClientModules.Core.ClientData).get_data[Player.Name].inventory.pets
                            ) do
                                if string.find(x.id, v) and x.properties.age == 6 then
                                    Number = Number + 1
                                    table.insert(Spec, x.unique)
                                    if Number == 4 then
                                        ReplicatedStorage.API:FindFirstChild("PetAPI/DoNeonFusion"):InvokeServer(
                                            {unpack(Spec)}
                                        )
                                        Number = 0
                                        table.clear(Spec)
                                        table.clear(Neon)
                                    else
                                        table.clear(Spec)
                                        table.clear(Neon)
                                    end
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)

end)
local AilmentFurnitues = {}


local Petfarmbabo = Section1:CreateToggle("PetFarm", Settings.PetFarm, function(State)
Settings.PetFarm = State


RunService.RenderStepped:connect(
    function()
      
        if Settings.PetFarm then
            pcall(function()
                Player.Character.Humanoid:ChangeState(11)
                Workspace["P"].CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(Vector3.new(0,-5,0))
            end)
        end
    end
)



if not Settings.PetFarm then
    Player.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState("Jumping")
end 



if Settings.Key then
    PetID = Settings.Key.unique
    AilmentFurnitues["generic_crib"] = nil
    while not AilmentFurnitues["generic_crib"] do
        wait()
        AilmentFurnitues["generic_crib"] = Bed()
        AilmentFurnitues["generic_shower"] = Showers()
    end
    ReplicatedStorage.API["ToolAPI/Unequip"]:InvokeServer(PetID)
    Pet = ReplicatedStorage.API["ToolAPI/Equip"]:InvokeServer(PetID)
end

local a
a = {
    ["sleepy"] = function(c)
        while c.Parent == Player.PlayerGui.AilmentsMonitorApp.Ailments do
            wait()
            spawn(
                function()
                    pcall(
                        function()
                            ReplicatedStorage.API["HousingAPI/ActivateFurniture"]:InvokeServer(
                                Player,
                                AilmentFurnitues["generic_crib"],
                                "UseBlock",
                                {
                                    ["cframe"] = Player.Character.HumanoidRootPart.CFrame
                                },
                                Pet
                            )
                        end
                    )
                end
            )
        end

        while wait() do  --normali bos edits tag
            ReplicatedStorage.API["ToolAPI/Unequip"]:InvokeServer(PetID)
            Pet = ReplicatedStorage.API["ToolAPI/Equip"]:InvokeServer(PetID)
            --[[
            if Pet then
                if Pet.Parent then
                    break
                end
            end  --]]
        end
    end,
    ["hungry"] = function(c)
        if Settings.PetFarm then
            ReplicatedStorage.API["ShopAPI/BuyItem"]:InvokeServer("food", "apple", {})
            wait()
            local Foods =
                require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.food or {}
            local Apple
            for i, v in pairs(Foods) do
                if v.id == "apple" then
                    Apple = v.unique
                    break
                end
            end
            if not Apple then
                return
            end

            ReplicatedStorage.API["PetObjectAPI/CreatePetObject"]:InvokeServer(
                "__Enum_PetObjectCreatorType_2",
                {["unique_id"] = Apple}
            )
            wait(2)
            ReplicatedStorage.API["PetAPI/ConsumeFoodItem"]:FireServer(Apple)
        end
    end,
    ["thirsty"] = function(c)
        ReplicatedStorage.API["ShopAPI/BuyItem"]:InvokeServer("food", "tea", {})
        local Foods =
            require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.food or {}
        local Tea
        for i, v in pairs(Foods) do
            if v.id == "tea" then
                Tea = v.unique
                break
            end
        end
        if not Tea then
            return
        end

        ReplicatedStorage.API["PetObjectAPI/CreatePetObject"]:InvokeServer(
            "__Enum_PetObjectCreatorType_2",
            {["unique_id"] = Tea}
        )
        wait(2)
        ReplicatedStorage.API["PetAPI/ConsumeFoodItem"]:FireServer(Tea)
    end,
    ["dirty"] = function(c)
        while c.Parent == Player.PlayerGui.AilmentsMonitorApp.Ailments do
            wait()
            spawn(
                function()
                    pcall(
                        function()
                            ReplicatedStorage.API["HousingAPI/ActivateFurniture"]:InvokeServer(
                                Player,
                                AilmentFurnitues["generic_shower"],
                                "UseBlock",
                                {
                                    ["cframe"] = Player.Character.HumanoidRootPart.CFrame
                                },
                                Pet
                            )
                        end
                    )
                end
            )
        end

        while wait() do
            ReplicatedStorage.API["ToolAPI/Unequip"]:InvokeServer(PetID)
            Pet = ReplicatedStorage.API["ToolAPI/Equip"]:InvokeServer(PetID)
            if Pet then
                if Pet.Parent then
                    break
                end
            end
        end
    end,
    ["pizza_party"] = function(c)
        GoToStore("PizzaShop")
        Player.Character.HumanoidRootPart.CFrame =
            Workspace.Interiors:FindFirstChildWhichIsA("Model").PrimaryPart.CFrame:ToWorldSpace(CFrame.new(0, 0, -6))
        repeat
            wait()
        until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["salon"] = function(c)
        GoToStore("Salon")
        Player.Character.HumanoidRootPart.CFrame =
            Workspace.Interiors:FindFirstChildWhichIsA("Model").PrimaryPart.CFrame:ToWorldSpace(CFrame.new(0, 0, -6))
        repeat
            wait()
        until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["sick"] = function(c)
        ReplicatedStorage.API["MonitorAPI/HealWithDoctor"]:FireServer()
        repeat
            wait()
        until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["adoption_party"] = function(c)
        GoToStore("Nursery")
        repeat
            wait()
        until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["school"] = function(c)
        GoToStore("School")
        Player.Character.HumanoidRootPart.CFrame =
            Workspace.Interiors.School.BuyIndicators["teachers_apple"].CFrame * CFrame.new(0, 0, 0)
        repeat
            wait()
        until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["hot_spring"] = function(c)
        GoToMainMap()
        Player.Character.HumanoidRootPart.CFrame =
            CFrame.new(
            Workspace:WaitForChild("StaticMap"):WaitForChild("HotSpring"):WaitForChild("HotSpringOrigin").Position +
                Vector3.new(0, 5, 0)
        )
        wait()

        repeat
            wait()
        until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["camping"] = function(c)
        GoToMainMap()

        Player.Character.HumanoidRootPart.CFrame =
             CFrame.new(Workspace:WaitForChild("StaticMap"):WaitForChild("Campsite"):WaitForChild("CampsiteOrigin").Position + Vector3.new(0,5,0))
        repeat
            wait()
        until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["bored"] = function(c)
        GoToMainMap()
        Player.Character.HumanoidRootPart.CFrame =
            CFrame.new(
            Workspace:WaitForChild("StaticMap"):WaitForChild("Park"):WaitForChild("BoredAilmentTarget").Position +
                Vector3.new(0, 4, 0)
        )
        repeat
            wait()
        until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end
}

spawn(
    function()
        while wait(150) and Settings.PetFarm do -- normali bos wait() edits tag
            pcall(function()
                local Ailment = Player.PlayerGui.AilmentsMonitorApp.Ailments:FindFirstChildWhichIsA("Frame")
                if Ailment then
                    local Name = Ailment.Name
                    if a[Name] and wait() then
                        a[Name](Ailment)
                    end
                end
                if Pet and wait() then
                    if Pet.Parent ~= Workspace.Pets then
                        ReplicatedStorage.API["ToolAPI/Unequip"]:InvokeServer(PetID)
                        Pet = ReplicatedStorage.API["ToolAPI/Equip"]:InvokeServer(PetID)
                    end
                else
                    ReplicatedStorage.API["ToolAPI/Unequip"]:InvokeServer(PetID)
                    Pet = ReplicatedStorage.API["ToolAPI/Equip"]:InvokeServer(PetID)
                end
                wait(1)
            end)
        end
    end
)
end)
local Dropdown = Section1:CreateDropdown("Pets", List, function(Name)
	Settings.Key = PetsShow[Name]
end)


local Toggle434 = Section1:CreateToggle("Switch Out when full grown", Settings.SwitchOutFullyGrown, function(State)
Settings.SwitchOutFullyGrown = State
StarterGui:SetCore(
    "SendNotification",
    {
        Title = "Warning",
        Text = "PetFarm must be off when turning this on "
    }
)
spawn(
    function()
        while Settings.SwitchOutFullyGrown do
            pcall(
                function()
                    wait()
                    repeat
                        wait()
                    until Settings.PetFarm
                    local Pets =
                        require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets or
                        {}
                    if Pets[tostring(PetID)] then
                        if Pets[(PetID)]["properties"]["age"] ~= 6 then
                        else
                            for i, v in pairs(Pets) do
                                if v["properties"]["age"] ~= 6 then
                                    PetID = v.unique
                                end
                            end
                        end
                    else
                        for i, v in pairs(Pets) do
                            if v["properties"]["age"] ~= 6 then
                                PetID = v.unique
                            end
                        end
                    end
                end
            )
        end
    end
)

end)

local Toggle434 = Section1:CreateToggle("Ginger Bread Farm", Settings.Start, function(State)
Settings.Start = State
spawn(function()
    while wait(300) and Settings.Start do  -- normali bos wait()  edits tag
        pcall(function()
            for i,v in pairs(ReplicatedStorage.Resources.IceSkating.GingerbreadMarkers:GetChildren()) do
                if v:IsA("BasePart") then
                    ReplicatedStorage.API:FindFirstChild("WinterEventAPI/PickUpGingerbread"):InvokeServer(v.Name)
                end 
            end 
            ReplicatedStorage.API:FindFirstChild("WinterEventAPI/RedeemPendingGingerbread"):FireServer()
        end)
    end
end)
end)






local Toggle4832 = Section1:CreateToggle("Switch Out Eggs", Settings.SwitchOutEgg, function(State)
Settings.SwitchOutEgg = State

StarterGui:SetCore(
    "SendNotification",
    {
        Title = "Warning",
        Text = "PetFarm must be off when turning this on "
    }
)
spawn(
    function()
        while Settings.SwitchOutEgg do
            pcall(
                function()
                    wait()
                    repeat
                        wait()
                    until Settings.PetFarm
                    local Pets =
                        require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets or
                        {}
                    if Pets[tostring(PetID)] then
                        if Pets[(PetID)]["id"]:match("egg") and not Pets[(PetID)]["id"]:match("basic_egg") then
                        else
                            for i, v in pairs(Pets) do
                                if v["id"]:match("egg") and not v["id"]:match("basic_egg") then
                                    PetID = v.unique
                                end
                            end
                        end
                    else
                        for i, v in pairs(Pets) do
                            if v["id"]:match("egg") and not v["id"]:match("basic_egg") then
                                PetID = v.unique
                            end
                        end
                    end
                end
            )
        end
    end
)

end)

local Toggle188908 = Section1:CreateToggle("Auto Heal Others", Settings.HealOthers, function(State)
Settings.HealOthers = State
spawn(
    function()
        while Settings.HealOthers do
            wait(2)
            ReplicatedStorage.API["MonitorAPI/HealWithDoctor"]:FireServer()
        end
    end
)
end)

local Toggle1 = Section1:CreateToggle("No Baby PickUp", nil, function(State)
Settings.Family = State
if Settings.Family then
    ReplicatedStorage.API["FamilyAPI/CreateFamily"]:InvokeServer() 
elseif not Settings.Family then
    ReplicatedStorage.API["FamilyAPI/LeaveFamily"]:InvokeServer()
end 
end)

local Toggle1 = Section1:CreateToggle("Fly Ride All Pets", Settings.FlyPets, function(State)
Settings.FlyPets = State
if Settings.FlyPets then
    FlyPets(true)
elseif not Settings.FlyPets then
    FlyPets(false)
end
end)

local Dropdown = Section1:CreateDropdown("Eggs", Egg, function(Name)
	Settings.Egg = Name
end)

local Dropdown = Section1:CreateDropdown("Gift", gifts, function(Name)
	Settings.gifts = Name
end)



local Toggle13322113 = Section1:CreateToggle("Auto Buy Gifts", Settings.DoDoPants, function(State)
Settings.DoDoPants = State
while Settings.DoDoPants do wait()
ReplicatedStorage.API:FindFirstChild("ShopAPI/BuyItem"):InvokeServer("gifts",Settings.gifts,{})
end end)
local Toggle13322113 = Section1:CreateToggle("Auto Buy Egg", Settings.DoDoPants1, function(State)
Settings.DoDoPants1 = State
while Settings.DoDoPants1 do wait()
ReplicatedStorage.API["ShopAPI/BuyItem"]:InvokeServer("pets",Settings.Egg,{})
end end)



local Button1 = Section1:CreateButton("Grab Bagdes", function()
for i,v in pairs(Obbys) do wait(0.5)
    ReplicatedStorage.API["MinigameAPI/FinishObby"]:FireServer(v)
end 
end)

local Toggle13322113 = Section1:CreateToggle("Auto Open Gifts", Settings.System, function(State)
Settings.System = State
spawn(function()
while Settings.System do
    wait(2)
    local gifts = require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.gifts or {}
    local GiftTable
    local GiftID
    local Gift

    for i, v in pairs(gifts) do
        Gift = v.unique

        pcall(
            function()
                ReplicatedStorage.API["ToolAPI/Equip"]:InvokeServer(Gift)
                game:GetService("VirtualUser"):ClickButton1(Vector2.new(9e9, 9e9))
            end
        )
    end
end
end)
end)

local Dropdown = Section2:CreateDropdown("Locations", Stores, function(Name)
    Workspace.Gravity = 0
    GoToStore(Name)
    Player.Character.HumanoidRootPart.CFrame = Workspace.Interiors:FindFirstChildWhichIsA('Model').PrimaryPart.CFrame:ToWorldSpace(CFrame.new(0, 0, -6))
    Workspace.Gravity = 196.2
end)



Section2:CreateTextBox("Teleport To Said Users House", "UserName Here", false, function(String)
for i,v in pairs(Players:GetPlayers()) do
    if v.Name == (String) or v.Name:find(String) or v.DisplayName == String or v.DisplayName:find(String) then
        Workspace.Gravity = 0 
        GoToPersonsHouse(v.Name)
    
        Player.Character.HumanoidRootPart.CFrame = Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA('Model'):GetModelCFrame():ToWorldSpace(CFrame.new(0, 0, -6)) 
        Workspace.Gravity = 196.2
    end 
end 
end)

local Button1 = Section2:CreateButton("Teleport Home", function()
Workspace.Gravity = 0
GoToHome() wait()
Player.Character.HumanoidRootPart.CFrame = Workspace.HouseInteriors.blueprint:FindFirstChildWhichIsA('Model'):GetModelCFrame():ToWorldSpace(CFrame.new(0, 0, -6)) 
Workspace.Gravity = 196.2
end)
local Button1 = Section2:CreateButton("Teleport MainMap", function()
Workspace.Gravity = 0
GoToMainMap()
Player.Character.HumanoidRootPart.CFrame = Workspace.Interiors:FindFirstChildWhichIsA("Model"):GetModelCFrame():ToWorldSpace(CFrame.new(0, 0, -6))
Player.Character.HumanoidRootPart.CFrame = CFrame.new(-247.35408, 17.3820152, -1518.88879)  Workspace.Gravity = 196.2 
end)
local Toggle1 = Section2:CreateToggle("Auto Buy Free Food", Settings.JoYes, function(State)
Settings.JoYes = State
spawn(function()
    while Settings.JoYes and wait() do
        pcall(function()
            ReplicatedStorage.API["ShopAPI/BuyItem"]:InvokeServer("food", Settings.Food, {})
        end)
    end 
end)
end)
local Dropdown = Section2:CreateDropdown("Free Foods", FreeFoods, function(Name)
    Settings.Food = Name
end)


local Button1 = Section2:CreateButton("SS Infinite Money", function()
local Player = Players.LocalPlayer
local Kick = Player.Kick
Kick(Player,"You are most likely banned if you wish to appeal go to https://playadopt.me/support/")
wait(5)
Kick(Player,"You fell for it didn't you LOL")
wait(3)
Kick(Player,"What A Fool")
wait(3)
game:Shutdown()
end)
local Toggle1 = Section2:CreateToggle("Enable WalkSpeed/JumpPower", Settings.Go, function(State)
Settings.Go = State
RunService.Stepped:connect(
    function()
        if Settings.Go then
            Player.Character:WaitForChild("Humanoid").WalkSpeed = Settings.WalkSpeed
            Player.Character:WaitForChild("Humanoid").JumpPower = Settings.JumpPower
            if not UserInputService.WindowFocusReleased then
                setfpscap(Settings.Fps)
            end
        end
    end
)

end)




local TextBox1 = Section2:CreateTextBox("Fps Cap", "Only numbers", true, function(Value)
    Settings.Fps = Value
end)

local TextBox1 = Section2:CreateTextBox("WalkSpeed", "Only numbers", true, function(Value)
    Settings.WalkSpeed = Value
end)
local TextBox1 = Section2:CreateTextBox("JumpPower", "Only numbers", true, function(Value)
    Settings.JumpPower = Value
end)

local TextBox1 = Section2:CreateTextBox("Seconds Until ServerHop", "Only numbers", true, function(Value)
    Settings.Seconds = Value
end)



local Toggle1 = Section2:CreateToggle("Infinite Jump", Settings.InfiniteJump, function(State)
Settings.InfiniteJump = State
UserInputService.JumpRequest:connect(
    function()
        if Settings.InfiniteJump then
            Player.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState("Jumping")
        end
    end
)
end)

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/Karrot-Esp"))()
local Toggle1 = Section1:CreateToggle("Enable Esp", Settings.Esp, function(State)
    Settings.Esp = State
    ESP:Toggle(Settings.Esp)
end)
local Toggle1 = Section1:CreateToggle("Player Esp", Settings.PlayerEsp, function(State)
    Settings.PlayerEsp = State
    ESP.Players = Settings.PlayerEsp
end)
local Toggle1 = Section1:CreateToggle("Tracers Esp", Settings.Tracers, function(State)
    Settings.Tracers = State
    ESP.Tracers = Settings.Tracers
end)
local Toggle1 = Section1:CreateToggle("Name Esp", Settings.EspNames, function(State)
    ESP.Names = Settings.EspNames
    Settings.EspNames = State
end)
local Toggle1 = Section1:CreateToggle("Boxes Esp", Settings.Boxes, function(State)
    Settings.Boxes = State
    ESP.Boxes = Settings.Boxes
end)

local Toggle1 = Section2:CreateToggle("Invisicam", Settings.Sorry, function(State)
Settings.Sorry = State
if Settings.Sorry then
    Player.DevCameraOcclusionMode = "Invisicam"
else
    Player.DevCameraOcclusionMode = "Zoom"
end
end)


local Toggle1 = Section2:CreateToggle("N Noclip", Settings.Sex1, function(State)
noclips = false
Settings.Sex1 = State
Player:GetMouse().KeyDown:connect(
    function(v)
        if v == "n" then
            if Settings.Sex1 then
                noclips = not noclips
                for i, v in pairs(Player.Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end
    end
)
RunService.Stepped:connect(
    function()
        if noclips then
            for i, v in pairs(Player.Character:GetChildren()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        end
    end
)

end)

local Toggle1 = Section2:CreateToggle("G Noclip", Settings.Sex, function(State)
Settings.Sex = State
noclip = false
RunService.Stepped:connect(
    function()
        if noclip then
            Player.Character.Humanoid:ChangeState(11)
        end
    end
)
mouse = Player:GetMouse()
Player:GetMouse().KeyDown:connect(
    function(v)
        if v == "g" then
            if Settings.Sex then
                noclip = not noclip
                Player.Character.Humanoid:ChangeState(11)
            end
        end
    end
)
end)
local Toggle1 = Section2:CreateToggle("H Fly", Settings.Sex2, function(State)
Settings.Sex2 = State
local Max = 0
local Players = game.Players
local LP = Players.LocalPlayer
local Mouse = LP:GetMouse()
Mouse.KeyDown:connect(
    function(k)
        if k:lower() == "h" then
            Max = Max + 1
            getgenv().Fly = false
            if Settings.Sex2 then
                local T =  LP.Character:FindFirstChildWhichIsA("Humanoid").RigType == Enum.HumanoidRigType.R6 and LP.Character:FindFirstChild("HumanoidRootPart") or LP.Character:FindFirstChildWhichIsA("Humanoid").RigType == Enum.HumanoidRigType.R15 and LP.Character:FindFirstChild("UpperTorso")
                local S = {
                    F = 0,
                    B = 0,
                    L = 0,
                    R = 0
                }
                local S2 = {
                    F = 0,
                    B = 0,
                    L = 0,
                    R = 0
                }
                local SPEED = 5
                local function FLY()
                    getgenv().Fly = true
                    local BodyGyro = Instance.new("BodyGyro", T)
                    local BodyVelocity = Instance.new("BodyVelocity", T)
                    BodyGyro.P = 9e4
                    BodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                    BodyGyro.cframe = T.CFrame
                    BodyVelocity.velocity = Vector3.new(0, 0.1, 0)
                    BodyVelocity.maxForce = Vector3.new(9e9, 9e9, 9e9)
                    spawn(
                        function()
                            repeat
                                wait()
                                LP.Character.Humanoid.PlatformStand = true
                                if S.L + S.R ~= 0 or S.F + S.B ~= 0 then
                                    SPEED = 200
                                elseif not (S.L + S.R ~= 0 or S.F + S.B ~= 0) and SPEED ~= 0 then
                                    SPEED = 0
                                end
                                if (S.L + S.R) ~= 0 or (S.F + S.B) ~= 0 then
                                    BodyVelocity.velocity =
                                        ((Workspace.CurrentCamera.CoordinateFrame.lookVector * (S.F + S.B)) +
                                        ((Workspace.CurrentCamera.CoordinateFrame *
                                            CFrame.new(S.L + S.R, (S.F + S.B) * 0.2, 0).p) -
                                            Workspace.CurrentCamera.CoordinateFrame.p)) *
                                        SPEED
                                    S2 = {
                                        F = S.F,
                                        B = S.B,
                                        L = S.L,
                                        R = S.R
                                    }
                                elseif (S.L + S.R) == 0 and (S.F + S.B) == 0 and SPEED ~= 0 then
                                    BodyVelocity.velocity =
                                        ((Workspace.CurrentCamera.CoordinateFrame.lookVector * (S2.F + S2.B)) +
                                        ((Workspace.CurrentCamera.CoordinateFrame *
                                            CFrame.new(S2.L + S2.R, (S2.F + S2.B) * 0.2, 0).p) -
                                            Workspace.CurrentCamera.CoordinateFrame.p)) *
                                        SPEED
                                else
                                    BodyVelocity.velocity = Vector3.new(0, 0.1, 0)
                                end
                                BodyGyro.cframe = Workspace.CurrentCamera.CoordinateFrame
                            until not getgenv().Fly
                            S = {
                                F = 0,
                                B = 0,
                                L = 0,
                                R = 0
                            }
                            S2 = {
                                F = 0,
                                B = 0,
                                L = 0,
                                R = 0
                            }
                            SPEED = 0
                            BodyGyro:destroy()
                            BodyVelocity:destroy()
                            LP.Character.Humanoid.PlatformStand = false
                        end
                    )
                end
                Mouse.KeyDown:connect(
                    function(k)
                        if k:lower() == "w" then
                            S.F = 1
                        elseif k:lower() == "s" then
                            S.B = -1
                        elseif k:lower() == "a" then
                            S.L = -1
                        elseif k:lower() == "d" then
                            S.R = 1
                        end
                    end
                )
                Mouse.KeyUp:connect(
                    function(k)
                        if k:lower() == "w" then
                            S.F = 0
                        elseif k:lower() == "s" then
                            S.B = 0
                        elseif k:lower() == "a" then
                            S.L = 0
                        elseif k:lower() == "d" then
                            S.R = 0
                        end
                    end
                )
                FLY()
                if Max == 2 then
                    getgenv().Fly = false
                    Max = 0
                end
            end
        end
    end
)
end)

local Button1 = Section2:CreateButton("Anti Lag", function()
for _, v in pairs(Workspace:GetDescendants()) do
    if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
        v.Material = Enum.Material.SmoothPlastic
        if v:IsA("Texture") then
            v:Destroy()
        end
    end
end
end)

local Button1 = Section2:CreateButton("Teleport to RandomPlayer", function()
local randomPlayer = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]

Player.Character.HumanoidRootPart.CFrame =
    CFrame.new(
    Vector3.new(
        randomPlayer.Character.Head.Position.X,
        randomPlayer.Character.Head.Position.Y,
        randomPlayer.Character.Head.Position.Z
    )
)
end)
local Button1 = Section2:CreateButton("Lag Switch F3", function()
local ass = false
local bitch = settings()

game:service "UserInputService".InputEnded:connect(
    function(i)
        if i.KeyCode == Enum.KeyCode.F3 then
            ass = not ass
            bitch.Network.IncomingReplicationLag = ass and 10 or 0
        end
    end
)
end) 

local Button1 = Section2:CreateButton("ServerHop", function()
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = HttpService:JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", HttpService:JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", HttpService:JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, Player)
                end)
                wait(4)
            end
        end
    end
end

function Tween()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end


-- If you'd like to use a script before server hopping (Like a Automatic Chest collector you can put the Tween() after it collected everything.
Tween() 
end)
local Button1 = Section2:CreateButton("Rejoin", function()
game:GetService("TeleportService"):Teleport(game.PlaceId, Player) end)


local Button1 = Section2:CreateButton("Save Settings", function()
Save()
end)
local Toggle3 = Section3:CreateToggle("UI Toggle", nil, function(State)
	Window:Toggle(State)
end)
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
	Config.Keybind = Enum.KeyCode[Key]
end)
Toggle3:SetState(true)
Section3:CreateLabel("Credits DekuDimz#7960")
Section3:CreateLabel("Credits AlexR32#3232 Ui")
Section3:CreateLabel("Credits Applebee")
local Colorpicker3 = Section3:CreateColorpicker("UI Color", function(Color)
	Window:ChangeColor(Color)
end)
Colorpicker3:UpdateColor(Config.Color)

-- credits to jan for patterns
local Dropdown3 = Section4:CreateDropdown("Image", {"Default","Hearts","Abstract","Hexagon","Circles","Lace With Flowers","Floral"}, function(Name)
	if Name == "Default" then
		Window:SetBackground("2151741365")
	elseif Name == "Hearts" then
		Window:SetBackground("6073763717")
	elseif Name == "Abstract" then
		Window:SetBackground("6073743871")
	elseif Name == "Hexagon" then
		Window:SetBackground("6073628839")
	elseif Name == "Circles" then
		Window:SetBackground("6071579801")
	elseif Name == "Lace With Flowers" then
		Window:SetBackground("6071575925")
	elseif Name == "Floral" then
		Window:SetBackground("5553946656")
	end
end)
Dropdown3:SetOption("Default")

local Colorpicker4 = Section4:CreateColorpicker("Color", function(Color)
	Window:SetBackgroundColor(Color)
end)
Colorpicker4:UpdateColor(Color3.new(1,1,1))

local Slider3 = Section4:CreateSlider("Transparency",0,1,nil,false, function(Value)
	Window:SetBackgroundTransparency(Value)
end)
Slider3:SetValue(0)

local Slider4 = Section4:CreateSlider("Tile Scale",0,1,nil,false, function(Value)
	Window:SetTileScale(Value)
end)
Slider4:SetValue(0.5)

spawn(function()
    print("CUMHURBASKANI BASBAKAN GENELKURMAY ORDINARYUS PROFESOR")
    print("TUMAY HAZRETLERI TARAFINDAN FIXLENMISTIR")
    print("INSANLIGA ARMAGAN EDILMISTIR")
    wait(5)
    Petfarmbabo:SetState(true)

    end)  
