local UI = {}

-- // StarterGui.ScreenGui \\ --
UI["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
UI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling

-- // StarterGui.ScreenGui.Frame \\ --
UI["2"] = Instance.new("Frame", UI["1"])
UI["2"]["BorderSizePixel"] = 0
UI["2"]["BackgroundColor3"] = Color3.fromRGB(67, 67, 67)
UI["2"]["Size"] = UDim2.new(0, 555, 0, 462)
UI["2"]["Position"] = UDim2.new(0.10055, 0, 0.2582, 0)
UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)

-- // StarterGui.ScreenGui.Frame.UICorner \\ --
UI["3"] = Instance.new("UICorner", UI["2"])


-- // StarterGui.ScreenGui.Frame.Title \\ --
UI["4"] = Instance.new("TextLabel", UI["2"])
UI["4"]["TextWrapped"] = true
UI["4"]["BorderSizePixel"] = 0
UI["4"]["TextScaled"] = true
UI["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["4"]["TextSize"] = 14
UI["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/HighwayGothic.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic)
UI["4"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["4"]["BackgroundTransparency"] = 1
UI["4"]["Size"] = UDim2.new(0, 200, 0, 50)
UI["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["4"]["Text"] = [[Gigichad Simulator]]
UI["4"]["Name"] = [[Title]]

-- // StarterGui.ScreenGui.Frame.Exit \\ --
UI["5"] = Instance.new("TextButton", UI["2"])
UI["5"]["TextWrapped"] = true
UI["5"]["BorderSizePixel"] = 0
UI["5"]["TextSize"] = 14
UI["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["5"]["TextScaled"] = true
UI["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/HighwayGothic.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic)
UI["5"]["Size"] = UDim2.new(0, 63, 0, 50)
UI["5"]["BackgroundTransparency"] = 1
UI["5"]["Name"] = [[Exit]]
UI["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["5"]["Text"] = [[X]]
UI["5"]["Position"] = UDim2.new(0.87207, 0, 0.01299, 0)

-- // StarterGui.ScreenGui.Frame.Lift \\ --
UI["6"] = Instance.new("TextButton", UI["2"])
UI["6"]["TextWrapped"] = true
UI["6"]["BorderSizePixel"] = 0
UI["6"]["TextSize"] = 14
UI["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["6"]["TextScaled"] = true
UI["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/HighwayGothic.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic)
UI["6"]["Size"] = UDim2.new(0, 137, 0, 50)
UI["6"]["BackgroundTransparency"] = 1
UI["6"]["Name"] = [[Lift]]
UI["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["6"]["Text"] = [[Auto Lift]]
UI["6"]["Position"] = UDim2.new(0.04685, 0, 0.50866, 0)

-- // StarterGui.ScreenGui.Frame.Gifts \\ --
UI["7"] = Instance.new("TextButton", UI["2"])
UI["7"]["TextWrapped"] = true
UI["7"]["BorderSizePixel"] = 0
UI["7"]["TextSize"] = 14
UI["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["7"]["TextScaled"] = true
UI["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/HighwayGothic.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic)
UI["7"]["Size"] = UDim2.new(0, 129, 0, 50)
UI["7"]["BackgroundTransparency"] = 1
UI["7"]["Name"] = [[Gifts]]
UI["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["7"]["Text"] = [[Auto Claim Gifts]]
UI["7"]["Position"] = UDim2.new(0.04685, 0, 0.30087, 0)

-- // StarterGui.ScreenGui.Frame.Rebirth \\ --
UI["8"] = Instance.new("TextButton", UI["2"])
UI["8"]["TextWrapped"] = true
UI["8"]["BorderSizePixel"] = 0
UI["8"]["TextSize"] = 14
UI["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["8"]["TextScaled"] = true
UI["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/HighwayGothic.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic)
UI["8"]["Size"] = UDim2.new(0, 129, 0, 50)
UI["8"]["BackgroundTransparency"] = 1
UI["8"]["Name"] = [[Rebirth]]
UI["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["8"]["Text"] = [[Auto rebirth]]
UI["8"]["Position"] = UDim2.new(0.04685, 0, 0.72078, 0)

-- // StarterGui.ScreenGui.Core \\ --
UI["9"] = Instance.new("LocalScript", UI["1"])
UI["9"]["Name"] = [[Core]]

-- // StarterGui.ScreenGui.Core \\ --
local function SCRIPT_9()
local script = UI["9"]
	local screenGui = script.Parent
	local Frame = screenGui.Frame
	local ExitButton = Frame.Exit
	local GiftsButton = Frame.Gifts
	local RebirthButton = Frame.Rebirth
	local LiftButton = Frame.Lift
	
	local Giftenabled = false
	local rebirthEnabled = false
	local liftEnabled = false
	
	Frame.Draggable = true
	Frame.Archivable = true
	Frame.Active = true
	
	ExitButton.MouseButton1Down:Connect(function()
		screenGui:Destroy()
	end)
	
	GiftsButton.MouseButton1Down:Connect(function()
		Giftenabled = not Giftenabled
		repeat
			for i = 1,16,1 do
				local args = {
					[1] = tostring(i) -- 1-16
				}
	
				game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Other"):WaitForChild("ClaimGift"):InvokeServer(unpack(args))
			end
			task.wait()
		until Giftenabled == false
	end)
	
	RebirthButton.MouseButton1Down:Connect(function()
		rebirthEnabled = not rebirthEnabled
		repeat
			game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Other"):WaitForChild("Rebirth"):InvokeServer()
			task.wait(60)
		until rebirthEnabled == false
	end)
	
	LiftButton.MouseButton1Down:Connect(function()
		liftEnabled = not liftEnabled
		repeat
			game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Gameplay"):WaitForChild("Lift"):InvokeServer()
			task.wait()
		until liftEnabled == false
	end)
	
end
task.spawn(SCRIPT_9)

return UI["1"], require;
