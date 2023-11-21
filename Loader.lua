local dragging
local dragInput
local dragStart
local startPos

local SimpleSexGUI = Instance.new("ScreenGui")
 
local FGUI = Instance.new("Frame")
 
local btnNaked = Instance.new("TextButton")
 
local btnSex = Instance.new("TextButton")
 
local tbxVictim = Instance.new("TextBox")
 
local lblFUCKEMALL = Instance.new("TextLabel")
 
local line = Instance.new("Frame")
 
local lbltitle = Instance.new("TextLabel")
 
local TextLabel = Instance.new("TextLabel")
 
local closebutton = Instance.new("TextButton")
 
local uiCorner = Instance.new("UICorner")

local uiCorner2 = Instance.new("UICorner") 
 
 
 
--Properties
 
SimpleSexGUI.Name = "SimpleSexGUI"
SimpleSexGUI.Parent = game.CoreGui
 
 
FGUI.Name = "FGUI"
FGUI.Parent = SimpleSexGUI
FGUI.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
FGUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
FGUI.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
FGUI.Size = UDim2.new(0.5, 0, 0.5, 0)
FGUI.Style = Enum.FrameStyle.RobloxRound

 
lbltitle.Name = "Title"
lbltitle.Parent = FGUI
lbltitle.Position = UDim2.new(0, 45, 0, -12)
lbltitle.BackgroundColor3 = Color3.new(1, 1, 1)  
lbltitle.Size = UDim2.new(0, 50, 0, 50)  
lbltitle.Text = "Bang GUI"
lbltitle.TextSize = 30  
lbltitle.Font = Enum.Font.SourceSans
lbltitle.TextColor3 = Color3.new(255, 255, 255)  
lbltitle.BackgroundTransparency = 1
 
 
 
 
 
btnSex.Name = "Sex"
btnSex.Parent = FGUI
btnSex.BackgroundColor3 = Color3.new(0,0,0)
btnSex.Position = UDim2.new (0, 0, 0, 60)
btnSex.Size = UDim2.new (0, 160, 0, 30)
btnSex.Active = true
btnSex.Font = Enum.Font.SourceSansBold
btnSex.Text = "Bang"
btnSex.TextColor3 = Color3.new(1, 1, 1)
btnSex.TextSize = 20
 uiCorner.Parent = btnSex
 
 
tbxVictim.Name = "VictimTEXT"
tbxVictim.Parent = FGUI
tbxVictim.BackgroundColor3 = Color3.new(0, 0, 0)  
tbxVictim.Font = Enum.Font.SourceSans
tbxVictim.Size = UDim2.new(0, 160, 0, 30)
tbxVictim.Text = "Player Name"
tbxVictim.TextSize = 20
tbxVictim.TextColor3 = Color3.new(1, 1, 1)  
uiCorner2.Parent = tbxVictim -- Kenarları Yumuşatma
tbxVictim.Position = UDim2.new(0, 180, 0, 60)

line.Name = "line"
line.Parent = FGUI
line.BorderSizePixel = 0
line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line.Size = UDim2.new(1, 0, 0, -2)
line.BorderColor3 = Color3.fromRGB(0, 0, 0)
line.Position = UDim2.new(0, 0, 0, 40)

closebutton.Name = "Close"
closebutton.Parent = FGUI
closebutton.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
closebutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 30)
closebutton.Text = "X"
closebutton.TextSize = 30
closebutton.TextColor3 = Color3.fromRGB(255, 255, 255)
closebutton.Position = UDim2.new(1, -closebutton.Size.X.Offset, 0, 0)
closebutton.BackgroundTransparency = 1

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Bang Gui",
    Text = "By Wreston",
    Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"
})
Duration = 8;

--Scripts
 closebutton.MouseButton1Click:Connect(function()
    SimpleSexGUI:Destroy()
end)



local bang = false
local stupid
local notFunny

btnSex.MouseButton1Click:Connect(function()
btnSex.Text = "Stop Bang"
bang = true
    if bang then
local player = tbxVictim.Text
stupid = Instance.new('Animation')
stupid.AnimationId = 'rbxassetid://148840371'
hummy = game:GetService("Players").LocalPlayer.Character.Humanoid
pcall(function()
    hummy.Parent.Pants:Destroy()
end)
pcall(function()
    hummy.Parent.Shirt:Destroy()
end)
notfunny = hummy:LoadAnimation(stupid)
notfunny:Play()
notfunny:AdjustSpeed(10)
while hummy.Parent.Parent ~= nil do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[tbxVictim.Text].Character.HumanoidRootPart.CFrame
end
end
end)

unBang.MouseButton1Click:Connect(function()
bang = false
notfunny:Stop()
stupid:Destroy()
btnSex.Text = "Bang"
end)
-- DRAG

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        updateInput(input)
    end
end)
local function updateInput(input)
    local delta = input.Position - dragStart
    FGUI.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

FGUI.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = FGUI.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

FGUI.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        updateInput(input)
    end
end)
