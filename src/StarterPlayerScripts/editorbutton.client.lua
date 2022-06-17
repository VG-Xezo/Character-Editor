local player = game:GetService("Players").LocalPlayer

local PlayerGUI = player:WaitForChild("PlayerGui")

local CharacterScreen = PlayerGUI:WaitForChild("CharacterScreen")

CharacterScreen.OpenEditor.Activated:Connect(function()

    CharacterScreen.Background.Visible = true
    CharacterScreen.OpenEditor.Visible = false
end)