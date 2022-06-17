local Players = game:GetService("Players")

local config = {
    BackgroundColor = Color3.fromRGB(255,255,255),
    EditorButtonColor = Color3.fromRGB(255, 170, 0),
    EditorButtonTextColor = Color3.fromRGB(255,255,255)
}

function givePlayerUi(player)
    local PlayerGUI = player:WaitForChild("PlayerGui")

    -- Screen GUI
    local CharacterScreenGui = Instance.new("ScreenGui")
    CharacterScreenGui.Parent = PlayerGUI
    CharacterScreenGui.Name = "CharacterScreen"

    -- Background Frame
    local BackgroundFrame = Instance.new("Frame")
    BackgroundFrame.Parent = CharacterScreenGui
    BackgroundFrame.Name = "Background"
    BackgroundFrame.AnchorPoint = Vector2.new(0.5, 0)
    BackgroundFrame.Position = UDim2.new(0.3, 0,0.1, 0)
    BackgroundFrame.Size = UDim2.new(0.5, 0, 0.8, 0)
    BackgroundFrame.BorderSizePixel = 0
    BackgroundFrame.BackgroundColor3 = config.BackgroundColor
    BackgroundFrame.Visible = false

    -- Editor Button
    local EditorButton = Instance.new("TextButton")
    EditorButton.Parent = CharacterScreenGui
    EditorButton.Name = "OpenEditor"
    EditorButton.AnchorPoint = Vector2.new(0, 0)
    EditorButton.Position = UDim2.new(0.01, 0, 0.6, 0)
    EditorButton.Size = UDim2.new(0, 200, 0, 50)
    EditorButton.TextColor3 = config.EditorButtonTextColor
    EditorButton.BorderSizePixel = 0
    EditorButton.BackgroundColor3 = config.EditorButtonColor
    EditorButton.TextSize = 34
    EditorButton.Text = "EDITOR"


end

Players.PlayerAdded:Connect(givePlayerUi)