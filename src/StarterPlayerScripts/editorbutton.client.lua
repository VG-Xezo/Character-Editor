local player = game:GetService("Players").LocalPlayer

local PlayerGUI = player:WaitForChild("PlayerGui")

local CharacterScreen = PlayerGUI:WaitForChild("CharacterScreen")

local Character = player.Character or player.CharacterAdded:Wait()

CharacterScreen.OpenEditor.Activated:Connect(function()

    CharacterScreen.Background.Visible = true
    CharacterScreen.OpenEditor.Visible = false

    local RootPart = Character:FindFirstChild("HumanoidRootPart")
    RootPart.CFrame = CFrame.new(RootPart.CFrame.Position) * CFrame.Angles(0, 0, 0)
    
    local Camera = workspace.CurrentCamera
    Camera.CameraType = Enum.CameraType.Scriptable
    local head = Character:FindFirstChild("Head")
    Camera.CFrame = head.CFrame * CFrame.new(6,0,-8) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0))

    local playerModule = require(player.PlayerScripts:WaitForChild("PlayerModule"))
    local Controls = playerModule:GetControls()
    Controls:Disable()

end)