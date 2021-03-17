local WindowTable = {}

function WindowTable:CreateWindow()
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local ScreenGui = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local AllPages = Instance.new("Frame")
	local NewPage = Instance.new("ScrollingFrame") --
	local UIListLayout = Instance.new("UIListLayout") --
	local UIListLayout_2 = Instance.new("UIListLayout")
	local Side = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local Buttons = Instance.new("Frame")
	local UIListLayout_3 = Instance.new("UIListLayout")
	local TextButton = Instance.new("TextButton") --

	--Properties:

	ScreenGui.Parent = game:WaitForChild("CoreGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui.ResetOnSpawn = false

	Main.Name = "Main"
	Main.Parent = ScreenGui
	Main.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.329562604, 0, 0.275979549, 0)
	Main.Size = UDim2.new(0, 451, 0, 262)
	Main.Draggable = true

	AllPages.Name = "AllPages"
	AllPages.Parent = Main
	AllPages.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
	AllPages.BorderSizePixel = 0
	AllPages.Position = UDim2.new(0.314855874, 0, 0.034351144, 0)
	AllPages.Size = UDim2.new(0, 299, 0, 243)

	NewPage.Name = "NewPage"
	NewPage.Parent = AllPages
	NewPage.Active = true
	NewPage.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
	NewPage.BorderSizePixel = 0
	NewPage.Position = UDim2.new(-0.00286986888, 0, -0.0026858882, 0)
	NewPage.Size = UDim2.new(0, 299, 0, 243)
	NewPage.ScrollBarThickness = 5

	UIListLayout.Parent = NewPage
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 3)

	UIListLayout_2.Parent = AllPages
	UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.Padding = UDim.new(0, 3)

	Side.Name = "Side"
	Side.Parent = Main
	Side.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	Side.BorderSizePixel = 0
	Side.Position = UDim2.new(-0.000814331695, 0, 0.0011703968, 0)
	Side.Size = UDim2.new(0, 131, 0, 262)

	TextLabel.Parent = Side
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Size = UDim2.new(0, 131, 0, 41)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = "gamer hub"
	TextLabel.TextColor3 = Color3.fromRGB(240, 240, 240)
	TextLabel.TextSize = 14.000

	Buttons.Name = "Buttons"
	Buttons.Parent = Side
	Buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Buttons.BackgroundTransparency = 1.000
	Buttons.Position = UDim2.new(0, 0, 0.156488553, 0)
	Buttons.Size = UDim2.new(0, 131, 0, 221)

	UIListLayout_3.Parent = Buttons
	UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_3.Padding = UDim.new(0, 3)

	TextButton.Parent = Buttons
	TextButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
	TextButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.Position = UDim2.new(0.068702288, 0, 0, 0)
	TextButton.Size = UDim2.new(0, 114, 0, 25)
	TextButton.Font = Enum.Font.SourceSans
	TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.TextSize = 14.000
	
	local pagesFolder = Instance.new("Folder")

	pagesFolder.Name = "pagesFolder"
	pagesFolder.Parent = AllPages
	
	local TabHandler = {}
	
	function TabHandler:CreateTab(tabname)
		tabname = tabname or "New Tab"
		local NewPage = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
		local TextButton = Instance.new("TextButton")
		
		NewPage.Name = "NewPage"
		NewPage.Parent = pagesFolder
		NewPage.Active = true
		NewPage.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
		NewPage.BorderSizePixel = 0
		NewPage.Position = UDim2.new(-0.00286986888, 0, -0.0026858882, 0)
		NewPage.Size = UDim2.new(0, 299, 0, 243)
		NewPage.ScrollBarThickness = 5
		
		UIListLayout.Parent = NewPage
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 3)
		
		TextButton.Parent = Buttons
		TextButton.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
		TextButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.Position = UDim2.new(0.068702288, 0, 0, 0)
		TextButton.Size = UDim2.new(0, 114, 0, 25)
		TextButton.Font = Enum.Font.SourceSans
		TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.TextSize = 14.000
		TextButton.MouseButton1Click:Connect(function()
			for i,v in next, pagesFolder:GetChildren() do -- We get all the pages that we added
				v.Visible = false   -- then we make them invisible 
			end 
			NewPage.Visible = true  -- We make current page visible but not others

			--Animations Below  -- Optional
			for i,v in next, Buttons:GetChildren() do   -- We get all the elements inside the frame
				if v:IsA("TextButton") then -- We can't animate UIListLayout, so we check if its a TextButton
					game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						BackgroundColor3 = Color3.fromRGB(115, 49, 37) -- We animate other Tab Buttons and making the current one seem Checked
					}):Play()
				end
			end
			game.TweenService:Create(TextButton, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
				BackgroundColor3 = Color3.fromRGB(255, 109, 83) -- We animate other Tab Buttons and making the current one seem Checked
			}):Play()
		end)
	end
	
	return TabHandler
end

return WindowTable
