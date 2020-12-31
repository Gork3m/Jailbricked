 verif = Instance.new("ScreenGui")
 mainbg = Instance.new("Frame")
 bg = Instance.new("ImageLabel")
 exp = Instance.new("TextLabel")
 separator = Instance.new("Frame")
 separator2 = Instance.new("Frame")
 what = Instance.new("TextLabel")
 tut = Instance.new("TextLabel")
 invlbl = Instance.new("TextLabel")
 codelbl = Instance.new("TextLabel")
 dcinv = Instance.new("TextBox")
 codetb = Instance.new("TextBox")
 verifybtn = Instance.new("TextButton")


verif.Name = "verif"
verif.Parent = game:GetService("CoreGui")
verif.Enabled = false

mainbg.Name = "mainbg"
mainbg.Draggable = true
mainbg.Active = true
mainbg.Parent = verif
mainbg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainbg.BackgroundTransparency = 1.000
mainbg.BorderSizePixel = 0
mainbg.Position = UDim2.new(0.413144326, 0, 0.351394427, 0)
mainbg.Size = UDim2.new(0, 289, 0, 337)




bg.Name = "bg"
bg.Parent = mainbg
bg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bg.BackgroundTransparency = 1.000
bg.Position = UDim2.new(0, 9, 0, 5)
bg.Size = UDim2.new(0, 271, 0, 320)
bg.Image = "rbxassetid://3570695787"
bg.ImageColor3 = Color3.fromRGB(24, 24, 24)
bg.ScaleType = Enum.ScaleType.Slice
bg.SliceCenter = Rect.new(100, 100, 100, 100)
bg.SliceScale = 0.070

exp.Name = "exp"
exp.Parent = bg
exp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exp.BackgroundTransparency = 1.000
exp.BorderSizePixel = 0
exp.Position = UDim2.new(0, 36, 0, 7)
exp.Size = UDim2.new(0, 200, 0, 20)
exp.Font = Enum.Font.SourceSansBold
exp.Text = "Jailbricked Verification"
exp.TextColor3 = Color3.fromRGB(226, 223, 217)
exp.TextSize = 16.000

separator.Name = "separator"
separator.Parent = bg
separator.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
separator.BorderSizePixel = 0
separator.Position = UDim2.new(0, 10, 0, 34)
separator.Size = UDim2.new(0, 251, 0, 2)

separator2.Name = "separator2"
separator2.Parent = bg
separator2.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
separator2.BorderSizePixel = 0
separator2.Position = UDim2.new(0, 10, 0, 288)
separator2.Size = UDim2.new(0, 251, 0, 2)

what.Name = "what"
what.Parent = bg
what.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
what.BackgroundTransparency = 1.000
what.BorderSizePixel = 0
what.Position = UDim2.new(0, 21, 0, 299)
what.Size = UDim2.new(0, 233, 0, 13)
what.Font = Enum.Font.SourceSansBold
what.Text = "Unable to find your message"
what.TextColor3 = Color3.fromRGB(241, 70, 70)
what.TextSize = 14.000

tut.Name = "tut"
tut.Parent = bg
tut.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tut.BackgroundTransparency = 1.000
tut.BorderSizePixel = 0
tut.Position = UDim2.new(0, 10, 0, 43)
tut.Size = UDim2.new(0, 251, 0, 125)
tut.Font = Enum.Font.SourceSansBold
tut.Text = "To continue using this script, you have to join our discord, copy the code below and paste it in #code-verification channel. Then press verify.\n\nIf you leave after verifying, you won't be able to use this script."
tut.TextColor3 = Color3.fromRGB(226, 223, 217)
tut.TextSize = 16.000
tut.TextWrapped = true

invlbl.Name = "invlbl"
invlbl.Parent = bg
invlbl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
invlbl.BackgroundTransparency = 1.000
invlbl.BorderSizePixel = 0
invlbl.Position = UDim2.new(0, 10, 0, 181)
invlbl.Size = UDim2.new(0, 76, 0, 21)
invlbl.Font = Enum.Font.SourceSansBold
invlbl.Text = "Discord:"
invlbl.TextColor3 = Color3.fromRGB(226, 223, 217)
invlbl.TextSize = 16.000
invlbl.TextXAlignment = Enum.TextXAlignment.Right

codelbl.Name = "codelbl"
codelbl.Parent = bg
codelbl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
codelbl.BackgroundTransparency = 1.000
codelbl.BorderSizePixel = 0
codelbl.Position = UDim2.new(0, 10, 0, 209)
codelbl.Size = UDim2.new(0, 76, 0, 21)
codelbl.Font = Enum.Font.SourceSansBold
codelbl.Text = "Code:"
codelbl.TextColor3 = Color3.fromRGB(226, 223, 217)
codelbl.TextSize = 16.000
codelbl.TextXAlignment = Enum.TextXAlignment.Right

dcinv.Name = "dcinv"
dcinv.Parent = bg
dcinv.BackgroundColor3 = Color3.fromRGB(2, 2, 2)
dcinv.BorderSizePixel = 0
dcinv.Position = UDim2.new(0, 100, 0, 181)
dcinv.Size = UDim2.new(0, 154, 0, 21)
dcinv.Font = Enum.Font.GothamBold
dcinv.Text = "discord.gg/FR2DFqSaw7"
dcinv:GetPropertyChangedSignal("Text"):Connect(function()
  if dcinv.Text ~= "discord.gg/FR2DFqSaw7" then
   dcinv.Text = "discord.gg/FR2DFqSaw7"
   end  
  end)
dcinv.TextEditable = false
dcinv.TextColor3 = Color3.fromRGB(229, 229, 229)
dcinv.TextSize = 11.000

codetb.Name = "codetb"
codetb.Parent = bg
codetb.BackgroundColor3 = Color3.fromRGB(2, 2, 2)
codetb.BorderSizePixel = 0
codetb.Position = UDim2.new(0, 100, 0, 209)
codetb.Size = UDim2.new(0, 154, 0, 21)
codetb.Font = Enum.Font.GothamBold
codetb.Text = "?"
goofyass = "?"
codetb:GetPropertyChangedSignal("Text"):Connect(function()
  if #codetb.Text == 16 then goofyass = codetb.Text else codetb.Text = goofyass end  
  
  end)
codetb.TextEditable = false
codetb.TextColor3 = Color3.fromRGB(229, 229, 229)
codetb.TextSize = 11.000

verifybtn.Name = "verifybtn"
verifybtn.Parent = bg
verifybtn.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
verifybtn.BorderSizePixel = 0
verifybtn.Position = UDim2.new(0, 44, 0, 242)
verifybtn.Size = UDim2.new(0, 183, 0, 22)
verifybtn.Font = Enum.Font.SourceSansBold
verifybtn.Text = "Verify"
verifybtn.TextColor3 = Color3.fromRGB(243, 243, 243)
verifybtn.TextSize = 16.000
