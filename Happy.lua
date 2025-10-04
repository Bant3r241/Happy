local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/jensonhirst/Orion/main/source'))()
local Window = OrionLib:MakeWindow({
    Name = "ABI │ Happy!",
    HidePremium = false,
    IntroEnabled = false,
    IntroText = "ABI",
    SaveConfig = true,
    ConfigFolder = "XlurConfig"
})

local MiscTab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4299432428",
    PremiumOnly = false
})

-- Global toggle variable for ESP
_G.ESP = false

MiscTab:AddToggle({
    Name = "ESP",
    Default = false,
    Callback = function(state)
        _G.ESP = state
        -- Load ESP logic; it will check _G.ESP and enable/disable accordingly
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Bant3r241/chams/refs/heads/main/ESP.lua"))()
    end
})

OrionLib:Init()
