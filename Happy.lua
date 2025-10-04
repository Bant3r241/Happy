if game.PlaceId == 17890861313 then
    local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/jensonhirst/Orion/main/source'))()
    local Window = OrionLib:MakeWindow({
        Name = "ABI │ Happy",
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

    _G.ESP = false

    MiscTab:AddToggle({
        Name = "ESP",
        Default = false,
        Callback = function(state)
            _G.ESP = state
            -- now load the ESP script each time; it will check _G.ESP
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Bant3r241/chams/refs/heads/main/ESP.lua"))()
        end
    })

    OrionLib:Init()
end
