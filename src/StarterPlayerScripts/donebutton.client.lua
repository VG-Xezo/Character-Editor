local player = game:GetService("Players").LocalPlayer

local PlayerGUI = player:WaitForChild("PlayerGui")

local CharacterScreen = PlayerGUI:WaitForChild("CharacterScreen")

local Character = player.Character or player.CharacterAdded:Wait()

CharacterScreen.Background.DoneButton.Activated:Connect(function()

    CharacterScreen.Background.Visible = false
    CharacterScreen.OpenEditor.Visible = true

    local Camera = workspace.CurrentCamera
    Camera.CameraType = Enum.CameraType.Custom

    local playerModule = require(player.PlayerScripts:WaitForChild("PlayerModule"))
    local Controls = playerModule:GetControls()
    Controls:Enable()
end)