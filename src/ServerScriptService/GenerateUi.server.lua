local Players = game:GetService("Players")

local config = {
    BackgroundColor = Color3.fromRGB(255,255,255),
    EditorButtonColor = Color3.fromRGB(255, 170, 0),
    EditorButtonTextColor = Color3.fromRGB(255,255,255),
    CharacterTextColor = Color3.fromRGB(0,0,0),
    CharacterTextBackground = Color3.fromRGB(255,255,255),
    DoneButtonColor = Color3.fromRGB(85, 170, 0),
    DoneButtonTextColor = Color3.fromRGB(255,255,255)
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

    -- Character Text
    local CharacterText = Instance.new("TextLabel")
    CharacterText.Parent = BackgroundFrame
    CharacterText.Name = "CharacterText"
    CharacterText.AnchorPoint = Vector2.new(0.5, 0)
    CharacterText.Position = UDim2.new(0.5, 0, 0, 0)
    CharacterText.Size = UDim2.new(0.325, 0, 0.1, 0)
    CharacterText.TextColor3 = config.CharacterTextColor
    CharacterText.BorderSizePixel = 0
    CharacterText.BackgroundColor3 = config.CharacterTextBackground
    CharacterText.TextSize = 28
    CharacterText.Text = "Character Editor"

    -- Done Button
    local DoneButton = Instance.new("TextButton")
    DoneButton.Parent = BackgroundFrame
    DoneButton.Name = "DoneButton"
    DoneButton.AnchorPoint = Vector2.new(0.5, 0.5)
    DoneButton.Position = UDim2.new(0.5, 0, 0.925, 0)
    DoneButton.Size = UDim2.new(0, 200, 0, 50)
    DoneButton.TextColor3 = config.DoneButtonTextColor
    DoneButton.BorderSizePixel = 0
    DoneButton.BackgroundColor3 = config.DoneButtonColor
    DoneButton.TextSize = 28
    DoneButton.Text = "DONE"
end

Players.PlayerAdded:Connect(givePlayerUi)