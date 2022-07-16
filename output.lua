--kyatwho made this™







local a= game:GetService("Players")local b= {"DataModelMesh", "FaceInstance", "ParticleEmitter", "Trail", "Smoke", "Fire", "Sparkles", "PostEffect", "Explosion", "Clothing", "BasePart"}local c= {"ParticleEmitter", "Trail", "Smoke", "Fire", "Sparkles", "PostEffect"}local function d(b)for a,a in pairs(a:GetPlayers())do if a.Character and b:IsDescendantOf(a.Character)then return true end end;return false end;local function e()local c= {}WaitNumber=5000;if _G.Settings.Players["Ignore Others"]then for e,f in pairs(game:GetDescendants())do if not f:IsDescendantOf(a)and not d(f)then for a,a in pairs(b)do if f:IsA(a)then table.insert(c, f)end end end;if e==WaitNumber then task.wait()WaitNumber=WaitNumber+5000 end end elseif _G.Settings.Players["Ignore Me"]then for d,e in pairs(game:GetDescendants())do if not e:IsDescendantOf(a)and not e:IsDescendantOf(ME.Character)then for a,a in pairs(b)do if e:IsA(a)then table.insert(c, e)end end end;if d==WaitNumber then task.wait()WaitNumber=WaitNumber+5000 end end end;return c end;local function b(b)if not b:IsDescendantOf(a)and not d(b)then if b:IsA("DataModelMesh")then if _G.Settings.Meshes.LowDetail then sethiddenproperty(b, "LODX", Enum.LevelOfDetailSetting.Low)sethiddenproperty(b, "LODY", Enum.LevelOfDetailSetting.Low)elseif _G.Settings.Meshes.Destroy then b:Destroy()end elseif b:IsA("FaceInstance")then if _G.Settings.Images.Invisible then b.Transparency=1 elseif _G.Settings.Images.LowDetail then b.Shiny=1 elseif _G.Settings.Images.Destroy then b:Destroy()end elseif table.find(c, b.ClassName)then if _G.Settings["No Particles"]or(_G.Settings.Other and _G.Settings.Other["No Particles"])then b.Enabled=false end elseif b:IsA("Explosion")then if _G.Settings["No Explosions"]or(_G.Settings.Other and _G.Settings.Other["No Explosions"])then b.Visible=false end elseif b:IsA("Clothing")then if _G.Settings["No Clothes"]or(_G.Settings.Other and _G.Settings.Other["No Clothes"])then b:Destroy()end elseif b:IsA("BasePart")then if _G.Settings["Low Quality Parts"]or(_G.Settings.Other and _G.Settings.Other["Low Quality Parts"])then b.Material= Enum.Material.Plastic;b.Reflectance=0 end end end end;if _G.Settings["Low Water Graphics"]or(_G.Settings.Other and _G.Settings.Other["Low Water Graphics"])then workspace:FindFirstChildOfClass("Terrain").WaterWaveSize=0;workspace:FindFirstChildOfClass("Terrain").WaterWaveSpeed=0;workspace:FindFirstChildOfClass("Terrain").WaterReflectance=0;workspace:FindFirstChildOfClass("Terrain").WaterTransparency=0 end;if _G.Settings["No Shadows"]or(_G.Settings.Other and _G.Settings.Other["No Shadows"])then game:GetService("Lighting").GlobalShadows=false;game:GetService("Lighting").FogEnd=9e9 end;if _G.Settings["Low Rendering"]or(_G.Settings.Other and _G.Settings.Other["Low Rendering"])then settings().Rendering.QualityLevel=1 end;game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "by kyatwho",
    Text = "Loading FPS Booster...",
    Duration = math.huge,
    Button1 = "Okay"
})local a= e()local c=500;game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "support me on roblox",
    Text = "Checking " .. #a .. " Instances...",
    Duration = 5,
    Button1 = "Okay"
})for d,e in pairs(a)do b(e)print("Loaded " .. d .. "/" .. #a)if d==c then task.wait()c=c+500 end end;game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "65pzo helped",
    Text = "FPS Booster Loaded!",
    Duration = math.huge,
    Button1 = "Okay"
})game.DescendantAdded:Connect(b)