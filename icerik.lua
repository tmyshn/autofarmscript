

local Config = {
    WindowName = "V.G Hub",
    Color = Color3.fromRGB(255, 128, 64),
    Keybind = Enum.KeyCode.RightControl
}
repeat wait() until game:IsLoaded()
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

wait(3)

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
--Settings.Key = Settings.Key;
print(Settings.Key.unique)
local PetID
local Pet
local PetsShow = {}
local List = {}
if Player.Name ~= "reactadam10" then 
    for i, v in pairs(require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.pets) do
        local Key = tostring(v["id"]) .. " - " .. tostring(v["properties"]["age"]) .. " years old"
        PetsShow[Key] = v
        table.insert(List, Key)
        table.sort(List, key)
    end
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
    while wait(50) and Settings.BabyFarm do 
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



local AilmentFurnitues = {}

local Petfarmbabo=nil

Petfarmbabo = Section1:CreateToggle("PetFarm", Settings.PetFarm, function(State)
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


local Foods_hungry = nil
local Foods_thirsty = nil
local Apple =nil
local Tea = nil
local a
a = {
    ["sleepy"] = function(c)
        while c.Parent == Player.PlayerGui.AilmentsMonitorApp.Ailments do
           
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
            wait(5)
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
  
    ["hungry"] = function(c)
        if Settings.PetFarm then
            --ReplicatedStorage.API["ShopAPI/BuyItem"]:InvokeServer("food", "apple", {})
            wait()
            Foods_hungry =
                require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.food or {}
            -- local Apple
            for i, v in pairs(Foods_hungry) do
                if v.id == "apple" then
                    Apple = v.unique
                    break
                end
            end
            if not Apple then
                ReplicatedStorage.API["ShopAPI/BuyItem"]:InvokeServer("food", "apple", {})
                wait()
                Foods_hungry = require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.food or {}
                for i, v in pairs(Foods_hungry) do
                    if v.id == "apple" then
                        Apple = v.unique
                        break
                    end
                end
                
            end

            ReplicatedStorage.API["PetObjectAPI/CreatePetObject"]:InvokeServer(
                "__Enum_PetObjectCreatorType_2",
                {["unique_id"] = Apple}
            )
            wait(2)
            ReplicatedStorage.API["PetAPI/ConsumeFoodItem"]:FireServer(Apple)
            Apple=nil
        end
    end,
    ["thirsty"] = function(c)
         -- ReplicatedStorage.API["ShopAPI/BuyItem"]:InvokeServer("food", "tea", {}) ORJ YERI
         Foods_thirsty =
            require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.food or {}
        --local Tea
        for i, v in pairs(Foods_thirsty) do
            if v.id == "tea" then
                Tea = v.unique
                break
            end
        end
        if not Tea then
            ReplicatedStorage.API["ShopAPI/BuyItem"]:InvokeServer("food", "tea", {})
            Foods_thirsty = require(ReplicatedStorage.ClientModules.Core.ClientData).get_data()[Player.Name].inventory.food or {}
            for i, v in pairs(Foods_thirsty) do
                if v.id == "tea" then
                    Tea = v.unique
                    break
                end
            end
           -- return
        end

        ReplicatedStorage.API["PetObjectAPI/CreatePetObject"]:InvokeServer(
            "__Enum_PetObjectCreatorType_2",
            {["unique_id"] = Tea}
        )
        wait(2)
        ReplicatedStorage.API["PetAPI/ConsumeFoodItem"]:FireServer(Tea)
        Tea=nil
    end,
    ["dirty"] = function(c)
        while c.Parent == Player.PlayerGui.AilmentsMonitorApp.Ailments do          
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
            wait(5)
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
        return true
    end,
    ["salon"] = function(c)
        return true
    end,
    ["sick"] = function(c)
        ReplicatedStorage.API["MonitorAPI/HealWithDoctor"]:FireServer()
        repeat
            wait(2)
        until c.Parent ~= Player.PlayerGui.AilmentsMonitorApp.Ailments
    end,
    ["adoption_party"] = function(c)
        return true
    end,
    ["school"] = function(c)
        return true
    end,
    ["hot_spring"] = function(c)
        return true
    end,
    ["camping"] = function(c)
        return true
    end,
    ["bored"] = function(c)
      return true
    end
}

local Ailment=nil
local Ailkontrol=nil

spawn(
    function()
        while wait(50) and Settings.PetFarm do
             Ailment=nil
            print("petfarmgirdi")
            pcall(function()
            Ailkontrol = Player.PlayerGui.AilmentsMonitorApp.Ailments:FindFirstChildWhichIsA("Frame")
              -- local Name = Ailment.Name
               Ailment = Player.PlayerGui.AilmentsMonitorApp.Ailments:GetChildren()
               print(Ailment)
                if Ailment then
                    print("ail ici")
                   for key, value in pairs(Ailment) do
                        
                        if value.Name ~="bored" and value.Name ~="camping" and value.Name ~="hot_spring" and value.Name ~="school" and value.Name ~="adoption_party" and value.Name ~="salon" and value.Name ~="pizza_party" and value.Name ~="UIListLayout" then
                            print(value.Name," --olarak giris yaptı")                                                  
                                if a[value.Name] and wait() then
                                    print("--isleme gonderdim")  
                                    a[value.Name](Ailkontrol) wait()
                                    print(value.Name,"-Break Atiliyor") 
                                    wait(1)
                                    break
                                end
                        end
                    
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
local Pets = nil
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
                    wait(50)  -- NORMALI SIFIR
                    repeat
                        wait()
                    until Settings.PetFarm
                     Pets =
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
    while wait(300) and Settings.Start do
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
local Pets =nil
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
                     Pets =
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
